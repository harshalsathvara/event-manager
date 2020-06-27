<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Event;
use Auth;

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
        $events_array = [];
        $user = Auth::user();

        $eventsList = Event::select('name','start_date','end_date')->where('status',1)->where('user_id',$user->id)->orWhere('shared_id', $user->id)->get()->toArray();

        if ($eventsList) {
            foreach ($eventsList as $key => $value) {
                $events_array[$key]['title'] = $value['name'];
                $events_array[$key]['start'] = $value['start_date'];
                $events_array[$key]['end'] = $value['end_date'];
            }
        }
        $events  = json_encode($events_array,true);
    
        return view('home',compact('events'));
    }
}
