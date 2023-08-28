<?php

namespace App\Http\Controllers;

use App\Models\docentes;
use Illuminate\Http\Request;

class DocentesController extends Controller
{
    public function index()
    {
        return docentes::all();
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:25',
            'Lastname' => 'required|string|max:25',
            'email' => 'required|email|unique:docentes,email', // Asegurarse de que el correo sea único en la tabla docentes
        ]);

        $nuevodocentes = new Docentes(); // Instanciando la clase
        $nuevodocentes->name = $request->name;
        $nuevodocentes->Lastname = $request->Lastname;
        $nuevodocentes->email = $request->email;
        $nuevodocentes->save();

        return "Soy el nuevo docente";
    }

    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|integer', // Asegurarse de que el ID esté presente y sea un entero
            'name' => 'required|string|max:25',
            'Lastname' => 'required|string|max:25',
            'email' => 'required|email|unique:docentes,email,' . $request->id, // Asegurarse de que el correo sea único en la tabla docentes excepto el registro actual
        ]);

        $docentes = Docentes::find($request->id); // Instanciando la clase
        $docentes->name = $request->name;
        $docentes->Lastname = $request->Lastname;
        $docentes->email = $request->email;
        $docentes->save();
    }

    public function destroy(Request $request)
    {
        $docentes =  docentes::find($request->id); //instanciando la clase
        $docentes->status = 0;

        $docentes->save();
    }
}
