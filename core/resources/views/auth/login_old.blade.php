@extends('fontend.master')
@section('css')
    fontend.master
@endsection
@section('content')
    <!-- login page content area start -->
    <section class="login-page-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title">
                        <h2 class="title">Connectez-vous à votre compte</h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="login-form-wrapper"><!-- login form wrapper -->


                        <form  action="{{ route('login') }}" method="post" >
                            @csrf
                            <div class="form-element has-icon margin-bottom-20">
                                <input type="text" class="input-field" name="username" value="{{ old('username') }}" placeholder="Entrez le nom d'utilisateur">
                                <div class="the-icon">
                                    <i class="far fa-user"></i>
                                </div>
                                @if ($errors->has('username'))
                                    <span class="help-block">
                        <strong>{{ $errors->first('username') }}</strong>
                    </span>
                                @endif
                            </div>
                            <div class="form-element has-icon margin-bottom-20">
                                <input type="password" class="input-field" name="password"  placeholder="Entrez le mot de passe">
                                <div class="the-icon">
                                    <i class="fas fa-lock"></i>
                                </div>
                                @if ($errors->has('password'))
                                    <span class="help-block">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                                @endif
                            </div>

                            <div class="btn-wrapper margin-bottom-20">
                                <div class="btn-block">
                                    <input type="submit" class="submit-btn btn-block" style=" border-radius: 25px;" value="Se connecter">
                                </div>

                            </div>
                             <div class="from-footer">
                                <span class="ftext">Mot de passe oublié ?  <a href="{{route('password.resetreq')}}">Reinitialiser votre mot de passe</a></span>
                            </div> 
                        </form>
                    </div><!-- //. login form wrapper -->
                </div>
            </div>
        </div>
    </section>
    <!-- login page content area end -->
@endsection
