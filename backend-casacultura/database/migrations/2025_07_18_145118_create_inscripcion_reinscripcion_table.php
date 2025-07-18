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
        Schema::create('inscripcion_reinscripcion', function (Blueprint $table) {
            $table->id('id_inscripcion');
            $table->string('tipo_pago');
            $table->string('periodo');
            $table->date('fecha_inscripcion');
            $table->string('estado');

            // Relaciones
            $table->unsignedBigInteger('id_alumno');
            $table->unsignedBigInteger('id_taller');
            $table->unsignedBigInteger('id_pago');

            $table->foreign('id_alumno')->references('id_alumno')->on('alumno')->onDelete('cascade');
            $table->foreign('id_taller')->references('id_taller')->on('talleres')->onDelete('cascade');
            $table->foreign('id_pago')->references('id_pago')->on('pagos')->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('inscripcion_reinscripcion');
    }
};
