<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Division;
use App\Ticket;
use App\System;
use App\Category;
use App\User;
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
        $sts = DB::table('statuses')->get();

        // Active User
        $selecteduser = auth()->user();

        return view('home', compact('div','sys','cat','usr','selecteduser','sts'));
    }

    public function store(Request $request)
    {
        
        $ticket = new Ticket;
        $status = 2;

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
        $ticket->save();

        // return redirect (route('home'))->with('toast_success','Ticket Raised Successfully');
        return redirect (route('home'))->withToastSuccess('Ticket Raised Successfully!');
        // return redirect (route('home'))->withSuccess('Ticket Raised Successfully!');


    }
}
