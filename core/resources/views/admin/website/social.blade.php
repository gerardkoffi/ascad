@extends('layouts.admin')
@section('page_styles')
    <link rel="stylesheet" href="{{asset('assets/admin/css/bootstrap-fileinput.css')}}">
@endsection
@section('content')
    <div class="tile">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-info">
                        <div class="caption">
                            <h2 style="text-align : center ; color : white">Icône sociale

                                <a data-toggle="modal" href="#newSlider" class="btn btn-dark pull-right">
                                    <i class="fa fa-plus"></i> Ajouter nouveau
                                </a>

                            </h2>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="table-scrollable table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>
                                        Lien social
                                    </th>

                                    <th>
                                        Icône
                                    </th>

                                    <th>
                                        Action
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($socials as $data)
                                    <tr>
                                        <td>
                                            {{$data->link}}
                                        </td>

                                        <td>
                                            <i class="fa fa-{{$data->icon}}"></i>
                                        </td>

                                        <td>
                                            <a href="{{route('admin.user-single', $data->id)}}" class="etdbtn" data-toggle="modal" data-target="#editfeatures{{$data->id}}" data-id="{{$data->id}}">
                                                <button class="btn btn-info">Modifier</button> </a>
                                            <a href="{{route('admin.user-single', $data->id)}}" class="delbtn" data-id="{{$data->id}}" data-toggle="modal" data-target="#delModal">
                                                <button class="btn btn-danger">Supprimer</button> </a>
                                        </td>
                                    </tr>
                                    <div id="editfeatures{{$data->id}}" class="modal fade" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Contenu modal-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Modifier l'icône Social </h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                                                </div>
                                                <div class="modal-body">
                                                    <form role="form" method="POST" action="{{route('admin.social-update')}}" enctype="multipart/form-data">
                                                        @csrf

                                                        <div class="form-group">
                                                            <h4>Titre</h4>
                                                            <input type="hidden" name="id" value="{{$data->id}}">
                                                            <input type="text"  class="form-control" value="{{$data->link}}"  name="link" >
                                                        </div>
                                                        <div class="form-group">
                                                            <h4>Icon <a target="_blank" href="https://fontawesome.com/v4.7.0/icons/" class="pull-right">Icône de police géniale</a></h4>
                                                            <div class="input-group">
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text">fa fa-</span>

                                                                </div>
                                                                <input type="text" value="{{$data->icon}}"  class="form-control"  name="icon" >
                                                            </div>
                                                        </div>



                                                        <div class="form-group">

                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Fermer</button>
                                                            <button type="submit" class="btn btn-success pull-left">Mettre à jour</button>
                                                        </div>
                                                    </form>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                @endforeach
                                <tbody>
                            </table>
                            {{$socials->links()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="newSlider" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Nouvelle icône sociale</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <form role="form" method="POST" action="{{route('admin.social-store')}}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <h4>Lien social</h4>
                            <input type="text"  class="form-control"  name="link" >
                        </div>
                        <div class="form-group">
                            <h4>Social Icon <a target="_blank" href="https://fontawesome.com/v4.7.0/icons/" class="pull-right">Icône de police géniale</a></h4>
                            <div class="input-group">
                                <div class="input-group-append">
                                    <span class="input-group-text">fa fa-</span>

                                </div>
                                <input type="text"  class="form-control"  name="icon" >
                            </div>
                        </div>



                        <div class="form-group">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Fermer</button>
                            <button type="submit" class="btn btn-success pull-left">Créer</button>
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </div>

    <div id="delModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Supprimer l'icône sociale</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <form role="form" method="POST" action="{{route('admin.social-delete')}}" >
                        @csrf
                        @method('put')
                        <input type="hidden" class="delmbtm" name="delcfrm">
                        <button type="submit" class="btn btn-danger btn-block"> Supprimer</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('page_scripts')
    <script src="{{asset('assets/admin/js/bootstrap-fileinput.js')}}"></script>
    <script>
        $(document).ready(function () {

            $('.delbtn').click(function () {
                var id = $(this).data('id');
                $('.delmbtm').val(id);
            })

        })
    </script>
@endsection