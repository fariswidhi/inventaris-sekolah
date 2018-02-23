<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PinjamBarang as Obj;
use App\BarangSementara;
use App\Barang;
use Auth;

use Session;
use App\Stok;

class PinjamBarangController extends Controller
{
   protected $page = 'pinjam-barang';
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
            // echo "string";

    return view('/pro');
    }


}
