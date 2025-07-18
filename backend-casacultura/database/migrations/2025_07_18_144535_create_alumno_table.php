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
        Schema::create('alumno', function (Blueprint $table) {
            $table->id('id_alumno');
            $table->string('apellido_paterno');
            $table->string('apellido_materno');
            $table->string('nombres');
            $table->date('fecha_nacimiento');
            $table->integer('edad');
            $table->string('sexo');
            $table->string('numero_telefono');
            $table->string('numero_casa')->nullable();
            $table->string('taller_cultural')->nullable();

            // Relaciones foráneas
            $table->unsignedBigInteger('id_usuario');
            $table->unsignedBigInteger('id_tutor');
            $table->unsignedBigInteger('id_academico')->nullable();
            $table->unsignedBigInteger('id_taller')->nullable();

            $table->foreign('id_usuario')->references('id_usuario')->on('usuario')->onDelete('cascade');
            $table->foreign('id_tutor')->references('id_tutor')->on('tutor')->onDelete('cascade');
            $table->foreign('id_academico')->references('id_academico')->on('alumno_academico')->onDelete('set null');
            $table->foreign('id_taller')->references('id_taller')->on('talleres')->onDelete('set null');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alumno');
    }
};
