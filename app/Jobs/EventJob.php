<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use App\Event;
use App\User;
use Auth,Mail;

class EventJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $eventData;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($eventData)
    {
        $this->eventData = $eventData;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $eventDetails = $this->eventData;
        $user = Auth::user();
        if (!isset($eventDetails['id'])) {
            $eventDetails['id']='';
        }
        $eventDetails['user_id'] = $user->id;
        $saveDetail = Event::firstOrNew(['id'=>$eventDetails['id']]);

        $saveDetail->fill($eventDetails);
        $saveDetail->save();
        
        if ($eventDetails['shared_id']) {
            $user = User::select('email')->where('id',$eventDetails['shared_id'])->first()->toArray();
            $email = $user['email'];
            try {
                Mail::send('notification',compact('saveDetail'),function($message)use($email)
                {
                    $message->from('info@test.com');
                    $message->to($email)->subject('Event Invitation');
                });
            } catch (Throwable $e) {
                \Log::info($e);
            }
        }
        return $saveDetail;
    }
}
