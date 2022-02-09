@extends('fontend.master')

@section('content')

    <!-- testimonial page content area start-->
    <div class="testimonial-page-conent">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <a href="{{url('home/my-card')}}">
                    <div class="single-testimonial-item text-center" style="border: 1px solid #ba5adf;"><!-- single testimonial item -->

                        <div class="content">
                            <h4 class="name">Total de la carte achetée</h4>
                            <span class="post" style="font-size: 24px;">{{ \App\card::where('user_id', \Illuminate\Support\Facades\Auth::id())->count() }}</span>
                        </div>

                    </div><!-- //.single testimonial item -->
                    </a>
                </div>
            </div>
            <div class="row">


                <div class="col-lg-4 col-md-6">
                    <a href="#">
                        <div class="single-testimonial-item text-center" style="border: 1px solid #ba5adf;"><!-- single testimonial item -->

                            <div class="content">
                                <h4 class="name">SOLDE CARTE PRIVILEGE</h4>
                                <span class="post" style="font-size: 24px;">{{ Auth()->user()->balance }} {{$gnl->cur}}</span>
                            </div>

                        </div><!-- //.single testimonial item -->
                    </a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <a href="#">
                        <div class="single-testimonial-item text-center" style="border: 1px solid #ba5adf;"><!-- single testimonial item -->

                            <div class="content">
                                <h4 class="name">Total des points</h4>
                                <span class="post" style="font-size: 24px;">{{ Auth()->user()->balance_point }}</span>
                            </div>

                        </div><!-- //.single testimonial item -->
                    </a>
                </div>
                {{-- <div class="col-lg-4 col-md-6">
                    <a href="{{url('home/my-card')}}">
                        <div class="single-testimonial-item text-center" style="border: 1px solid #ba5adf;"><!-- single testimonial item -->

                            <div class="content">
                                <h4 class="name">Cartes non utilisées</h4>
                                <span class="post" style="font-size: 24px;">{{ \App\card::where('user_id', \Illuminate\Support\Facades\Auth::id())->where('status',1)->count() }}</span>
                            </div>

                        </div><!-- //.single testimonial item -->
                    </a>
                </div> 
                <div class="col-lg-4 col-md-6">
                    <a href="{{url('home/used-card')}}">
                        <div class="single-testimonial-item text-center" style="border: 1px solid #ba5adf;"><!-- single testimonial item -->

                            <div class="content">
                                <h4 class="name">Total de carte utilisée</h4>
                                <span class="post" style="font-size: 24px;">{{ \App\card::where('user_id', \Illuminate\Support\Facades\Auth::id())->where('status',0)->count() }}</span>
                            </div>

                        </div><!-- //.single testimonial item -->
                    </a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <a href="{{url('home/deposit')}}">
                        <div class="single-testimonial-item text-center" style="border: 1px solid #ba5adf;"><!-- single testimonial item -->

                            <div class="content">
                                <h4 class="name">Déposer maintenant</h4>
                                <span class="post">Total Mode de paiement: {{\App\Gateway::where('status', 1)->count()}}</span>
                            </div>

                        </div><!-- //.single testimonial item -->
                    </a>
                </div>
 
                <div class="col-lg-4 col-md-6">
                    <a href="{{url('home/select-category')}}">
                        <div class="single-testimonial-item text-center" style="border: 1px solid #ba5adf;"><!-- single testimonial item -->

                            <div class="content">
                                <h4 class="name">Carte d'achat</h4>
                                <span class="post">Catégorie de carte totale: {{\App\cardcategory::where('status', 1)->count()}}</span>
                            </div>

                        </div><!-- //.single testimonial item -->
                    </a>
                </div>
                --}}
                <div class="col-lg-4 col-md-6">
                    <a href="{{url('home/transaction')}}">
                        <div class="single-testimonial-item text-center" style="border: 1px solid #ba5adf;"><!-- single testimonial item -->

                            <div class="content">
                                <h4 class="name">Journal des transactions</h4>
                                <span class="post">Solde actuel: {{\Illuminate\Support\Facades\Auth::user()->balance}} {{$gnl->cur}}</span>
                            </div>

                        </div><!-- //.single testimonial item -->
                    </a>
                </div>


            </div>
        </div>
    </div>
    <!-- testimonial page content area end-->
@endsection



