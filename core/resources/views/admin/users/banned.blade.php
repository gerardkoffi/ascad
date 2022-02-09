@extends('layouts.admin')

@section('content')
<div class="tile">
    <div class="card">
        <div class="card-header">
            <div class="caption">
                <h2 style="text-align: center">Utilisateur bloqué</h2>
            </div>

        </div>
        <div class="card-body">
            <div class="table-scrollable">
        <table class="table table-hover">
                <thead>
                    <tr>
                        <th>
                            Nom 
                        </th>
                        <th>
                            Courriel
                        </th>
                        <th>
                            Nom d'utilisateur
                        </th>
                        <th>
                             Téléphone
                        </th>
                        <th>
                            Solde
                        </th>                           
                        <th>
                            Détails
                        </th>
                  	 </tr>
                </thead>
                <tbody>
		 	@foreach($users as $user)
                     <tr>
                     	<td>
                                <a href="{{route('admin.user-single', $user->id)}}">{{$user->name}}</a>
                        </td>
                        <td>
                            {{$user->email}}      
                        </td> 
                        <td>
                            {{$user->username}}      
                        </td>
                        <td>
                            {{$user->mobile}}
                        </td>
                        <td>
                        	{{round($user->balance, $gnl->decimal)}} {{$gnl->cursym}}
                        </td>
                        <td>
                        	<a href="{{route('admin.user-single', $user->id)}}" class="btn btn-sm">
                             <i class="fa fa-eye"></i> Afficher </a>
                        </td>
                     </tr>
 			@endforeach 
 			<tbody>
           </table>
            {{$users->links()}}
        </div>
        </div>
    </div>
</div>

@endsection