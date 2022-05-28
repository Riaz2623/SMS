@extends('master.front.master')

@section('body')
    <section class="py-5 bg-light">
        <div class="container ">
            <div class="row">
                <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
                    <div class="card">
                        <div class="card-header">
                            <h4>Register Form</h4>
                        </div>
                        <div class="card-body">
                            <form action="" method="POST">
                                @csrf
                                <div class="row my-3">
                                    <label class="col-md-3">Full Name</label>
                                    <div class="col-md-9">
                                        <input type="name" name="name" class="form-control" placeholder="Full Name"/>
                                    </div>
                                </div>
                                <div class="row my-3">
                                    <label class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="Email Address"/>
                                    </div>
                                </div>
                                <div class="row my-3">
                                    <label class="col-md-3">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="password" placeholder="Password"/>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-lg btn-block">
                                        Register
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

