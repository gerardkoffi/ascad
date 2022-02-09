@extends('layouts.admin')
@section('page_styles')
    <link rel="stylesheet" href="{{asset('assets/admin/css/bootstrap-fileinput.css')}}">
@endsection
@section('content')

    <div class="tile">
        <div class="tile-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <div class="caption">
                                <h2 style="text-align: center;color: white">En-tête de catégorie de carte</h2>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-scrollable table-responsive">
                                <form role="form" method="POST" action="{{route('admin.cardheader.submit')}}">
                                    @csrf
                                    <div class="form-group">
                                        <h4>Titre</h4>
                                        <input type="text" value="{{$gnl->attorney_header_title}}" class="form-control" id="contact_number" name="attorney_header_title" >
                                    </div>
                                    <div class="form-group">
                                        <h4>Description</h4>
                                        <textarea class="form-control" id="footer" name="attorney_header_des" rows="7">{!! $gnl-> attorney_header_des!!}</textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success btn-block">Mettre à jour</button>
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
        <div class="tile-body">
        <div class="card success">
            <div class="card-header bg-info">

                <h2 style="color: #fff; text-transform: uppercase;">Catégorie de carte

                    <a class="btn btn-dark pull-right" data-toggle="modal" data-target="#cardcategory">
                        <i class="fa fa-plus"></i> Nouveau Categorie
                    </a>
                </h2>


            </div>
            <div class="card-body">
                <div class="table-scrollable table-responsive">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th width="20%">Image</th>
                            <th>Nom</th>
                            <th>Statut</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($all_cat as $cat)
                            <tr>
                                <td>
                                    <img style="width: 150px;" src="{{asset($cat->image)}}">
                                </td>
                                <td>
                                    {{$cat->cat_name}}
                                </td>
                                <td>
                                    @if($cat->status == 1)
                                        <label class="badge badge-success">ACTIVE</label>
                                    @else
                                        <label class="badge badge-danger">INACTIVE</label>
                                    @endif
                                </td>


                                <td>
                                    <button class="btn btn-info etdbtn" data-toggle="modal" data-target="#editfeatures{{$cat->id}}" data-id="{{$cat->id}}">Modifier</button>



                                    <div id="editfeatures{{$cat->id}}" class="modal fade" role="dialog">
                                        <div class="modal-dialog">


                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Modifier Categorie </h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                                                </div>
                                                <div class="modal-body">
                                                    <form role="form" method="POST" action="{{route('admin.catagoryupdate')}}" enctype="multipart/form-data">
                                                        @csrf


                                                        <div class="form-group">
                                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                                <div class="fileinput-new thumbnail" >
                                                                    <img src="{{asset($cat->image)}}" alt="" style="width: 100%;height: 200px"/> </div>
                                                                <div class="fileinput-preview fileinput-exists thumbnail" > </div>
                                                                <div>
                                        <span class="btn btn-success btn-file">
                                            <span class="fileinput-new"> Changer la Photo </span>
                                            <span class="fileinput-exists"> Changer </span>
                                            <input type="file" name="image"> </span>
                                                                    <a href="javascript:;" class="btn red fileinput-exists" data-dismiss="fileinput"> Supprimer </a>
                                                                </div>
                                                            </div>
                                                        </div>



                                                        <div class="form-group">
                                                            <strong>Nom de la catégorie</strong>
                                                            <input type="hidden" name="id" value="{{$cat->id}}">
                                                            <input type="text" class="form-control" value="{{$cat->cat_name}}" name="cat_name" >

                                                        </div>

                                                        <div class="form-group">
                                                            <strong>Statut de la catégorie</strong>
                                                            <select name="status" class="form-control">
                                                                @if($cat->status == 1)
                                                                    <option value="1" selected>ACTIVE</option>
                                                                    <option value="0">INACTIF</option>
                                                                @else
                                                                    <option value="0" selected>INACTIVE</option>.
                                                                    <option value="1">ACTIF</option>
                                                                @endif

                                                            </select>
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
                                </td>
                            </tr>

                        @endforeach
                        <tbody>
                    </table>
                    {{$all_cat->links()}}
                </div>
            </div>
        </div>
        </div>
    </div>


    <div id="cardcategory" class="modal fade" role="dialog">
        <div class="modal-dialog">


            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Créer une catégorie</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <form role="form" method="POST" action="{{route('admin.category.store')}}" enctype="multipart/form-data">
                        @csrf
                        <div class="modal-body">


                            <div class="form-group">



                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    </div>
                                    <div class="fileinput-preview fileinput-exists thumbnail" style="max-width:100%; max-height: 100%;"> </div>
                                    <div>
                                        <span class="btn btn-success btn-file">
                                            <span class="fileinput-new"> Télécharger une photo </span>
                                            <span class="fileinput-exists"> Modifier </span>
                                            <input type="file" name="image"> </span>
                                        <a href="javascript: ;" class="btn red fileinput-exists" data-dismiss="fileinput"> Supprimer </a>
                                    </div>
                                </div>
                            </div>



                            <div class="form-group">
                                <strong>Nom de la catégorie de carte</strong>
                                <input type="text" class="form-control" id="name" name="cat_name" >
                            </div>

                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Fermer</button>
                            <button type="submit" class="btn btn-success">Créer</button>
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



            $('.catdelete').click(function (e) {
                e.preventDefault();
                $('#deletecat').modal('show');
                var id = $(this).data('id');
                $('.delid').val(id);
            })

        })
    </script>

@endsection