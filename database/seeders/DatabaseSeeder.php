<?php

namespace Database\Seeders;

use App\Models\Administrator;
use App\Models\Classe;
use App\Models\Course;
use App\Models\Guardian;
use App\Models\Note;
use App\Models\Participation;
use App\Models\School;
use App\Models\Student;
use App\Models\Teacher;
use App\Models\Timetable;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Administrator::factory(4)->create();
        School::factory(20)->create();
        Classe::factory(50)->create();
        Teacher::factory(20)->create();
        Course::factory(50)->create();
        Guardian::factory(65)->create();
        Student::factory(100)->create();
        Participation::factory(100)->create();
        Note::factory(200)->create();
        Timetable::factory(500)->create();
    }
}
