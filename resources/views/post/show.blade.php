@extends('app')
@section('content')
<div class='text-center'>
    Here you can look at pure HTML code of the post #{{$post->id}}!
</div>
<div class="col-md-8 col-md-offset-2">
    {{$post->post}}
</div>
@endsection

