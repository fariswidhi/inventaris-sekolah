<?php

namespace App\Http\Middleware;

use Closure;

class isPetugas
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check() && Auth::user()->role == 2 ) {
            echo "string";
        }
                return $next($request);
    }
}
