@extends('layouts.admin')
@section('page_styles')
    <link rel="stylesheet" href="{{asset('assets/admin/css/bootstrap-fileinput.css')}}">
@endsection
@section('content')
    <div class="tile">
        <div class="row">
            <div class="col-md-12 com-sm-12 ">
                <div class="card ">
                    <div class="card-header bg-info">
                        <h2 style="color: #fff; text-transform: uppercase;">Gérer le blog

                            <a class="btn btn-dark pull-right" data-toggle="modal" data-target="#blog">
                                <i class="fa fa-plus"></i> Nouveau Blog
                            </a>
                        </h2>
                    </div>
                    <div class="card-body ">
                        <div class="table-scrollable table-responsive">

                            <table class="table   ">
                                <thead>
                                <tr>
                                    <th>
                                        Titre
                                    </th>

                                    <th>
                                        Status
                                    </th>
                                    <th>
                                        Action
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($blog as $data)
                                    <tr>
                                        <td>
                                            {{$data->title}}
                                        </td>

                                        <td>
                                            @if($data->status == 0)
                                                <label class="badge badge-success btn-sm">publier</label>
                                            @else
                                                <label class="badge badge-danger btn-sm">Non publié</label>
                                            @endif
                                        </td>
                                        <td>
                                            <a href="{{route('admin.user-single', $data->id)}}" class="etdbtn" data-toggle="modal" data-target="#editfeatures{{$data->id}}" data-id="{{$data->id}}">
                                                <button class="btn btn-info ">Modifier</button> </a>

                                        </td>
                                    </tr>
                                    <div id="editfeatures{{$data->id}}" class="modal fade" role="dialog">
                                        <div class="modal-dialog">


                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Modifier le Blog </h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                                                </div>
                                                <div class="modal-body">
                                                    <form role="form" method="POST" action="{{route('admin.blog-update')}}" enctype="multipart/form-data">
                                                        @csrf
                                                        <div class="form-group">

                                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                                <div class="fileinput-new thumbnail" >
                                                                    <img src="{{asset($data->image)}}" alt="" style="width: 100%;height: 200px"/> </div>
                                                                <div class="fileinput-preview fileinput-exists thumbnail" > </div>
                                                                <div>
                                        <span class="btn btn-success btn-file">
                                            <span class="fileinput-new"> Changeer la Photo </span>
                                            <span class="fileinput-exists"> Changer </span>
                                            <input type="file" name="image"> </span>
                                                                    <a href="javascript:;" class="btn red fileinput-exists" data-dismiss="fileinput"> Supprimer </a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="form-group">
                                                            <h4>Title</h4>
                                                            <input type="hidden" name="id" value="{{$data->id}}">
                                                            <input type="text"  class="form-control" value="{{$data->title}}"  name="title" >
                                                        </div>
                                                        <div class="form-group">
                                                            <h4>Description</h4>
                                                            <textarea class="form-control" id="footer" name="des" rows="7">{!! $data->des !!}</textarea>
                                                        </div>

                                                        <div class="form-group">
                                                            <h4 for="status">Choisir un Status</h4>
                                                            <select class="form-control" name="status">


                                                                <option value="0">Actif</option>
                                                                <option value="1">Désactivé</option>

                                                            </select>

                                                        </div>
                                                        <div class="form-group">

                                                        </div>

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Fermer</button>
                                                            <button type="submit" class="btn btn-success pull-left">Mise à jour</button>
                                                        </div>
                                                    </form>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                                <tbody>
                            </table>

                            {{$blog->links()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="blog" class="modal fade" role="dialog">
        <div class="modal-dialog">


            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Nouveau Blog</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <form role="form" method="POST" action="{{route('admin.blog-store')}}" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 100px; max-height: 150px;"> </div>
                                <div>
                                        <span class="btn btn-success btn-file">
                                            <span class="fileinput-new"> Télécharger la photo </span>
                                            <span class="fileinput-exists"> Changer </span>
                                            <input type="file" name="image"> </span>
                                    <a href="javascript:;" class="btn red fileinput-exists" data-dismiss="fileinput"> Supprimer </a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <h4>Titre du Blog </h4>
                            <input type="text"  class="form-control"  name="title" >
                        </div>



                        <div class="form-group">
                            <h4>Détails du blog</h4>
                            <textarea class="form-control" name="des">

                                    </textarea>

                        </div>
                        <div class="form-group">
                            <h4 for="status">Sélectionner le statut</h4>
                            <select class="form-control" name="status">


                                <option value="0">Actif</option>
                                <option value="1">Désactivé</option>

                            </select>

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