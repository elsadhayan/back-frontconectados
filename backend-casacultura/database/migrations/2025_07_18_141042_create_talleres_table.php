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
        Schema::create('talleres', function (Blueprint $table) {
            $table->id('id_taller');
            $table->string('nombre_taller');
            $table->integer('cupo_maximo');
            $table->integer('cupo_apartado')->default(0);
            $table->date('fecha_inicio');
            $table->date('fecha_final');
            $table->string('horario'); // puede ser "10:00 - 12:00", mejor string
            $table->integer('edad_minima');
            $table->integer('edad_maxima');

            // Relaciones
            $table->unsignedBigInteger('id_maestro');
            $table->unsignedBigInteger('id_salon')->nullable();

            $table->foreign('id_maestro')->references('id_maestro')->on('maestros')->onDelete('cascade');
            $table->foreign('id_salon')->references('id_salon')->on('salones')->onDelete('set null');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('talleres');
    }
};
