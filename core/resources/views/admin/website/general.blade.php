@extends('layouts.admin')

@section('content')
<div class="tile">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header bg-info">
					<div class="caption">
						<h2 style="text-align : center ; color : white">Réglage général</h2>
					</div>

				</div>
				<div class="card-body">
					<div class="table-scrollable">
			<form role="form" method="POST" action="{{route('admin.gnlupdate')}}">
				@csrf
				<div class="row">
					<div class="col-md-4">
						<label>Titre du site web</label>
						<input type="text" class="form-control input-lg" value="{{$general->title}}" name="title" >
					</div>
					<div class="col-md-4">
						<label>Sous-titre du site web</label>
						<input type="text" class="form-control input-lg" value="{{$general->subtitle}}" name="subtitle" >
					</div>

					<div class="col-md-2">
						<label>CODE DE LA DEVISE DE BASE</label>
						<input type="text" class="form-control input-lg" value="{{$general->cur}}" name="cur" >
					</div>
					<div class="col-md-2">
						<label>SYMBOLE DE LA DEVISE DE BASE</label>
						<input type="text" class="form-control input-lg" value="{{$general->cursym}}" name="cursym" >
					</div>

				</div>
				<div class="row">
					<div class="col-md-12">
						<hr/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<label>Enregistrement</label>
						<div class="toggle lg">
							<label>
								<input type="checkbox" value="1" name="reg" {{ $general->reg == "1" ? 'checked' : '' }}><span class="button-indecator"></span>
							</label>
						</div>
					</div>
					
					<div class="col-md-3">
						<label>Vérification du courrier électronique</label>
						<div class="toggle lg">
								<label>
									<input type="checkbox" value="1" name="emailver" {{ $general->emailver == "0" ? 'checked' : '' }}><span class="button-indecator"></span>
								</label>
							</div>
					</div>
					<div class="col-md-2">
						<label>Vérification par SMS</label>
						<div class="toggle lg">
								<label>
									<input type="checkbox" value="1" name="smsver" {{ $general->smsver == "0" ? 'checked' : '' }}><span class="button-indecator"></span>
								</label>
							</div>
					</div>
					<div class="col-md-2">
						<label>Notification par courriel</label>
						<div class="toggle lg">
								<label>
									<input type="checkbox" value="1" name="emailnotf" {{ $general->emailnotf == "1" ? 'checked' : '' }}><span class="button-indecator"></span>
								</label>
							</div>
					</div>
					<div class="col-md-2">
						<label>NOTIFICATION PAR SMS</label>
						<div class="toggle lg">
								<label>
									<input type="checkbox"  value="1" name="smsnotf" {{ $general->smsnotf == "1" ? 'checked' : '' }}><span class="button-indecator"></span>
								</label>
							</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<hr/>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<button class="btn btn-success btn-block btn-lg">Mise à jour</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
		</div>
	</div>
</div>

@endsection
