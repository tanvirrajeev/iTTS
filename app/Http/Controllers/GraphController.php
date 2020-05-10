<?php

namespace App\Http\Controllers;

use App\graph;
use App\Ticket;
use App\Division;
use App\System;
use App\Category;
use App\Status;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;


class GraphController extends Controller
{

    public function index()
    {
        $data = DB::table('tickets')
            ->join('systems', 'tickets.system_id', '=', 'systems.id')
            ->select(
                DB::raw('systems.name as name'),
                DB::raw('count(*) as count')
            )
            ->whereDate('tickets.created_at', '=', today()->toDateString())
            ->groupBy('systems.name')
            ->get();

        $array[] = ['Systemid', 'Count'];
        foreach ($data as $key => $value) {
            $array[++$key] = [$value->name, $value->count];
            // dump($array);
        }

        $totalcount = 0;
        foreach ($data as $item) {
            $totalcount += $item->count;
        }
        // dd($totalcount);
        
        return view('ticket.graph',compact('totalcount'))->with('system_id', json_encode(
            $array));
    }

    public function test(){
        // return view('ticket.test');
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show(graph $graph)
    {
        //
    }

    public function edit(graph $graph)
    {
        //
    }

    public function update(Request $request, graph $graph)
    {
        //
    }

    public function destroy(graph $graph)
    {
        //
    }
}
