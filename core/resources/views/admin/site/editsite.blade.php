@extends('layouts.admin')

@section('content')
    <div class="tile">
        <div class="row">
            <div class="col-md-12">
                 <form  method="POST" action="{{ route('admin.update-site',$site->id) }}">
                   @csrf
                <div class="form-group" >
                    <label>Nom du site: </label>
                   <input id="name" type="text" value="{{$site->name}}" class="form-control" name="name" required>
                </div>
                <div class="form-group" >
                    <label>Lieu du site: (Géolocalisation)</label>
                   <input id="lieu" type="text" value="{{$site->lieu}}" class="form-control" name="lieu" required>
                </div>
                <div class="form-group">
                   <label>Téléphone</label>
                   <input id="telephone" type="text" value="{{$site->telephone}}" class="form-control" name="telephone">
                 </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-lg btn-block btn-success">Mise à jour Site</button>
                </div>
            </form>
          </div>
        </div>
	</div>
	
@endsection