<?php

namespace App\Http\Controllers;

use App\Division;
use Illuminate\Http\Request;

class DivisionController extends Controller
{
    public function index()
    {
        return $div = App\Division::all();
    }

    public function divisionlist(){
        // $divlist = Division::all();
        $divlist = Division::orderBy('name','asc')->get();
        // dd($divlist);

        return response($divlist);
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }


    public function show(Division $division)
    {
        //
    }

    public function edit(Division $division)
    {
        //
    }

    public function update(Request $request, Division $division)
    {
        //
    }

    public function destroy(Division $division)
    {
        //
    }
}
