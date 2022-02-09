@extends('layouts.admin')
@section('content')

  <div class="row">
    <div class="col-md-12">
      <h3>Mise à jour profil :  {{$user->name}}</h3>
    </div>
  </div>
  <div class="tuile">
    <div class="tile-body">
      <form id="form" method="POST" action="{{route('admin.user-status', $user->id)}}" enctype="multipart/form-data">
        @csrf
        @method('put')
        <div class="row">
          <div class="form-group col-md-6">
            <label>Nom et prenom de l'utilisateur</label>
            <input type="text" name="name" class="form-control" value="{{$user->name}}">
          </div>
          <div class="form-group col-md-6">
            <label>username utilisateur</label>
            <input type="text" name="username" class="form-control" value="{{$user->username}}">
          </div>
          <div class="form-group col-md-6">
            <label>Téléphone</label>
            <input type="text" name="mobile" class="form-control" value="{{$user->mobile}}">
          </div>
          <div class="form-group col-md-6">
            <label>Email</label>
            <input type="email" name="email" class="form-control" value="{{$user->email}}">
          </div>
          <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }} col-md-6">
            <label for="password" class="col-md-4 control-label">Mot de passe</label>
            <input id="password" type="password" class="form-control" name="password">
            @if ($errors->has('password'))
            <span class="help-block">
              <strong>{{ $errors->first('password') }}</strong>
            </span>
            @endif
          </div>
          <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }} col-md-6">
            <label for="password-confirm" class="col-md-4 control-label">Confirmer le mot de passe</label>
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation">
            @if ($errors->has('password_confirmation'))
            <span class="help-block">
              <strong>{{ $errors->first('password_confirmation') }}</strong>
            </span>
            @endif
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
