<?php

namespace App\Http\Controllers;



use Auth;
use App\blog;
use App\User;
use App\Social;
use App\General;
use App\Frontend;
use App\faqdetail;
use App\sucscribe;
use Carbon\Carbon;
use App\cardcategory;
use App\staticcontent;
use App\Helpers\SmsApi;
use App\practisedetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class VisitorController extends Controller
{
    public function index()
    {

        return redirect()->route('login');

        $practs = practisedetail::all();

        $statuc = staticcontent::all();
        $faq = faqdetail::all();
        $faqs = faqdetail::all();
        $category = cardcategory::inRandomOrder()->take(6)->get();
        $blog = blog::where('status',0)->inRandomOrder()->take(3)->get();
        return view('fontend.index',compact('allheader','practs',
            'statuc','faq','blog','clientimg','category','faqs'));
    }
    public function resetEmail()
    {
        return view('fontend.reset_password');
    }


    public function verification()
    {
        if(Auth::user()->status == '1' && Auth::user()->emailv == 1 && Auth::user()->smsv == 1)
        {
            return redirect()->route('home');
        }
        else
        {
            return view('auth.verify');
        }
    }

    public function sendVcode(Request $request)
    {
        $user = User::where('deleted',0)->where('id',Auth::id())->first();
        $chktm = $user->vsent+1000;
        if ($chktm > time())
        {
            $delay = $chktm-time();
            return back()->with('alert', 'Please Try after '.$delay.' Seconds');
        }
        else
        {
            $email = $request->email;
            $mobile = $request->mobile;
            $code = rand(100000, 999999);
            $msg = 'Your Verification code is: '.$code;
            $user['vercode'] = $code ;
            $user['vsent'] = time();
            $user->update();

            if(isset($email))
            {
                send_email($user->email, $user->username, 'Verification Code', $msg);
                return back()->with('msg', 'Email verification code sent successfully');
            }
            elseif(isset($mobile))
            {
                send_sms($user->mobile, $msg);
                return back()->with('msg', 'SMS verification code sent successfully');
            }
            else
            {
                return back()->with('alert', 'Sending Failed');
            }
          
        }

    }

    public function resetPassword(Request $request)
    {
            $user = User::where('deleted',0)->where('username',$request->username)->first();
            if(isset($user) && !empty($user))
            {
                $code = rand(100000, 999999);
                $user['password'] = Hash::make($code);
                $user['vsent'] = time();
                $user->update();
                $data['message'] =  'Votre nouveau mot de passe est le suivant : '.$code.', Login :'.$user->username;
                $sendsms = new SmsApi();
                $data['cle_api'] = 'QnFOQXJDY0ZMQnVCRmROdT1Nb2o=';
                $data['to'] = $user->mobile;
                $data['sender'] = urlencode('KIGNON CARD');
                $sendsms->isSmsapi($data);

                return back()->with('msg', 'Votre mot de passe a bien été reinitialisé. Vous allez recevoir d\'ici peu votre mot de passe par sms !!!');
            }
            else
            {
                return back()->with('alert', 'Vous ne figurez pas dans notre base de donnée');
            }
    }

    public function emailVerify(Request $request)
    {
        $this->validate($request, [
            'code' => 'required'
        ]);
        $user = User::where('deleted',0)->where('id',Auth::id())->first();
        $code = $request->code;

        if ($user->vercode == $code)
        {
            $user['emailv'] = 1;
            $user['vercode'] = str_random(10);
            $user['vsent'] = 0;
            $user->save();

            return redirect()->route('home')->with('msg', 'Email Verified');
        }
        else
        {
            return back()->with('alert', 'Wrong Verification Code');
        }

    }

    public function smsVerify(Request $request)
    {
        $this->validate($request, [
            'code' => 'required'
        ]);
        $user = User::where('deleted',0)->where('id',Auth::id())->first();
        $code = $request->code;

        if ($user->vercode == $code)
        {
            $user['smsv'] = 1;
            $user['vercode'] = str_random(10);
            $user['vsent'] = 0;
            $user->save();

            return redirect()->route('home')->with('msg', 'Mobile Number Verified');
        }
        else
        {
            return back()->with('alert', 'Wrong Verification Code');
        }

    }


    public function aboutpage()
    {
        $gnl = General::first();
        $pt = $gnl->about_heading;
        return view('fontend.about',compact( 'pt'));
    }

    public function contact()
    {
        $pt = "Contact Us";
        return view('fontend.contact', compact('pt'));
    }


    public function sendmail(Request $request)
    {
        $this->validate($request,[
           'name' => 'required',
           'email' => 'required',
           'subject' => 'required',
           'message' => 'required',
        ]);


        $general = General::first();

        send_email($general->email,$request->name,$request->subject, $request->message);

         return redirect(route('contact'))->with('msg','Email Send Successfully');



    }


    public function subscribesave(Request $request)
    {
        $em = new sucscribe();
        $em->email = $request->email;
        $em->save();
        return back()->with('msg','Subscribe Successfully ');
    }

    public function blogdetails($id)
    {
        $blogdetails = blog::where('id',$id)->first();
        $pt = "Blog Detail";
        return view('fontend.blogdetails',compact('blogdetails', 'pt'));
    }

    public function blogde()
    {
        $blog = blog::where('status',0)->paginate(12);
        $pt = "Blog List";
        return view('fontend.blog',compact('blog','pt'));
    }
}
