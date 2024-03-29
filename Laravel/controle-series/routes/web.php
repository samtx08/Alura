<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Route::get('/', [\App\Http\Controllers\SeriesController::class, 'index']);
Route::get('/series/create', [\App\Http\Controllers\SeriesController::class, 'create']);
Route::post('/series/salvar', [\App\Http\Controllers\SeriesController::class, 'store']);
