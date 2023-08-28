<?php

use App\Http\Controllers\MatriculasController;
use App\Http\Controllers\AsistenciasController;
use App\Http\Controllers\AlumnosController;
use App\Http\Controllers\DocentesController;
use App\Http\Controllers\CursosController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
// return $request->user();
//});

Route::get('/Docentes', [DocentesController::class, 'index']);
Route::post('/Docentes/create', [DocentesController::class, 'create']);
Route::post('/Docentes/update/{id}', [DocentesController::class, 'update']);
Route::post('/Docentes/delete/{id}', [DocentesController::class, 'destroy']);


Route::get('/Alumnos', [AlumnosController::class, 'index']);
Route::post('/Alumnos/create', [AlumnosController::class, 'create']);
Route::post('/Alumnos/update/{id}', [AlumnosController::class, 'update']);
Route::post('/Alumnos/delete/{id}', [AlumnosController::class, 'destroy']);

Route::get('/Cursos', [CursosController::class, 'index']);
Route::post('/Cursos/create', [CursosController::class, 'create']);
Route::post('/Cursos/update/{id}', [CursosController::class, 'update']);
Route::post('/Cursos/delete/{id}', [CursosController::class, 'destroy']);

Route::get('/Asistencias', [AsistenciasController::class, 'index']);
Route::get('/Asistencias/{id}', [AsistenciasController::class, 'show']);
Route::post('/Asistencias/create', [AsistenciasController::class, 'create']);
Route::post('/Asistencias/update/{id}', [AsistenciasController::class, 'update']);
Route::post('/Asistencias/delete/{id}', [AsistenciasController::class, 'destroy']);

Route::get('/Matriculas', [MatriculasController::class, 'index']);
Route::post('/Matriculas/create', [MatriculasController::class, 'create']);
Route::post('/Matriculas/update/{id}', [MatriculasController::class, 'update']);
Route::post('/Matriculas/delete/{id}', [MatriculasController::class, 'destroy']);
