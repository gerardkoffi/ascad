@extends('layouts.admin')
@inject('requests', 'Illuminate\Http\Request')
@section('content')

<div class="row">
  <div class="col-md-12">
    <h3>{{ $requests->segment(2)=='user-recharge' ? 'Rechargement de la carte du client:' : 'Facturation de la carte du client:' }} {{$user->name}}</h3>
  </div>
</div>
@if($requests->segment(2)=='user-recharge')
<div class="row">
  <div class="col-md-12">
    <div class="tile">
      <div class="row">
        <div class="col-md-6">
          <div class="widget-small primary coloured-icon"><i class="icon fa fa-money fa-3x"></i>
            <div class="info">
              <h4>SOLDE SUR LA CARTE</h4>
              <p><b>{{round($user->balance, $gnl->decimal)}} {{$gnl->cursym}}</b></p>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="widget-small warning coloured-icon"><i class="icon fa fa-gift fa-3x"></i>
            <div class="info">
              <p><b>{{round($user->balance_point, $gnl->decimal)}} </b></p>
              <h4> <strong>POINT(S)</strong></h4>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <p>Email: <strong>{{ $user->email }}</strong></p>
        </div>
        <div class="col-md-6">
          <p>Nom d'utilisateur: <b>{{ $user->username }}</b></p>
        </div>
      </div>
      <hr>
      <div class="tuile">
        <h3 class="tile-title">AJOUTER @if(Auth()->user()->role=='superadmin') / SOUSTRAIRE LE SOLDE @endif</h3>
        <div class="tile-body">
            <form method="post" action="{{route('adminaddmonet',$user->id)}}">
                @csrf
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                          @if(Auth()->user()->role=='superadmin')
                              <label class="col-md-12"><strong style="text-transform : uppercase ;">Opération</strong></label>
                              <div class="col-md-12">
                                <input data-toggle="toggle" checked data-onstyle="success" data-offstyle="danger" data-width="100%" type="checkbox" name="opation" >
                              @else 
                                <input type="hidden" value="on" name="opation">
                              </div>
                          @endif
                        </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6">
                          <label>Numéro de reçu</label>
                          <label class="sr-only" for="inlineFormInputGroup"></label>
                          <div class="input-group">
                              <input type="text" autocomplete="off" placeholder="Numéro de reçu" id="inlineFormInputGroup" name="num_recu" class="form-control">
                          </div>
                      </div>
                      <div class="form-group col-md-6">
                          <label>Montant</label>
                          <label class="sr-only" for="inlineFormInputGroup"></label>
                          <div class="input-group">
                              <div class="input-group-prepend">
                                  <div class="input-group-text">{{$gnl->cur}}</div>
                              </div>
                              <input type="hidden" name="id" value="{{$user->id}}">
                              <input type="number" autocomplete="off" id="inlineFormInputGroup" name="amount" onchange="getInfoBonusAndUser(this)" class="form-control" value="">
                          </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-12">
                          <label>Message</label>  
                          <textarea class="form-control"name="message" cols="5" id="message" rows="5"></textarea>
                      </div>
                    </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <button type="reset" id="reset" value="Annuler l'opération" class="btn btn-lg btn-block btn-danger" style="margin-bottom:10px ;"> Annuler l'opération
                  </div>
                  <div class="col-md-6">
                    <button type="submit" class="btn btn-lg btn-block btn-primary btn-validation">Mise à jour</button>
                  </div>
                </div>
            </form>
        </div>
    </div>
    </div>
  </div>
  @else
  <div class="col-md-12">
    <div class="tile">
      <div class="row">
        <div class="col-md-6">
          <div class="widget-small primary coloured-icon"><i class="icon fa fa-gift fa-3x"></i>
            <div class="info">
             <p><b>{{round($user->balance_point, $gnl->decimal)}}</b></p>
              <h4> <strong>POINT(S)</strong></h4>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="widget-small warning coloured-icon"><i class="icon fa fa-money fa-3x"></i>
            <div class="info">
             <h4> <strong>SOLDE SUR LA CARTE</strong></h4>
             <p><b>{{round($user->balance, $gnl->decimal)}}  Francs CFA</b></p>
            </div>
          </div>
        </div>
      </div>
      <form action="{{route('admin.adminpointsave',$user->id)}}" name="form_facturation" id="form_facturation" method="post">
          @csrf
        <div class="row">
          <div class="col-md-3">
            Payer par : 
          </div>
          <div class="col-md-8">
            <div class="form-check form-check-inline">
              <input class="form-check-input" required type="radio" name="mode_paiment" onchange="verifchecked(this)" id="carte" value="carte">
              <label class="form-check-label" for="inlineRadio1">Carte</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="mode_paiment" onchange="verifchecked(this)" id="point" value="point">
              <label class="form-check-label" for="inlineRadio2">Point</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="mode_paiment" onchange="verifchecked(this)" id="ticket" value="ticket">
              <label class="form-check-label" for="inlineRadio2">Ticket</label>
            </div>
          </div>
        </div><br>
        <div class="row" id="block_ticket">
          <div class="col-lg-12">
            <div class="form-group margin-bottom-20">
                <input type="text" required autocomplete="off" class="form-control" placeholder="N° Ticket" name="num_ticket">
            </div>
        </div>
        <div class="col-lg-12">
            <div class="form-group margin-bottom-20">
                <input type="number" required class="form-control" onchange="getInfoBonusAndUser(this)" placeholder="Montant" name="amount">
            </div>
        </div>
        <div class="col-lg-12">
          <div class="form-group">
            <div class="toggle md">
                <label>
                  <input type="checkbox" checked value="1" name="notification_sms"><span class="button-indecator">Notifier le client par sms</span>
                </label>
            </div>
          </div> 
        </div>
        <div class="col-lg-12">
            <textarea class="form-control" readonly placeholder="Inscriver votre message ici" name="message" id="message" rows="5">
            </textarea>
        </div>
      </div><br>
      <div class="row">
        <div class="col-md-6">
          <input type="reset" id="reset" value="Annuler l'opération" class="btn btn-lg btn-block btn-danger" style="margin-bottom:10px ;"> 
        </div>
        <div class="col-md-6">
           <input type="submit" value="Effectuer un paiement" class="btn btn-lg btn-block btn-primary btn-validation" style="margin-bottom:10px ;"> 
        </div>
      </div>
      </div>
    </form>
  </div>
  @endif
  <div class="row">
  <div class="col-md-12">
    <div class="tile">
      <div class="row">
        <div class="col-md-6">
          <a href="{{route('admin.user-email',$user->id)}}" class="btn btn-lg btn-block btn-primary" style="margin-bottom:10px ;">Envoyer un courriel</a>
        </div>
        <div class="col-md-6"> 
          <button type="button" class="btn btn-warning btn-lg btn-block" data-toggle="modal" data-target="#changepass">Changer de mot de passe</button>        
        </div>
      </div>
    </div>
  </div>
