@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">My Blog</h1>
</div>

@if(session()->has('success'))
  <div class="alert alert-success alert-dismissible fade show col-lg-8" role="alert">
        {{ session('success') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
  </div>
@endif

<div class="table-responsive col-lg-8">
    <a href="/dashboard/blogs/create" class="btn btn-success mb-3"><span data-feather="edit-3"></span> Create New Blog</a>

    <table class="table table-striped table-sm">
      <thead>
        <tr>
          <th scope="col">No</th>
          <th scope="col">Title</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
          @foreach ($blogs as $blog)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $blog->title }}</td>
                <td>
                    <a href="/dashboard/blogs/{{ $blog->slug }}" class="badge bg-info"><span data-feather="eye"></span></a>

                    <a href="/dashboard/blogs/{{ $blog->slug }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>

                    <form action="/dashboard/blogs/{{ $blog->slug }}" method="POST" class="d-inline">
                      @method('delete')
                      @csrf
                      <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><span data-feather="x"></span></button>
                    </form>
                </td>
            </tr>
          @endforeach
      </tbody>
    </table>
  </div>

@endsection
