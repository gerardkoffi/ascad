@extends('layouts.admin')
@section('page_styles')

@endsection
@section('content')
    <div class="tile">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-info">
                        <div class="caption">
                            <h2 class="text-center" style="color : white">Section Footer</h2>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-scrollable table-responsive">
                            <form role="form" method="POST" action="{{route('admin.footer-update')}}">
                                @csrf
                                <div class="form-group">
                                    <h4>Contenu de la section du pied de page</h4>
                                    <textarea class="form-control" id="footer" name="footer" rows="7">{{$gnl->footer}}</textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-block">Mise à jour</button>
                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
