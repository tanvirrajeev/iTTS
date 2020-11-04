<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class System extends Model
{
    public function categories()
    {
        return $this->hasMany('App\Category');
    }

    public function tickets()
    {
        return $this->hasMany('App\Ticket');
    }
}
