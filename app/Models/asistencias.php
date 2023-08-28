<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class asistencias extends Model
{

    public function matricula(): BelongsTo
    {
        return $this->belongsTo(matriculas::class, 'id_matricula');
    }
}
