<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class City extends Model
{
    use HasFactory;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($city) {
            $city->id = (string) Str::uuid();
        });
    }

    public function province(){
        return $this->belongsTo(Province::class);
    }

    public function schools(){
        return $this->hasMany(School::class);
    }
}
