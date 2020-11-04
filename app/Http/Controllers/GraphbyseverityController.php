<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GraphbyseverityController extends Controller
{

    public function index()
    {
        $data = DB::table('tickets')
            // ->join('systems', 'tickets.system_id', '=', 'systems.id')
            ->select(
                DB::raw('severity'),
                DB::raw('count(*) as count')
            )
            ->whereDate('tickets.created_at', '=', today()->toDateString())
            ->groupBy('severity')
            ->get();

        // dd($data);

        $array[] = ['Severity', 'Count'];
        foreach ($data as $key => $value) {
            $array[++$key] = [$value->severity, $value->count];
            // dump($array);
        }
        
        $totalcount = 0;
        foreach ($data as $item) {
            $totalcount += $item->count;
        }
        // dd($totalcount);

        return view('report.graphbyseverity',compact('totalcount'))->with('severity', json_encode(
            $array));
    }


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
