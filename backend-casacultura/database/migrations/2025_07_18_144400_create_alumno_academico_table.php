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
        Schema::create('alumno_academico', function (Blueprint $table) {
            $table->id('id_academico');
            $table->string('estudio_alumno');
            $table->string('grado_estudio');
            $table->string('institucion_educativa');
            $table->string('escuela_nueva')->nullable();
            $table->string('estado');

            // Ya no se define id_alumno aquí para evitar la dependencia circular
            // Laravel puede acceder a esta relación desde el modelo Alumno

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alumno_academico');
    }
};
