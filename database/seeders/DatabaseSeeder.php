<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

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
            'name' => 'Dimas Putra',
            'username' => 'dimasputra',
            'email' => '203040088@mail.unpas.ac.id',
            'password' => bcrypt('password')
        ]);

        //User::create([

            //'name' => 'Mirage',
            //'email' => 'mirage@gmail.com',
            //'password' => bcrypt('12345')

        //]);
        
        User::factory(3)->create();

        Category::create([
            'name' => 'Web Developer',
            'slug' => 'web-developer'
        ]);

        Category::create([
            'name' => 'Security Engineer',
            'slug' => 'security-engineer'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        //Post::create([
            //'title' => 'Judul Pertama',
            //'slug' => 'judul-pertama',
            //'excerpt' => 'There are many variations of passages of Lorem Ipsum available',
            //'body' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,
            // sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            //'category_id' => 1,
            //'user_id' => 1
        //]);

        //Post::create([
            //'title' => 'Judul Ke Dua',
            //'slug' => 'judul-ke-dua',
            //'excerpt' => 'There are many variations of passages of Lorem Ipsum available',
            //'body' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            //'category_id' => 1,
            //'user_id' => 1
        //]);

        //Post::create([
            //'title' => 'Judul Ke Tiga',
            //'slug' => 'judul-ke-tiga',
            //'excerpt' => 'There are many variations of passages of Lorem Ipsum available',
            //'body' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            //'category_id' => 2,
            //'user_id' => 1
        //]);

        //Post::create([
            //'title' => 'Judul Ke Empat',
            //'slug' => 'judul-ke-empat',
            //'excerpt' => 'There are many variations of passages of Lorem Ipsum available',
            //'body' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            //'category_id' => 2,
            //'user_id' => 2
        //]);


    }
}
