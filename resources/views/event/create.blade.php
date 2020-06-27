@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Event Create</div>
                <div class="card-body">
                    {!! Form::open(['route' => 'event.store','method' => 'POST','files'=>'true']) !!}
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <?=Form::input('text','name',null,array('class' => 'form-control input-md','id' => 'name','placeholder' =>'Enter Name'))?>
                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="shared_id">Share with</label>
                                    <?= Form::select('shared_id',[''=>'Select User']+$users,old('shared_id'), ['class' => 'form-control input-md','id'=>'shared_id']); ?> 
                                    <span class="text-danger">{{ $errors->first('status') }}</span>
                                </div>
                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <?=Form::checkbox('status',1)?>
                                    <span class="text-danger">{{ $errors->first('status') }}</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="start_date">Start Date</label>  
                                    <?=Form::input('date','start_date',null,array('class' => 'form-control input-md','id' => 'start_date','placeholder' =>'Enter start date'))?>
                                    <span class="text-danger">{{ $errors->first('start_date') }}</span>
                                </div>
                                <div class="form-group">
                                    <label for="end_date">End Date</label>  
                                    <?=Form::input('date','end_date',null,array('class' => 'form-control input-md','id' => 'end_date','placeholder' =>'Enter end date'))?>
                                    <span class="text-danger">{{ $errors->first('end_date') }}</span> 
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="singlebutton"></label>
                            <button type="submit" class="btn btn-primary">Store</button>
                            <a type="button" href="{{ route('event.index') }}" class="btn btn-danger">Back</a>
                        </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
</div>
@endsection