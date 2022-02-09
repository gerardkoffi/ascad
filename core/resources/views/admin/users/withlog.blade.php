@extends('layouts.admin')

@section('content')
<div class="tile">
    <table class="table table-hover">
        <thead>
            <tr>
                <th>
                    Nom d'utilisateur 
                </th>
                <th>
                    Montant
                </th>
                <th>
                    Compte
                </th>         	
            </tr>
        </thead>
        <tbody>
            @foreach($logs as $log)
            <tr>
                <td>
                    <a href="{{route('admin.user-single', $log->user_id)}}">{{$log->user->name}}</a>
                </td>
                <td>
                    {{$log->amount}} {{$gnl->cur}}      
                </td> 
                <td>
                    {{$log->account}}      
                    
                </td>
            </tr>
            @endforeach 
            <tbody>
            </table>
            {{$logs->links()}}
        </div>
        
    </div>
@endsection
    