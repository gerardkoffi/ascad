@extends('layouts.admin')

@section('content')
        <!-- login page content area start -->
        <div class="tuile">
            <div class="card">
                <div class="card-header bg-info">
                    <div class="caption">
                        <h2 style="text-align : center ; color : white">{{ $pt }}</h2>
                    </div> 
                </div>
                <div class="card-body">
                    <div class="table-scrollable">
            <form role="form" method="POST" action="{{ route('admin.changer-carte-post') }}" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <strong>Sélectionnez une carte</strong>
                            <select class="form-control" name="card">
                                @foreach($cards as $card)
                                    <option value="{{$card->id}}">{{$card->name.'-'.$card->card_details}}</option>
                                @endforeach
                            </select>
                        </div>
                        <input type="hidden" name="id_client" value="{{$user_id}}">
                    </div>
                    <div class="col-lg-12">
                        <div class="btn-wrapper">
                            <div class="left-content">
                                <input type="submit" class="submit-btn btn btn-primary btn-lg btn-block" value="S'enregistrer">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
                </div>
            </div>
        </div>
        <!-- login page content area end -->
@endsection

