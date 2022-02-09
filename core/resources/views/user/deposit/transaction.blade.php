@extends('fontend.master')
@section('css')
    <style>
@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

/* Force table to not be like tables anymore */
table, thead, tbody, th, td, tr { 
    display: block; 
}

/* Hide table headers (but not display: none;, for accessibility) */
thead tr { 
    position: absolute;
    top: -9999px;
    left: -9999px;
}

tr { border: 1px solid #ccc; }

td { 
    /* Behave  like a "row" */
    border: none;
    border-bottom: 1px solid #eee; 
    position: relative;
    padding-left: 50%; 
}

td:before { 
    /* Now like a table header */
    position: absolute;
    /* Top/left values mimic padding */
    top: 0px;
    left: 6px;
    width: 95%; 
    padding-right: 10px; 
    white-space: nowrap;
}

/*
Label the data
*/
td:nth-of-type(1):before { content: "Date"; }
td:nth-of-type(2):before { content: "Numéro de transaction"; }
td:nth-of-type(3):before { content: "Détails"; }
td:nth-of-type(4):before { content: "Montant"; }
td:nth-of-type(5):before { content: "Solde"; }
}
    </style>
@endsection
@section('content')
    <section class="about-page-content-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th  style="text-align : center">Date</th>
                                 <th style="text-align : center">Numéro de transaction</th>
                                 <th style="text-align : center">Détails</th>
                                 <th style="text-align : center">Montant</th>
                                 <th style="text-align : center">Solde</th>
                            </tr>
                            </thead>
                            <tbody>
                            @if(count($tran) > 0)
                            @foreach($tran as $tr)
                                <tr>
                                    <td style="text-align: center">
                                        @php
                                        setlocale(LC_TIME, 'fr_FR.UTF8', 'fr.UTF8', 'fr_FR.UTF-8', 'fr.UTF-8');
                                        echo strftime("%A %d %B %G", strtotime($tr->created_at));
                                        @endphp
                                        {{-- date(' l jS F Y', strtotime($tr->created_at)) --}}
                                    </td>
                                    <td style="text-align: center">{{$tr->trxid}}</td>
                                    <td style="text-align: center">{{$tr->details}}</td>
                                    <td style="text-align: center">{{$tr->amount}} {{$gnl->cursym}}</td>
                                    <td style="text-align: center">{{$tr->balance}} {{$gnl->cursym}}</td>
                                </tr>
                            @endforeach
                            @else
                                <tr>
                                    <td colspan="4"><h3 style="text-align: center">Désolé ! Pour l'instant vous n'avez pas de Transaction.</h3></td>
                                </tr>
                            @endif
                            </tbody>
                        </table>
                        {{$tran->links()}}
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


