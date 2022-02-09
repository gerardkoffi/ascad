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
                            Lieu/Geolocalistion
                        </th>
                        <th>
                            Téléphone
                        </th>
                        <th>
                           Action
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($sites as $site)
                    <tr>
                        <td>
                            {{$site->name}}
                        </td>
                        <td>
                            {{$site->lieu}}
                        </td> 
                        <td>
                            {{$site->telephone}}
                        </td>
                        <td>
                            <a href="{{route('admin.edit-site',$site->id)}}" class="btn btn-secondary">Modifier le site</a>
                        </td>
                    </tr>
                    @endforeach 
                    <tbody>
                </table>
              </div>
            </div>
        </div>
 @endsection