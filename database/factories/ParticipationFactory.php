<?php

namespace Database\Factories;

use App\Models\Course;
use App\Models\ParticipationStatut;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

class ParticipationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'student_id' => Student::inRandomOrder()->first()->id,
            'course_id' => Course::inRandomOrder()->first()->id,
            'participation_statut_id' => ParticipationStatut::inRandomOrder()->first()->id,
            'comment' => $this->faker->text,
            'connect_at' => $this->faker->dateTimeThisDecade($max = 'now', $timezone = "UTC"),
        ];
    }
}
