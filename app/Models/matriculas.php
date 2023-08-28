<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use App\Models\asistencias;

class matriculas extends Model
{
    public function asistencia(): HasMany
    {
        return $this->hasMany(asistencias::class, 'id_matricula');
    }

    public function curso(): BelongsTo
    {
        return $this->belongsTo(cursos::class, 'id_curso');
    }
    public function alumno(): BelongsTo
    {
        return $this->belongsTo(alumnos::class, 'id_alumno');
    }
}
