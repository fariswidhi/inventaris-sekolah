@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Stok Barang</div>

                <div class="panel-body">	

                <table class="table table-striped">
                <thead>
                <th>#</th>
                <th>Nama</th>
                	<th>Jumlah Barang Masuk</th>
                    <th>Jumlah Barang Keluar</th>
                    <th>Total</th>
                </thead>
                	<tbody class="data">
                    
                   
                	</tbody>
                </table>
	
		
                </div>
            </div>
        </div>
    </div>
</div>

@push('script')
<script>
    $(document).ready(function(){


            setInterval(function(){
 $.ajax({
            url: "{{ url('/stok-data') }}",
            method: "GET",
            dataType: "JSON",
            success:function(res){
                var html = '';
                for (var i = 0; i < res.length; i++) {
                html += '<tr>';
                html += '<td>'+res[i].kode_barang+'</td>';
                html += '<td>'+res[i].nama+'</td>';
                html += '<td>'+res[i].jml_barang_masuk+'</td>';
                html += '<td>'+res[i].jml_barang_keluar+'</td>';
                html += '<td>'+res[i].total+'</td>';
                html += '</tr>';
                }
                $(".data").html(html);
            }
            });

        },2000);
    });
</script>
    {{-- expr --}}
@endpush
@endsection
