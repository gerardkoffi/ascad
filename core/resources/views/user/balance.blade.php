@extends('layouts.user')

@section('content')

<section class="become-investor">
    <div class="thm-container">
        <div class="sec-title text-center">
            <h2>{{$pt}}</h2>
            <div class="col-md-4 col-md-offset-8">
            @include('layouts.error')
            </div>
        </div>
        <div class="row">
            <div class="col-md-9">
                <div class="panel panel-success">
                    <div class="panel-heading text-center">Méthodes de dépôt</div>
                    <div class="panel-body">
                   
                        @foreach($gates as $gate)
                        <div class="col-md-6 ">
                            <div class="panel panel-primary">
                                <div class="panel-heading text-center">{{$gate->name}}</div>
                                <div class="panel-body">
                                <img src="{{asset('assets/images/gateway')}}/{{$gate->gateimg}}" style="width:100%;"/>
                                    <p>
                                        {{$gate->val1}}
                                    </p>
                                </div>
                                <div class="panel-footer">
                                    <button data-toggle="modal" data-name="{{$gate->name}}" data-gate="{{$gate->id}}"  data-target="#depoModal" class="btn btn-block btn-success depoButton btn-lg">
                                        Déposer maintenant
                                    </button>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="panel panel-success">
                        <div class="panel-heading">
                                <h4>Balance: <strong>{{round(Auth::user()->balance,$gnl->decimal)}}</strong> {{$gnl->cur}}</h4>
                            </div>
                    <div class="panel-body text-center">
                        <button type="button" class="btn btn-warning btn-block btn-lg" data-toggle="modal" data-target="#withdrawModal">Retirer maintenant</button>    
                    </div>
                </div>                 
            </div>
            
        </div>
    </div>
</section>

<!-- Modal -->
<div class="modal fade" id="depoModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content text-center">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{route('deposit.post')}}" method="POST">
                    @csrf
                    <input type="hidden" name="gateway" id="gateWay"/>
                    <div class="form-group">
                        <h5>Entrez le montant du dépôt</h5>
                        <div class="input-group">
                            <input type="text" name="amount" class="form-control"/>                            
                            
                            <span class="input-group-addon">{{$gnl->cursym}}</span>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <h5>Entrer la preuve de dépôt</h5>
                        <textarea class="form-control" name="proof" >
                            
                        </textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-block btn-success btn-lg">Confirmation du dépôt</button>
                        
                    </div>
                    
                </form>
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="withdrawModal" tabindex="-1" role="dialog" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel">Retirer</h4>
            </div>
            <div class="modal-body">
                <form action="{{route('withdraw.post')}}" method="POST">
                    @csrf
                    <div class="form-group">
                        <h5>Entrez le montant du retrait</h5>
                        <div class="input-group">
                            <input type="text" name="amount" class="form-control"/>                            
                            
                            <span class="input-group-addon">{{$gnl->cursym}}</span>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <h5>Entrez les informations sur le compte de retrait</h5>
                        <textarea class="form-control" name="account" >
                            
                        </textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-block btn-success btn-lg">Retirer Confirmer</button>
                        
                    </div>
                    
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
@endsection
@section('scripts')
<script>
    $(document).ready(function(){
        
        $(document).on('click','.depoButton', function(){
            $('#ModalLabel').text($(this).data('name'));
            $('#gateWay').val($(this).data('gate'));
        });
    });
</script>

@endsection



