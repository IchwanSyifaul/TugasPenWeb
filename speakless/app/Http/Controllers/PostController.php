<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Http\Request;
use Clockwork\Storage\Search;


class PostController extends Controller
{
    public function index()
    {
        $title ='';
        if(request('category')){
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' .$category->name;
        };
        if(request('author')){
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' .$author->name;
        };
        return view('posts', [
            "title" => "Dictionary".$title,
            "active" => 'dictionary',
            // "posts" => \App\Models\Post::all()
            "posts" => Post::latest()->filter(request(['search', 'category']))->paginate(12)->withQueryString()
        ]);
    }

    public function show(Post $post){
        return view('post',[
            "title" => "Single Post",
            "active" => 'blog',
            "post" =>$post
        ]);
    }
}
