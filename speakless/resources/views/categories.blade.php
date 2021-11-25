@extends('layouts.main')

@section('container')
<h1 class="mb-5">Categories</h1>

<div class="container">
    <div class="row mb-4">
        @foreach ($categories as $category)
        <div class="col-md-3">
            <a href="/posts?category={{ $category->slug }}">
                <div style="overflow: hidden; width: 100%;" class="card border-0 bg-transparant text-white mb-3">
                    @if ($category->image)
                        <img style="border-radius: 20px" src="{{ asset('storage/'.$category->image) }}" alt="{{ $category->name }}" width="100%" height="250px">
                    @else
                        <img src="https://source.unsplash.com/500x400?{{ $category->name }}" class="card-img-top" alt="{{ $category->name }}">
                    @endif
                    <div class="card-img-overlay d-flex align-items-center p-0">
                        <h3 class="card-title text-center flex-fill p-4" style="background-color: rgba(0,0,0,0.4) ">{{ $category->name }}</h3>
                    </div>
                </div>
            </a>
        </div>
        @endforeach
    </div>
</div>
    
@endsection