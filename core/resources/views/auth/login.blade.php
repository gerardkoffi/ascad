<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{asset('assets/fontend/loginv2/fonts/icomoon/style.css')}}">

    <link rel="stylesheet" href="{{asset('assets/fontend/loginv2/css/owl.carousel.min.css')}}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('assets/fontend/loginv2/css/bootstrap.min.css')}}">

    <!-- Style -->
    <link rel="stylesheet" href="{{asset('assets/fontend/loginv2/css/style.css')}}">

    <title>Se connecter</title>
</head>
<body>


<div class="d-lg-flex half">
    <div class="bg order-2 order-md-1" style="background-image: url('{{asset('assets/fontend/loginv2/images/bg_1.jpg')}}');"></div>
    <div class="contents order-1 order-md-2">

        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-7">
                    <h3>SE CONNECTER A<strong> ASCARD</strong></h3>
                    <form action="{{ route('login') }}" method="post">
                        @csrf
                        <div class="form-group first">
                            <label for="username">Nom utilisateur</label>
                            <input type="text" class="form-control" name="username" required placeholder="Numéro de téléphone ou Numéro de carte" id="username">
                        </div>
                        <div class="form-group last mb-3">
                            <label for="password">Mot de passe</label>
                            <input type="password" class="form-control" name="password" required placeholder="Mot de passe" id="password">
                        </div>
                        <div class="d-flex mb-5 align-items-center">
                            <span class="ml-auto"> Mot de passe oublié ?  <a href="{{route('password.resetreq')}}" class="forgot-pass">Réinitialiser votre mot de passe</a></span>
                        </div>

                        <input type="submit" value="Se connecter" class="btn btn-block btn-primary">
                    </form>
                    <p class="mt-4">
                      <ul>
                        <h3>
                            <li>Consulter vos points et soldes </li>
                            <li>Visualiser vos transactions </li>
                            <li>Consulter votre carte actif </li>
                        </h3>
                      </ul>
                    </p>
                </div>
            </div>
        </div>
    </div>


</div>



<script src="{{('assets/fontend/loginv2/js/jquery-3.3.1.min.js')}}"></script>
<script src="{{('assets/fontend/loginv2/js/popper.min.js')}}"></script>
<script src="{{('assets/fontend/loginv2/js/bootstrap.min.js')}}"></script>
<script src="{{('assets/fontend/loginv2/js/main.js')}}"></script>
</body>
</html>