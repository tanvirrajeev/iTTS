<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{

    public function user(){
        return $this->belongsTo('App\User');
    }

    protected static function boot(){
        parent::boot();
        // this triggers everytime an Ticket model is saved
        static::saved(function (Ticket $ticket) {
            $his = new History();
            $his->ticket_id = $ticket->id;
            $his->user_id = $ticket->user_id;
            $his->severity = $ticket->severity;
            $his->severity_comments = $ticket->severity_comments;
            $his->status_id = $ticket->statuses_id;
            $his->save();
        });

    }
}
