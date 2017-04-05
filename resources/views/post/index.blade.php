@extends('app')
@section('content')
    <div class="col-md-offset-8">
        Sort by:
        <a href="/new">new</a> 
        <a href="/old">old</a>
    </div>
    @foreach($posts as $post)
    <div class="post col-md-8 col-md-offset-2">
        <div class="row ">
                <div class="col-md-4 col-md-offset-4 text-center">
                    <a href="/post/{{$post->id}}">Open post #{{$post->id}}</a>
                </div>
                <div class="col-md-4  text-right">
                    {{date('Y-m-d H:i',$post->unix_time)}} 
                </div>
        </div>
        <div class="row">
            {{substr($post->post,0,500)}}...
        </div>
        <div class="row">
                Tags:
                @foreach($post->tags as $tag)
                    {{$tag->tag}}{{($loop->last)?'.':','}}
                @endforeach
        </div>
    </div>
    @endforeach
@endsection