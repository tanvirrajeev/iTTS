<?php

namespace App\Http\Controllers;

use App\Ticket;
use App\Division;
use App\System;
use App\Category;
use App\Status;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TicketController extends Controller
{

    public function index()
    {
        $id = Auth::id();
        $ticket = DB::table('tickets')
            ->where('user_id', $id)
            ->where('statuses_id', '<>', 1)
            // ->get();
            ->paginate(6);

        // $usr = DB::table('users')->get();

        // $ticket = Ticket::all();

        // $ticketusrid = Ticket::orderBy('user_id')->pluck('user_id','name');
        // return $ticketusrid = Ticket::whereDate('created_at', today())->count();


        // return $ticket->name;
        // $ticket = new Ticket;
        // return $ticket = Ticket::where('user_id', '=', Auth::user()->id);
        // ->where('accepted', '=', 0)->get();
        // $usr = User::all();
        // $id = Auth::id();
        // $ticket = Ticket::find($id);
        // return $ticket = Ticket::where('user_id', $id);
        // $ticket = Ticket::all();
        // foreach ($ticket as $item) {
        //     $userticket = $item->user_id;
        // }
        // return $userticket;

        // $usr = User::all();
        // $usr->name;

        // $cat = DB::table('categories')->get();
        // return view('home', compact('div','sys','cat') );

        // $div = App\Division::all();
        // dump($div);

        // Find selected Responsible
        // $responsibleid = $ticket->user_id;
        // $selectedusr = User::find($responsibleid);
        // $selectedusrname = $selectedusr->name;

        // Get the currently authenticated user...
        // $user = Auth::user();
        // Get the currently authenticated user's ID...
        // $id = Auth::id();

        // return view('ticket.index', compact('ticket','selectedstsname','sts','selectedusrname','usr'));
        return view('ticket.index', compact('ticket'));
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show(Ticket $ticket)
    {
        //
    }

    public function edit($id)
    {
        $ticket = Ticket::find($id);


        $div = DB::table('divisions')->get();
        $sys = DB::table('systems')->get();
        $cat = DB::table('categories')->get();
        $sts = DB::table('statuses')->get();
        $usr = DB::table('users')->get();

        // Find selected division
        $divisionid = $ticket->division_id;
        $selecteddiv = Division::find($divisionid);
        $selecteddivname = $selecteddiv->name;

        // Find selected System
        $systemid = $ticket->system_id;
        $selectedsys = System::find($systemid);
        $selectedsysname = $selectedsys->name;

        // Find selected Category
        $categoryid = $ticket->category_id;
        $selectedcat = Category::find($categoryid);
        $selectedcatname = $selectedcat->name;

        // Find selected Status
        $statusid = $ticket->statuses_id;
        $selectedsts = Status::find($statusid);
        $selectedstsname = $selectedsts->name;

        // Find selected Responsible
        $responsibleid = $ticket->user_id;
        $selectedusr = User::find($responsibleid);
        $selectedusrname = $selectedusr->name;

        // Active User
        // $selecteduser = auth()->user();

        // dump($selectedstsname);

        return view('ticket.edit', compact('ticket','div','selecteddivname','divisionid','selectedsysname','selectedcatname','selectedstsname','selectedusrname','sys','cat', 'ticket','sts','usr') );

    }

    public function update(Request $request, $id)
    {

        $ticket = new Ticket;

        // dump($request->category);
        $ticket = Ticket::find($id);
        $ticket->name = $request->title;
        $ticket->description = $request->description;
        $ticket->raised_by = $request->raised_by;
        $ticket->division_id = $request->division;
        $ticket->user_id = $request->responsible;
        $ticket->system_id = $request->system;
        $ticket->category_id = $request->category;
        $ticket->ticket_date = $request->datetimepicker;
        $ticket->severity = $request->severity;
        $ticket->severity_comments = $request->severity_comments;
        $ticket->statuses_id = $request->status;
        // $ticket->statuses_id = 4;
        $ticket->save();

        return redirect (route('ticketview'))->with('toast_success','Ticket Updated Successfully...');

    }

    // public function editstatus($id)
    // {
    //     $ticket = Ticket::find($id);

    //     $sts = DB::table('statuses')->get();

    //     // Find selected Status
    //     $statusid = $ticket->statuses_id;
    //     $selectedsts = Status::find($statusid);
    //     $selectedstsname = $selectedsts->name;

    //     // dump($selectedstsname);

    //     return view('ticket.statusupdate', compact('selectedstsname','sts') );
    // }


    public function statusupdate( $ticketid, $statusid)
    {
        // dump($id1, $id2);
        // $ticket = Ticket::find($id2);
        // dump($ticket);
        // // Find selected Status
        // $statusid = $ticket->statuses_id;
        // $selectedsts = Status::find($statusid);
        // $selectedstsname = $selectedsts->name;
        // // dump($selectedstsname);

        // return view('ticket.edit', compact('selectedstsname','sts') );
        return view('ticket.statusupdate', compact('ticketid','statusid') );



    }

    public function destroy($id)
    {
        Ticket::find($id)->delete();
        return redirect (route('ticketview'))->with('toast_success','Ticket Deleted Successfully...');
    }
}
