@extends('layouts.admin')

@section('content')
    <div class="tile">
        <div class="row">
            <div class="col-md-12">
                 <form  method="POST" action="{{ route('admin.create-site') }}">
                   @csrf
                <div class="form-group" >
                    <label>Nom du site: </label>
                   <input id="name" type="text" class="form-control" name="name" required>
                </div>
                <div class="form-group" >
                    <label>Lieu du site  (Géolocalisation):</label>
                   <input id="lieu" type="text" class="form-control" name="lieu" required>
                </div>
                <div class="form-group">
                   <label>Téléphone: </label>
                   <input id="telephone" type="text" class="form-control" name="telephone">
                 </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-lg btn-block btn-success">Créer un site</button>
                </div>
            </form>
          </div>
        </div>
	</div>
	
@endsection