<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="{{asset('/')}}website/assets/img/favicon.ico">
    <title>Mediumish - A Medium style template by WowThemes.net</title>
    <!-- Bootstrap core CSS -->
    <link href="{{asset('/')}}website/assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Fonts -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{{asset('/')}}website/assets/css/mediumish.css" rel="stylesheet">
</head>
<body>

<!-- Begin Nav
================================================== -->
<nav class="navbar navbar-toggleable-md navbar-light bg-white fixed-top mediumnavigation">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="container">
        <!-- Begin Logo -->
        <a class="navbar-brand" href="index.html">
            <img src="{{asset('/')}}website/assets/img/logo.png" alt="logo">
        </a>
        <!-- End Logo -->
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <!-- Begin Menu -->
            <ul class="navbar-nav ml-auto">
                <li><a class="nav-link" href="{{route('home')}}">Home </a></li>
                <li>
                    <a class="nav-link" href="post.html">All Course</a>
                </li>
                @if(Session::get('student_id'))
                <li class="dropdown">
                    <a href="{{route('user-login')}}" class="nav-link dropdown-toggle" data-toggle="dropdown">
                        {{Session::get('student_name')}}
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="nav-link" href="{{route('student-dashboard')}}">Dashboard</a>
                        </li>
                        <li><a href="" class="dropdown-item" onclick="event.preventDefault();document.getElementById('studentLogoutForm').submit();">Logout</a> </li>
                        <form action="{{route('student-logout')}}" method="POST" id="studentLogoutForm">
                            @csrf
                        </form>
                    </ul>
                </li>
                @else
                    <li>
                        <a class="nav-link" href="{{route('user-login')}}">Login</a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{route('user-register')}}">Register</a>
                    </li>
                @endif
            </ul>
            <!-- End Menu -->
            <!-- Begin Search -->
{{--            <form class="form-inline my-2 my-lg-0">--}}
{{--                <input class="form-control mr-sm-2" type="text" placeholder="Search">--}}
{{--                <span class="search-icon"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M20.067 18.933l-4.157-4.157a6 6 0 1 0-.884.884l4.157 4.157a.624.624 0 1 0 .884-.884zM6.5 11c0-2.62 2.13-4.75 4.75-4.75S16 8.38 16 11s-2.13 4.75-4.75 4.75S6.5 13.62 6.5 11z"></path></svg></span>--}}
{{--            </form>--}}
            <!-- End Search -->
        </div>
    </div>
</nav>
@yield('body')
<!-- End Nav
================================================== -->

<!-- Begin Site Title
================================================== -->
<div class="container">
    <div class="mainheading">
        <h1 class="sitetitle">Mediumish</h1>
        <p class="lead">
            Bootstrap theme, medium style, simply perfect for bloggers
        </p>
    </div>
    <!-- End Site Title
    ================================================== -->



    <!-- Begin Footer
    ================================================== -->
    <div class="footer">
        <p class="pull-left">
            Copyright &copy; 2022 Your Website Name
        </p>
        <p class="pull-right">
            Bangladesh <a target="_blank" href="https://www.wowthemes.net">myit.com</a>
        </p>
        <div class="clearfix">
        </div>
    </div>
    <!-- End Footer
    ================================================== -->

</div>
<!-- /.container -->

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="{{asset('/')}}website/assets/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="{{asset('/')}}website/assets/js/bootstrap.min.js"></script>
<script src="{{asset('/')}}website/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
