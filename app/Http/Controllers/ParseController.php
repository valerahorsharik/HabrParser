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
    
    /**
     *
     * Number of the current page on habr
     * 
     * @var int 
     */
    protected $currentPageNumber = 1;

    public function __construct() {
        $this->getLastPostId();
    }

    public function parse() {
//        $data = file_get_contents('https://habrahabr.ru/all/page2/');
        $this->getAllPostsLinks();
//          $this->getPostIdFromLink('https://habrahabr.ru/company/lenovo/blog/325558/');
        var_dump($this->posts);
    }

    /**
     * Get last Post ID which we have in DB
     */
    protected function getLastPostId() {
        $this->lastPostId = 325130;
    }

    /**
     * Get all post which was published after our $lastPostId
     * If we find post which equally $lastPostId then we return true
     * otherwise we keep finding it
     * 
     * @return bool 
     */
    protected function getAllPostsLinks() {
        $links = $this->getPostsLinksFromPage("https://habrahabr.ru/all/page{$this->currentPageNumber}/");
        foreach ($links as $link){
            $postId = $this->getPostIdFromLink($link);
            if ($postId == $this->lastPostId){
                return true;
            } else {
                $this->posts[]['postId'] = $postId;
                $this->posts[]['postLink'] = $link;
            }
        }
        $this->currentPageNumber++;
        $this->getAllPostsLinks();
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
        $data = file_get_contents($page);
        $crawler = new Crawler($data,$page);
        $links = $crawler->filter('a.post__title_link')->links();
        foreach ($links as $link) {
            $postsLinks[] = $link->getUri();
        }
        
        return $postsLinks;
    }
    
    /**
     * 
     * Get Post Id by parsing the $link
     * 
     * @param string $link
     * 
     * @return int Post id after parsing the link
     */
    protected function getPostIdFromLink($link) {
        $postId = null;
        preg_match('~\/([0-9]+)\/~', $link,$postId);
        return $postId[1];
    }

}
