<?php

namespace App\Http\Middleware;

use Illuminate\Cookie\Middleware\EncryptCookies as Middleware;

class EncryptCookies extends Middleware
{
    // Aquí puedes excluir cookies que NO deben ser cifradas
    protected $except = [
        //
    ];
}
