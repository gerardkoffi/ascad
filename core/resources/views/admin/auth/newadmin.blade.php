@extends('layouts.admin')

@section('content')
<div class="tile">
        <div class="row">
<div class="col-md-12">
                 <form  method="POST" action="{{ route('admin.create-admin') }}">
                   @csrf
                <div class="form-group" >
                    <label>Nom de l'administrateur</label>
                   <input id="name" type="text" class="form-control" name="name">
                </div>
                <div class="form-group" >
                    <label>Courriel de l'administrateur</label>
                   <input id="email" type="email" class="form-control" name="email">
                </div>
                <div class="form-group" >
                   <label>Role</label>
                   <select name="role" class="form-control">
                       <option value="staff">Receptionniste</option>
                       <option value="superadmin">Admin</option>
                       <option value="concepteur">Conception</option>
                   </select>
                </div>
                <div class="form-group">
                    <label>Nom d'utilisateur de l'administrateur</label>
                   <input id="username" type="text" class="form-control" name="username">
                </div>
                {{--<div class="form-group">
                    <label>Liste Sites</label>
                    <select name="site" id="site" class="form-control">
                        @foreach($sites as $site)
                            <option value="{{$site->id}}">{{$site->name}}</option>
                        @endforeach
                    </select>
                </div>--}}
                <div class="form-group" >
                    <label>Nouveau mot de passe</label>
                   <input id="password" type="password" class="form-control" name="password" >
                </div>
                <div class="form-group" >
                    <label>Confirmer le mot de passe</label>
                   <input id="password-confirm" type="password" class="form-control" name="password_confirmation" >
                </div>

                <div class="form-actions">
                    <button type="submit" class="btn btn-lg btn-block btn-success">Créer l'Admin</button>
                </div>
                
            </form>
          </div>
			
				</div>
			</div>
	
@endsection