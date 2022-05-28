@extends('master.admin.master')
@section('body')
    <div class="row">
        <div class="card-body">
                    <h4 class="card-title">Manage Teacher</h4>
                    <p class="text-center text-success">{{Session::get('message')}}</p>

                    <div class="table-responsive">
                        <table class="table mb-0">

                            <thead>
                            <tr>
                                <th>SL No</th>
                                <th>First Name</th>
                                <th>Email</th>
                                <th>Code</th>
                                <th>Mobile</th>
                                <th>Address</th>
                                <th>Image</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($teachers as $teacher)
                                <tr>
                                    <th scope="row">{{$loop->iteration}}</th>
                                    <td>{{$teacher->name}}</td>
                                    <td>{{$teacher->code}}</td>
                                    <td>{{$teacher->email}}</td>
                                    <td>{{$teacher->mobile}}</td>
                                    <td>{{ $teacher->address}}</td>
                                    <td><img src="{{asset($teacher->image)}}"alt="" height="50" width="50"> </td>
                                    <td>{{$teacher->status ==1 ? 'Active' : 'Inactive'}}</td>
                                    <td>
                                        <a href="{{route('edit-teacher',['id'=>$teacher->id])}}" class="btn btn-success btn-sm">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="{{route('delete-teacher',['id'=>$teacher->id])}}" class="btn btn-danger btn-sm">
                                            <i class="fa fa-trash"></i>
                                        </a>

                                    </td>
                                </tr>

                            @endforeach
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>


    </div>
@endsection




