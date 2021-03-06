@extends('master.admin.master')
@section('body')
    <div class="row">
        <div class="card-body">
            <h4 class="card-title">Manage Student</h4>
            <p class="text-center text-success">{{Session::get('message')}}</p>

            <div class="table-responsive">
                <table class="table mb-0">

                    <thead>
                    <tr>
                        <th>SL No</th>
                        <th>First Name</th>
                        <th>Student ID</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($students as $student)
                        <tr>
                            <th scope="row">{{$loop->iteration}}</th>
                            <td>{{$student->name}}</td>
                            <td>{{$student->id}}</td>
                            <td>{{$student->email}}</td>
                            <td>{{$student->mobile}}</td>
                            <td>{{$student->status ==1 ? 'Active' : 'Inactive'}}</td>
                            <td>
                                <a href="{{route('student-status',['id'=>$student->id])}}" class="btn {{$student->status == 1 ? 'btn-success': 'btn-warning'}} btn-sm">
                                    <i class="fa fa-upload"></i>
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





