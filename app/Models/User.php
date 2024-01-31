<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Str;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    public $incrementing = false;
    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        // Événement "creating" sera déclenché avant la création du modèle
        static::creating(function ($user) {
            $user->id = (string) Str::uuid();
        });
    }

    public function userable()
    {
        return $this->morphTo();
    }

    public function gender(){
        return $this->belongsTo(Gender::class);
    }

    public function roles(){
        return $this->belongsToMany(Role::class);
    }
}
