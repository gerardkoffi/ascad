<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{$gnl->title}} - {{$gnl->subtitle}}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('assets/images/logo/icon.png')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/admin/css/main.css') }}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/admin/css/bootstrap-toggle.min.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

@yield('page_styles')

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">

<header class="app-header">
    <a class="app-header__logo" href="{{route('admin.dashboard')}}">
        <img src="{{asset('assets/images/logo/logo.png')}}" alt="logo" class="logo-default" style="width: 160px;">
    </a>

    <a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>


    <ul class="app-nav">
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu">{{Auth::user()->name}} <i class="fa fa-chevron-down" aria-hidden="true"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                @if(auth()->user()->role=='superadmin')
                    <li><a class="dropdown-item" href="{{route('admin.new-admin')}}"><i class="fa fa-user fa-lg"></i>Créer administrateur </a></li>
                    <li><a class="dropdown-item" href="{{route('admin.list-admin')}}"><i class="fa fa-users fa-lg"></i>Administrateurs </a></li>
                @endif
                <li><a class="dropdown-item" href="{{route('admin.change-password')}}"><i class="fa fa-cog fa-lg"></i>Mot de passe </a></li>

                <li>
                    <a class="dropdown-item" href="#" onclick="event.preventDefault();
document.getElementById('logout-form').submit();">
                        <i class="fa fa-sign-out fa-lg"></i> Se déconnecter
                    </a>

                    <form id="logout-form" action="{{ route('admin.logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </li>
            </ul>
        </li>
    </ul>
</header>

<!-- Sidebar menu-->

<div class="app-sidebar__overlay" data-toggle="sidebar"></div>

