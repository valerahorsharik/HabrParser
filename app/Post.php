<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'habr_id','post','unix_time'
    ];
    
    public function tags(){
        return $this->belongsToMany('App\Tag', 'post_tags');
    }
}
