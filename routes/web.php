<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

/*Route::get('/word', function (){

    // Configuration de cURL
    $curlOptions = [
        CURLOPT_SSL_VERIFYPEER => false,
        CURLOPT_SSL_VERIFYHOST => false,
    ];

    // Configuration du client Guzzle HTTP avec les options cURL
    $client = new \GuzzleHttp\Client([
        'curl' => $curlOptions,
    ]);

    // Envoi de la requête à l'API GeoNames
    $response = $client->get("https://laravel-world.com/api/states?filters%5Bcountry_code%5D=CD&fields=cities");

    // Récupération du corps de la réponse
    $body = $response->getBody();

    // Conversion de la réponse JSON en tableau associatif
    $data = json_decode($body, true);
    //dd($data);
    // Traitement des données
    if (isset($data['data'])) {
        foreach ($data['data'] as $dataState) {
            $province = new \App\Models\Province();
            $province->name = $dataState['name'];
            $province->save();
            foreach ($dataState['cities'] as $dataCity) {
                $ville = new \App\Models\City();
                $ville->name = $dataCity['name'];
                $ville->province_id = $province->id;
                $ville->save();
                echo "Ville: ". $ville->name . "; Province: " . $province->name . "<br />";
            }
            //echo $state['name'] . PHP_EOL;
        }
    }
    //return response()->json(['message' => "c'est bon"]);
});*/
