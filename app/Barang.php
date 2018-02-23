<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    //
        protected $primaryKey = 'kode';
    public $incrementing =false;

    public function kat(){
    	return $this->belongsTo('App\Kategori','kategori');
    }
}
