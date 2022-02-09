@extends('layouts.admin')

@section('content')
<div class="tuile">
    <div class="card">
                    <div class="card-header bg-info">
                        <div class="caption">
                            <h2 style="text-align : center ; color : white">Envoyer un courriel à tous les utilisateurs </h2>
                        </div> </div>

        <div class="card-body">
            <div class="table-scrollable">
    <form role="form" method="POST" action="{{route('admin.broadcast-email')}}" enctype="multipart/form-data">
        @csrf
        <div class="form-body">
            <div class="form-group">
                <h4>Sujet</h4>
                <input type="text" name="subject" class="form-control input-lg" value="">
            </div>
            <div class="form-group">
                <h4>Message</h4>
                <textarea class="form-control" name="emailMessage" rows="10">
                    
                </textarea>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="submit-btn btn btn-primary btn-lg btn-block login-button">Diffuser un courriel</button>
        </div>
    </form>
</div>
        </div>
    </div>
</div>


@endsection

