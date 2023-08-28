<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class cursos extends Model
{
    public function docente(): BelongsTo
    {
        return $this->belongsTo(docentes::class, 'id_docente');
    }

    public function matricula(): HasMany
    {
        return $this->hasMany(matriculas::class, 'id_curso');
    }
}
