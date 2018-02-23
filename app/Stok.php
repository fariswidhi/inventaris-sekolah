<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stok extends Model
{
    //
    public function barang(){
    	return $this->belongsTo('App\Barang','kode_barang');
    }
}
