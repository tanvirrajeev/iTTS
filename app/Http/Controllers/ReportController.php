<?php

namespace App\Http\Controllers;

use App\report;
use App\Ticket;
use App\Division;
use App\System;
use App\Category;
use App\Status;
use App\Charts\DailyTicket;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $ticket = Ticket::all();
        // $ticket = Ticket::orderBy('created_at')->pluck('system_id','created_at');
        // $ticket = Ticket::orderBy('created_at')->pluck('system_id','created_at');
        // $ticket = Ticket::whereDate('created_at', today())->pluck('category_id','division_id');
        $todayticket = Ticket::whereDate('created_at', today())->count();
        $yesterdayticket = Ticket::whereDate('created_at', today()->subDays(1))->count();
        $twodaysagoticket = Ticket::whereDate('created_at', today()->subDays(2))->count();
    

        $allticket = Ticket::whereDate('created_at', today());
        $divisionid = Ticket::whereDate('created_at', today())->pluck('division_id')->count();
        $divisionidall = Ticket::whereDate('created_at', today())->pluck('division_id');
        $xyz = $divisionidall->sum('7');
        // return count($divisionidall);
        // $key = $ticket->keys();
        $divisionname = Division::find($divisionidall)->pluck('name');
        
        
        $allticket = Ticket::whereDate('created_at', today())->get();
        $ticketcount = $allticket->count();

        // $ticketcount = $ticket->count();

        // return $divid = $ticket->division_id;

        $chart = new DailyTicket;

        // return $ticket->values();

        // $chart->labels($ticket->keys());
        // $chart->dataset('My dataset', 'pie', $ticket->values())->backgroundColor('rgb(224, 204, 255)');
        // $chart->dataset('My dataset', 'doughnut', $ticket->values())
        //     ->options([
        //         'backgroundColor' => '#944dff',

        //     ]);
            
                        //     'legend' => [

            //         'display' => true
            // ]
        // $chart->displayLegend(true);
        // $key = $ticket->keys();
        // $div = Division::find($key)->pluck('name');

        // return $ticket->values();
        // $chart->labels($ticket->keys());

        $borderColors = [
            "rgba(255, 99, 132, 1.0)",
            "rgba(22,160,133, 1.0)",
            "rgba(255, 205, 86, 1.0)",
            "rgba(51,105,232, 1.0)",
            "rgba(244,67,54, 1.0)",
            "rgba(34,198,246, 1.0)",
            "rgba(153, 102, 255, 1.0)",
            "rgba(255, 159, 64, 1.0)",
            "rgba(233,30,99, 1.0)",
            "rgba(205,220,57, 1.0)"
        ];
        $fillColors = [
            "rgba(255, 99, 132, 1)",
            "rgba(22,160,133, 1)",
            "rgba(255, 205, 86, 1)",
            "rgba(51,105,232, 1)",
            "rgba(244,67,54, 1)",
            "rgba(34,198,246, 1)",
            "rgba(153, 102, 255, 1)",
            "rgba(255, 159, 64, 1)",
            "rgba(233,30,99, 1)",
            "rgba(205,220,57, 1)"
        ];

        $todaytickettext = 'Today-'.'Total:'.$todayticket;
        $yesterdaytickettext = 'Yesterday-'.'Total:'.$yesterdayticket;
        $twodaysagotickettext = '2 Days Ago-'.'Total:'.$twodaysagoticket;

        $chart->labels([$twodaysagotickettext, $yesterdaytickettext, $todaytickettext]);
        // $chart->labels(['Today', 'Yesterday', 'Today']);
        // $chart->labels($ticket->keys());
        $chart->dataset('Total Ticket', 'pie', [$twodaysagoticket, $yesterdayticket, $todayticket])
            ->color($borderColors)
            ->backgroundcolor($fillColors)
            ->fill(true);
        //     ->backgroundColor('rgb(224, 204, 255)')
        //     ->color('rgb(255,255,0)')
        //     ->fill(true)
        //     ->linetension(0.1)
        //     ->dashed([5]);
        // $chart->displaylegend(true);
            
        // $chart->dataset('My dataset', 'pie', $ticket->values())->backgroundColor('rgb(224, 204, 255)');
        // $chart->dataset('My dataset', 'pie', $ticket-values())->backgroundColor('rgb(224, 204, 255)');


        return view('ticket.report', compact('chart', 'ticket','allticket'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\report  $report
     * @return \Illuminate\Http\Response
     */
    public function show(report $report)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\report  $report
     * @return \Illuminate\Http\Response
     */
    public function edit(report $report)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\report  $report
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, report $report)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\report  $report
     * @return \Illuminate\Http\Response
     */
    public function destroy(report $report)
    {
        //
    }
}
