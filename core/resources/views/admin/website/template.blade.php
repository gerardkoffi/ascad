@extends('layouts.admin')
@section('page_styles')
<script type="text/javascript" src="{{asset('assets/admin/js/nicEdit-latest.js')}}"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
@endsection
@section('content')
<div class="tile">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<div class="caption">
						<i class="fa fa-bookmark"></i>petit code
					</div>
					
				</div>
				<div class="card-body">
					<div class="table-scrollable">
						<table class="table table-hover">
							<thead>
								<tr>
									<th> # </th>
									<th> CODE </th>
									<th> DESCRIPTION </th>
								</tr>
							</thead>
							<tbody>
								
								
								<tr>
									<td> 1 </td>
									<td> <strong>&#123;&#123;message&#125;&#125;</strong> </td>
									<td> Détails du texte du script</td>
								</tr>
								
								<tr>
									<td> 2 </td>
									<td> <strong>&#123;&#123;nom&#125;&#125;</strong> </td>
									<td> Nom de l'utilisateur. Il sera extrait de la base de données et utilisé dans le texte de l'EMAIL.</td>
								</tr>
								<tr>
									<td> 3 </td>
									<td> <strong>&#123;&#123;numéro&#125;&#125;</strong> </td>
									<td> Numéro d'utilisateur. Il sera extrait de la base de données et utilisé dans l'API SMS</td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="tile">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<div class="caption">
						<i class="icon-envelope font-blue-sharp"></i>
						<span class="caption-subject font-blue-sharp bold uppercase">Modèle d'email et de SMS</span>
					</div>
				</div>
				<div class="card-body form">
					<form role="form" method="POST" action="{{route('admin.emailup')}}" enctype="multipart/form-data">
						@csrf
						<div class="form-body">
							<div class="form-group">
								<label>Adresse électronique</label>
								<input type="email" name="email" class="form-control input-lg" placeholder="example@email.com" value="{{$temp->email}}">
							</div>
							<div class="form-group">
								<label>Modèle d'e-mail</label>
								<textarea class="form-control" name="template" rows="10">
									{{$temp->template}}
								</textarea>
							</div>
							<div class="form-group" style="display: none">
								<label>API SMS</label>
								<input type="text" name="smsapi" class="form-control input-lg" value="{{$temp->smsapi}}">
							</div>
						</div>
						<div class="form-actions">
							<button type="submit" class="btn btn-success btn-block btn-lg">Mise à jour</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection