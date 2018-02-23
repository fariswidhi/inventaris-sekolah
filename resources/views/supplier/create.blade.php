@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Tambah Kategori</div>

                <div class="panel-body">	
                    <form action="/{{$page}}" method="post">
                    {{csrf_field()}}
                        <div class="form-group">
                            <label>Kode</label>
                            <input type="text" name="kode" class="form-control" value="{{$code}}" readonly>
                        </div>

                        <div class="form-group">
                            <label>Nama Supplier</label>
                            <input type="text" name="nama" class="form-control" autocomplete="off">
                        </div>

                        <div class="form-group">
                            <label>Telepon</label>
                            <input type="text" name="telp" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Kota</label>
                            <input type="text" name="kota" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Alamat</label>
                            <textarea class="form-control" name="alamat"></textarea>
                        </div>



                        <button type="submit" class="btn btn-primary">Simpan</button>
                        </div>

                    </form>
	
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
