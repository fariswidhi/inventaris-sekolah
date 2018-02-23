<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MasukBarang;
use DB;
use App\KeluarBarang;
use App\PinjamBarang;

class LaporanController extends Controller
{
    //


public function __construct()
{

    $this->middleware('auth');
    $this->middleware('admin');

}
    public function barangMasuk(Request $request){
    	// echo "string";
    return view('/pro');

    }

      public function barangKeluar(Request $request){
    	// echo "string";


    return view('/pro');

    }

         public function pinjamBarang(Request $request){
    	// echo "string";

    return view('/pro');
    }




}
