<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParticipationStatut extends Model
{
    use HasFactory;

    public function participation(){
        return $this->hasMany(Participation::class);
    }
}
