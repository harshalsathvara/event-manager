@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Events
                    <div class="float-right">
                      <a href="/event/create">Create</a> 
                      <a href="/home" class="btn btn-warning">Dashboard</a> 
                    </div>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <table id="example" class="display" style="width:100%">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Start date</th>
                                <th>End Date</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(isset($events))
                                @foreach($events as $event)
                                <tr>
                                    <td>{{ $event->name }}</td>
                                    <td>{{ $event->start_date }}</td>
                                    <td>{{ $event->end_date }}</td>
                                    @if($event->status == 1)
                                        <td>Active</td>
                                    @else
                                        <td>Deactive</td>
                                    @endif
                                    <td>
                                        <a class="btn btn-link" href="{{ route('event.edit',[$event->id ]) }}">Edit</a>
                                        {{ Form::open(['route' => ['event.destroy', $event->id], 'method' => 'delete']) }}
                                            <button class="btn btn-link" type="submit">Delete</button>{{ Form::close() }}
                                    </td>
                                </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection