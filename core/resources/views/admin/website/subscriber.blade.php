@extends('layouts.admin')

@section('content')

    <div class="tile">
        <div class="tile-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <div class="caption">
                                <h2 style="text-align : center;color : white">En-tête de l'abonné</h2>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-scrollable table-responsive">
                                <form role="form" method="POST" action="{{route('admin.subscrive.submit')}}">
                                    @csrf
                                    <div class="form-group">
                                        <h4>Titre</h4>

                                        <input type="text" value="{{$gnl->subs_title}}" class="form-control"
                                               id="numéro_contact" name="sous-titre">
                                    </div>
                                    <div class="form-group">
                                        <h4>Détail</h4>

                                        <input type="text" value="{{$gnl->subs_des}}" class="form-control"
                                               id="contact_number" name="subs_des">
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success btn-block">Mise à jour</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tile">
        <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    <h2 style="text-align: center; color: white">Abonnés</h2>
                </div>

            </div>
            <div class="card-body">
                <div class="table-scrollable table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                            <th>
                                Numéro de série
                            </th>
                            <th>
                                Email
                            </th>

                        </tr>
                        </thead>
                        <tbody>
                        @foreach($subs as $key => $user)
                            <tr>
                                <td>
                                    {{$key+1}}
                                </td>
                                <td>
                                    {{$user->email}}
                                </td>

                            </tr>
                        @endforeach
                        <tbody>
                    </table>
                    {{$subs->links()}}
                </div>
            </div>
        </div>
    </div>

@endsection