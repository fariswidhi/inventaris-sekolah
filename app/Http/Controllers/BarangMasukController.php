<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MasukBarang as Obj;
use  App\Barang;
use App\BarangSementara;
use Auth;
use App\Supplier;
use App\Stok;
use DB;
use Session;

class BarangMasukController extends Controller
{
    protected $page = 'barang-masuk';
    protected $success = 'Data Berhasil';
    protected $failed = 'Data Gagal';
    protected $insert = 'Disimpan';
    protected $update = 'Diubah';
    protected $delete = 'Dihapus';


public function __construct()
{
    
    $this->middleware('auth');

}
    public function index()
    {
        //
        // $data = Obj::paginate(10);

        return view('pro');
    }


}
