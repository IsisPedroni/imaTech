<?php

use App\Http\Controllers\Hello;
use App\Http\Controllers\Produtos;
use Illuminate\Support\Facades\Route;


Route::get('/', [Produtos::class, 'exibirProdutos']);

Route::get('/hello/{nome}/{sobrenome}', [Hello::class, 'exibeNome' ]);

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