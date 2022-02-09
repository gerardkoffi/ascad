@extends('layouts.admin')

@section('content')
    <div class="tile">
        <div class="tile-body">
            <form role="form" method="POST" action="{{route('admin.static-point-search')}}">
                @csrf
                <div class="row">
                    <div class="col-md-4">
                        <strong>Date debut</strong>
                        <input type="date" name="date_start" class="form-control" required id="date_start">
                    </div>
                    <div class="col-md-4">
                        <strong>Date fin</strong>
                        <input type="date"  name="date_end"  class="form-control" required id="date_end">
                    </div>
                    <div class="col-md-4">
                        <strong>Sélectionner un(e) client(e)</strong>
                        <select name="user" id="user" class="form-control select2Class" required>
                            <option value=""> Sélectionner un(e) client(e) </option>
                            <option value="all"> Tous les clients </option>
                            @foreach($users as $user)
                                @php
                                  $num_card = App\card::where('user_id',$user->id)->first();
                                  $num_card = isset($num_card) && !empty($num_card) ? ' - N° '.$num_card->card_details : '';
                                @endphp
                                <option value="{{ $user->id }}"> {{ $user->name . ' ( '.$user->mobile.' '. $num_card.')'  }}</option>
                            @endforeach
                        </select>
                    </div>
                {{--<div class="col-md-3">
                        <strong>Type</strong>
                        <select name="type" id="type" class="form-control">
                            <option> Sélectionner un type </option>
                            <option value="point"> {{ __('Point') }}</option>
                            <option value="recharge"> {{ __('Recharge') }}</option>
                            <option value="annulation"> {{ __('Annulation') }}</option>
                        </select>
                    </div>--}}
                </div>
                <br>
                <div class="row">
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-success btn-block">Recherche</button>
                    </div>
                </div>
            </form> 
        </div>
    </div>
    @if(isset($client_search) && $client_search!='all')
        @php
            $carts = App\card::where('user_id',$client_search->id)->first();
        @endphp
        <div class="tuile">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <h5>Nom: {{ $client_search->name }} <br>
                        Carte N° : {{isset($carts) ? $carts->card_details : 'Aucune carte'}} </h5>
                    </div>
                    <div class="col-md-6">
                        <h5>  TEL N° : {{ $client_search->mobile }} </h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h5>Solde Point Actuel: {{ $client_search->balance_point }} </h5>
                    </div>
                    <div class="col-md-6">
                        <h5>Solde Montant Actuel: {{ $client_search->balance }} </h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="tuile">
         <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    <h2 style="text-align : center ; color : white">
                    COMPTE POINTS
                    @if(isset($date_start) && isset($date_end))
                        Resultat stat du {{ $date_start.' au '.$date_end}}
                    @elseif(isset($date_start))
                        Resultat stat du {{ date('Y-m-d') }}
                    @endif
                    </h2>
                </div>

            </div>
            <div class="card-body">
                @php $sl = 1; @endphp
                    <table class="table table-hover" id="datTable">
                        <thead>
                        <tr>
                            <th>Date</th>
                            <th>Designation</th>
                            <th>Débit</th>
                            <th>Crédit</th>
                            <th>Solde</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php
                            $solde = 0;
                        @endphp
                        @if(isset($querys) && count($querys->get())>0)
                            @foreach ($querys->whereIn('type_transaction',['recharge des points et soldes','rechargement des points','retrait des points','rechargement par ticket'])->orderByDesc('points.id')->get() as $item)
                                @php
                                    if($item->type_transaction=='retrait des points' || $item->type_transaction=='rechargement des points'){
                                         $solde=-$item->mont_coiffure;
                                         $type_transaction = 'Montant débité <br> M/Mme/Mlle ' . $item->nom .' N°'.$item->carte_num;
                                    }elseif ($item->type_transaction=='recharge des points et soldes' || $item->type_transaction=='rechargement par ticket'){
                                         $solde+= $item->nbre_point;
                                         $type_transaction = 'Montant crédité <br> M/Mme/Mlle' . $item->nom .' N°'.$item->carte_num;
                                    }
                                @endphp
                                <tr>
                                    <th>{{$item->created_at}}</th>
                                    <th>{!! $type_transaction !!}</th>
                                    <th>{{$item->type_transaction=='retrait des points' || $item->type_transaction=='rechargement des points' ? $item->nbre_point : ''}}</th>
                                    <th>{{$item->type_transaction=='recharge des points et soldes' || $item->type_transaction=='rechargement par ticket' ? $item->nbre_point : ''}}</th>
                                    <th>{{ $solde  }}</th>
                                </tr>
                            @endforeach
                        @endif
                        <tbody>
                    </table>
            </div>
        </div>
    </div> <br>
    <div class="tuile">
        <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    <h2 style="text-align : center ; color : white"> COMPTE MONTANT
                    @if(isset($date_start) && isset($date_end))
                        Resultat stat du {{ $date_start.' au '.$date_end}}</h2>
                    @elseif(isset($date_start))
                        Resultat stat du {{ date('Y-m-d') }}
                    @endif
                        </h2>
                </div>

            </div>
            <div class="card-body">
                @php $sl = 1; @endphp
                    <table class="table table-hover" id="datTable">
                        <thead>
                        <tr>
                            <th>Date</th>
                            <th>Designation</th>
                            <th>Debit</th>
                            <th>Crédit</th>
                            <th>Solde</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php
                            $solde = 0;
                        @endphp
                        @if(isset($querys) && count($querys->get())>0)
                            @foreach ($querys->whereIn('type_transaction',['rechargement des points','recharge des points et soldes','rechargement par ticket'])->orderByDesc('points.id')->get() as $item)
                                @php
                                    if($item->type_transaction=='retrait des points' || $item->type_transaction=='rechargement des points'){
                                         $solde=-$item->mont_coiffure;
                                         $type_transaction = 'Montant débité <br> M/Mme/Mlle ' . $item->nom .' N°'.$item->carte_num;
                                    }elseif ($item->type_transaction=='recharge des points et soldes' || $item->type_transaction=='rechargement par ticket'){
                                         $solde+= $item->mont_coiffure;
                                         $type_transaction = 'Montant crédité <br> M/Mme/Mlle' . $item->nom .' N°'.$item->carte_num;
                                    }
                                @endphp
                                <tr>
                                    <th>{{$item->created_at}}</th>
                                    <th>{!! $type_transaction !!}</th>

                                    <th>{{$item->type_transaction=='retrait des points' || $item->type_transaction=='rechargement des points' ? $item->mont_coiffure : ''}}</th>
                                    <th>{{$item->type_transaction=='recharge des points et soldes' || $item->type_transaction=='rechargement par ticket' ? $item->mont_coiffure : ''}}</th>

                                    <th>{{ $solde }}</th>
                                </tr>
                        @endforeach
                        @endif
                        <tbody>
                    </table>
            </div>
        </div>
    </div>
    @endif

    @if(isset($client_search) && ($client_search=='all'))
        <div class="tuile">
         <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    <h2 style="text-align : center ; color : white">
                    RAPPORT GLOBAL DU
                    @if(isset($date_start) && isset($date_end))
                        Resultat stat du {{ $date_start.' au '.$date_end}}
                    @elseif(isset($date_start))
                        Resultat stat du {{ date('Y-m-d') }}
                    @endif
                    </h2>
                </div>
            </div>
            <div class="card-body">
                @php $sl = 1; @endphp
                    <table class="table table-hover" id="datTable">
                        <thead>
                        <tr>
                            <th>Date</th>
                            <th>Designation</th>
                            <th>Débit</th>
                            <th>Crédit</th>
                            <th>Solde</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php
                            $solde = 0;
                            $type_transaction = '';
                        @endphp
                        @if(isset($querys) && count($querys->get())>0)
                            @foreach ($querys->whereIn('type_transaction',['recharge des points et soldes','rechargement des points','retrait des points','rechargement par ticket'])->orderByDesc('points.id')->get() as $item)
                                @php
                                if($item->type_transaction=='retrait des points' || $item->type_transaction=='rechargement des points'){
                                     $solde=- empty($item->mont_coiffure) ? $item->nbre_point : $item->mont_coiffure;
                                     $type_transaction = 'Montant débité <br> M/Mme/Mlle ' . $item->nom .' N°'.$item->carte_num;
                                }elseif ($item->type_transaction=='recharge des points et soldes' || $item->type_transaction=='rechargement par ticket'){
                                     $solde+= empty($item->mont_coiffure) ? $item->nbre_point : $item->mont_coiffure;
                                     $type_transaction = 'Montant crédité <br> M/Mme/Mlle' . $item->nom .' N°'.$item->carte_num;
                                }
                                @endphp
                                <tr>
                                    <th>{{$item->created_at}}</th>
                                    <th>{!! $type_transaction !!}</th>
                                    <th>{{$item->type_transaction=='retrait des points' || $item->type_transaction=='rechargement des points' ? empty($item->mont_coiffure) ? $item->nbre_point : $item->mont_coiffure : ''}}</th>
                                    <th>{{$item->type_transaction=='recharge des points et soldes' || $item->type_transaction=='rechargement par ticket' ? empty($item->mont_coiffure) ? $item->nbre_point : $item->mont_coiffure : ''}}</th>
                                    <th>{{ $solde  }}</th>
                                </tr>
                            @endforeach
                        @endif
                        <tbody>
                    </table>
            </div>
        </div>
    </div> <br>
    @endif
@endsection
