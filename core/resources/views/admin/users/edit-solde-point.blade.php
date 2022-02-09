@extends('layouts.admin')
@inject('requests', 'Illuminate\Http\Request')
@section('content')

<div class="row">
  <div class="col-md-12">
    <h3>MISE À JOUR DES POINTS ET SOLDES</h3>
  </div>
</div>
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
      <form action="{{route('admin.update-point-solde')}}" name="form_facturation" id="form_facturation" method="post">
          @csrf
        <div class="row" id="block_ticket">
            <input type="hidden" name="user_id" value="{{ $user->id }}">
            <div class="col-lg-12">
                <span class='text-danger'>Laissez le champs vide si vous ne souhaitez pas faire la mise a jour</span>
                <br>
                <div class="form-group margin-bottom-20">
                    <input type="number" required class="form-control" placeholder="Nombre de point" name="point">
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group margin-bottom-20">
                    <input type="text" required autocomplete="off" class="form-control" placeholder="Montant ou solde" name="amount">
                </div>
            </div>
       
      </div><br>
      <div class="row">
        <div class="col-md-6">
          <input type="reset" id="reset" value="Annuler l'opération" class="btn btn-lg btn-block btn-danger" style="margin-bottom:10px ;"> 
        </div>
        <div class="col-md-6">
           <input type="submit" value="Mise à jour" class="btn btn-lg btn-block btn-primary btn-validation" style="margin-bottom:10px ;"> 
        </div>
      </div>
      </div>
    </form>
  </div>
</div>
@endsection