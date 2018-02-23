<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kategori as Obj;
use Session;
class KategoriController extends Controller
{
   
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $page = 'kategori';
    protected $success = 'Data Berhasil';
    protected $failed = 'Data Gagal';
    protected $insert = 'Disimpan';
    protected $update = 'Diubah';
    protected $delete = 'Dihapus';

    public function index()
    {
        //
        $data = Obj::paginate(10);
        $no=1;
        $page=$this->page;
        return view($this->page.'/index',compact('data','no','page'));
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
        return view($this->page.'/create',compact('page'));
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
        $obj->kategori = $request->kategori;
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
        $obj->kategori = $request->kategori;
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
        $data = Obj::where('kategori','LIKE','%'.$q.'%')->paginate(10);

        $no=1;
        return view($this->page.'/search',compact('data','no','page','q'));


    }
}
