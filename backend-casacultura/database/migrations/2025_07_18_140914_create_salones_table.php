<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('salones', function (Blueprint $table) {
            $table->id('id_salon');
            $table->string('nombre_salon');

            // Clave foránea: edificio al que pertenece el salón
            $table->unsignedBigInteger('id_edificio');
            $table->foreign('id_edificio')->references('id_edificio')->on('edificios')->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('salones');
    }
};
