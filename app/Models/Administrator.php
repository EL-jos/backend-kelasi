<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Administrator extends Model
{
    use HasFactory;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($admin) {
            $admin->id = (string) Str::uuid();
        });
    }
    public function user()
    {
        return $this->morphOne(User::class, 'userable');
    }

    public function schools(){
        return $this->hasMany(School::class);
    }
}
