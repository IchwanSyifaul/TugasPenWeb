<?php

namespace Database\Seeders;

use App\Models\About;
use App\Models\Blog;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name'=>'Siti Rosalina',
            'username'=>'sitirosalina29',
            'email' => 'sitirosalina29@gmail.com',
            'password' => bcrypt('12345')
        ]);
        
        User::factory(3)->create();
        Category::factory(4)->create();
        Post::factory(20)->create();
        Blog::factory(20)->create();
        About::factory(5)->create();
    }
}
