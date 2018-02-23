@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Tambah User</div>

                <div class="panel-body">    
                    <form action="{{ url($page.'/'.$data->kode) }}" method="post">
                    {{csrf_field()}}
                    {{method_field('PUT')}}
                        <div class="form-group">
                            <label>Kode</label>
                            <input type="text" name="kode" class="form-control" value="{{$data->kode}}" disabled>
                        </div>

                        <div class="form-group">
                            <label>Nama Supplier</label>
                            <input type="text" name="nama" class="form-control" value="{{$data->nama}}">
                        </div>

                        <div class="form-group">
                            <label>Telepon</label>
                            <input type="text" name="telp" class="form-control" value="{{$data->telp}}">
                        </div>
                        <div class="form-group">
                            <label>Kota</label>
                            <input type="text" name="kota" class="form-control" value="{{$data->kota}}">
                        </div>
                        <div class="form-group">
                            <label>Alamat</label>
                            <textarea class="form-control" name="alamat">{{$data->alamat}}</textarea>
                        </div>



                        <button type="submit" class="btn btn-primary">Ubah</button>
                        </div>

 
                    </form>
    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
