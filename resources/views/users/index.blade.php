@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Users</div>

                <div class="panel-body">	


                <a class="btn btn-primary" href="{{$page}}/create">Tambah Data</a>

                <div class="pull-right">
                    <form action="{{url($page.'/cari')}}" method="get">
                        <input type="text" name="q" class="form-control" placeholder="Cari Data">
                    </form>
                </div>
                <table class="table table-striped">
                <thead>
                <th>#</th>
                	<th>Name</th>
                	<th>Email</th>
                	<th>Level</th>
                	<th>Aksi</th>
                </thead>
                	<tbody>

                    @if (count($data) == 0)
                        {{-- expr --}}
                        <tr>
                            <td colspan="6"><center>Data Tidak Ada</center></td>
                        </tr>
                    @else
                	@foreach ($data as $d)
                		<tr>
                			<td>{{$no++}}</td>
                			<td>{{$d->name}}</td>
                			<td>{{$d->email}}</td>
                			<td>{!!$d->role ==1 ? '<label class="label label-success">Admin</label>' :''!!}
{!!$d->role ==2 ? '<label class="label label-primary">Petugas</label>' :''!!}
                			</td>
                			<td>
                			<a href="{{$page.'/'.$d->id.'/edit'}}" class="btn btn-success">Edit</a>
                			  <button data-toggle="modal" data-target="#confirmModal" data-action="{{url($page.'/'.$d->id)}}" class="btn btn-danger delete-btn">Hapus</button>
                			</td>
                		</tr>
                	@endforeach
                	@endif
                	</tbody>
                </table>
	
		<center>{{$data->links()}}</center>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
