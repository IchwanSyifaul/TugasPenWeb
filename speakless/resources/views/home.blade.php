@extends('layouts.main')

@section('container')
    <!-- Heading Row-->
    <div class="row gx-4 gx-lg-5 align-items-center mt-5 mb-5">
        <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="https://www.pusatalatbantudengar.com/blog/front/uploads/2020/03/2326.jpg" alt="..." /></div>
        <div class="col-lg-5">
            <h1 class="mb-5" style="color:red; font-size: 50pt;">SpeakLess</h1>
            <p>Website ini merupakan website untuk mempermudahkan pendamping anak berkebutuhan khusus baik orang tua, guru maupun orang yang tertarik untuk berkomunikasi dengan anak berkebutuhan khusus melalui bahasa isyarat</p>
            @auth
                    
            @else
                <a class="btn btn-danger" href="/login">Login</a>
            @endauth
            
        </div>
    </div>
    <!-- Content Row-->
    <div class="row gx-4 gx-lg-5">
        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body">
                    <h2 class="card-title">Belajar Bahasa Isyarat</h2>
                    <p class="card-text">fitur ini merupakan tempat dimana pengguna dapat berlatih bahasa isyara. melalui kamus yang tersedia.</p>
                </div>
                @auth
                    <div class="card-footer bg-danger"><a class="btn btn-sm btn-danger" href="/categories">More Info</a></div>
                @else
                    <div class="card-footer bg-danger"><a class="btn btn-sm btn-danger" href="/login">Login</a></div>
                @endauth
            </div>
        </div>
        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body">
                    <h2 class="card-title">About</h2>
                    <p class="card-text">fitur ini merupakan informasi dari kami selaku author.</p>
                </div>
                <div class="card-footer bg-danger"><a class="btn btn-sm btn-danger"  href="/about">More Info</a></div>
            </div>
        </div>
    </div>
@endsection