<?php

namespace Database\Factories;

use App\Models\Teacher;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class TeacherFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [

        ];
    }

    public function configure()
    {
        return $this->afterCreating(function (Teacher $teacher) {
            // Créez un utilisateur associé à l'enseignant
            //$user = (new UserFactory())->definition();
            //$user = User::factory()->create();
            //$teacher->user()->save($user);
            // Créer un enseignant avec les attributs spécifiques
            $teacher->save();

            // Créer un utilisateur associé à l'enseignant
            $user = User::factory()->create([
                'userable_id' => $teacher->id,
                'userable_type' => Teacher::class,
            ]);

        });
    }
}
