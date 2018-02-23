<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\KeluarBarang as Obj;
use App\Supplier;
use App\BarangSementara;
use App\Stok;
use App\Barang;
use Session;

class BarangKeluarController extends Controller
{
    protected $page = 'barang-keluar';
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
