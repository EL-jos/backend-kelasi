<?php

namespace Database\Factories;

use App\Models\Level;
use App\Models\School;
use App\Models\Section;
use Illuminate\Database\Eloquent\Factories\Factory;

class ClasseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'level_id' => Level::inRandomOrder()->first()->id,
            'section_id' => Section::inRandomOrder()->first()->id,
            'school_id' => School::inRandomOrder()->first()->id,
            'description' => $this->faker->text(),
        ];
    }
}
