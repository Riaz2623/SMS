@extends('master.front.master')
@section('body')
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row">
                <div class="col-8 mx-auto">
                    <div class="card">
                        <div class="card-header">Login Form</div><br/>
                        <p class="text-center text-danger">{{Session::get('message')}}</p>
                        <div class="card-body">

                            <form action="{{route('new-login')}}" method="POST">
                                @csrf
                                <div class="row">
                                    <label class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="Email Address"/>
                                    </div>
                                </div>
                                <div class="row my-3">
                                    <label class="col-md-3">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="password" placeholder="password"/>
                                    </div>
                                </div>
                                <div class="row my-3">
                                    <label class="col-md-3">Login As</label>
                                    <div class="col-md-9">
                                        <label><input type="radio" name="check" value="1">Teacher</label>
                                        <label><input type="radio" name="check" value="0">Student</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-outline-success" value="Submit"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

