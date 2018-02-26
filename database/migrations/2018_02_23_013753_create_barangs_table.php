<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBarangsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('barangs', function(Blueprint $table)
		{
			$table->string('kode')->primary();
			$table->string('nama');
			$table->string('spesifikasi');
			$table->string('foto', 50)->nullable();
			$table->string('lokasi');
			$table->integer('kategori')->index('kategori');
			$table->integer('jml_barang');
			$table->string('kondisi');
			$table->string('sumber_dana');
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('barangs');
	}

}
