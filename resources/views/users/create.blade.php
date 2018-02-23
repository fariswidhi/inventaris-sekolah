@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Tambah User</div>

                <div class="panel-body">	
                    <form action="/{{$page}}" method="post">
                    {{csrf_field()}}
                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" name="name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Bagian</label>
                        <select class="form-control" name="role" required>
                        <option value="">Silahkan Pilih</option>
                            <option value="1">Admin</option>
                            <option value="2">Petugas</option>
                        </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </form>
	
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
