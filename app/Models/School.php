<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class School extends Model
{
    use HasFactory;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($school) {
            $school->id = (string) Str::uuid();
        });
    }

    public function city(){
        return $this->belongsTo(City::class);
    }

    public function classes(){
        return $this->hasMany(Classe::class);
    }

    public function administrator(){
        return $this->belongsTo(Administrator::class);
    }
}
