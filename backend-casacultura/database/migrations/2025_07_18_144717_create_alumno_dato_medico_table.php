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
        Schema::create('alumno_dato_medico', function (Blueprint $table) {
            $table->id('id_dato_medico');
            $table->string('alergia');
            $table->string('alergia_descripcion')->nullable();
            $table->string('tipo_sangre');
            $table->boolean('tratamiento_medico')->default(false);
            $table->string('tratamiento_descripcion')->nullable();
            $table->string('enfermedad_cronica')->nullable();
            $table->string('tutor_emergencia');
            $table->string('telefono_emergencia');

            // Relación con alumno
            $table->unsignedBigInteger('id_alumno');
            $table->foreign('id_alumno')->references('id_alumno')->on('alumno')->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alumno_dato_medico');
    }
};
