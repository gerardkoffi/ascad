@extends('layouts.admin')

@section('content')
    <div class="tile">
        <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    <h2 style="text-align : center ; color : white">Transactions</h2>
                </div>
            </div>
            <div class="card-body">
                <div class="table-scrollable">
                    <div class="row">
                        <table class="table table-hover" id="datTable">
                            <thead>
                            <tr>
                                <th>
                                    Date
                                </th>
                                <th>
                                    Numéro de transaction
                                </th>
                                <th>
                                    Utilisateur
                                </th>
                                <th>
                                    Nom utilisateur
                                </th>
                                <th>
                                    Numéro de carte
                                </th>
                                
                                <th>
                                    Détails
                                </th>
                                <th>
                                    Montant
                                </th>
                                <th>
                                    Solde
                                </th>
                                <th>
                                    Ajouter par
                                </th>
                                <th>
                                    Site
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($tran as $tr)
                                <tr>
                                    <td>
                                        @php 
                                            setlocale(LC_TIME, 'fr_FR.UTF8', 'fr.UTF8', 'fr_FR.UTF-8', 'fr.UTF-8');
                                            echo strftime("%A %d %B %G", strtotime($tr->created_at));
                                        @endphp
                                    </td>
                                    <td>
                                        {{$tr->trxid}}
                                    </td>
                                    <td>
                                        <a href="{{route('admin.edit-single',$tr->user_id)}}">{{$tr->user->name}}</a>
                                    </td>
                                     <td>
                                        {{$tr->user->username}}
                                    </td>
                                    <td>
                                        {{App\card::where('user_id',$tr->user->id)->first()->card_details}}
                                    </td>
                                    <td>
                                        {{$tr->details}}
                                    </td>
                                    <td>
                                        {{$tr->amount}} {{$gnl->cursym}}
                                    </td>
                                    <td>
                                        {{$tr->balance}} {{$gnl->cursym}}
                                    </td>
                                    <td>
                                        @php 
                                          $users = !empty($tr->added_by) ?  App\Admin::find($tr->added_by) : '';
                                        @endphp
                                        {{ !empty($users) ? $users->name : 'Aucune personne' }}
                                    </td>
                                    <td>
                                        {{ $tr->nom_site }}
                                    </td>
                                </tr>
                            @endforeach
                            <tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection


@section('page_scripts')

@endsection