@extends('layouts.main')

@section('container')
<h1 class="mb-3 text-center">{{ $title }}</h1>

<div class="row justify-content-center mb-3">
  <div class="col-md-6">
    <form action="/blogs" >
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

@if($blogs->count())
  <div class="card mb-3">
    @if ($blogs[0]->image)
      <div style="max-height: 400px; overflow:hidden;">
        <img src="{{ asset('storage/'.$blogs[0]->image) }}" alt="{{ $blogs[0]->title }}" width="100%">
      </div>
    @else
      <img src="https://source.unsplash.com/1200x400?personal" class="card-img-top" alt="{{ $blogs[0]->title }}">
    @endif

    <div class="card-body text-center">
      <h3 class="card-title"><a href="/posts/{{ $blogs[0]->slug }}" class="text-decoration-none text-dark">{{ $blogs[0]->title }}</a></h3>
      <p>
          <small class="text-muted">
            By. <a href="/blogs?author={{ $blogs[0]->author->username }}" class="text-decoration-none">{{ $blogs[0]->author->name }}</a> {{ $blogs[0]->created_at->diffForHumans() }}
          </small>
      </p>
      <p class="card-text">{{ $blogs[0]->excerpt }}</p>
      <a href="/blogs/{{ $blogs[0]->slug }}" class="text-decoration-none btn btn-primary">Read more . . </a>
    </div>
  </div>

<div class="container mb-5">
  <div class="row">
    @foreach ($blogs->skip(1) as $blog)
    <div class="col-md-4 mb-3">
      <div class="card">
        <div class="position-absolute px-3 py-2 " style="background-color: rgba(0,0,0,0.7)"></div>

        @if ($blog->image)
          <img src="{{ asset('storage/'.$blog->image) }}"  alt="{{ $blog->title }}" height="200px">
        @else
          <img src="https://source.unsplash.com/500x400?disability" class="card-img-top" alt="disability">
        @endif

        <div class="card-body">
          <h5 class="card-title"><a href="/blogs/{{ $blog->slug }}" class="text-decoration-none text-dark">{{ $blog->title }}</a></h5>
          <p>
              <small class="text-muted">
                By. <a href="/blogs?author={{ $blog->author->username }}" class="text-decoration-none">{{ $blog->author->name }}</a> {{ $blog->created_at->diffForHumans() }}
              </small>
          </p>
          <p class="card-text">{{ $blog->excerpt }}</p>
          <a href="/blogs/{{ $blog->slug }}" class="text-decoration-none btn btn-primary">Read more . . </a>
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
  {{ $blogs->links() }}
</div>

@endsection