@extends('master.admin.master')
@section('body')
<section class="py-5 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 ">
                <div class=" card-center">
                    <div class="card-body card-content">
                        <h4 class="card-title mb-4 text-center">Add User From</h4>
                        <p class="text-center text-success">{{Session::get('message')}}</p>
                        <form action="{{route('new-user')}}" method="POST">
                            @csrf
                        <div class="form-group row">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Full name</label>
                            <div class="col-sm-9">
                                <input type="name" name="name" class="form-control" id="horizontal-firstname-input">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-9">
                                <input type="email" name="email" class="form-control" id="horizontal-email-input">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="horizontal-password-input" class="col-sm-3 col-form-label">Password</label>
                            <div class="col-sm-9">
                                <input type="password" name="password" class="form-control" id="horizontal-password-input">
                            </div>
                        </div>
                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">
                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Create New User</button>
                                </div>
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
