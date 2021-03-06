@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Blog</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/blogs/{{ $blog->slug }}" method="post" enctype="multipart/form-data">
      @method('put')
        @csrf
        <div class="mb-3">
          <label for="title" class="form-label">Title</label>
          <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" required autofocus value="{{ old('title',$blog->title) }}">
          @error('title')
            <div class="invalid-feedback">
              {{ $message }}
            </div>    
          @enderror
        </div>
        <div class="mb-3">
            <label for="slug" class="form-label">Slug</label>
            <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug" name="slug" disable readonly required value="{{ old('slug', $blog->slug) }}">
            @error('slug')
            <div class="invalid-feedback">
              {{ $message }}
            </div>    
          @enderror
        </div>
        <div class="mb-3">
          <label for="image" class="form-label" >Post Image</label>
          <input type="hidden" name="oldImage" value="{{ $blog->image }}">
          @if ($blog->image)
            <img src="{{ asset('storage/'.$blog->image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
          @else
            <img class="img-preview img-fluid mb-3 col-sm-5">
          @endif
          
          <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewImage()">
          @error('image')
            <div class="invalid-feedback">
              {{ $message }}
            </div>    
          @enderror
        </div>
        <div class="mb-3">
            <label for="body" class="form-label">Body</label>
            @error('body')<p class="text-danger">{{ $message }}</p>@enderror
                <input id="body" type="hidden" name="body" value="{{ old('body', $blog->body) }}">
                <trix-editor input="body"></trix-editor>              
        </div>
       
        <button type="submit" class="btn btn-primary mb-5">Update Blog</button>
    </form>
</div>

<script>
    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');

    title.addEventListener('change', function(){
        fetch('/dashboard/blogs/checkSlug?title=' + title.value)
        .then(response => response.json())
        .then(data => slug.value = data.slug)
    }); 
    function previewImage(){
      const Image = document.querySelector('#image');
      const imgPreview=document.querySelector('.img-preview');

      imgPreview.style.display='block';

      const ofReader = new FileReader();
      ofReader.readAsDataURL(image.files[0]);

      ofReader.onload=function(oFRevent){
        imgPreview.src = oFRevent.target.result;
      }
    }
</script>
@endsection