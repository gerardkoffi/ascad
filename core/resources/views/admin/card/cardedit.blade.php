@extends('layouts.admin')
@section('page_styles')
    <script type="text/javascript" src="{{asset('assets/admin/js/nicEdit-latest.js')}}"></script>
    <script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
@endsection
@section('content')
    <div class="tile">
        <div class="row">
            <div class="col-md-12">

                <div class="card">
                    <div class="card-header">
                        <div class="caption">
                            <h2 style="text-align: center">{{$cardedit->card_name}} Edit</h2>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="table-scrollable">
                <form role="form" method="POST" action="{{route('admin.cardupdate')}}" enctype="multipart/form-data" name="cardeditfrm">
                    @csrf
                    <div class="form-group">
                        <h4>Nom de la carte </h4>
                        <input type="hidden" name="id" value="{{$cardedit->id}}">
                        <input type="text" value="{{$cardedit->card_name}}"  class="form-control" id="name" name="card_name" >
                    </div>
                    <div class="form-group">
                        <h4>Numéro de carte</h4>
                        <input type="text" class="form-control" id="footer" value="{{$cardedit->card_details}}"  name="card_details" >
                    </div>

                    <div class="form-group">
                        <h4>Prix de la carte</h4>
                        <input type="text" value="{{$cardedit->card_price}}" class="form-control" id="contact_email" name="card_price" >
                    </div>
                    <div class="form-group">
                        <h4>Date Expiration</h4>
                        <input type="date" value="{{$cardedit->expired_card}}" class="form-control" id="expired_card" name="expired_card" >
                    </div>

                    <div class="form-group">
                        <h4>Image de la carte</h4>
                        @if(!empty($cardedit->card_image))
                        <img src="{{asset($cardedit->card_image)}}" style="height: 300px;width: 400px">
                        @else
                            <h1>N/A</h1>
                        @endif
                        <input type="file" class="form-control" id="contact_email" name="card_image" >
                    </div>
                    <div class="form-group">
                        <h4 for="status">Choisir une catégorie</h4>
                        <select class="form-control" name="category_id">

                            @foreach($cardcategory as $cat)
                                <option value="{{$cat->id}}">{{$cat->cat_name}}</option>
                            @endforeach
                        </select>

                    </div>

                    <div class="form-group">
                        <h4 for="status">Status</h4>
                        <select class="form-control" name="status">
                            <option value="0">Actif</option>
                            <option value="1">Désactivé</option>
                        </select>

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

    <script>
        document.forms['cardeditfrm'].elements['category_id'].value={{$cardedit->category_id}}
        document.forms['cardeditfrm'].elements['status'].value={{$cardedit->status}}
    </script>
@endsection
