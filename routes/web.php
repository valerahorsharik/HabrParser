<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/parse', ['uses' => 'ParseController@parse']);
Route::get('/post/{id}', ['uses' => 'PostController@show']);
Route::get('/{sortBy?}', ['uses' => 'PostController@index']);
