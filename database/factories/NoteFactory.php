<?php

namespace Database\Factories;

use App\Models\Course;
use App\Models\NoteStatut;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

class NoteFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        /**
         * @var Course $course
         */
        $course = Course::inRandomOrder()->first();
        return [
            'student_id' => Student::inRandomOrder()->first()->id,
            'course_id' => $course->id,
            'note_statut_id' => NoteStatut::inRandomOrder()->first()->id,
            'comment' => $this->faker->text,
            'coefficient' => $this->faker->randomFloat(2, 0, $course->coefficient),
        ];
    }
}
