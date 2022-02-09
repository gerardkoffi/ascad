@extends('layouts.admin')

@section('content')
<div class="tile">
    <div class="card">
        <div class="card-header">
            <div class="caption">
                <h2 style="text-align: center">Tous les utilisateurs</h2>
            </div>

        </div>
        <div class="card-body">
            <div class="table-scrollable table-responsive">
               
    <table class="table table-hover" id="datTable">
        <thead>
            <tr>
                <th>
                    Nom & Prenom
                </th>
                <th>
                    Nom utilisateur
                </th>
                {{-- <th>
                    Courriel
                </th> --}}
                <th>
                    Numéro de carte
                </th>
                <th>
                    Téléphone
                </th>                       
                {{-- <th>
                    Carte associée
                </th>   --}}                     
                <th>
                    Action
                </th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
            <tr>
                <td>
                    {{$user->name}}
                </td>
                <td>
                    {{$user->username}}
                </td>
                {{-- <td>
                    {{$user->email}}      
                </td> --}} 
                <td>
                    @php 
                    $cart = App\card::where('user_id',$user->id)->first();
                    @endphp
                    {{ empty($cart) ? 'aucune carte associée' : $cart->card_details }}     
                </td>
                <td>
                    {{$user->mobile}}
                </td>
                {{-- <td>
                    @php 
                        $cart = App\card::where('user_id',$user->id)->first();
                    @endphp
                    {{ empty($cart) ? 'aucune carte associée' : $cart->card_details }}
                </td> --}}
                <td>
                    <a href="{{route('admin.attribution-carte', $user->id)}}" >
                        <button class="btn btn-primary btn-sm">Attribuer une carte</button> 
                    </a>
                    <a href="{{route('admin.user-recharge', $user->id)}}" >
                        <button class="btn btn-warning btn-sm">Recharger</button> 
                    </a>
                    <a href="{{route('admin.user-single', $user->id)}}" >
                        <button class="btn btn-info btn-sm">Facturation</button> 
                    </a>
                    @if(auth()->user()->role=='superadmin')
                    <a href="{{route('admin.edit-point-solde', $user->id)}}" >
                        <button class="btn btn-success btn-sm">Mise à jour Solde/Point</button> 
                    </a>
                    @endif
                    <a href="{{route('admin.delete', $user->id)}}" >
                        <button class="btn btn-danger btn-sm">Supprimer un client</button> 
                    </a>
                </td>
                </tr>
                @endforeach 
                <tbody>
                </table>
               {{--  {{$users->links()}} --}}
                
            </div>
        </div>
    </div>
</div>

            @endsection