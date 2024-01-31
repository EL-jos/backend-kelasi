<?php

namespace App\Http\Controllers\api\v1;

use App\Http\Controllers\Controller;
use App\Models\Administrator;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = json_decode($request->credentials, true);

        $validators = Validator::make($credentials, [
            "email" => "required|email:rfc,dns",
            "password" => "required|min:4|string",
        ]);

        if($validators->fails()){
            return response()->json([
                'code' => 1,
                'message' => 'Echec de la connexion',
            ]);
        }
        $user = User::where("email", $credentials["email"])->first();

        if ($user) {
            $token = $this->generateToken($user);
            if($user->userable_type === Administrator::class){
                $user->load('roles', 'userable.schools');
            }
            $user->load('roles');

            return response()->json([
                'code' => 0,
                'message' => 'Connexion réussi avec succès',
                'data' => $user
            ], 200);

        } else {
            return response()->json([
                'code' => 1,
                'message' => 'Echec de la connexion',
            ], 401);
        }
    }

    public function logout(Request $request)
    {
        $user = User::find($request->user_id);
        if($user->update(['token' => null])){
            return response()->json([
                'code' => 0,
                'message' => 'Déconnexion réussie avec succès',
                'data' => null
            ], 200);
        }

        return response()->json([
            'code' => 1,
            'message' => 'Echec de la connexion',
        ], 401);
    }

    protected function generateToken($user)
    {
        $token = bin2hex(random_bytes(40));
        //$user->update(['token' => $token]);

        return $user->update(['token' => $token]) ? $token : null;
    }
}
