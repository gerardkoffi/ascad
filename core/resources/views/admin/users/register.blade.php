@extends('layouts.admin')

@section('content')
        <!-- login page content area start -->
        <div class="tuile">
            <div class="card">
                <div class="card-header bg-info">
                    <div class="caption">
                        <h2 style="text-align : center ; color : white">Créer un utilisateur</h2>
                    </div> 
                </div>
                <div class="card-body">
                    <div class="table-scrollable">
            <form role="form" method="POST" action="{{ route('admin.create.post') }}" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group margin-bottom-20">
                            <input type="text" class="form-control" name="name" value="{{ old('name') }}" placeholder="Nom et Prénoms">
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group margin-bottom-20">
                            <input type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Email">
                        </div>
                    </div>
                    {{-- <div class="col-lg-12">
                        <div class="form-group margin-bottom-20">
                            <input type="text" class="form-control" name="username" value="{{ old('username') }}" placeholder="Nom d'utilisateur">
                        </div>
                    </div> --}}

                    <div class="col-lg-12">
                        <div class="form-group margin-bottom-20">
                            <input type="text" name="mobile" value="{{ old('mobile') }}" class="form-control" placeholder="Téléphone">
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="form-group margin-bottom-20">
                            <input type="text" class="form-control" name="city" value="{{ old('city') }}" placeholder="Entrez le nom de la ville">
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="form-group margin-bottom-20">
                            <input type="text" class="form-control"  name="country" value="{{ old('country') }}" placeholder="Commune">
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <strong>Sélectionnez une carte</strong>
                            <select class="form-control" name="card">
                                <option value="">Aucune carte pour le moment</option>
                                @foreach($cards as $card)
                                    <option value="{{$card->id}}">{{$card->name.'-'.$card->card_details}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    {{-- <div class="col-lg-12">
                        <div class="form-group margin-bottom-20">
                            <input type="password" class="form-control" name="password" placeholder="Entrez le mot de passe">
                        </div>
                    </div> 
                    <div class="col-lg-12">
                        <div class="form-group margin-bottom-20">
                            <input type="password" class="form-control" name="password_confirmation" placeholder="Confirmer le mot de passe">
                        </div>
                    </div> --}}

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

