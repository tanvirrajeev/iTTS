<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class AllticketsbyuserController extends Controller
{
    public function index()
    {
        $id = Auth::id();
        $ticket = DB::table('tickets')
            ->where('user_id', $id)
            // ->where('statuses_id', '<>', 1)
            // ->get();
            ->orderByRaw('created_at DESC')
            ->paginate(10);

        // dd($ticket);

        return view('report.allticketsbyuser', compact('ticket'));

    }

    // public function datefilter($from, $to){
    //     $from;
    //     $to;
    //     dd($request->from);
    // }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
