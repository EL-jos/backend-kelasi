<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Participation extends Model
{
    use HasFactory;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($participation) {
            $participation->id = (string) Str::uuid();
        });
    }

    public function student(){
        return $this->belongsTo(Student::class);
    }

    public function course(){
        return $this->belongsTo(Course::class);
    }

    public function participationStatut(){
        return $this->belongsTo(ParticipationStatut::class);
    }
}
