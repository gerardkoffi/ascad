@extends('layouts.admin')
@section('page_styles')
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
@endsection
@section('content')
    <div class="tuile">
        <h3 style="text-align : center">Nom propriétaire : {{$user->name}}</h3> <br>
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align : center"><strong>Solde courant </strong></h1> <br>
            </div>
            <div class="col-md-6" style="margin : 0 auto">
                <div class="widget-small primary coloured-icon"><i class="icon fa fa-money fa-3x"></i>
                    <div class="info">
                        <h4>Solde</h4>
                        <p><b>{{$user->balance}}</b></p>.
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="tuile">
        <h3 class="tile-title">AJOUTER / SOUSTRAIRE LE SOLDE</h3>
        <div class="tile-body">
            <form method="post" action="{{route('adminaddmonet',$user->id)}}">
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-12"><strong style="text-transform : uppercase ;">Opération</strong></label>
                            <div class="col-md-12">
                                <input data-toggle="toggle" checked data-onstyle="success" data-offstyle="danger" data-width="100%" type="checkbox" name="opation" >
                            </div>
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
                            <input type="text" id="inlineFormInputGroup" name="amount" class="form-control" value="">
                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <label>Message</label>  
                        <textarea class="form-control" name="details" cols="5" rows="5"></textarea>
                    </div>
                </div>
                <div class="row">
                    <button type="submit" class="btn btn-lg btn-primary btn-block">Mise à jour</button>
                </div>
            </form>
        </div>
    </div>
    </div>



    <!--Modal de passage -->

@endsection


