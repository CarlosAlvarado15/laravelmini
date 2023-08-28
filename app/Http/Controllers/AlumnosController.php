<?php

namespace App\Http\Controllers;

use App\Models\alumnos;
use Illuminate\Http\Request;

class AlumnosController extends Controller
{
    public function index()
    {
        return alumnos::all();
    }


    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|string|regex:/^[A-Za-z\s]+$/|max:255', // Solo letras y espacios, máximo 25 caracteres
            'Lastname' => 'required|string|regex:/^[A-Za-z\s]+$/|max:255', // Solo letras y espacios, máximo 25 caracteres

        ]);

        $nuevoalumnos = new Alumnos(); // Instanciando la clase
        $nuevoalumnos->name = $request->name;
        $nuevoalumnos->Lastname = $request->Lastname;
        $nuevoalumnos->save();

        return "Soy el nuevo alumno";
    }


    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|integer', // Asegurarse de que el ID esté presente y sea un entero
            'name' => 'required|string|regex:/^[A-Za-z\s]+$/|max:255', // Solo letras y espacios, máximo 25 caracteres
            'Lastname' => 'required|string|regex:/^[A-Za-z\s]+$/|max:255', // Solo letras y espacios, máximo 25 caracteres
        ]);

        $alumnos = Alumnos::find($request->id);
        $alumnos->name = $request->name;
        $alumnos->Lastname = $request->Lastname;
        $alumnos->save();
    }

    public function destroy(Request $request)
    {
        $alumnos =  alumnos::find($request->id); //instanciando la clase
        $alumnos->status = 0;

        $alumnos->save();
    }
}
