<?php

namespace App\Http\Controllers;

use Auth;
use App\blog;
use App\card;
use App\User;
use App\Admin;
use App\Site;
use App\Point;
use App\Deposit;
use Illuminate\Support\Facades\DB;
use App\Gateway;
use App\General;
use App\Withdraw;
use App\Allheader;
use App\sucscribe;
use Carbon\Carbon;
use App\clientimage;
use App\Transaction;
use App\cardcategory;
use App\staticcontent;
use App\Helpers\SmsApi;
use App\cardsubcategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Intervention\Image\Facades\Image;

class AdminController extends Controller
{
    
    public function showLoginForm()
    {
        return view('admin.auth.login');
    }
    
    public function login(Request $request)
    {
        $this->validate($request, [
        'username'   => 'required',
        'password' => 'required'
        ]);
            
        if (Auth::guard('admin')->attempt(['username' => $request->username, 
        'password' => $request->password]))
        {
            session()->put('site_id',$request->id);
            return redirect()->intended(route('admin.dashboard'));
        }
        /*if (Auth::guard('admin')->attempt(['username' => $request->username,
                'password' => $request->password]) && Auth::guard('admin')->user()->role=='staff' && Auth::guard('admin')->user()->site_id==$request->site)
        {
            return redirect()->intended(route('admin.dashboard'));
        }*/
        return redirect()->back()->with('alert','Le nom d\'utilisateur et le mot de passe ne correspondent pas ou vous n\'appartenez pas à ce site');
    }
        
    public function logout(Request $request)
    {
        Auth::guard('admin')->logout();
        $request->session()->invalidate();
        return redirect()->intended(route('admin.login'));
    }
        
    public function dashboard()
    {
        $users = User::where('deleted',0)->where('status',1)->count();
        $deposit = Deposit::where('status',1)->count();
        $cat = cardcategory::count();
        $card = card::count();
        $gate = Gateway::count();
        $pt = 'DASHBOARD';
        $data['api'] = env('KEY_API_EMISMS');
        $sendsms = new SmsApi();
        $soldesms = $sendsms->soldeByApi($data['api']);
        $play =  card::where('user_id', '!=', 0)->whereMonth('created_at', '=', date('m'))->get()->groupBy(function($d) {
            return $d->created_at->format('Y-m-d') ;
        });

        $monthly_play = [];
        $js = '';
        foreach ($play as $key => $value) {
            $js .= collect([
                    'y' => $key,
                    'a' => $value->count('id')
                ])->toJson() . ',';

        }
        $monthly_play = '[' . $js . ']';

        //https://app.emisms.com/sms/api?action=check-balance&api_key=QnFOQXJDY0ZMQnVCRmROdT1Nb2o=&response=json
        return view('admin.dashboard', compact('monthly_play','gate','card','cat','users','deposit','pt','soldesms'));
    }
        
    public function general()
    {
        $general = General::first();
        if(is_null($general))
        {
            $default = [
                'title' => 'THESOFTKING',
                'subtitle' => 'Subtitle',
                'color' => '009933',
                'cur' => 'BDT',
                'cursym' => 'TK',
                'decimal' => 2,
                'reg' => 1,
                'emailver' => 0,
                'smsver' => 1,
                'emailnotf' => 0,
                'smsnotf' => 1
            ];
            General::create($default);
            $general = General::first();
        }
        $pt = 'GENERAL SETTINGS';
        
        return view('admin.website.general', compact('general','pt'));
    }
        
    public function generalUpdate(Request $request)
    {
        $general = General::first();
        
        $this->validate($request,
        [
            'title' => 'required',
            'subtitle' => 'required',
            'cur' => 'required',
            'cursym' => 'required',
           
            ]);
        
        $general['title'] = $request->title;
        $general['subtitle'] = $request->subtitle;
        $general['cur'] = $request->cur;
        $general['cursym'] = $request->cursym;
        $general['reg'] = $request->reg =="1" ?1:0 ;
        $general['emailver'] = $request->emailver =="1" ?0:1 ;
        $general['smsver'] = $request->smsver =="1" ?0:1 ;
        $general['emailnotf'] = $request->emailnotf=="1" ?1:0;
        $general['smsnotf'] = $request->smsnotf=="1" ?1:0;
        $general->update();
        
        return back()->with('success', 'Les paramètres généraux ont été mis à jour avec succès !');
    }
    
