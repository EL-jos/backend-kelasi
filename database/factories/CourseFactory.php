<?php

namespace Database\Factories;

use App\Models\Classe;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

class CourseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->sentence(3),
            'coefficient' => $this->faker->randomElement(range(5, 100, 10)),
            'teacher_id' => Teacher::inRandomOrder()->first()->id,
            'classe_id' => Classe::inRandomOrder()->first()->id,
        ];
    }
}
