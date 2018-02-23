@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Tambah Barang</div>

                <div class="panel-body">    
              <form action="{{ url($page.'/'.$data->kode) }}" method="post">
                    {{csrf_field()}}
                    {{method_field('PUT')}}

                        <div class="form-group">
                            <label>Kode</label>
                            <input readonly type="text" name="kode" class="form-control" value="{{$data->kode}}">
                        </div>
                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" name="nama" class="form-control" value="{{$data->nama}}">
                        </div>

                        <div class="form-group">
                            <label>Spesifikasi</label>
                                <textarea class="form-control" name="spesifikasi">{{$data->spesifikasi}}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Foto</label>
                            @if ($data->foto !=null)
                                {{-- expr --}}
                            <img src="{{ url('uploads/'.$data->foto) }}" class="img img-responsive" style="width: 150px;height: 100px;">
                            <br>
                            @endif
    <input type="file" name="foto" class="form-control">
                        </div>

                        <div class="form-group">
                            <label>Lokasi</label>
                            <input type="text" name="lokasi" class="form-control" value="{{$data->lokasi}}"> 
                        </div>
                        <div class="form-group">
                            <label>Kategori</label>
                            <select class="form-control" name="kategori">
                                <option value="">Silahkan Pilih</option>
                                @foreach ($categories as $c)
                                    {{-- expr --}}
                                    <option {{$data->kategori == $c->id ? 'selected' :''}} value="{{$c->id}}">{{$c->kategori}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Jumlah Barang</label>
                            <input type="number" name="jml_barang" class="form-control" value="{{$data->jml_barang}}">
                        </div>
                        <div class="form-group">
                            <label>Kondisi</label>
                            <input type="text" name="kondisi" class="form-control" value="{{$data->kondisi}}">
                        </div>
                        <div class="form-group">
                            <label>Sumber Dana</label>
                            <input type="text" name="sumber_dana" class="form-control" value="{{$data->sumber_dana}}">
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
