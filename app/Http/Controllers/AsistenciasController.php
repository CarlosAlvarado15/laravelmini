<?php

namespace App\Http\Controllers;


use App\Models\asistencias;
use App\Models\matriculas;
use Illuminate\Http\Request;

class AsistenciasController extends Controller
{
    public function index()
    {
        return asistencias::all();
    }
    public function show(Request $request)
    {

        $asistencias = matriculas::with('asistencia')->where('id_curso', $request->id)->get();
        return $asistencias;
    }

    public function create(Request $request)
    {
        $nuevoasistencias = new asistencias(); //instanciando la clase
        $nuevoasistencias->asistencia = $request->asistencia;
        $nuevoasistencias->id_matricula = $request->id_matricula;
        $nuevoasistencias->save();
        return " asistio a tiempo";
    }

    public function update(Request $request)
    {
        $asistencias = asistencias::find($request->id);
        $asistencias->asistencia = $request->asistencia;
        $asistencias->id_matricula = $request->id_matricula;
        $asistencias->save();
    }
    public function destroy(Request $request)
    {
        $cursos = asistencias::find($request->id); //instanciando la clase
        $cursos->status = 0;

        $cursos->save();
    }
}
