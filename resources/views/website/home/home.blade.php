@extends('master.front.master')

@section('body')
    <!-- Begin Featured
    ================================================== -->
    <section class="featured-posts">
        <div class="section-title">
            <h2><span>Featured</span></h2>
        </div>
        <div class="card-columns listfeaturedtag">

            <!-- begin post -->
            @foreach($subjects as $subject)
            <div class="card">
                <div class="row">
                    <div class="col-md-5 wrapthumbnail">
                        <a href="post.html">
                            <div class="thumbnail" style="background-image:url({{$subject->image}});">
                            </div>
                        </a>
                    </div>
                    <div class="col-md-7">
                        <div class="card-block">
                            <h2 class="card-title">{{$subject->title}}</h2>
                            <h4 class="card-text"> {{$subject->teacher->name}}</h4>
                            <div class="metafooter">
                                <figure>
                                    <blockquote class="blockquote">
                                       <p>{!! $subject->short_description !!}</p>
                                    </blockquote>
                                </figure>
                                <div class="wrapfooter">
								<span class="meta-footer-thumb">
								<a href="author.html"><img class="author-thumb" src="{{asset('/')}}img/22-Riaz.jpg" alt="Sal"></a>
								</span>

                                    <a href="{{route('detail',['id'=>$subject->id])}}" class="btn btn-outline-success">Read More</a>
                                    <a href="" class="btn btn-info float-end">Apply Course</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
            <!-- end post -->

            <!-- begin post -->

            <!-- end post -->

        </div>
    </section>
    <!-- End Featured
    ================================================== -->

    <!-- Begin List Posts
    ================================================== -->

    <!-- End List Posts
    ================================================== -->
@endsection
