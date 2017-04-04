<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'tag',
    ];
    
     /**
     *
     * Turn off timestamps
     * 
     * @var bool
     */
    public $timestamps = false;
    
    public function posts(){
        return $this->belongsToMany('App\Post', 'post_tags');
    }
}
