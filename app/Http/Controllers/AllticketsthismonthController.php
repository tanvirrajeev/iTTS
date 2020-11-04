<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class AllticketsthismonthController extends Controller
{
    public function index()
    {
        $monthdiv = DB::table('tickets')
            ->join('divisions', 'tickets.division_id', '=', 'divisions.id')
            ->join('systems', 'tickets.system_id', '=', 'systems.id')
            ->select(
                DB::raw('divisions.name as divname'),
                DB::raw('systems.name as sysname'),
                DB::raw('count(*) as count')
            )
            // ->whereMonth('tickets.created_at', '4')
            ->whereMonth('tickets.created_at', Carbon::now()->month)
            ->groupBy('divisions.name','systems.name')
            ->orderBy('systems.name', 'ASC')
            ->get();
            // dd($monthdiv);
        
            $totalcount = 0;
            foreach ($monthdiv as $item) {
                $totalcount += $item->count;
            }
            // dd($totalcount);
        
        return view('report.allticketsthismonth', compact('monthdiv','totalcount'));
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
