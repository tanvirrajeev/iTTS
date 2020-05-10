<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    public function tickets(){
        return $this->hasMany('App\Ticket');
        // return $this->belongsTo('App\Ticket');
    }
} 
