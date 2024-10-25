<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\EmployeeController;


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

Route::get('/', function () {
    return view('home');
});

Route::get('/search', function () {
    return view('search');  // Halaman pencarian
})->name('search');

Route::get('/employee/input', function () {
    return view('employee/input');  // Halaman input data pegawai
})->name('employee.input');

Route::get('/search', [SearchController::class, 'search'])->name('search');
Route::post('/search', [SearchController::class, 'search'])->name('search.process');


// Employee Input Page
Route::get('/employee/input', [EmployeeController::class, 'create'])->name('employee.input');

// Route for creating a new employee
Route::post('/employee/create', [EmployeeController::class, 'store'])->name('employee.store');


