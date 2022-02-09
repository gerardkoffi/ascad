@extends('layouts.admin')

@section('content')
    <div class="tile">
        <div class="tile-body">
            <form role="form" method="GET" action="{{route('admin.card.search')}}">
                <div class="row">
                    <div class="col-md-3">
                        <select name="" id="" class="form-control">
                            @foreach($variable as $key => $value)
                                <option> </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select name="" id="" class="form-control">
                            @foreach($variable as $key => $value)
                                <option> </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select name="" id="" class="form-control">
                            @foreach($variable as $key => $value)
                                <option> </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select name="" id="" class="form-control">
                            @foreach($variable as $key => $value)
                                <option> </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="row">
                    <button type="submit" class="btn btn-success btn-block">Recherche</button>
                </div>
            </form> 
        </div>
    </div>


    <div class="tuile">
        <div class="card">
            <div class="card-header bg-info">
                <div class="caption">
                    <h2 style="text-align : center ; color : white">Section statique</h2>
                </div>

            </div>
            <div class="card-body">
                <div class="row">
                    @php $sl = 1; @endphp
                    @foreach($stt as $slide)

                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header text-center">
                                    Serial No: <strong>{{$sl}}</strong>

                                </div>
                                <div class="card-body">
                                    <form role="form" method="POST" action="{{route('admin.staticupdate',$slide->id)}}" enctype="multipart/form-data">
                                        @csrf
                                        @method('put')

                                        <div class="form-group">
                                            <h4>Titre</h4>
                                            <input type="text" value="{{$slide->title}}" class="form-control"  name="title" >
                                        </div>
                                        <div class="form-group">
                                            <h4>Montant</h4>
                                            <input type="text" value="{{$slide->amount}}" class="form-control"  name="amount" >
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-success btn-block">Mise à jour</button>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                        @php $sl = $sl+1; @endphp
                    @endforeach
                </div>
            </div>
        </div>
    </div>



@endsection
