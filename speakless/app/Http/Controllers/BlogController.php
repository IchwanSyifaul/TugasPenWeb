<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\User;
use Illuminate\Http\Request;
use Clockwork\Storage\Search;


class BlogController extends Controller
{
    public function index()
    {
        $title ='';
        if(request('author')){
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' .$author->name;
        };
        return view('blogs', [
            "title" => "All Post".$title,
            "active" => 'blog',
            
            "blogs" => Blog::latest()->filter(request(['search', 'author']))->paginate(7)->withQueryString()
        ]);
    }

    public function show(Blog $blog){
        return view('blog',[
            "title" => "Blog",
            "active" => 'blog',
            "blog" =>$blog
        ]);
    }
}
