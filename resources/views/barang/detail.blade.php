@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Detail Barang</div>

                <div class="panel-body">
                                <div class="pull-right">
                    <button class="btn btn-info" onclick="window.print()">Cetak</button>
                    <br>
                    <br>
                </div>  	
                    <table class="table table-condensed">
                        <tr>
                            <td>Kode</td><td>{{$data->kode}}</td>
                        </tr>
                        <tr>
                            <td>Nama</td><td>{{$data->nama}}</td>
                        </tr>
                        <tr>
                            <td>Spesifikasi</td><td>{{$data->spesifikasi}}</td>
                        </tr>
                        @if ($data->foto !=null)
                            {{-- expr --}}
                        <tr>
                            <td>Foto</td><td><img class="img img-responsive" style="width: 20%;" src="{{ url('uploads/'.$data->foto) }}"></td>
                        </tr>
                        @endif
                        <tr>
                            <td>Lokasi</td><td>{{$data->lokasi}}</td>
                        </tr>
                        <tr>
                            <td>Kategori</td><td>{{$data->kat->kategori}}</td>
                        </tr>
                        <tr>
                            <td>Jumlah Barang</td><td>{{$data->jml_barang}}</td>
                        </tr>
                        <tr>
                            <td>Kondisi</td><td>{{$data->kondisi}}</td>
                        </tr>
                        <tr>
                            <td>Sumber Dana</td><td>{{$data->sumber_dana}}</td>
                        </tr>
                    </table>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