    public function registerUser(Request $request){

        $this->validate($request,
        [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            //'username' => 'required|string|max:255|unique:users|alpha_dash',
            //'password' => 'required|string|min:6|confirmed',
            'country' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'mobile' => 'required|string'
        ]);

        $gnl = General::first();
        $cards = card::where('id',$request->card)->first();
        $verif_exist = User::where('username',$cards->card_details)->first();
        if(!empty($verif_exist)){
            return back()->with('danger','Ce nom d\'utilisateur existe déjà !!!');
        }
        $users = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->mobile),
            'username' => $cards->card_details,
            'country' => $request->country,
            'city' => $request->city,
            'mobile' => $request->mobile,
            'emailv' =>  $gnl->emailver,
            'smsv' =>  $gnl->smsver,
        ]);

        if(!empty($cards)){
            $cards->user_id = $users->id;
            $cards->save();
        }
        if(!empty($request->mobile)){
            $data['message'] = 'Bonjour '.$request->name .', merci d\'etre inscrit sur KIGNON CARD. Vos accès sont les suivants: Login:'. $cards->card_details .' Mot de passe : '.$request->mobile .' Lien de connexion : '.env('APP_URL').'login';
            $sendsms = new SmsApi();
            $data['cle_api'] = env('KEY_API_EMISMS');
            $data['to'] = $users->mobile;
            $data['sender'] = urlencode('KIGNON CARD');
            $sendsms->isSmsapi($data);
        }

        return back()->with('success','Utilisateur crée avec succès.');
    }
        
    public function logoIcon()
    {
        $pt = 'LOGO & ICON SETTINGS';
        return view('admin.website.logo',compact('pt'));
    }
        
    public function logoUpdate(Request $request)
    {
        $this->validate($request, [
            'logo' => 'image|mimes:jpeg,png,jpg|max:4048',
            'icon' => 'image|mimes:jpeg,png,jpg|max:4048',         
            'bread' => 'image|mimes:jpeg,png,jpg|max:8048',         
            ]);
            
        if($request->hasFile('logo'))
        {
            Image::make($request->logo)->save('assets/images/logo/logo.png');
        }
        if($request->hasFile('icon'))
        {
            Image::make($request->icon)->save('assets/images/logo/icon.png');
        }

        
        return back()->with('success','Logo and Icon Updated successfully.');
    }
            
    public function emailSms()
    {
        $temp = General::first();
        $pt = 'TEMPLATE SETTINGS';
        return view('admin.website.template', compact('temp','pt'));
    }
                
    public function emailUpdate(Request $request)
    {
        $temp = General::first();
        
        $this->validate($request,['email' => 'email']);
            
        $temp['email'] = $request->email;
        $temp['template'] = $request->template;
        $temp['smsapi'] = $request->smsapi;
        $temp->save();
            
        return back()->with('success', 'Email and SMS Settings Updated Successfully!');
    }
                    
    public function userIndex()
    {
        $users = User::where('deleted',0)->orderBy('id', 'desc')->get();
        $pt = 'USER LIST';
        $cards = card::whereNull('user_id')->get();
        return view('admin.users.index', compact('users','pt','cards'));
    } 
    
    public function userSearch(Request $request)
    {
        $this->validate($request, [ 'search' => 'required' ]);
        
        $users = User::where('username', 'like', '%' . $request->search . '%')->orWhere('email', 'like', '%' . $request->search . '%')->orWhere('name', 'like', '%' . $request->search . '%')->get();
        $key = $request->search;
        $pt = 'USER SEARCH RESULT';
        return view('admin.users.search', compact('users','key','pt'));
        
    }
    
    public function singleUser($id)
    {
        $user = User::findOrFail($id);
        $pt = $user->name;
        return view('admin.users.single', compact('user','pt'));
    }

    public function EditsingleUser($id)
    {
        $user = User::findOrFail($id);
        $pt = $user->name;
        return view('admin.users.edit_single', compact('user','pt'));
    }
       
    public function email($id)
    {
        $user = User::findorFail($id);
        $pt = 'SEND EMAIL';
        return view('admin.users.email',compact('user','pt'));
    }
                        
    public function sendemail(Request $request)
    {
        $this->validate($request,
        [   'emailto' => 'required|email',
            'reciver' => 'required',
            'subject' => 'required',
            'emailMessage' => 'required'
            ]);
        $to = $request->emailto;
        $name = $request->reciver;
        $subject = $request->subject;
        $message = $request->emailMessage;
        
        send_email($to, $name, $subject, $message);
        
        return back()->withSuccess('Mail Sent Successfuly');
            
    }
        
    public function broadcast()
    {   
        $pt = 'BROADCAST EMAIL';
        return view('admin.users.broadcast',compact('pt'));
    }

    public function showRegistrationFormUser(){
        $pt = "Register";
        $cards = card::where('user_id',0)->OrwhereNull('user_id')->get();
        return view('admin.users.register',compact('pt','cards'));
    }

    public function changerCarte(Request $request,$id){
        $pt = "Changer de carte";
        $cards = card::where('user_id',0)->OrwhereNull('user_id')->get();
        $user_id= $id;
        return view('admin.users.changer-carte',compact('pt','cards','user_id'));
    }

    public function attribuerCarte(Request $request,$id){
        $pt = "Changer de carte";
        $cards = card::where('user_id',0)->OrwhereNull('user_id')->get();
        $user_id= $id;
        return view('admin.users.attribution-carte',compact('pt','cards','user_id'));
    }

    public function changerCartePost(Request $request){
        $pt = "Changer de carte";
        $cards = card::where('id',$request->card)->first();
        $users = User::find($request->id_client);
        if(!empty($cards)){
            $cards->user_id = $users->id;
            $cards->name = $users->name .' '. $users->lastname;
            $cards->save();
        }

        $data['message'] = 'Bonjour '. $request->name .', merci d\'etre inscrit sur KIGNON CARD. Vos accès sont les suivants: Login:'. $cards->card_details .' Mot de passe : '.$users->mobile.' Lien de connexion: '.env('APP_URL');
        $sendsms = new SmsApi();
        $data['cle_api'] = env('KEY_API_EMISMS');
        $data['to'] = $users->mobile;
        $data['sender'] = urlencode('KIGNON CARD');
        $sendsms->isSmsapi($data);

        return redirect()->route('admin.users')->with('success','Carte changée avec succès !!!');
    }

    public function attribuerCartePost(Request $request){
        $pt = "Attribuer une autre carte";
        $cards = card::where('id',$request->card)->first();
        $users = User::find($request->id_client);
        if(!empty($cards->user_id)){
            $cards->user_id = $users->id;
            $cards->name = $users->name .' '. $users->lastname;
            $cards->save();
        }

        $data['message'] = 'Bonjour '. $request->name .', merci d\'etre inscrit sur KIGNON CARD. Vos accès sont les suivants: Login:'. $cards->card_details .' Mot de passe : '.$users->mobile.' Lien de connexion: '.env('APP_URL');
        $sendsms = new SmsApi();
        $data['cle_api'] = env('KEY_API_EMISMS');
        $data['to'] = $users->mobile;
        $data['sender'] = urlencode('KIGNON CARD');
        $sendsms->isSmsapi($data);

        return redirect()->route('admin.users')->with('success','Carte associée avec succès !!!');
    }
                            
    public function broadcastemail(Request $request)
    {
        $this->validate($request,[ 'subject' => 'required','emailMessage' => 'required']);
    
        $users = User::where('status', '1')->get();
        
        foreach ($users as $user)
        {
            
            $to = $user->email;
            $name = $user->name;
            $subject = $request->subject;
            $message = $request->emailMessage;
            
            send_email($to, $name, $subject, $message);
        }
    
        return back()->withSuccess('Mail Sent Successfuly');
    }
                                
    public function userPasschange(Request $request,$id)
    {
        $user = User::where('deleted',0)->where('id',$id)->first();
        
        if($request->password == $request->password_confirmation)
        {
            $user->password = Hash::make($request->password);
            $user->save();
            
            $msg =  'Password Changed By Admin. New Password is: '.$request->password;
            send_email($user->email, $user->username, 'Password Changed', $msg);
            $sms =  'Password Changed By Admin. New Password is: '.$request->password;
            send_sms($user->mobile, $sms);
            
            return back()->with('success', 'Password Changed');
        }
        else 
        {
            return back()->with('alert', 'Password Not Matched');
        }
    }

    public function statupdate(Request $request,$id)
    {
        $user = User::where('deleted',0)->where('id',$id)->first();
        
        $this->validate($request,
            [
                'name' => 'required|string|max:255',
                'email' => 'required|string|max:255',
                'mobile' => 'required|string|max:255',
                'username' => 'required|string|max:255',
            ]);
            if(!empty($request->password) || !empty($request->password_confirmation)){
                $this->validate($request,['password' => 'required|string|min:6|confirmed']);
            }

            
            $user['name'] = $request->name ;
            $user['username'] = $request->username ;
            $user['mobile'] = $request->mobile;
            $user['email'] = $request->email;
            $user['status'] = $request->status =="1" ?1:0;
            $user['emailv'] = $request->emailv =="1" ?1:0;
            $user['smsv'] = $request->smsv =="1" ?1:0;
            $user['tauth'] = $request->tauth =="1" ?1:0;
            
            if($request->password == $request->password_confirmation)
            {
                $user->password = Hash::make($request->password);
                $sms =  'Password Changed By Admin. New Password is: '.$request->password;
            }
            $sms =  'Votre profil a été mis à jour par l\'administrateur';
            $user->save();
            send_sms($user->mobile, $sms);
            
            return back()->withSuccess('Mise à jour avec succès !!!');
        }
        
        public function bannedUser()
        {
            $users = User::where('status', '0')->where('deleted', '0')->orderBy('id', 'desc')->paginate(10);
            $pt = 'BANNED USERS';
            return view('admin.users.banned', compact('users','pt'));
        }

        public function destroy(Request $request,$id)
        {
            $users = User::where('deleted',0)->where('id',$id)->first();
            $users->deleted = 1;
            $users->save();
            return back()->withSuccess('Client supprimer avec succes !!!');
        }
        
        public function gateway()
        {
            $gateways = Gateway::all();
            $pt = 'PAYMENT GATEWAY';
            return view('admin.website.gateway', compact('gateways','pt'));
        }
        
        public function gatewayCreate(Request $request)
        {
            $this->validate($request, ['gateimg' => 'image|mimes:jpeg,png,jpg|max:2048',
            'name' => 'required']);
                
            if($request->hasFile('gateimg'))
            {
                $gateway['gateimg'] = uniqid().'.'.$request->gateimg->getClientOriginalExtension();
                $path = 'assets/images/gateway/'.$gateway['gateimg'];
                Image::make($request->gateimg)->resize(200, 200)->save($path);
            }
            
            $gateway['name'] = $request->name;
            $gateway['val1'] = $request->val1;
            $gateway['status'] = $request->status;
            Gateway::create($gateway);
            
            return back()->with('success','Gateway Created successfully');
    }
    
    public function gatewayUpdate(Request $request, Gateway $gateway)
    {
        $this->validate($request, [
            'gateimg' => 'image|mimes:jpeg,png,jpg|max:2048',
            'name' => 'required',
            ]);
        
        if($request->hasFile('gateimg'))
        {
            $path = 'assets/images/gateway/'.$gateway->gateimg;
            
            if(file_exists($path))
            {
                unlink($path);
            }
            $gateway['gateimg'] = uniqid().'.'.$request->gateimg->getClientOriginalExtension();
            $npath = 'assets/images/gateway/'.$gateway['gateimg'];
            Image::make($request->gateimg)->resize(200, 200)->save($npath);
        }
        
        $gateway['name'] = $request->name;
        $gateway['val1'] = $request->val1;
        $gateway['rate'] = $request->rate;
        $gateway['status'] = $request->status;
        $gateway->update();
        
        return back()->with('success','Gateway Information Updated Successfully');
    }
        

    public function EditUpdatePointSolde($id)
    {
        $user = User::findOrFail($id);
        $pt = $user->name;
        return view('admin.users.edit-solde-point', compact('user','pt'));
    }
    
    public function UpdatePointSolde(Request $request)
    {
        $this->validate($request, [
            'point' => 'required',
            'amount' => 'required',
            ]);
            $user = User::where('deleted',0)->where('id',$request->user_id)->first();
            if($request->amount!=''){
                $user->balance = $request->amount;
            }
            if($request->point!=''){
                $user->balance_point = $request->point;
            }
            if($request->amount!='' || $request->point!=''){
                $user->save();
            }
            
            return back()->withSuccess('Mise à jour avec succès !!!');
    }

    
    public function depoApprove(Request $request, $id)
    {
        $deposit = Deposit::findOrFail($id);
        $deposit['status'] = 1;
        $deposit->update();
        
        $user = User::findOrFail($deposit->user_id);
        $user['balance'] = $user->balance + $deposit->amount;
        $user->save();
        
        $tlog['user_id'] = $user->id;
        $tlog['amount'] = $deposit->amount;
        $tlog['balance'] = $user->balance;
        $tlog['type'] = 1;
        $tlog['details'] = 'Deposit via '.$deposit->gateway->name;
        $tlog['trxid'] = str_random(16);
        Transaction::create($tlog);
        
        return back()->with('success','Deposit Approved Successfully');
        
    }
                
    public function depoCancel(Request $request, $id)
    {
        $deposit = Deposit::findOrFail($id);
        $deposit['status'] = 2;
        $deposit->update();
        
        return back()->with('success','Deposit Canceled Successfully');
        
    }
    

    public function withdrawLog()
    {
        $logs = Withdraw::where('status',1)->paginate(20);
        $pt = 'WITHDRAW LOG';
        return view('admin.users.withlog', compact('logs','pt'));
    }
    public function withdrawApprove(Request $request, $id)
    {
        $withd = Withdraw::findOrFail($id);
        $withd['status'] = 1;
        $withd->update();
        
        return back()->with('success','Withdraw Approved Successfully');
    }
    public function withdrawCancel(Request $request, $id)
    {
        $withd = Withdraw::findOrFail($id);
        $withd['status'] = 2;
        $withd->update();
        
        $user = User::where('deleted',0)->where('id',Auth::id())->first();
        $user['balance'] = $user->balance + $withd->amount;
        $user->update();
        
        
        $tlog['user_id'] = $user->id;
        $tlog['amount'] = $withd->amount;
        $tlog['balance'] = $user->balance;
        $tlog['type'] = 1;
        $tlog['details'] = 'Withdraw Canceled';
        $tlog['trxid'] = str_random(16);
        Transaction::create($tlog);
        
        return back()->with('success','Withdraw Canceled Successfully');
    }
                
    public function changePassword()
    {
        $pt = 'CHANGE PASSWORD';
        return view('admin.auth.changepass',compact('pt'));
    }
    
    public function updatePassword(Request $request)
    {
        $admin = Auth::guard('admin')->user();
        
        if(Hash::check($request->passwordold, $admin->password) && $request->password == $request->password_confirmation)
        {
            $admin['password'] =  Hash::make($request->password);
            $admin->save();
            return back()->with('success', 'Password Changed');
        }
        else 
        {
            return back()->with('alert', 'Password Not Changed');
        }
    }
    public function newAdmin()
    {
        $pt = 'NEW ADMIN REGISTRATION';
        $sites = Site::all();
        return view('admin.auth.newadmin',compact('pt','sites'));
    }
                
    public function listAdmin()
    {
        $admins = Admin::all();
        $pt = 'ADMIN LIST';
        return view('admin.auth.adminlist', compact('admins','pt'));
    }

    public function editAdmin(Request $request)
    {
        $admin = Admin::find($request->id);
        $sites = Site::all();
        $pt = 'MODIFICATION ADMIN';
        return view('admin.auth.editadmin', compact('admin','pt','sites'));
    }

    public function createAdmin(Request $request)
    {
        $this->validate($request,
        [
            'name' => 'required|string|max:191',
            'email' => 'required|string|email|max:191|unique:admins',
            'username' => 'required|string|max:191|unique:admins|alpha_dash',
            'password' => 'required|string|min:5|confirmed',
        ]);
        
        $admin['name'] = $request->name;
        $admin['email'] = $request->email;
        $admin['username'] = $request->username;
        $admin['site_id'] = isset($request->site) ? $request->site : '' ;
        $admin['password'] = Hash::make($request->password);
        Admin::create($admin);
        
        return back()->with('success', 'Nouveau Admin créé avec succès');
            
    }

    public function updateAdmin(Request $request)
    {
        $this->validate($request,
            [
                'name' => 'required|string|max:191',
                'email' => 'required|string|email|max:191',
                'username' => 'required|string|max:191'
            ]);
        $site = Admin::find($request->id);
        $site->name = $request->name;
        $site->email= $request->email;
        $site->username = $request->username;
        $site->site_id = isset($request->site) ? $request->site : '';
        if(!empty($request->password)){
          $site->password  = Hash::make($request->password);
        }
        $site->save();

        return back()->with('success', 'Admin mis à  jour avec succès');

    }

    public function newSite()
    {
        $pt = 'Enregistrement Site';
        return view('admin.site.newsite',compact('pt'));
    }

    public function listSite()
    {
        $sites = Site::all();
        $pt = 'SITE LISTE';
        return view('admin.site.sitelist', compact('sites','pt'));
    }

    public function editSite(Request $request)
    {
        $site = Site::find($request->id);
        $pt = 'MODIFICATION SITE';
        return view('admin.site.editsite', compact('site','pt'));
    }



    public function createSite(Request $request)
    {
        $this->validate($request,
            [
                'name' => 'required|string|max:191',
                'lieu' => 'required|string',
            ]);

        $site['name'] = $request->name;
        $site['lieu'] = $request->lieu;
        $site['telephone'] = $request->telephone;
        Site::create($site);

        return back()->with('success', 'Nouveau site créé avec succès');

    }

    public function updateSite(Request $request)
    {
        $this->validate($request,
            [
                'name' => 'required|string|max:191',
                'lieu' => 'required|string',
            ]);
        $site = Site::find($request->id);
        $site->name = $request->name;
        $site->lieu = $request->lieu;
        $site->telephone = $request->telephone;
        $site->save();
        return back()->with('success', 'Site mis à jour avec succès');
    }



    public function cardcategory()
    {
        $all_cat = cardcategory::paginate(10);
        return view('admin.card.cardcategory',compact('all_cat'));
    }

    public function cardcategorystore(Request $request)
    {
        $this->validate($request,[
           'cat_name' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg',
        ]);
        $cat = new cardcategory();
        if($request->hasFile('image')){
            $image = $request->file('image');
            $imageName = time();
            $directory = 'assets/images/categoryimage/';
            $imgUrl  = $directory.$imageName;
            Image::make($image)->save($imgUrl);
            $cat->image = $imgUrl;
        }

        $cat->cat_name = $request->cat_name;
        $cat->save();
        return back()->with('success', 'Catégorie de carte créée avec succès');
    }


    public function cardcategoryupdate(Request $request)
    {
        $cardupdate = cardcategory::find($request->id);

        if($request->hasFile('image')){
            @unlink($cardupdate->image);
            $image = $request->file('image');
            $imageName = time().'.'.$image->getClientOriginalName('image');
            $directory = 'assets/images/categoryimage/';
            $imgUrl  = $directory.$imageName;
            Image::make($image)->save($imgUrl);
            $cardupdate->image = $imgUrl;
        }

        $cardupdate->cat_name = $request->cat_name;
        $cardupdate->status = $request->status;
        $cardupdate->save();
        return back()->with('success', 'Catégorie de carte mise à jour avec succès');
    }



    public function cardsubcategory()
    {
        $subcat = cardsubcategory::paginate(10);
        $cate = cardcategory::whereStatus(1)->get();
        return view('admin.card.subcardcategory',compact('subcat','cate'));
    }

    public function cardsubcategorystore(Request $request)
    {
        $this->validate($request,[
           'cat_id' => 'required',
           'name' => 'required',
           'price' => 'required|numeric|min:0',
        ]);


        $in = $request->except('_token');
        $in['status'] = 1;
        cardsubcategory::create($in);

        return redirect()->back()->with('success', 'Crée avec succes !!!');
    }


    public function cardsubcategoryupdate(Request $request,$id)
    {
        $this->validate($request,[
            'cat_id' => 'required',
            'name' => 'required',
            'price' => 'required|numeric|min:0',
        ]);



        $in = $request->except('_token', '_method');

        cardsubcategory::whereId($id)->update($in);

        return back()->with('success', 'Mise à jour reussi');
    }


    public function createcard()
    {
        $cardcategory = cardsubcategory::whereStatus(1)->get();
        $cards = card::paginate(10);
        return view('admin.card.createcard',compact('cardcategory','cards'));
    }

    public function createcardstore(Request $request)
    {


        $this->validate($request,[
            'category_id' => 'required',
            'card_details' => 'required',
            'expired_card' => 'required',
            'name' => 'required',
            'card_image' => 'mimes:jpg,jpeg,png,svg',
        ]);



        if($request->hasFile('card_image')){
            $image = $request->file('card_image');
            $imageName = time().'.jpg';
            $location = 'assets/images/cardimage/'.$imageName;
            Image::make($image)->save($location);
            $name = $imageName;
        }else{
            $name = '';
        }

        $cat = cardsubcategory::find($request->category_id);

        card::create([
           'sub_category_id' => $request->category_id,
           'card_details' => $request->card_details,
           'card_image' => $name,
           'name' => $request->name,
           'expired_card' => $request->expired_card,
           'category_id' => $cat->id,
           'status' => 1,
        ]);


        return back()->with('success', 'Carte crée avec succès');
    }


    public function createcardedit($id)
    {
        $cardcategory = cardcategory::all();
        $cardedit = card::where('id',$id)->first();
        return view('admin.card.cardedit',compact('cardcategory','cardedit'));
    }

    public function createcardupdate(Request $request, $id)
    {
        $this->validate($request,[
            'category_id' => 'required',
            'card_details' => 'required|unique:cards',
            'name' => 'required',
            'expired_card' => 'required',
            'card_image' => 'mimes:jpg,jpeg,png,svg',
        ]);

        $car = card::find($id);
        $cat = cardsubcategory::find($request->category_id);
        if($request->hasFile('card_image')){
            @unlink('assets/images/cardimage/'.$car->card_image);
            $image = $request->file('card_image');
            $imageName = time().'.jpg';
            $location = 'assets/images/cardimage/'.$imageName;
            Image::make($image)->save($location);
            $name = $imageName;
        }else{
            $name = $car->card_image;
        }

        card::whereId($id)->update([
            'sub_category_id' => $request->category_id,
            'card_details' => $request->card_details,
            'card_image' => $name,
            'name' => $request->name,
            'expired_card' => $request->expired_card,
            'status' => $request->status,
            'category_id' => $cat->id,
        ]);


        return back()->with('success', 'Carte mise à jour avec succès');

    }

    public function staticPoint()
  {
      $staffs = Admin::where('role','!=','superadmin')->get();
      $users = User::orderBy('name','asc')->get();
      $cards = card::all();
      $transactions = Transaction::select('num_recu','id')
                        ->whereNotNull('num_recu')
                        ->get();

      $query = Point::leftjoin('users as u','points.user_id','u.id')
        ->leftjoin('admins as adm','points.added_by','adm.id')
          ->leftjoin('cards','u.id','cards.user_id')
          ->whereDate('points.created_at',Carbon::today())
          ->select(
              'u.name as nom',
              'u.balance as balance_user',
              'u.balance_point as balance_point_user',
              'lastname',
              'adm.name as staff_name',
              'card_details',
              'points.created_at',
              'points.updated_at',
              'points.num_ticket',
              'points.type_transaction'
          )->get();
      $sum_balance_point_user_credit =0;
      $sum_balance_user_credit = 0;
      $sum_balance_user_credit_tot = 0;
      $sum_balance_user_credit_tick = 0;
      $sum_balance_point_user_debit =0;
      $sum_balance_point_user_credit_tick=0;
      $sum_balance_user_debit = 0;
      $type_transaction_debite="";
      $type_transaction_credite="";
      foreach ($query as $quer){
              if($quer->type_transaction=='rechargement des points' ){
                  $sum_balance_point_user_credit +=$quer->balance_point_user;
                 // $sum_balance_user_credit +=$quer->balance_user;
                  $type_transaction_credite = 'crédités';
              }if($quer->type_transaction=='retrait des points'){
                  $type_transaction_debite = 'débités';
                  $sum_balance_point_user_debit +=$quer->balance_point_user;
                  $sum_balance_user_debit +=$quer->balance_user;
              }if($quer->type_transaction=='rechargement par ticket'){
                  $sum_balance_point_user_credit_tick +=$quer->balance_point_user;
                //  $sum_balance_user_credit +=$quer->balance_user;
                  $type_transaction_credite = 'crédités';
              }
          //dump($type_transaction_debite);
      }
     //dd($sum_balance_user_credit_tot);
      $data['sum_balance_point_user_debit'] = $sum_balance_point_user_debit;
      $sum_balance_user_credit_tot = $sum_balance_point_user_credit_tick + $sum_balance_point_user_credit;
      $data['sum_balance_user_debit'] = $sum_balance_user_debit;

      $data['sum_balance_point_user_credit'] = $sum_balance_point_user_credit;
      $data['sum_balance_user_credit'] = $sum_balance_user_credit;

      $data['sum_balance_user_credit_tot'] = $sum_balance_user_credit_tot;

      $data['staffs'] = $staffs;
      $data['users'] = $users;
      $data['cards'] = $cards;
      $data['transactions'] = $transactions;
      $data['querys'] = $query;
      $data['date_start'] = date('d-m-Y');
      $data['type_transaction_credite'] = $type_transaction_credite;
      $data['type_transaction_debite'] = $type_transaction_debite;

      //dump($data);

      return view('admin.website.static_point',$data);
  }

  public function staticPointDebitCredit()
  {
      $staffs = Admin::where('role','!=','superadmin')->get();
      $users = User::orderBy('name','asc')->get();
      $cards = card::all();
      $transactions = Transaction::select('num_recu','id')
                        ->whereNotNull('num_recu')
                        ->get();
      $cardsubcategories = DB::table('cardsubcategories')
                          ->where('status',1)
                          ->get();

      $query = Point::leftjoin('users as u','points.user_id','u.id')
          ->leftjoin('admins as adm','points.added_by','adm.id')
          ->leftjoin('cards','u.id','cards.user_id')
          ->select(
              'u.name as nom',
              'u.balance as balance_user',
              'u.balance_point as balance_point_user',
              'lastname',
              'adm.name as staff_name',
              'card_details',
              'points.created_at',
              'points.updated_at',
              'points.num_ticket',
              'points.type_transaction'
          );
      //$query = $query->where('points.created_at',\Date::now()->format('Y-m-d'));
      $query->get();

      $data['staffs'] = $staffs;
      $data['cardsubcategories'] = $cardsubcategories;
      $data['users'] = $users;
      $data['cards'] = $cards;
      $data['transactions'] = $transactions;
      $data['querys'] = $query;

      return view('admin.website.static_point_debit_credit',$data);
  }

  public function staticSearchPoint(Request $request)
  {
      $query = Point::leftjoin('users as u','points.user_id','u.id')
                           ->leftjoin('admins as adm','points.added_by','adm.id')
                           ->leftjoin('cards','u.id','cards.user_id')
                           ->select(
                            'u.name as nom',
                            'u.balance as balance_user',
                            'u.balance_point as balance_point_user',
                            'lastname',
                            'adm.name as staff_name',
                            'card_details as carte_num',
                            'points.created_at',
                            'points.updated_at',
                            'points.num_ticket',
                            'points.nbre_point',
                            'points.mont_coiffure',
                            'points.type_transaction'
                           );
      if(!empty($request->date_start) && !empty($request->date_end)){
        $date_start= str_replace('/','-',$request->date_start);
        $date_end = str_replace('/','-',$request->date_end);
        $date_start= Carbon::createFromFormat('Y-m-d', $date_start);
        $date_end = Carbon::createFromFormat('Y-m-d', $date_end);

        $query = $query->whereBetween('points.created_at',[$date_start,$date_end]);
      }
      if(!empty($request->user) && $request->user!='all'){
          $query->where('cards.user_id',$request->user);
      }

    $staffs = Admin::where('role','!=','superadmin')->get();
    $users = User::all();
    $cards = card::all();
    $transactions = Transaction::select('num_recu','id')
                      ->whereNotNull('num_recu')
                      ->get();

    $data['staffs'] = $staffs;
    $data['users'] = $users;
    $data['cards'] = $cards;
    $data['date_end'] = $date_end->format('d-m-Y');
    $data['date_start'] = $date_start->format('d-m-Y');;
    $data['transactions'] = $transactions;
    $data['client_search']= !empty($request->user) && $request->user!='all' ? User::find($request->user) : $request->user;
    $data['querys'] = $query;
    //dd($data,$query->whereIn('type_transaction',['recharge des points et soldes','rechargement des points','retrait des points','rechargement par ticket'])->orderByDesc('points.id')->get());
      return view('admin.website.static_point',$data);
  }


  public function staticPointDebitCreditSearch(Request $request)
  {
      $query = Point::leftjoin('users as u','points.user_id','u.id')
                           ->leftjoin('cards','u.id','cards.user_id')
                           ->select(
                            'u.name as nom',
                            'lastname',
                            'card_details',
                            'points.created_at',
                            'points.updated_at',
                            'points.num_ticket',
                            'points.type_transaction',
                            'sub_category_id',
                             DB::raw("SUM(balance_point) as balance_point_user"),
                             DB::raw("SUM(balance) as balance_user")
                           );
      if(!empty($request->date_start) && !empty($request->date_end)){
        $date_start= str_replace('/','-',$request->date_start);
        $date_end = str_replace('/','-',$request->date_end);
        $date_start= Carbon::createFromFormat('Y-m-d', $date_start);
        $date_end = Carbon::createFromFormat('Y-m-d', $date_end);

        $query = $query->where('points.created_at','>=',$date_start)
                       ->where('points.created_at','<=',$date_end);
      }
      if(!empty($request->type_transaction)){
          $query->where('points.type_transaction',$request->type_transaction);
      }
      if(!empty($request->sub_category_id)){
          $query->where('cards.sub_category_id',$request->sub_category_id);
      }
      $query = $query->groupBy('card_details');
      $sum_balance_point_user = 0;
      $sum_balance_user = 0;
      foreach ($query as $quer){
          $sum_balance_point_user +=$quer->balance_point_user;
          $sum_balance_user +=$quer->balance_user;
      }
    $staffs = Admin::where('role','!=','superadmin')->get();
    $users = User::all();
    $cards = card::all();
    $transactions = Transaction::select('num_recu','id')
                      ->whereNotNull('num_recu')
                      ->get();
      $cardsubcategories = DB::table('cardsubcategories')
          ->where('status',1)
          ->get();

    $data['staffs'] = $staffs;
    $data['cardsubcategories'] = $cardsubcategories;
    $data['users'] = $users;
    $data['cards'] = $cards;
    $data['transactions'] = $transactions;
    $data['querys'] = $query;
      $data['sum_balance_point_user'] = $sum_balance_point_user;
      $data['sum_balance_user'] = $sum_balance_user;
      $data['type_transaction'] = "";
      if($request->type_transaction=='retrait des points'){
          $data['type_transaction'] = "debités";
      }else{
          $data['type_transaction'] = "crédités";
      }
      return view('admin.website.static_point_debit_credit',$data);
  }

  public function staticRecharge()
  {
      $stt = staticcontent::all();
      return view('admin.website.static',compact('stt'));
  }

  public function staticModification()
  {
      $stt = staticcontent::all();
      return view('admin.website.static',compact('stt'));
  }

    public function cardListIndex()
    {
        $sub_cat = cardsubcategory::whereStatus(1)->get();
        $cat = cardcategory::whereStatus(1)->get();
        $card = card::join('users','users.id','=','cards.user_id')
                        ->select(
                        'users.deleted',
                        'cards.id as card_id',
                        'cards.user_id as user_id',
                        'card_details',
                        'cards.name as name',
                        'users.name as name_user',
                        'expired_card')
                        ->where('users.deleted',0)
                        ->get();
        //dd($card);
        return view('admin.card.car_index',compact('cat','card','sub_cat'));
    }

    public function cardSearch(Request $request)
    {
        $sub_cat = cardsubcategory::whereStatus(1)->get();
        $cat = cardcategory::whereStatus(1)->get();

        if ($request->category_id != '' && $request->sub_cate_id != '')
        {
            $card = card::where('category_id',$request->category_id)->where('sub_category_id',$request->sub_cate_id)->get();
        }elseif ( $request->category_id == ''){
            $card = card::where('sub_category_id',$request->sub_cate_id)->get();
        }else{
            $card = card::where('category_id',$request->category_id)->get();
        }

        return view('admin.card.car_index',compact('cat','sub_cat', 'card'));
    }

    public function createcarddelete(Request $request)
    {
        $carddel = card::find($request->delid);
        $carddel->delete();
        return back()->with('success', 'Carte supprimée avec succes !!!');
    }



    public function addsubmoneytouser($id)
    {
        $user = User::where('deleted',0)->where('id',$id)->first();
        return view('admin.users.addsubmoney',compact('user'));
    }


    public function addsubmoneytousersave(Request $request,$id)
    {
        $this->validate($request,[
            'amount' => 'required',
            'num_recu' => 'required',
        ]);
        $site_id = session()->get('site_id');
        $user = User::where('deleted',0)->where('id',$id)->first();

        // $toggle = $request->opation == null ? 2 : 1;

        $data['message'] = '';
        if(!empty($request->message)){
            $data['message'] = $request->message;
        }else{
            return back()->with('alert','Impossible de valider cette opération car le message qui doit-être transmis au client est vide');
        }
        if ($request->opation != null){

            if ($request->amount >= 0 ){

                $trans = new Transaction();
                $trans->user_id = $user->id;
                $trans->amount = $request->amount;

                $trans->trxid = str_random(16);
                $trans->details = $request->details;
                $trans->num_recu = $request->num_recu;
                $trans->site_id = isset($site_id) ? $site_id : '';
                $trans->type = 5;
                $trans->balance = $user->balance + $request->amount;
                $trans->save();
                $points = new Point();
                $points->user_id = $user->id;
                $points->num_recu = $request->num_recu;
                $points->added_by = Auth()->user()->id;
                $points->mont_coiffure = $request->amount;
                $points->site_id = isset($site_id) ? $site_id : '';
                $points->type_transaction = 'recharge des points et soldes';
                //$nombre_point = $this->bonus($request->amount);
                $nombre_point = $request->amount * 10/100;
                $points->nbre_point = $nombre_point;
                $points->save();
                $user = User::where('deleted',0)->where('id',$id)->first();
                $user->balance_point = $user->balance_point + $nombre_point;
                $user->balance = $user->balance + $request->amount;
                //$usernewBal = $user['balance'] = $user['balance'] + $request->amount;
                $user->save();
                    $sendsms = new SmsApi();
                    $data['cle_api']=env('KEY_API_EMISMS');
                    $data['to'] = $user->mobile;
                    $data['sender'] = urlencode('KIGNON CARD');
                    $sendsms->isSmsapi($data);

                return back()->with('success','Montant ajouté avec succès');
            }else{
                return back()->with('alert','Balance insufisante');
            }
        }else{
            $balnace = $user->balance - $request->amount;

            if ($user->balance <= 0 || $user->balance <= $balnace ){
                return back()->with('alert', 'Balance insufisante');
            }

            else {

                $trans = new Transaction();
                $trans->user_id = $user->id;
                $trans->amount = $request->amount;
                $trans->site_id = isset($site_id) ? $site_id : '';
                $trans->trxid = str_random(16);
                $trans->details = $request->details;
                $trans->type = 5;
                //$userbl = $trans['balance'] = $user['balance'] - $request->amount;
                $trans->save();

                $userss = User::where('deleted',0)->where('id',$id)->first();
                //$usernewBal = $userss['balance'] = $userss['balance'] - $request->amount;
                $userss->save();

                    $sendsms = new SmsApi();
                    $data['cle_api']=env('KEY_API_EMISMS');
                    $data['to'] = $user->mobile;
                    $data['sender'] = urlencode('KIGNON CARD');
                    $sendsms->isSmsapi($data);

                return back()->with('success', 'Montant retiré avec succès !!!');
            }
        }

    }
    public function addpointsave(Request $request,$id)
    {
            $site_id = session()->get('site_id');
            $this->validate($request,[
                'num_ticket' => 'required',
                'amount' => 'required',
                'mode_paiment'=>'required'
            ]);
            $data = array();

        $user = User::where('deleted',0)->where('id',$id)->first();
            $message = '';

            $data['message'] = '';
            if(!empty($request->message)){
                $data['message'] = $request->message;
            }else{
                return back()->with('alert','Impossible de valider cette opération car le message qui doit-être transmis au client est vide');
            }
            if ($request->amount > 0 ){
                $points = new Point();
                $points->user_id = $user->id;
                $points->mod_paiement = $request->mode_paiment;
                $points->num_ticket = $request->num_ticket;
                $points->mont_coiffure = $request->amount;
                $points->added_by = Auth()->user()->id;
                $nombre_point = $this->bonus($request->amount);
                $points->nbre_point = $nombre_point;
                if($request->mode_paiment=='carte'){
                    if($user->balance<$request->amount){
                        return back()->with('alert','Le solde de la carte du client est insuffisant');
                    }
                    $points->type_transaction = 'rechargement des points';
                    $user->balance_point = $user->balance_point + $nombre_point;
                    $user->balance = $user->balance - $request->amount;
                    if($user->balance<0){
                        $user->balance = 0;
                    }
                    $message = 'Point ajouté avec succès';
                }elseif($request->mode_paiment=='point'){
                    if($user->balance_point<$request->amount){
                        return back()->with('alert','Les points sur la carte sont inférieur au montant de la facture');
                    }
                    //$user->balance_point = $user->balance_point - $nombre_point;
                    $user->balance_point = $user->balance_point - $request->amount;
                    if($user->balance_point<0){
                        $user->balance_point = 0;
                    }
                    $points->type_transaction = 'retrait des points';
                    $message = 'Point retiré avec succès';
                }elseif($request->mode_paiment=='ticket'){
                    $points->type_transaction = 'rechargement par ticket';
                    $user->balance_point = $user->balance_point + $nombre_point;
                }
                $points->site_id = isset($site_id) ? $site_id : '';
                $points->save();
                $user->save();

                $tlog['user_id'] = $user->id;
                $tlog['amount'] =  $request->amount;
                $tlog['balance'] = $user->balance;
                $tlog['added_by'] = Auth()->user()->id;
                $tlog['type'] = 1;
                $tlog['site_id'] = $site_id;
                $tlog['details'] = 'Deposé via '.$points->type_transaction;
                $tlog['trxid'] = $request->num_ticket;
                Transaction::create($tlog);
               if($request->notification_sms==1){
                    $sendsms = new SmsApi();
                    $data['cle_api'] = env('KEY_API_EMISMS');
                    $data['to'] = $user->mobile;
                    $data['sender'] = urlencode('KIGNON CARD');
                    $sendsms->isSmsapi($data);
               }

                return back()->with('success',$message);
            }else{
                return back()->with('alert','Le montant est insuffisant');
            }

    }


   private function bonus(int $somme){
        if($somme == 1000){
            $pts=200;
        }
        else
        {
            $div=intdiv($somme, 500);
            if($somme%500 != 0){
                $pts= $div*100+100;
            }else{
                $pts= $div*100;
            }
        }
      return intval($pts);
    }


    public function getBonus(Request $request){
        if(empty($request->amount) || !is_numeric($request->amount)){
            return response()->json([
                'message'=>'Impossible d\'effectuer cette action'
            ]);
        }
        $bonus =  $this->bonus($request->amount);
        $user = User::where('deleted',0)->where('id',$request->id)->first();
        $message = '';
        $new_balance = '';
        //dd($request->mode_paiment,$user->balance_point,$bonus);
        if($request->mode_paiment=='carte' && !isset($request->opation)){
             $new_balance_point = intval($user->balance_point) + intval($bonus);
             $new_amount = intval($user->balance) - intval($request->amount);
             if($new_amount<0){
                $new_amount = 0;
             }
             $message = 'KIGNON-SMS Alerte DEBIT 
 Carte No: '.$user->username.'
 Montant Débit:'.$request->amount.'
 Point crédité: '.$bonus.'
 Solde Montant:'.$new_amount.' FCFA
 Solde point:'.$new_balance_point;
         }else if($request->mode_paiment=='point' && !isset($request->opation)){
             $new_balance_point = intval($user->balance_point) - intval($request->amount);
             if($new_balance_point<0){
               $new_balance_point = 0;
             }
             $message = 'KIGNON-SMS Alerte DEBIT 
 Carte No: '.$user->username.' 
 Montant facture: '.$request->amount.'
 Point débité: '.$bonus.'
 Solde Montant:'.$user->balance.' FCFA
 Solde point:'.$new_balance_point;
         }else if($request->mode_paiment=='ticket' && !isset($request->opation)){
             $new_balance_point = intval($user->balance_point) + intval($bonus);
             $message = 'KIGNON-SMS 
 Carte No: '.$user->username.' 
 Montant facture: '.$request->amount.'
 Point crédit: '.$bonus.'
 Solde Montant:'.$user->balance.' FCFA
 Solde point:'.$new_balance_point;
         }elseif(isset($request->opation)){
            $new_amount = intval($user->balance) + intval($request->amount);
            $point_crediter = $request->amount * 10/100;
            $user->balance_point = $user->balance_point + $point_crediter;
            $message = 'KIGNON-SMS Alerte CREDIT 
 Carte No: '.$user->username.' 
 Montant credit: '.$request->amount.'
 Point credite: '.$point_crediter.'
 Solde Montant:'.$new_amount.' FCFA
 Solde point:'.$user->balance_point; 
            return response()->json([
                'bonus'=>$point_crediter,
                'balance_point'=>$user->balance_point,
                'message'=>$message
              ]);
         }
       return response()->json([
         'bonus'=>$bonus,
         'balance_point'=>$user->balance_point,
         'message'=>$message
       ]);
     }

     public function admintransaction()
    {
        $tran = Transaction::leftjoin('sites','transactions.site_id','=','sites.id')
                            ->select('transactions.*',
                             'sites.name as nom_site'
                            )
                            ->orderBy('id','desc')->get();
        return view('admin.website.transaction',compact('tran'));
    }
}                                               