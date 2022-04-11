<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVacacionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vacacions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('persona_id');
            $table->integer('años_trabajo')->default(0);
            $table->integer('dias_vacacion')->default(0);
            $table->integer('colectiva')->default(0);
            $table->date('f_solicitud')->nullable();
            $table->integer('dias_solicitados')->default(0);
            $table->integer('horas_solicitadas')->default(0);
            $table->date('f_desde')->nullable();
            $table->date('f_hasta')->nullable();
            $table->integer('dias_restantes')->default(0);
            $table->integer('horas_restantes')->default(0);
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
        Schema::dropIfExists('vacacions');
    }
}
