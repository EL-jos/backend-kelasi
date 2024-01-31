<?php

namespace Database\Factories;

use App\Models\Administrator;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class AdministratorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
        ];
    }

    public function configure()
    {
        return $this->afterCreating(function (Administrator $administrator) {

            $administrator->save();
            // Créer un utilisateur associé à l'enseignant
            $user = User::factory()->create([
                'userable_id' => $administrator->id,
                'userable_type' => Administrator::class,
            ]);

            dump($user);
        });
    }
}
