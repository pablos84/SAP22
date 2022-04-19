<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLicenciaComisionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('licencia_comisions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('persona_id');
            $table->date('f_solicitud')->nullable();
            $table->integer('tiempolicenciacomision')->default(0);
            $table->date('f_desde')->nullable();
            $table->date('f_hasta')->nullable();
            $table->integer('motivo')->nullable();
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
        Schema::dropIfExists('licencia_comisions');
    }
}
