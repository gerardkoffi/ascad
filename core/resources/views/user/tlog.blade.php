@extends('layouts.user')

@section('content')

<section class="become-investor">
    <div class="thm-container">
        <div class="sec-title text-center">
            <h2>{{$pt}}</h2>
        </div>
        
        <div class="row table-responsive">
            <div class="col-md-10 col-md-offset-1">
                <table class="table table-hover text-center">
                    <thead>
                        <tr>
                            <th class="text-center">Montant</th>
                            <th class="text-center">Solde</th>
                            <th class="text-center">Détails</th>
                            <th class="text-center">Trx ID</th>
                        </tr>
                    </thead>
                    
                    @foreach($logs as $log)
                    <tr class="{{$log->type==1?'success':'danger'}}">
                        <td>{{$log->amount}} {{$gnl->cur}}</td>
                        <td>{{round($log->balance,$gnl->decimal)}} {{$gnl->cur}}</td>
                        <td>{{$log->details}}</td>
                        <td>{{$log->trxid}}</td>
                    </tr>
                    @endforeach
                </table>
                {{$logs->links()}}
            </div>
        </div>
    </div>
</section>
@endsection





