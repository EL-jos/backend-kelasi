<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Guardian extends Model
{
    use HasFactory;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($guardian) {
            $guardian->id = (string) Str::uuid();
        });
    }

    public function students(){
        return $this->belongsToMany(Student::class);
    }

    public function profession(){
        return $this->belongsTo(Profession::class);
    }

    public function user()
    {
        return $this->morphOne(User::class, 'userable');
    }
}
