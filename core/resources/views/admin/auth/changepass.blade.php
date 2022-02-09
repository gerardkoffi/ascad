@extends('layouts.admin')

@section('content')
<div class="tile">
    <div class="row">
        <div class="col-md-12">
            
            <form role="form" method="POST" action="{{ route('admin.password-update') }}">
                @csrf
                <div class="form-group" >
                    <label class="control-label visible-ie8 visible-ie9">Ancien mot de passe</label>
                    <input id="passwordold" type="password" class="form-control form-control-solid placeholder-no-fix" name="passwordold" placeholder="Ancien mot de passe">
                </div>
                <div class="form-group" >
                    <label class="control-label visible-ie8 visible-ie9">Nouveau mot de passe</label>
                    <input id="password" type="password" class="form-control form-control-solid placeholder-no-fix" name="password" placeholder="Nouveau mot de passe">
                </div>
                <div class="form-group" >
                    <label class="control-label visible-ie8 visible-ie9">Confirmer le mot de passe</label>
                    <input id="password-confirm" type="password" class="form-control form-control-solid placeholder-no-fix" name="Confirmer le mot de passe" placeholder="Confirm Password">
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn btn-success btn-block">Changer le mot de passe</button>
                </div>
                
            </form>
        </div>
        
    </div>
</div>

@endsection