@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
<center>
                <h4>Maaf Untuk Membuka Fitur Ini SIlahkan Hubungi Saya di </h4>
<br>
<div class="row">
	<div class="col-lg-4">
		                <a href="https://facebook.com/faris.widhiarta" >
                	<i class="fab fa-facebook fa-3x"></i>
                </a>
                <br>
                Faris Widhiarta

                
	</div>
	<div class="col-lg-4">
		                <a href="https://api.whatsapp.com/send?phone=0895322931444" >
                	<i class="fab fa-whatsapp fa-3x"></i>
                </a>
                <br>
                0895322931444

                
	</div>
	<div class="col-lg-4">
		                <a href="https://github.com/fariswidhi" >
                	<i class="fab fa-github fa-3x"></i>
                </a>
                <br>
                Faris Widhiarta

                
	</div>
</div>
                </center>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
