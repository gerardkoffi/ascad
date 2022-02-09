@extends('layouts.admin')

@section('content')
<div class="tile">
    <div class="row">
        <div class="col-md-12">
            
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
                            Action
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($admins as $user)
                    <tr>
                        <td>
                            {{$user->name}}
                        </td>
                        <td>
                            {{$user->email}}      
                        </td> 
                        <td>
                            {{$user->username}}      
                        </td>
                        <td>
                            <a href="{{route('admin.edit-admin',$user->id)}}" class="btn btn-secondary">Modifier admin</a>
                        </td>
                    </tr>
                    @endforeach 
                    <tbody>
                    </table>
                </div>
                
            </div>
        </div>
		
        @endsection