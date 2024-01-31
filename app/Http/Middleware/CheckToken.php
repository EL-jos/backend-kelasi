<?php

namespace App\Http\Middleware;

use App\Models\User;
use Closure;
use Illuminate\Http\Request;

class CheckToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        try {
            $token = explode('Bearer ', $request->header('Authorization'))[1];
            if ($token && $this->isValidToken($token)) {
                return $next($request);
            }

            return response()->json([
                'code' => 1,
                'message' => "Impossible d'acceder à cette ressource, viellez vous connecter",
            ], 401);
        }catch (\Exception $exception){
            return response()->json([
                'code' => 1,
                'message' => "Impossible d'acceder à cette ressource, viellez vous connecter",
                'data' => $exception
            ], 401);
        }

    }

    protected function isValidToken($token)
    {
        return User::where('token', '=', $token)->first() ? true : false;
    }
}
