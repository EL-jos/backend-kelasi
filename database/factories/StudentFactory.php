<?php

namespace Database\Factories;

use App\Models\Classe;
use App\Models\Guardian;
use App\Models\Student;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'admission' => $this->faker->dateTimeThisDecade(),
            'classe_id' => Classe::inRandomOrder()->first()->id,
        ];
    }

    public function configure()
    {
        return $this->afterCreating(function (Student $student) {
            $student->save();

            // Créer un utilisateur associé à l'enseignant
            $user = User::factory()->create([
                'userable_id' => $student->id,
                'userable_type' => Student::class,
            ]);

            // Sélectionnez un ou deux gardiens existants
            $guardians = Guardian::inRandomOrder()->take(rand(1, 2))->get();
            // Assurons-nous que si deux gardiens sont associés, ils sont de sexe opposé
            if ($guardians->count() == 2 && $guardians->first()->user->gender_id == $guardians->last()->user->gender_id) {
                // Supprime le dernier gardien pour garantir que les genres sont différents
                $guardians->pop();
            }

            // Attache les gardiens à l'étudiant
            $student->guardians()->attach($guardians);
        });
    }
}
