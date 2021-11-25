@extends('layouts.main')

@section('container')
<div class="auth">
  @if(session()->has('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      {{ session('success') }}
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
      </button>
    </div>
  @endif
    <div class="card mb--1" style="max-width: 70%;">
      <div class="row g-0">
        <div class="col-md-3">
          <img src="/img/ichwan.jpeg" style="width:200px; height:200px" class="img-fluid rounded-start" alt="IchwanSyifaul">
        </div>
        <div class="col-md-9">
          <div class="card-body">
            <h5 class="card-title mb-3">Ichwan Syifaul Qulud</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          </div>
        </div>
      </div>
    </div>
  
    <div class="card mb--1" style="max-width: 70%; margin-left:30%">
      <div class="row g-0">
        <div class="col-md-9">
          <div class="card-body">
            <h5 class="card-title mb-3">Siti Halimatus Sa'diyah</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          </div>
        </div>
        <div class="col-md-3">
          <img src="/img/hallimah.jpeg" style="width:200px; height:200px" class="img-fluid rounded-end" align="right" alt="sitiHalimatus">
        </div>
      </div>
    </div>
  
    <div class="card mb--1" style="max-width: 70%;">
      <div class="row g-0">
        <div class="col-md-3">
          <img src="/img/sitros.jpg" style="width:200px; height:200px" class="img-fluid rounded-start" alt="sitiRosalina">
        </div>
        <div class="col-md-9">
          <div class="card-body">
            <h5 class="card-title mb-3">Siti Rosalina</h5>
            <p class="card-text">Tawakkal, Pasrah, Qanaah. <br> Innallaha ma'ana</p>
          </div>
        </div>
      </div>
    </div>
  
    <div class="card mb-3" style="max-width: 70%;margin-left:30%">
      <div class="row g-0">
        <div class="col-md-9">
          <div class="card-body">
            <h5 class="card-title mb-3">Zahwa Zivanda Putri</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          </div>
        </div>
        <div class="col-md-3">
          <img src="https://source.unsplash.com/200x200?girl" class="img-fluid rounded-end" align="right" alt="zahwaZivanda">
        </div>
      </div>
    </div>
  </div>
  
  <div class="row justify-content-center mb-5">
    <div class="col-lg-6">
        <main class="form-signin">
            <h1 class="h3 mb-5 mt-5 fw-normal text-center">Contact Us</h1>
            <form action="/about" method="post" enctype="multipart/form-data">
              @csrf
              <div class="row mb-3">
                <label for="name" class="col-sm-3 col-form-label">Nama</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="name" name="name">
                </div>
              </div>
              <div class="row mb-3">
                <label for="email" class="col-sm-3 col-form-label">Email</label>
                <div class="col-sm-9">
                  <input type="email" class="form-control" id="email" name="email">
                </div>
              </div>
              <div class="row mb-3">
                <label for="pertanyaan" class="col-sm-3 col-form-label">Pertanyaan</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="pertanyaan" name="pertanyaan">
                </div>
              </div>
              <div class="row mb-3">
                <label for="krisar" class="col-sm-3 col-form-label">Kritik dan Saran</label>
                <div class="col-sm-9">
                  <textarea class="form-control" id="krisar" name="krisar"></textarea>
                </div>
              </div>
              <div class="row mb-3 justify-content-center">
                <button class="btn btn-lg btn-danger" style="width:15%;" type="submit">Send</button>
              </div>
            
            </form>
        </main>
      </div>
  </div>
@endsection