</div>

<div class="tuile">
  <h3 class="tile-title">Mise à jour du profil</h3>
  <div class="tile-body">
    <form id="form" method="POST" action="{{route('admin.user-status', $user->id)}}" enctype="multipart/form-data">
      @csrf
      @method('put')
      <div class="row">
        <div class="form-group col-md-4">
          <label>Nom et prenom de l'utilisateur</label>
          <input type="text" name="name" class="form-control" value="{{$user->name}}">
        </div>
        <div class="form-group col-md-4">
          <label>username utilisateur</label>
          <input type="text" name="username" class="form-control" value="{{$user->username}}">
        </div>
        <div class="form-group col-md-4">
          <label>Téléphone</label>
          <input type="text" name="mobile" class="form-control" value="{{$user->mobile}}">
        </div>
        <div class="form-group col-md-4">
          <label>Email</label>
          <input type="email" name="email" class="form-control" value="{{$user->email}}">
        </div>

      </div>
      <div class="row">
        <div class="form-group col-md-4">
          <label>Statut de l'utilisateur</label>
          <div class="toggle lg">
              <label>
                <input type="checkbox"value="1" name="status" {{ $user->status == "1" ? 'checked' : '' }}><span class="button-indecator"></span>
              </label>
            </div>
        </div> 

        <div class="form-group col-md-4">
          <label>Vérification de l'e-mail</label>
          <div class="toggle lg">
            <label>
              <input type="checkbox" value="1" name="emailv" {{ $user->emailv == "1" ? 'checked' : '' }}><span class="button-indecator"></span>
            </label>
          </div>
        </div>   
        <div class="form-group col-md-4">
          <label>Vérification par SMS</label>
          <div class="toggle lg">
            <label>
              <input type="checkbox" value="1" name="smsv" {{ $user->smsv == "1" ? 'checked' : '' }}><span class="button-indecator"></span>
            </label>
          </div>
        </div> 
      </div>
      <div class="row">
        <button type="submit" class="btn btn-lg btn-primary btn-block">Mise à jour</button>
      </div>     
    </form>
  </div>
</div>
</div>


</div>



<!--Change Pass Modal -->
<div id="changepass" class="modal fade" role="dialog">
  <div class="modal-dialog">
    
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        
        <h4 class="modal-title pull-left">Changer le mot de passe</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form role="form" method="POST" action="{{route('admin.user-pass', $user->id)}}" enctype="multipart/form-data">
          @csrf
          @method('put')
          <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
            <label for="password" class="col-md-4 control-label">Mot de passe</label>
            
            
            <input id="password" type="password" class="form-control" name="password" required>
            
            @if ($errors->has('password'))
            <span class="help-block">
              <strong>{{ $errors->first('password') }}</strong>
            </span>
            @endif
            
          </div>
          
          <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
            <label for="password-confirm" class="col-md-4 control-label">Confirmer le mot de passe</label>
            
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
            
            @if ($errors->has('password_confirmation'))
            <span class="help-block">
              <strong>{{ $errors->first('password_confirmation') }}</strong>
            </span>
            @endif
            
          </div>
          
          <div class="form-group">
            
            <button type="submit" class="btn btn-primary btn-block">
              Changer le mot de passe
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection
@section('page_scripts')
    <script>
           $(function() {
            $('#reset').click(function() {
                $(':input','#form_facturation')
                    .not(':button, :submit, :reset, :hidden')
                    .val('')
                    .removeAttr('checked')
                    .removeAttr('selected');
            });
        });
    </script>
@endsection