<main class="app-content">
    <aside class="app-sidebar">
        @if(auth()->user()->role=='superadmin')
        <ul class="app-menu">
            <li>
                <a class="app-menu__item @if(request()->path() == 'admin/dashboard') active @endif" href="{{route('admin.dashboard')}}">
                    <i class="app-menu__icon fa fa-dashboard"></i>
                    <span class="app-menu__label">Tableau de bord</span></a>
            </li>


            <li class="treeview">
                <a class="app-menu__item @if(request()->path() == 'admin/card-category') active @endif" href="{{route('admin.card.category')}}" >
                    <i class="app-menu__icon fa fa-caret-square-o-right"></i>
                    <span class="app-menu__label">Catégorie de carte</span>
                </a>
            </li>

            <li class="treeview">
                <a class="app-menu__item @if(request()->path() == 'admin/card-subcategory') active @endif" href="{{route('admin.card.subcategory')}}" >
                    <i class="app-menu__icon fa fa-bars"></i>
                    <span class="app-menu__label">Sous-catégorie de carte</span>
                </a>
            </li>


            <li class="treeview @if(request()->path() == 'admin/card-create') is-expanded
                @elseif(request()->path() == 'admin/card-list') is-expanded
                @endif">
                                <a class="app-menu__item" href="#" data-toggle="treeview">
                                    <i class="app-menu__icon fa fa-credit-card"></i>
                                    <span class="app-menu__label">Gérer la carte</span>
                                    <i class="treeview-indicator fa fa-angle-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a class="treeview-item  @if(request()->path() == 'admin/card-create') active @endif" href="{{route('admin.card.create')}}">
                                            <i class="icon fa fa-plus"></i>Créer une carte</a></li>
                                    <li><a class="treeview-item @if(request()->path() == 'admin/card-list') active @endif" href="{{route('admin.card.index')}}">
                                            <i class="icon fa fa-edit"></i>Gérer la carte</a></li>
                                </ul>
            </li>

            <li class="treeview 
                @if(request()->path() == 'admin/users') is-expanded
                @elseif(request()->path() == 'admin/user-search') is-expanded
                @elseif(request()->path() == 'admin/user-banned') is-expanded
                @elseif(request()->path() == 'admin/subscribers') is-expanded
                @elseif(request()->path() == 'admin/create') is-expanded
                @endif">
                <a class="app-menu__item" href="#" data-toggle="treeview">
                    <i class="app-menu__icon fa fa-users"></i>
                    <span class="app-menu__label">Gérer les utilisateurs</span>
                    <i class="treeview-indicator fa fa-angle-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item  @if(request()->path() == 'admin/create') active @endif" href="{{route('admin.create')}}">
                        <i class="icon fa fa-users"></i> Créer un utilisateur</a></li>
                    <li><a class="treeview-item  @if(request()->path() == 'admin/users') active @endif" href="{{route('admin.users')}}">
                            <i class="icon fa fa-users"></i> Tous les utilisateurs</a></li>

                    <li><a class="treeview-item @if(request()->path() == 'admin/user-banned') active @endif" href="{{route('admin.user-ban')}}">
                            <i class="icon fa fa-users" style="color:brown;"></i> Utilisateurs interdits</a></li>

                </ul>
            </li>
            <li class="treeview
                @if(request()->path() == 'admin/about-section') is-expanded
                @elseif(request()->path() == 'admin/transaction-log') is-expanded

                @endif">
                <a class="app-menu__item @if(request()->path() == 'admin/transaction-log') active @endif" href="{{route('admin.transaction')}}" >
                    <i class="app-menu__icon fa fa-exchange"></i>
                    <span class="app-menu__label">Transaction</span>
                </a>
            </li>
            {{-- 
            <li class="treeview
                @if(request()->path() == 'admin/deposit-request')  is-expanded
                @elseif(request()->path() == 'admin/gateway')  is-expanded
                @endif">
                <a class="app-menu__item @if(request()->path() == 'admin/gateway') active @endif" href="{{route('admin.gateway')}}" >
                    <i class="app-menu__icon fa fa-money"></i>
                    <span class="app-menu__label">Passerelle de paiement</span>

                </a>
                <ul class="treeview-menu">


                </ul>
            </li>
            
            <li>
                <a class="app-menu__item @if(request()->path() == 'admin/blog') active @endif" href="{{route('admin.blog')}}">
                    <i class="app-menu__icon fa fa-edit"></i>
                    <span class="app-menu__label">Gérer le blog</span></a>
            </li>
            <li class="treeview
                @if(request()->path() == 'admin/subscriber') is-expanded
                @elseif(request()->path() == 'admin/broadcast-subscriber') is-expanded
                @elseif(request()->path() == 'admin/broadcast') is-expanded @endif">
                <a class="app-menu__item" href="#" data-toggle="treeview">
                    <i class="app-menu__icon fa fa-bookmark-o"></i>
                    <span class="app-menu__label">Newsletter</span>
                    <i class="treeview-indicator fa fa-angle-right"></i>
                </a>
                <ul class="treeview-menu">

                    <li>
                        <a class="treeview-item @if(request()->path() == 'admin/subscriber') active  @endif" href="{{route('admin.subscriber')}}">
                            <i class="icon fa fa-save"></i>Abonnement</a>
                    </li>
                    <li>
                        <a class="treeview-item @if(request()->path() == 'admin/broadcast-subscriber') active  @endif" href="{{route('mail.subscriber')}}">
                            <i class="icon fa fa-envelope"></i>Envoyer à tous les abonnés</a>
                    </li>
                    <li><a class="treeview-item @if(request()->path() == 'admin/broadcast') active @endif" href="{{route('admin.broadcast')}}">
                            <i class="icon fa fa-envelope"></i> Envoyer à tous les utilisateurs </a></li>

                </ul>
            </li> 

            <li class="treeview
                @if(request()->path() == 'admin/about-section') is-expanded
                @elseif(request()->path() == 'admin/footer-section') is-expanded
                @elseif(request()->path() == 'admin/social-section') is-expanded
                @elseif(request()->path() == 'admin/contact') is-expanded
                @elseif(request()->path() == 'admin/welcome-header') is-expanded
                @elseif(request()->path() == 'admin/video-section') is-expanded
                @elseif(request()->path() == 'admin/practise-header') is-expanded
                @elseif(request()->path() == 'admin/our-features-section') is-expanded
                @elseif(request()->path() == 'admin/banner') is-expanded
                @elseif(request()->path() == 'admin/static') is-expanded
                @elseif(request()->path() == 'admin/breadcrumb') is-expanded
                @elseif(request()->path() == 'admin/faq-header') is-expanded
                @elseif(request()->path() == 'admin/faq-section') is-expanded
                @elseif(request()->path() == 'admin/about-static') is-expanded
                @elseif(request()->path() == 'admin/happy-client') is-expanded
                @elseif(request()->path() == 'admin/category-header') is-expanded
                @endif">
                <a class="app-menu__item" href="#" data-toggle="treeview">
                    <i class="app-menu__icon fa fa-globe"></i>
                    <span class="app-menu__label">Contenu du Frontend</span>
                    <i class="treeview-indicator fa fa-angle-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/banner') active  @endif " href="{{route('admin.banner')}}">
                            <i class="icon fa fa-arrow-right"></i> Réglage de la bannière</a>
                    </li>

                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/our-features-section') active  @endif " href="{{route('admin.practisedetails')}}">
                            <i class="icon fa fa-arrow-right"></i>  Nos caractéristiques </a>
                    </li>
                    

                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/video-section') active  @endif " href="{{route('admin.welcomedetails')}}">
                            <i class="icon fa fa-arrow-right"></i>  Section de partage de vidéos </a>
                    </li>


                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/static') active  @endif " href="{{route('admin.static')}}">
                            <i class="icon fa fa-arrow-right"></i>  Statistiques </a>
                    </li>



                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/faq-section') active  @endif " href="{{route('admin.faqdetails')}}">
                            <i class="icon fa fa-arrow-right"></i>  Section FAQ </a>
                    </li>


                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/footer-section') active  @endif " href="{{route('admin.footersection')}}">
                            <i class="icon fa fa-arrow-right"></i> Section du pied de page</a>
                    </li>

                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/social-section') active  @endif " href="{{route('admin.socialsection')}}">
                            <i class="icon fa fa-arrow-right"></i> Section sociale</a>
                    </li>

                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/contact') active  @endif " href="{{route('admin.contact')}}">
                            <i class="icon fa fa-arrow-right"></i> Paramètres de contact</a>
                    </li>

                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/about-section') active  @endif " href="{{route('admin.aboutsection')}}">
                            <i class="icon fa fa-arrow-right"></i>  Page d'accueil</a>
                    </li>


                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/breadcrumb') active  @endif " href="{{route('admin.breadcrumb')}}">
                            <i class="icon fa fa-arrow-right"></i> Fil d'Ariane</a>
                    </li>




                </ul>
            </li> 
            --}}

            <li class="treeview
                @if(request()->path() == 'admin/general') is-expanded
                @elseif(request()->path() == 'admin/logo-icon') is-expanded
                @elseif(request()->path() == 'admin/email-sms') is-expanded
                @elseif(request()->path() == 'admin/site') is-expanded @endif">
                                <a class="app-menu__item" href="#" data-toggle="treeview">
                    <i class="app-menu__icon fa fa-cogs"></i>
                    <span class="app-menu__label">Contrôle du site web</span>
                    <i class="treeview-indicator fa fa-angle-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/general') active  @endif " href="{{route('admin.general')}}">
                            <i class="icon fa fa-cog"></i> Paramètres généraux</a>
                    </li>
                    <li><a class="treeview-item @if(request()->path() == 'admin/logo-icon') active  @endif" href="{{route('admin.logo')}}">
                            <i class="icon fa fa-picture-o"></i> Logo et Icone</a></li>
                    <li><a class="treeview-item @if(request()->path() == 'admin/email-sms') active @endif" href="{{route('admin.email')}}">
                            <i class="icon fa fa-envelope"></i> Email et SMS</a></li>
                    <li><a class="treeview-item @if(request()->path() == 'admin/site') active @endif" href="{{route('admin.new-site')}}">
                            <i class="icon fa fa-map-marker"></i> Site</a></li>

                </ul>
            </li>
            <li class="treeview
                @if(request()->path() == 'admin/new-site') is-expanded
                @elseif(request()->path() == 'admin/list-site') is-expanded @endif">
                <a class="app-menu__item" href="#" data-toggle="treeview">
                    <i class="app-menu__icon fa fa-map-marker"></i>
                    <span class="app-menu__label">Site</span>
                    <i class="treeview-indicator fa fa-angle-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item @if(request()->path() == 'admin/new-site') active  @endif" href="{{route('admin.new-site')}}">
                            <i class="icon fa fa-map-marker"></i> Créer un site</a>
                    </li>
                    <li><a class="treeview-item @if(request()->path() == 'admin/list-site') active @endif" href="{{route('admin.list-site')}}">
                            <i class="icon fa fa-list-ol"></i> Liste site</a>
                    </li>
                </ul>
            </li>

            <li class="treeview
                @if(request()->path() == 'admin/static-point') is-expanded
                @elseif(request()->path() == 'admin/static-point-debit-credit') is-expanded
                @endif">
                <a class="app-menu__item" href="#" data-toggle="treeview">
                    <i class="app-menu__icon fa fa-bar-chart"></i>
                    <span class="app-menu__label">Rapport</span>
                    <i class="treeview-indicator fa fa-angle-right"></i>
                </a>
                 <ul class="treeview-menu">
                    <li>
                        <a class="treeview-item  @if(request()->path() == 'admin/static-point') active  @endif " href="{{route('admin.static-point')}}">
                            <i class="icon fa fa-cog"></i> Rapport general </a>
                    </li>
                     {{--<li><a class="treeview-item @if(request()->path() == 'admin/static-point-debit-credit') active  @endif" href="{{route('admin.static-debit-credit-point')}}">
                             <i class="icon fa fa-picture-o"></i>Rapport de point</a>
                     </li>
                     <li><a class="treeview-item @if(request()->path() == 'admin/static-modification') active @endif" href="{{route('admin.static-modification')}}">
                             <i class="icon fa fa-envelope"></i> Rapport annulation ou modification</a>
                     </li>--}}
                </ul>
            </li>
        </ul>
        @elseif(auth()->user()->role=='staff')
         <ul class="app-menu">
            <li>
                <a class="app-menu__item @if(request()->path() == 'admin/dashboard') active @endif" href="{{route('admin.dashboard')}}">
                    <i class="app-menu__icon fa fa-dashboard"></i>
                    <span class="app-menu__label">Tableau de bord</span></a>
            </li>
            <li class="treeview @if(request()->path() == 'admin/card-create') is-expanded
                @elseif(request()->path() == 'admin/card-list') is-expanded
                @endif">
                                <a class="app-menu__item" href="#" data-toggle="treeview">
                                    <i class="app-menu__icon fa fa-credit-card"></i>
                                    <span class="app-menu__label">Gérer la carte</span>
                                    <i class="treeview-indicator fa fa-angle-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a class="treeview-item  @if(request()->path() == 'admin/card-create') active @endif" href="{{route('admin.card.create')}}">
                                            <i class="icon fa fa-plus"></i>Créer une carte</a></li>
                                    <li><a class="treeview-item @if(request()->path() == 'admin/card-list') active @endif" href="{{route('admin.card.index')}}">
                                            <i class="icon fa fa-edit"></i>Gérer la carte</a></li>
                                </ul>
            </li>
            <li class="treeview 
                @if(request()->path() == 'admin/users') is-expanded
                @elseif(request()->path() == 'admin/user-search') is-expanded
                @elseif(request()->path() == 'admin/user-banned') is-expanded
                @elseif(request()->path() == 'admin/subscribers') is-expanded
                @elseif(request()->path() == 'admin/create') is-expanded
                @endif">
                <a class="app-menu__item" href="#" data-toggle="treeview">
                    <i class="app-menu__icon fa fa-users"></i>
                    <span class="app-menu__label">Gérer les utilisateurs</span>
                    <i class="treeview-indicator fa fa-angle-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a class="treeview-item  @if(request()->path() == 'admin/create') active @endif" href="{{route('admin.create')}}">
                        <i class="icon fa fa-users"></i> Créer un utilisateur</a></li>
                    <li><a class="treeview-item  @if(request()->path() == 'admin/users') active @endif" href="{{route('admin.users')}}">
                            <i class="icon fa fa-users"></i> Tous les utilisateurs</a></li>

                    <li><a class="treeview-item @if(request()->path() == 'admin/user-banned') active @endif" href="{{route('admin.user-ban')}}">
                            <i class="icon fa fa-users" style="color:brown;"></i> Utilisateurs interdits</a>
                    </li>

                </ul>
            </li>

         </ul>
        @elseif(auth()->user()->role=='concepteur')
            <ul class="app-menu">
                <li>
                    <a class="app-menu__item @if(request()->path() == 'admin/dashboard') active @endif" href="{{route('admin.dashboard')}}">
                        <i class="app-menu__icon fa fa-dashboard"></i>
                        <span class="app-menu__label">Tableau de bord</span></a>
                </li>
                <li><a class="app-menu__item  @if(request()->path() == 'admin/users') active @endif" href="{{route('admin.users')}}">
                        <i class="icon fa fa-users"></i> Tous les utilisateurs</a></li>
            </ul>
        @endif
    </aside>
    <div class="row">
        <div class="col-md-12">
            @include('layouts.error')
            @yield('content')
        </div>
    </div>
