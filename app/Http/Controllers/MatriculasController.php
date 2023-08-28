<?php

namespace App\Http\Controllers;

use App\Models\matriculas;
use Illuminate\Http\Request;

class MatriculasController extends Controller
{
    public function index()
    {
        $matricula = matriculas::with('asistencia', 'curso', 'alumno')->get();
        return $matricula;
    }


    public function create(Request $request)
    {
        $nuevomatriculas = new matriculas(); //instanciando la clase
        $nuevomatriculas->id_curso = $request->id_curso;
        $nuevomatriculas->id_alumno = $request->id_alumno;
        $nuevomatriculas->save();
        return "Soy la nueva matricula";
    }

    public function update(Request $request)
    {
        $matriculas = matriculas::find($request->id);
        $matriculas->id_curso = $request->id_curso;
        $matriculas->id_alumno = $request->id_alumno;
        $matriculas->save();
    }
    public function destroy(Request $request)
    {
        $matriculas = matriculas::find($request->id); //instanciando la clase
        $matriculas->status = 0;

        $matriculas->save();
    }
}