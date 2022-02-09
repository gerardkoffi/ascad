@extends('layouts.admin')
@section('page_styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <link rel="stylesheet" href="{{asset('assets/admin/')}}/css/moris.css">
@endsection
@section('content')
    <div class="row">
        <div class="col-md-4">
            <a href="{{url('admin/users')}}" style="text-decoration: none">
                <div class="widget-small primary"><i class="icon fa fa-users fa-3x"></i>
                    <div class="info">
                        <h4>Utilisateurs</h4>
                        <p><b>{{$users}}</b></p>
                    </div>
                </div>
            </a>
        </div>


        <div class="col-md-4">
            <a href="{{url('admin/card-category')}}" style="text-decoration: none">
                <div class="widget-small info"><i class="icon fa fa-th fa-3x"></i>
                    <div class="info">
                        <h4>Catégorie totale</h4>
                        <p><b>{{$cat}}</b></p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-md-4">
            <a href="{{url('admin/card-list')}}" style="text-decoration: none">
                <div class="widget-small warning"><i class="icon fa fa-file fa-3x"></i>
                    <div class="info">
                        <h4>Carte totale</h4>
                        <p><b>{{$card}}</b></p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="#" style="text-decoration: none">
                <div class="widget-small primary"><i class="icon fa fa-line-chart fa-3x"></i>
                    <div class="info">
                        <h4>TOTAL DES POINTS CLIENTS</h4>
                        <p><b>{{App\User::sum('balance_point')}} POINTS</b></p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="#" style="text-decoration: none">
                <div class="widget-small warning"><i class="icon fa fa-money fa-3x"></i>
                    <div class="info">
                        <h4>TOTAL DES SOLDES CLIENTS</h4>
                        <p><b>{{App\User::sum('balance')}} F FCFA</b></p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="#" style="text-decoration: none">
                <div class="widget-small danger"><i class="icon fa fa-commenting fa-3x"></i>
                    <div class="info">
                        <h4>MONTANT SMS RESTANT</h4>
                        <p><b>{{$soldesms}} Francs CFA</b></p>
                    </div>
                </div>
            </a>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">Historique des ventes de cartes</h3>

                <div id="myfirstchart" ></div>
            </div>

        </div>
    </div>


@endsection

@section('page_scripts')
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
        <script>

            $(document).ready(function () {
                new Morris.Bar({
                    element: 'myfirstchart',
                    data: {!! $monthly_play !!},
                    xkey: 'y',
                    ykeys: ['a'],
                    labels: ['Total Card']
                });
            });
        </script>
@endsection