<?php

namespace Database\Factories;

use App\Models\Guardian;
use App\Models\Profession;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class GuardianFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "profession_id" => Profession::inRandomOrder()->first()->id,
        ];
    }

    public function configure()
    {
        return $this->afterCreating(function (Guardian $guardian) {
            $guardian->save();

            // Créer un utilisateur associé à l'enseignant
            $user = User::factory()->create([
                'userable_id' => $guardian->id,
                'userable_type' => Guardian::class,
            ]);

        });
    }
}
