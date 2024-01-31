<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Course extends Model
{
    use HasFactory;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($course) {
            $course->id = (string) Str::uuid();
        });
    }

    public function teacher(){
        return $this->belongsTo(Teacher::class);
    }

    public function classe(){
        return $this->belongsTo(Classe::class);
    }

    public function participations(){
        return $this->hasMany(Participation::class);
    }

    public function timetables(){
        return $this->hasMany(Timetable::class);
    }
}
