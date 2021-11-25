@extends('layouts.main')

@section('container')

    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h1 class="mb-3">{{ $post->title }}</h1>

                <p>in <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>

                @if ($post->image)
                    <div style="overflow:hidden;">
                        <img style="min-height:50vh; max-height: 75vh;" src="{{ asset('storage/'.$post->image) }}" alt="{{ $post->title }}" class="img-fluid">
                    </div>
                @else
                    <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}" class="img-fluid">
                @endif

                <article class="my-4 fs-5">
                    {!! $post->body !!}
                </article>

                <a href="/posts?category={{ $post->category->slug }}" class="d-block mt-3">Back</a>
            </div>
        </div>
    </div>

@endsection
