<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Barang as Obj;
use App\Kategori;
use Session;
use App\Stok;


class BarangController extends Controller
{
     protected $page = 'barang';
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
        $data = Obj::paginate(10);
        $no=1;
        $page=$this->page;
        return view($this->page.'/index',compact('data','no','page'));
    }

    /**
     * Show the form for creating a new resource
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //


        $num = Obj::orderBy('created_at','desc')->count();
        $dataCode = Obj::orderBy('created_at','desc')->first();
        if ($num ==0) { 
            $code = 'BRG001';
        }
        else{
            $c = $dataCode->kode;
            $code = substr($c, 3)+1;
            $code = "BRG00".$code;
        }

        $categories = Kategori::all();
        $page = $this->page;
        return view($this->page.'/create',compact('page','code','categories'));
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
        if (!empty($request->foto)) {
            # code...


        $file = $request->file('foto');
        $name = time().'.'.$file->getClientOriginalExtension();
        $file->move(public_path('uploads'),$name);


        }
        // $request->foto->move(public_path('uploads'));


        $obj = new Obj;
        $obj->kode = $request->kode;
        $obj->nama = $request->nama;
        $obj->lokasi = $request->lokasi;
        $obj->kategori = $request->kategori;
        if (!empty($request->foto)) {
            # code...
        $obj->foto = $name;            
        }
        $obj->jml_barang = $request->jml_barang;
        $obj->spesifikasi = $request->spesifikasi;
        $obj->kondisi = $request->kondisi;
        $obj->sumber_dana = $request->sumber_dana;
        $save = $obj->save();




            $stok = new Stok;
            $stok->kode_barang = $request->kode;
            $stok->jml_barang_masuk= $request->jml_barang;
            $stok->total = $request->jml_barang;
            $stok->save();



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

        $data = Obj::find($id);

        return view($this->page.'/detail',compact('data'));
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
        $categories = Kategori::all();
        $page = $this->page;
        return view($this->page.'/edit',compact('data','page','categories'));
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

         if (!empty($request->foto)) {
            # code...


        $file = $request->file('foto');
        $name = time().'.'.$file->getClientOriginalExtension();
        $file->move(public_path('uploads'),$name);


        }
        $obj = Obj::find($id);
        $obj->kode = $request->kode;
        $obj->nama = $request->nama;
        $obj->lokasi = $request->lokasi;
        $obj->kategori = $request->kategori;
        if (!empty($request->foto)) {
            # code...
        $obj->foto = $name;            
        }
        $obj->jml_barang = $request->jml_barang;
        $obj->spesifikasi = $request->spesifikasi;
        $obj->kondisi = $request->kondisi;
        $obj->sumber_dana = $request->sumber_dana;
        $save = $obj->save();
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
        $data = Obj::where('nama','LIKE','%'.$q.'%')->paginate(10);

        $no=1;
        return view($this->page.'/search',compact('data','no','page','q'));


    }

    public function stok(){
        return view('pro');
    }


}
