<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Symfony\Component\DomCrawler\Crawler as Crawler;
use Symfony\Component\DomCrawler\Link as Link;

class ParseController extends Controller {

    /**
     * 
     * Contains posts from habr
     * 
     * @var array 
     */
    protected $posts = array();

    /**
     *
     * Last post ID, what we have in DB
     * 
     * @var int 
     */
    protected $lastPostId;

    public function __construct() {
        $this->getLastPostId();
    }

    public function parse() {
        $data = file_get_contents('https://habrahabr.ru/all/');
        $crawler = new Crawler($data);
        $crawler = $crawler->filter('a.post__title_link');
        foreach ($crawler as $element) {
            var_dump($element->getUri());
//            $link = new Link($element,'https://habrahabr.ru/all/');
//            var_dump($link->getUri());
        }
    }

    /**
     * Get last Post ID which we have in DB
     */
    protected function getLastPostId() {
        $this->lastPostId = 325130;
    }

    /**
     * Get all post which was published after our $lastPostId
     */
    protected function getAllPostsLinks() {
        $currentPostId = null;
        while ($currentPostId != $this->lastPostId) {
            
        }
    }

    /**
     * 
     * Get all posts on the $page
     * 
     * @param string $page Link on habr
     * 
     * @return array $postsLinks Contains links to all posts on the $page
     */
    protected function getPostsLinksFromPage($page) {
        $postsLinks = null;
        
        
        return $postsLinks;
    }

}
