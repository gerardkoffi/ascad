@extends('layouts.admin')

@section('content')
    <div class="tile">
        <div class="tile-body">
            <form role="form" method="POST" action="{{route('admin.static-point-search')}}">
                @csrf
                <div class="row">
                    <div class="col-md-3">
                        <strong>Date debut</strong>
                        <input type="date" name="date_start" class="form-control" required id="date_start">
                    </div>
                    <div class="col-md-3">
                        <strong>Date fin</strong>
                        <input type="date"  name="date_end"  class="form-control" required id="date_end">
                    </div>
                    <div class="col-md-3">
                        <strong>Sélectionner un(e) client(e)</strong>
                        <select name="user" id="user" class="form-control">
                            <option value=""> Sélectionner un(e) client(e) </option>
                            @foreach($users as $user)
                                <option value="{{ $user->id }}"> {{ $user->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3">
                        <strong>Type</strong>
                        <select name="type" id="type" class="form-control">
                            <option> Sélectionner un type </option>
                            <option value="point"> {{ __('Point') }}</option>
                            <option value="recharge"> {{ __('Recharge') }}</option>
                            <option value="annulation"> {{ __('Annulation') }}</option>
                        </select>
                    </div>
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
        <div class="tuile">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        TOTAL SOLDE POINT {{strtoupper($type_transaction_credite)}}  : {{ $sum_balance_user_credit_tot }}
                    </div>
                    <div class="col-md-6">
                        TOTAL SOLDE MONTANT {{strtoupper($type_transaction_credite)}}  : {{ $sum_balance_user_credit }}
                    </div>
                </div>
            </div>
        </div>
        <div class="tuile">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        TOTAL SOLDE POINT {{strtoupper($type_transaction_debite)}}  : {{ $sum_balance_point_user_debit  }}
                    </div>
                    <div class="col-md-6">
                        TOTAL SOLDE MONTANT {{strtoupper($type_transaction_debite)}}  : {{$sum_balance_user_debit}}
                    </div>
                </div>
            </div>
        </div>
    <div class="tuile">
        <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    @if(isset($date_start) && isset($date_end))
                        <h2 style="text-align : center ; color : white">Resultat stat du {{ $date_start.' au '.$date_end}}</h2>
                        @elseif(isset($date_start))
                        <h2 style="text-align : center ; color : white">Resultat stat du {{ date('Y-m-d') }}</h2>
                    @endif
                </div>

            </div>
            <div class="card-body">
                @php $sl = 1; @endphp
                    <table class="table table-hover" id="datTable">
                        <thead>
                        <tr>
                            <th>Numéro de carte</th>
                            <th>Ajouté Par</th>
                            <th>Client</th>
                            <th>Num ticket</th>
                            <th>Solde Point</th>
                            <th>Solde Montant</th>
                            <th>Date</th>
                            <th>Type</th>
                        </tr>
                        </thead>
                        <tbody>
                        @isset($querys)
                            @foreach ($querys as $item)
                                <tr>
                                    <td>{{ $item->card_details }}</td>
                                    <td>{{ empty($item->staff_name) ? 'Admin' : $item->staff_name }}</td>
                                    <td>{{ $item->nom .' '. $item->lastname}}</td>
                                    <td>{{ $item->num_ticket }}</td>
                                    <td>{{ $item->balance_point_user }}</td>
                                    <td>{{ $item->balance_user }}</td>
                                    <td>{{ $item->created_at }}</td>
                                    <td>{{ $item->type_transaction }}</td>
                                </tr>
                            @endforeach
                        @endisset
                        <tbody>
                    </table>
            </div>
        </div>
    </div> <br>
    <div class="tuile">
        <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    @if(isset($date_start) && isset($date_end))
                        <h2 style="text-align : center ; color : white">Resultat stat du {{ $date_start.' au '.$date_end}}</h2>
                        @elseif(isset($date_start))
                        <h2 style="text-align : center ; color : white">Resultat stat du {{ date('Y-m-d') }}</h2>
                    @endif
                </div>

            </div>
            <div class="card-body">
                @php $sl = 1; @endphp
                    <table class="table table-hover" id="datTable">
                        <thead>
                        <tr>
                            <th>Numéro de carte</th>
                            <th>Ajouté Par</th>
                            <th>Client</th>
                            <th>Num ticket</th>
                            <th>Solde Point</th>
                            <th>Solde Montant</th>
                            <th>Date</th>
                            <th>Type</th>
                        </tr>
                        </thead>
                        <tbody>
                        @isset($querys)
                            @foreach ($querys as $item)
                                <tr>
                                    <td>{{ $item->card_details }}</td>
                                    <td>{{ empty($item->staff_name) ? 'Admin' : $item->staff_name }}</td>
                                    <td>{{ $item->nom .' '. $item->lastname}}</td>
                                    <td>{{ $item->num_ticket }}</td>
                                    <td>{{ $item->balance_point_user }}</td>
                                    <td>{{ $item->balance_user }}</td>
                                    <td>{{ $item->created_at }}</td>
                                    <td>{{ $item->type_transaction }}</td>
                                </tr>
                            @endforeach
                        @endisset
                        <tbody>
                    </table>
            </div>
        </div>
    </div>



@endsection
