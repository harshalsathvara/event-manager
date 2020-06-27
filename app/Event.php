<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = [
        'name', 'start_date', 'end_date','user_id','shared_id','status'
    ];

    public function setstartDateAttribute($value) {
        $this->attributes['start_date'] = date('Y-m-d', strtotime($value));
    }

    public function setendDateAttribute($value) {
        $this->attributes['end_date'] = date('Y-m-d', strtotime($value));
    }
}