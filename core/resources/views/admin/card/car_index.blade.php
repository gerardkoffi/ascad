@extends('layouts.admin')
@section('page_styles')
    <link rel="stylesheet" href="{{asset('assets/admin/css/bootstrap-fileinput.css')}}">
@endsection
@section('content')

{{--     <div class="tile">
        <div class="card success col-md-6 offset-3">
            <br>
            <div class="card-header bg-info">
                <h2 style="color: #fff; text-transform: uppercase;"> Liste des cartes</h2>
            </div>
            <div class="card-body">
                <form role="form" method="GET" action="{{route('admin.card.search')}}">

                        <div class="form-group">
                            <strong>Sélectionnez la catégorie pour la carte de recherche</strong>
                            <select class="form-control" name="category_id">
                                @foreach($cat as $data)
                                    <option value="{{$data->id}}">{{$data->cat_name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <strong>Sélectionnez une sous-catégorie pour la carte de recherche</strong>
                            <select class="form-control" name="sub_cate_id">
                                @foreach($sub_cat as $data)
                                    <option value="{{$data->id}}">{{$data->name}}</option>
                                @endforeach
                            </select>
                        </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success btn-block">Recherche</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

 --}}

    @if(isset($card))

    <div class="tile">
        <div class="card success">
            <div class="card-header bg-info">
                <h2 style="color: #fff; text-transform: uppercase;">Liste des cartes </h2>
            </div>
            <div class="card-body">
                <div class="table-scrollable">
                    <table class="table table-hover" id="datTable">
                        <thead>
                        <tr>
                            <th>Utilisateur</th>
                            <th>Numéro de carte</th>
                            <th>Statut</th>
                            <th>Action </th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($card as $cat)
                            <tr>
                                <td>
                                    @if($cat->user_id == 0)
                                        Pas encore vendue
                                    @else
                                    
                                    @php $user_name = App\User::find($cat->user_id) ; @endphp
                                       @if(isset($user_name))
                                       <a href="{{url('admin/user/'.$user_name->id)}}">{{ $user_name->name  }}</a>
                                       @endif
                                    @endif
                                    
                                </td>
                                <td>
                                    <label class="badge badge-success">{{$cat->card_details}}</label>
                                 </td> 
                                <td>
                                    @if($cat->user_id == 0)
                                        <label class="badge badge-success">disponible</label>
                                    @else
                                        <label class="badge badge-danger">vendu</label>
                                    @endif
                                </td>
                                

                                <td>
                                    @if(auth()->user()->role == 'superadmin')
                                        <button class="btn btn-info etdbtn" data-toggle="modal" data-target="#editfeatures{{$cat->card_id}}" data-id="{{$cat->card_id}}">Modifier</button>
                                    @endif
                                    <div id="editfeatures{{$cat->card_id}}" class="modal fade" role="dialog">
                                        <div class="modal-dialog">


                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Modifier la carte</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <form role="form" method="POST" action="{{route('admin.cardupdate', $cat->card_id)}}" enctype="multipart/form-data">
                                                        @csrf
                                                        <div class="modal-body">

                                                            <div class="form-group">
                                                                <strong>Sélectionnez la sous-catégorie</strong>
                                                                <select class="form-control" name="category_id">
                                                                    @foreach($sub_cat  as $data)
                                                                        <option {{ $cat->sub_category_id == $data->id ? 'selected':''}} value="{{$data->id}}">{{$data->name}}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <strong>Image de la carte (FACULTATIVE et elle sera masquée pour les utilisateurs non payés)  </strong>
                                                                @if($cat->card_image != '')
                                                                    <img style="width: 250px;" src="{{asset('assets/images/cardimage/'.$cat->card_image)}}">
                                                                @endif
                                                                <input type="file"  class="form-control"  name="card_image">
                                                            </div>

                                                            <div class="form-group">
                                                                <strong>Nom</strong>
                                                                <input type="text"  class="form-control" name="name" value="{{$cat->name_user}}">
                                                            </div>
                                                            <div class="form-group">
                                                                <strong>Date Expiration</strong>
                                                                <input type="date"  class="form-control" name="expired_card" value="{{\Carbon\Carbon::parse($cat->expired_card)->format('Y-m-d')}}">
                                                            </div>
                                                            <div class="form-group">
                                                                <strong>Numéro de carte</strong>
                                                                <input type="text"  class="form-control" id="val1" name="card_details" value="{{$cat->card_details}}">
                                                            </div>

                                                            <div class="form-group">
                                                                <strong>Status</strong>
                                                                <select name="status" class="form-control">
                                                                    <option {{$cat->user_id != "" ? 'selected': '' }} value="1">vendu</option>
                                                                    <option {{$cat->user_id == "" ? 'selected': ''  }} value="">disponible</option>
                                                                </select>
                                                            </div>
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


                                </td>
                            </tr>

                        @endforeach
                        <tbody>
                    </table>


                </div>
            </div>
        </div>
    </div>

@endif


@endsection
@section('page_scripts')
    <script src="{{asset('assets/admin/js/bootstrap-fileinput.js')}}"></script>
@endsection