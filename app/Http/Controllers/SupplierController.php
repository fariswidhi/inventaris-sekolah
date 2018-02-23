<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Supplier as Obj;
use Session;

class SupplierController extends Controller
{
    protected $page = 'supplier';
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


        $data = Obj::all();
        $no=1;
        $page=$this->page;



        return view($this->page.'/index',compact('data','no','page','code'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $page = $this->page;
        $num = Obj::orderBy('created_at','desc')->count();
        $dataCode = Obj::orderBy('created_at','desc')->first();
        if ($num ==0) { 
            $code = 'SUP001';
        }
        else{
            $c = $dataCode->kode;
            $code = substr($c, 3)+1;
            $code = "SUP00".$code;
        }


        return view($this->page.'/create',compact('page','code'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $obj = new Obj;
        $obj->kode = $request->kode;
        $obj->nama = $request->nama;
        $obj->alamat = $request->alamat;
        $obj->telp = $request->telp;
        $obj->kota = $request->kota;
        $save = $obj->save();
        if ($save) {
            # code...
            Session::flash('success',$this->success.$this->insert);
        }

        return redirect('/'.$this->page);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $data= Obj::find($id);
        $page = $this->page;
        return view($this->page.'/edit',compact('data','page'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $obj = Obj::find($id);
        $obj->nama = $request->nama;
        $obj->alamat = $request->alamat;
        $obj->telp = $request->telp;
        $obj->kota = $request->kota;
        $obj->save();


        return redirect('/'.$this->page);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $obj = Obj::find($id);
        $obj->delete();
        // Session::flash('success',);
        return redirect('/'.$this->page);
    }


    public function search(Request $request){
        $q = $request->q;
        $page=$this->page;
        if (empty($q)) {
            # code...
            return redirect('/'.$page);
        }
        $data = Obj::where('nama','LIKE','%'.$q.'%')->orWhere('kode','LIKE','%'.$q.'%')->paginate(10);

        $no=1;
        return view($this->page.'/search',compact('data','no','page','q'));


    }
}
