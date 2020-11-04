<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>iTTS</title>
    <link rel="icon" href="{!! asset('images/main_logo.png') !!}"/>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/jquery-1.11.1.min.js') }}"></script>
    <script src="{{ asset('js/ticket_dropdown.js') }}"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" defer ></script>

    {{-- <script src="//code.jquery.com/jquery.js"></script> --}}
    {{-- <script type="text/javascript" src="dataTables.filter.html.js"></script> --}}
    
    
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/circularmenu.css') }}" rel="stylesheet">
    <link href="{{ asset('css/datatable.css') }}" rel="stylesheet">
    {{-- <link href="{{ asset('css/fontawesome.css') }}" rel="stylesheet"> --}}
    <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet">
    
    {{-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css"> --}}
    <script src="https://kit.fontawesome.com/5ccfe28e2a.js" crossorigin="anonymous"></script>

    

</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    IT&ERP Ticketing Systems 
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>



        <div class="row justify-content-center">
            {{-- <div class="col-md-2 d-flex justify-content-center">
                <div class="sidenav">
                    <br><br><a href="/ticket">View Ticket</a><br><br>
                    <a href="#">Services</a><br><br>
                    <a href="#">Clients</a><br><br>
                    <a href="#">Contact</a><br><br>
                  </div>
            </div> --}}
            <div class="col-md-11 container-fluid">
                <main class="py-4">
                    @yield('content')

                    {{-- Circular Menu  --}}
                    <div id="circularMenu" class="circular-menu">

                        <a class="floating-btn" onclick="document.getElementById('circularMenu').classList.toggle('active');">
                          {{-- <i class="fa fa-plus"></i> --}}
                          <i class="fas fa-chart-line"></i>
                        </a>

                        <menu class="items-wrapper">
                          {{-- <a href="" class="menu-item fa fa-facebook"></a> --}}
                          <a href="/allticketsthismonth" class="menu-item far fa-calendar-alt"></a>
                          <a href="/graphbyseverity" class="menu-item fas fa-balance-scale-right"></a>
                          <a href="/graph" class="menu-item fas fa-chart-pie"></a>
                        </menu>
                      
                      </div>
                      <div id="circularMenu1" class="circular-menu circular-menu-left">
                      {{-- To always onpen the menu just write active at the end of the div --}}
                        <a class="floating-btn" onclick="document.getElementById('circularMenu1').classList.toggle('active');">
                          <i class="fa fa-bars"></i>
                        </a>
                      
                        <menu class="items-wrapper">
                          <a href="/home" class="menu-item fa fa-home"></a>
                          <a href="/ticket" class="menu-item fas fa-edit"></a>
                          <a href="/allticketsbyuser" class="menu-item fas fa-book-open"></a>
                          {{-- <a href="/profile" class="menu-item fas fa-user-alt"></a> --}}
                        </menu>
                      
                      </div>
                </main>
            </div>
        </div>




    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script>
    <script src="{{ asset('js/datatable.js') }}" defer></script>  
    @include('sweetalert::alert')
</body>
</html>
