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
        Schema::create('pagos', function (Blueprint $table) {
            $table->id('id_pago');
            $table->decimal('monto', 8, 2);
            $table->string('folio')->unique();
            $table->date('fecha_emision');
            $table->date('fecha_vencimiento');
            $table->string('estado');
            $table->string('tipo_pago');
            $table->string('pdf_ruta')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pagos');
    }
};
