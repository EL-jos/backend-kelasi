<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Student extends Model
{
    use HasFactory;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($student) {
            $student->id = (string) Str::uuid();
        });
    }

    public function guardians(){
        return $this->belongsToMany(Guardian::class);
    }

    public function user()
    {
        return $this->morphOne(User::class, 'userable');
    }

    public function participations(){
        return $this->hasMany(Participation::class);
    }
}
