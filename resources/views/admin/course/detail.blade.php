@extends('master.admin.master')

@section('body')
    <div class="row">
        <div class="col-md-12">
            <div class="card card-body">
                <table class="table table-bordered table-hover">
                    <tr>
                        <th>Subject Title</th>
                        <th>{{$subject->title}}</th>
                    </tr>
                    <tr>
                        <th>Subject Code</th>
                        <th>{{$subject->code}}</th>
                    </tr>
                    <tr>
                        <th>Subject Fee</th>
                        <th>{{$subject->fee}}</th>
                    </tr>
                    <tr>
                        <th>Subject Description</th>
                        <th>{!! $subject->short_description !!}</th>
                    </tr>
                    <tr>
                        <th>Long Description</th>
                        <th>{!! $subject->long_description !!}</th>
                    </tr>
                    <tr>
                        <th>Trainer Name</th>
                        <th>{{$subject->teacher->name}}</th>
                    </tr>
                    <tr>
                        <th>Feature Image</th>
                        <td>
                            <img src="{{asset($subject->image)}}" alt=""/>
                        </td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
@endsection

