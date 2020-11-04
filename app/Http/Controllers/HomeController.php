<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Division;
use App\Ticket;
use App\System;
use App\Category;
use App\User;
use App\Status;
Use Alert;

use Illuminate\Support\Facades\DB;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // $div = Division::find(1);
        // dump($div);

        $div = DB::table('divisions')->get();
        $sys = DB::table('systems')->get();
        $cat = DB::table('categories')->get();
        $usr = DB::table('users')->get();
        // $sltsts = DB::table('statuses')
        //         ->where('statuses.id','4')
        //         ->get();
        $sts = DB::table('statuses')->get();
        $sltsts = Status::find(4);
        // dd($sltsts);

        // Active User
        // $selecteduser = auth()->user();

        return view('home', compact('div','sys','cat','usr','sts','sltsts'));
    }

    public function categorylist(Request $request){
        $id = (isset($_GET['id']) ? $_GET['id'] : '');

        $fndcat = DB::table('categories')
                ->where('system_id', $id)
                ->get();

        // dd($fndcat);
        // $statusrow = Status::find($selstat);
        // $statusflag = $statusrow->flag;

        return response($fndcat);
    }

    public function store(Request $request)
    {

        $ticket = new Ticket;
        // $status = 2;

        // dump($request->category);

        $ticket->name = $request->title;
        $ticket->description = $request->description;
        $ticket->raised_by = $request->raised_by;
        $ticket->division_id = $request->division;
        $ticket->user_id = $request->responsible;
        $ticket->system_id = $request->system;
        $ticket->category_id = $request->category;
        $ticket->created_at = $request->datetimepicker;
        $ticket->severity = $request->severity;
        $ticket->severity_comments = $request->severity_comments;
        $ticket->statuses_id = $request->status;
        // $ticket->statuses_id = $status;
        $ticket->save();

        // return redirect (route('home'))->with('toast_success','Ticket Raised Successfully');
        return redirect (route('ticketview'))->withToastSuccess('Ticket Raised Successfully!');
        // return redirect (route('home'))->withSuccess('Ticket Raised Successfully!');


    }
}
