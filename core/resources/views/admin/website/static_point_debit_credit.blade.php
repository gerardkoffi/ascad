@extends('layouts.admin')

@section('content')
    <div class="tile">
        <div class="tile-body">
            <form role="form" method="POST" action="{{route('admin.static-debit-credit-point-search')}}">
                @csrf
                <div class="row">
                    <div class="col-md-3">
                        <strong>Date debut</strong>
                        <input type="date" name="date_start" class="form-control" id="date_start">
                    </div>
                    <div class="col-md-3">
                        <strong>Date fin</strong>
                        <input type="date"  name="date_end"  class="form-control" id="date_end">
                    </div>
                    <div class="col-md-3">
                        <strong>Type de transaction</strong>
                        <select name="type_transaction" id="type_transaction" class="form-control">
                            <option value=""> Sélectionner un type de transaction </option>
                            <option value="retrait des points">Débit</option>
                            <option value="rechargement des points"> Crédit</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <strong>Montant des cartes</strong>
                        <select name="sub_category_id" id="sub_category_id" class="form-control">
                            <option> Sélectionner un montant </option>
                            @foreach($cardsubcategories as $cardsubcategorie)
                                <option value="{{$cardsubcategorie->id}}"> {{$cardsubcategorie->price}} </option>
                            @endforeach
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
    @if(isset($sum_balance_point_user) && isset($sum_balance_user))
    <div class="tuile">
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                </div>
                <div class="col-md-6">
                    TOTAL SOLDE MONTANT {{strtoupper($type_transaction)}}  : {{$sum_balance_user}}
                </div>
            </div>
        </div>
    </div>
    @endif
    <div class="tuile">
        <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    <h2 style="text-align : center ; color : white">Resultat statistique</h2>
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
