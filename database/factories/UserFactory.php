<?php

namespace Database\Factories;

use App\Models\Administrator;
use App\Models\Gender;
use App\Models\Guardian;
use App\Models\Student;
use App\Models\Teacher;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nom' => $this->faker->lastName,
            'postnom' => $this->faker->name,
            'prenom' => $this->faker->firstName,
            'email' => $this->faker->email,
            'blood_group' => $this->faker->randomElement(['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-']),
            'gender_id' => Gender::inRandomOrder()->first()->id,
            'phone' => $this->faker->phoneNumber,
            'birth' => $this->faker->dateTimeThisDecade(),
            'medical_history' => $this->faker->text(),
            'address' => $this->faker->address,
            'password' => "$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi", // password
        ];
    }

    public function configure()
    {
        return $this->afterCreating(function (User $user) {

            if($user->userable_type === Administrator::class){
                $user->roles()->attach(1);
            }elseif($user->userable_type === Teacher::class){
                $user->roles()->attach(3);
            }elseif($user->userable_type === Student::class){
                $user->roles()->attach(4);
            }elseif($user->userable_type === Guardian::class){
                $user->roles()->attach(4);
            }

        });
    }

}
