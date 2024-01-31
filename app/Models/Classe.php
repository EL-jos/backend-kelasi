<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Classe extends Model
{
    use HasFactory;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($classe) {
            $classe->id = (string) Str::uuid();
        });
    }

    public function level(){
        return $this->belongsTo(Level::class);
    }

    public function section(){
        return $this->belongsTo(Section::class);
    }

    public function school(){
        return $this->belongsTo(School::class);
    }

    public function courses(){
        return $this->hasMany(Course::class);
    }
}
