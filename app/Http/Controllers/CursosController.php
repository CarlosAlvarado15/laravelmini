<?php

namespace App\Http\Controllers;

use App\Models\cursos;
use Illuminate\Http\Request;

class CursosController extends Controller
{
    public function index()
    {
        return cursos::all();
    }


    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:25',
            'id_docente' => [
                'required',
                'integer',
                'exists:docentes,id',
                function ($attribute, $value, $fail) {
                    // Verificar si el docente ya está registrado en algún curso
                    $existingCourse = Cursos::where('id_docente', $value)->first();
                    if ($existingCourse) {
                        $fail('El docente ya está registrado en un curso.');
                    }
                },
            ],
        ]);

        $nuevocursos = new Cursos(); // Instanciando la clase
        $nuevocursos->name = $request->name;
        $nuevocursos->id_docente = $request->id_docente;
        $nuevocursos->save();

        return "Soy el nuevo curso";
    }



    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|integer', // Asegurarse de que el ID esté presente y sea un entero
            'name' => 'required|string|max:255',
            'id_docente' => [
                'required',
                'integer',
                'exists:docentes,id',
                function ($attribute, $value, $fail) use ($request) {
                    // Verificar si el docente ya está registrado en otro curso excepto el actual
                    $existingCourse = Cursos::where('id_docente', $value)
                        ->where('id', '<>', $request->id)
                        ->first();
                    if ($existingCourse) {
                        $fail('El docente ya está registrado en otro curso.');
                    }
                },
            ],
        ]);

        $cursos = Cursos::find($request->id);
        $cursos->name = $request->name;
        $cursos->id_docente = $request->id_docente;
        $cursos->save();
    }

    public function destroy(Request $request)
    {
        $cursos = cursos::find($request->id); //instanciando la clase
        $cursos->status = 0;

        $cursos->save();
    }
}
