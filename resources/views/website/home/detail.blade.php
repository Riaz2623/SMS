@extends('master.front.master')

@section('body')
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="text-center text-success">{{Session::get('message')}}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card card-body">
                        <img src="{{asset($subject->image)}}" alt="" height="" width="" class=""/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card-header"><h1>{{$subject->title}}</h1></div>
                    <div class="card card-body">
                        <h3>Course Fee:{{$subject->fee}}</h3>
                        <hr/>
                        <h4>Trainer Name:{{$subject->teacher->name}} </h4>
                        <img src="{{asset($subject->teacher->image)}}" alt="" height="100" width="100" class=""/>
                       <ul>
                           <li><a href="" class="">Trainer Facebook Link</a></li>
                           <li><a href="" class="">Trainer LinkInd Link</a></li>
                           <li><a href="" class="">Trainer Email Link</a></li>
                           <li><a href="" class="">Trainer YouTub Link</a></li>
                       </ul>
                        <a href="{{route('enroll-now',['id'=>$subject->id])}}" class="btn btn-success mx-auto w-25 {{$check == true ? 'disabled btn-danger' : ''}}">Enroll Now</a>


                        <div>{!! $subject->short_description !!}</div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card card-body">
                        <h1>Course Module Detail</h1>
                        <hr/>
                        <div>{!! $subject->long_description !!}</div>
                        <hr/>
                    </div>

                </div>
            </div>
        </div>
    </section>

@endsection
