@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Category</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/categories" method="post" enctype="multipart/form-data">
      @method('put')
        @csrf
        <div class="mb-3">
          <label for="name" class="form-label">Nama</label>
          <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" required autofocus value="{{ old('name',$category->name) }}">
          @error('name')
            <div class="invalid-feedback">
              {{ $message }}
            </div>    
          @enderror
        </div>
        <div class="mb-3">
            <label for="slug" class="form-label">Slug</label>
            <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug" name="slug" disable readonly required value="{{ old('slug', $category->slug) }}">
            @error('slug')
            <div class="invalid-feedback">
              {{ $message }}
            </div>    
          @enderror
        </div>
        <div class="mb-3">
          <label for="image" class="form-label" >Category Image</label>
          <input type="hidden" name="oldImage" value="{{ $category->image }}">
          @if ($category->image)
            <img src="{{ asset('storage/'.$category->image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
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
       
        <button type="submit" class="btn btn-primary mb-5">Update Category</button>
    </form>
</div>

<script>
    const name = document.querySelector('#name');
    const slug = document.querySelector('#slug');

    name.addEventListener('change', function(){
        fetch('/dashboard/categories/checkSlug?name=' + name.value)
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