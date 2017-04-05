<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PostController extends Controller
{
    /**
     * 
     * Show all posts from DB 
     * 
     * @param string $sortBy
     * @return \Illuminate\View\View
     */
    public function index($sortBy = 'new'){
        if ($sortBy == 'new'){
            $sort = 'asc';
        } elseif ($sortBy == 'old'){
            $sort = 'desc';
        }  else {
           $sort = 'asc'; 
        }
        $posts = Post::orderBy('unix_time',$sort)->get();
        return view('post.index',['posts' => $posts]);
    }
    
    /**
     * 
     * Show specific post from DB by ID
     * 
     * @param string $id
     * @return \Illuminate\View\View
     */
    public function show($id){
        $post = Post::find($id);
        return view('post.show',['post'=>$post]);
    }
}
