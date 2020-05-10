@extends('layouts.app')

@section('content')

<div class="container">

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card bg-warning">
                <div class="card-header bg-dark text-light text-center"><h3>Profile</h3></div>

                <div class="card-body">

                    <div class="row">
                        <div class="col-md-2 mb-3"></div>
                        <div class="col-md-4 mb-3"><img src="https://img.icons8.com/bubbles/100/000000/administrator-male.png" class="img-lg rounded-circle mb-4" alt="profile image"></div> 
                        <div class="col-md-6 mb-3">
                            <i class="fas fa-user-alt"></i>
                            {{ Auth::user()->name }}
                            <br>
                            <i class="fas fa-envelope-open"></i>
                            {{ Auth::user()->email }}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-3"></div>
                        <div class="col-md-4 mb-3"></div> 
                        <div class="col-md-4 mb-3"></div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>



<script>

</script>

@endsection