</main>
<script src="{{asset('assets/admin/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{asset('assets/admin/js/dataTable-jquery.js')}}"></script>
<script src="{{asset('assets/admin/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/admin/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('assets/admin/js/popper.min.js')}}"></script>
<script src="{{asset('assets/admin/js/bootstrap.min.js')}}"></script>
<script src="{{asset('assets/admin/js/main.js')}}"></script>
<script src="{{asset('assets/admin/js/plugins/pace.min.js')}}"></script>
<script src="{{asset('assets/admin/js/plugins/bootstrap-notify.min.js')}}"></script>
<script src="{{asset('assets/admin/js/bootstrap-toggle.min.js')}}"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
@yield('page_scripts')
<script>
    $(document).ready(function() {
        $('#datTable').DataTable();
    });
   function verifchecked() {
    radioValue = $("input[name='mode_paiment']:checked").val();
    getInfoBonusAndUser();
	if(radioValue=='ticket'){
        $('.btn-validation').val('Ajouter des points');
	}else{
        $('.btn-validation').val('Effectuer un paiement');
	}
   }

   function getInfoBonusAndUser(){
       opation = $("input[name='opation']").val();
       mode_paiment = $("input[name='mode_paiment']:checked").val();
       amount = $("input[name='amount']").val();
       @isset($user)
        id = {{$user->id}};
       @endisset
    $.ajax({
        type : "get",
        url : "{{route('admin.getbonus')}}",
        data : {
            'id':id,
            'amount' : amount,
            'mode_paiment':mode_paiment,
            'opation':opation,
        },
        success:function (data) {
            $('#message').val(data.message);
        }
    });
   }
</script>
<script>
    $('.select2Class').select2({
        placeholder: 'Sélectionner un client',
        allowClear: true
    });
</script>
@include('layouts.message')
</body>
</html>