<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePersonasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('personas', function (Blueprint $table) {
            $table->id();
            $table->string('escalafon', 20);
            $table->string('grado', 20)->nullable();
            $table->string('arma', 20)->nullable();
            $table->string('especialidad', 20)->nullable();
            $table->string('paterno', 20)->nullable();
            $table->string('materno', 20)->nullable();
            $table->string('nombre', 40);
            $table->integer('ci');
            $table->string('extension', 2);
            $table->year('egreso');
            $table->integer('antiguedad');
            $table->string('sexo', 10);
            $table->string('estdo_civil', 10);
            $table->date('fecha_nacimiento');
            $table->string('domicilio', 60);
            $table->integer('celular');
            $table->integer('celular2');
            $table->string('email', 50);
            $table->string('foto', 60)->nullable();
            $table->string('nombre_completo', 100)->nullable()->filterColumn('nombre_completo', function ($query, $keyword) {$sql = "CONCAT(grado,' ',arma,' ',nombre,' ',paterno,' ',materno) like ?";$query->whereRaw($sql, ["%$keyword%"]);
            });;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('personas');
    }
}
