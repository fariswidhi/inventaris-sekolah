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
                            <label>Kategori</label>
                            <input type="text" name="kategori" class="form-control">
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
