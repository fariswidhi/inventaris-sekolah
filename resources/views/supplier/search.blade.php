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
                        <input type="text" name="q" class="form-control" placeholder="Cari Data" value="{{$q}}">
                    </form>
                </div>
                <table class="table table-striped">
                <thead>
                <th>#</th>
                	<th>Nama</th>
                	<th>Alamat</th>
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
                			<td>{{$d->kode}}</td>
                            <td>{{$d->nama}}</td>
                            <td>{{$d->alamat}}</td>
                            <td>
                			<a href="{{$page.'/'.$d->kode.'/edit'}}" class="btn btn-success">Edit</a>
                			<form action="{{$page.'/'.$d->kode}}" style="display: inline-block;" method="post">
                				{{csrf_field()}}
                				{{method_field('DELETE')}}
                				<button type="submit" class="btn btn-danger">Hapus</button>
                			</form>
                			</td>
                		</tr>
                	@endforeach
                    @endif
                	</tbody>
                </table>
	
		
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
