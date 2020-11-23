<?php

use Illuminate\Support\Facades\Route;
// use RealRashid\SweetAlert\Facades\Alert;
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

// Route::get('/', function () {
//     Alert::success('Success Title', 'Success Message');
//     // alert('Title','Lorem Lorem Lorem', 'success')->position('top-end');
//     return view('home');
// });

Auth::routes();

Route::get('/', 'HomeController@index')->name('home')->middleware('auth');
Route::get('/home', 'HomeController@index')->name('home')->middleware('auth');
Route::post('/home', 'HomeController@store')->name('store')->middleware('auth');
Route::get('/ticket', 'TicketController@index')->name('ticketview')->middleware('auth');
Route::get('/ticket/edit/{id}', 'TicketController@edit')->name('ticketedit')->middleware('auth');
Route::post('/ticket/update/{id}', 'TicketController@update')->name('ticketupdate')->middleware('auth');
Route::get('/ticket/delete/{id}', 'TicketController@destroy')->name('ticketdelete');
Route::post('/ticket/statusupdate/{id1}/{id2}', 'TicketController@statusupdate')->name('statusupdate')->middleware('auth');
Route::get('/report', 'ReportController@index')->name('report')->middleware('auth');
Route::get('/test', 'GraphController@test')->name('graph')->middleware('auth');
Route::get('/division', 'DivisionController@index')->name('div')->middleware('auth');
Route::get('/division/divisionlist', 'DivisionController@divisionlist')->name('divisionlist');
Route::get('/allticketsbyuser', 'AllticketsbyuserController@index')->name('allticketsbyuser')->middleware('auth');
Route::get('/profile', 'ProfileController@index')->name('profile')->middleware('auth');
// Route::post('/allticketsbyuser/{from}/{to}', 'Allticketsbyuser@datefilter')->name('allticketsbyuserparam')->middleware('auth');
Route::get('ticket/categorylist', 'HomeController@categorylist')->name('categorylist')->middleware('auth');

//Report Route
Route::get('/graph', 'GraphController@index')->name('graph')->middleware('auth');
Route::get('/graphbyseverity', 'GraphbyseverityController@index')->name('graphbyseverity')->middleware('auth');
Route::get('/allticketsthismonth', 'AllticketsthismonthController@index')->name('allticketsthismonth')->middleware('auth');



// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
