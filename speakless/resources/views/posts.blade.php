@extends('layouts.main')

@section('container')
<h1 class="mb-3 text-center">{{ $title }}</h1>

<div class="row justify-content-center mb-3">
  <div class="col-md-6">
    <form action="/posts" >
      @if (request('category'))
          <input type="hidden" name="category" value="{{ request('category') }}">
      @endif
      @if (request('author'))
          <input type="hidden" name="author" value="{{ request('author') }}">
      @endif
      <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Search . . " name="search" value="{{ request('search') }}">
        <button class="btn btn-danger" type="submit">Search</button>
      </div>
    </form>
  </div>
</div>

@if($posts->count())

<div class="container">
  <div class="row">
    @foreach ($posts as $post)
    <div class="col-md-3 mb-3">
      <div class="card">
        <div class="position-absolute px-3 py-2 " style="background-color: rgba(0,0,0,0.7)">
          <a href="/posts?category={{ $post->category->slug }}"class="text-decoration-none text-white">{{ $post->category->name }}</a>
        </div>
        
        <img src="{{ asset('storage/'.$post->image) }}" alt="{{ $post->title }}" width="100%" height="250px">
        
        <div class="card-body">
          <h5 class="card-title text-center"><a href="/posts/{{ $post->slug }}" class="text-decoration-none text-dark">{{ $post->title }}</a></h5>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</div>

@else
  <p class="text-center fs-4">No post found.</p>
@endif

<div class="d-flex justify-content-center">
  {{ $posts->links() }}
</div>

@endsection