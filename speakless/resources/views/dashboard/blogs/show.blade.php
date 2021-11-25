@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $blog->title }}</h1>

            <a href="/dashboard/blogs" class="btn btn-success mb-3"><span data-feather="arrow-left"></span> Back to All My Blogs</a>
            <a href="/dashboard/blogs/{{ $blog->slug }}/edit" class="btn btn-warning mb-3"><span data-feather="edit"></span>Edit</a>
            <form action="/dashboard/blogs/{{ $blog->slug }}" method="POST" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger mb-3" onclick="return confirm('Are you sure?')"><span data-feather="x"></span> Delete</button>
              </form>

              @if ($blog->image)
              <div style="max-height: 350px; overflow:hidden;">
                  <img src="{{ asset('storage/'.$blog->image) }}" alt="{{ $blog->title }}" class="img-fluid">
              </div>
              @else
                <img src="https://source.unsplash.com/1200x400?disability" class="card-img-top" alt="disability" class="img-fluid">
              @endif

            <article class="my-4 fs-5">
                {!! $blog->body !!}
            </article>
        </div>
    </div>
</div>
@endsection
