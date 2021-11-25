<?php

use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\AdminPostController;
use App\Models\Category;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostController;
use App\Http\Controllers\DashboardBlogController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\AboutController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/ 

Route::get('/', function () {
    return view('home', [
        "title"=>"Home",
        'active'=>'home'
    ]);
});
Route::get('/about', function () {
    return view('about',[
        "title"=>"About",
        'active'=>'about',
    ]);
});

Route::get('/about', [AboutController::class, 'index']);
Route::resource('/about', AboutController::class)->except('show', 'edit', 'update','destroy');

Route::get('/posts', [PostController::class, 'index']);

// Halaman single post 
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/blogs', [BlogController::class, 'index']);

Route::get('/blogs/{blog:slug}', [BlogController::class, 'show']);

Route::get('/categories', function(){
    return view('categories', [
        'title'=> 'Post Categories',
        'active'=>'categories',
        'categories'=> Category::all()
    ]);
});

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function()
{
    return view('dashboard.index', [
        'active'=>'dashboard'
    ]);
})->middleware('auth');


Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug']);

Route::resource('/dashboard/posts', DashboardPostController::class);


Route::get('/dashboard/blogs/checkSlug', [DashboardBlogController::class, 'checkSlug'])->middleware('auth');

Route::resource('/dashboard/blogs', DashboardBlogController::class)->middleware('auth');


Route::get('/dashboard/categories/checkSlug', [AdminCategoryController::class, 'checkSlug']);

Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show');



