<?php

namespace Database\Factories;

use App\Models\Course;
use Illuminate\Database\Eloquent\Factories\Factory;

class TimetableFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // Générer une heure de début aléatoire
        $start_time = $this->faker->time('H:i');

        // Générer une heure de fin aléatoire après l'heure de début
        $end_time = $this->faker->dateTimeBetween("$start_time", '23:59')->format('H:i');

        return [
            'course_id' => Course::inRandomOrder()->first()->id,
            'day' => $this->faker->randomElement(['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']), // Jours de la semaine sauf le dimanche
            'start_time' => $start_time,
            'end_time' => $end_time,
        ];
    }
}
