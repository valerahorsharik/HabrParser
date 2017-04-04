<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Symfony\Component\DomCrawler\Crawler as Crawler;
use App\Post;
Use App\Tag;

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
        $this->getAllPostsLinks();
        for($i = 0; $i < count($this->posts);$i++){
           $this->posts[$i]=  array_merge($this->posts[$i], $this->getPostFromLink($this->posts[$i]['postLink']));
        }
//        $this->save();
    }

    /**
     * Get last Post ID which we have in DB
     */
    protected function getLastPostId() {
        $this->lastPostId = Post::select('habr_id')->orderBy('unix_time','desc')->first()->habr_id;
    }

    /**
     * Get all post which was published after our $lastPostId
     * If we find post which equally $lastPostId then we return true
     * otherwise we keep finding it
     * 
     * @param int $currentPageNumber Number of the current page on habr
     * @param int $numberOfAddingPost Number of the post which we wanna add to $this->posts
     * 
     * @return bool 
     */
    protected function getAllPostsLinks($currentPageNumber = 1, $numberOfAddingPost = 0) {
        $links = $this->getPostsLinksFromPage("https://habrahabr.ru/all/page{$currentPageNumber}/");
        foreach ($links as $link) {
            $postId = $this->getPostIdFromLink($link);
            if ($postId == $this->lastPostId) {
                return true;
            } else {
                $this->posts[$numberOfAddingPost]['postId'] = $postId;
                $this->posts[$numberOfAddingPost]['postLink'] = $link;
                $numberOfAddingPost++;
            }
        }
        $currentPageNumber++;
        $this->getAllPostsLinks($currentPageNumber, $numberOfAddingPost);
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
        $crawler = new Crawler($data, $page);
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
        preg_match('~\/([0-9]+)\/~', $link, $postId);
        return $postId[1];
    }

    /**
     * 
     * Get post from $link
     * 
     * @param string $link
     * 
     * @return array All data what we need(full post, time and tags)
     */
    protected function getPostFromLink($link) {
        $data = file_get_contents($link);
        $postPage = new Crawler($data);
        $post = $postPage->filter('div.post_full')->html();
        $time = $this->getPostTime($postPage);
        $tags = $this->getPostTags($postPage);
        return array('full'=>$post,'time'=>$time,'tags'=>$tags);
    }

    /**
     * 
     * Get time of the $post
     * 
     * @param Crawler $postPage
     * 
     * @return string Unix Time
     */
    protected function getPostTime(Crawler $postPage) {
        $time = '';
        $time = $postPage->filter('span.post__time_published')->text();
        $time = $this->formatTime($time);
        $time = strtotime($time);
        return $time;
    }

    /**
     * 
     * Change words in $time to normal format
     * 
     * @param string $time
     * 
     * @return string
     */
    protected function formatTime($time) {
        $year = date('Y');
        $date = null;
        $formattedTime = trim($time);
        $normalFormat = preg_match('/^([0-9]{1,2}) (\S+) в ([0-9:]{5})/', $formattedTime, $date);
        if ($normalFormat) {
            $day = $date[1];
            $month = $this->formatMonth($date[2]);
            $hoursAndMinutes = $date[3];
            $formattedTime = "{$year}-{$month}-{$day} {$hoursAndMinutes}";
        } else {
            preg_match('/(\S+) в ([0-9:]{5})/', $formattedTime, $date);
            $yearMonthDay = ($date[1] == 'сегодня')?date('Y-n-j'):date('Y-n-j', strtotime('yesterday'));
            $hoursAndMinutes = $date[2];
            $formattedTime = "{$yearMonthDay} {$hoursAndMinutes}";
        }

        return $formattedTime;
    }

    /**
     * 
     * Convert russian month into numeric month
     * 
     * @param string $russianMonth
     * @return string
     */
    protected function formatMonth($russianMonth) {
        switch ($russianMonth) {
            case 'января':
                $month = '1';
                break;
            case 'февраля':
                $month = '2';
                break;
            case 'марта':
                $month = '3';
                break;
            case 'апреля':
                $month = '4';
                break;
            case 'мая':
                $month = '5';
                break;
            case 'июня':
                $month = '6';
                break;
            case 'июля':
                $month = '7';
                break;
            case 'августа':
                $month = '8';
                break;
            case 'сентября':
                $month = '9';
                break;
            case 'октября':
                $month = '10';
                break;
            case 'ноября':
                $month = '11';
                break;
            case 'декабря':
                $month = '12';
                break;
        }
        return $month;
    }

    /**
     * 
     * Get time of the $post
     * 
     * @param Crawler $postPage
     * 
     * @return array
     */
    protected function getPostTags(Crawler $postPage) {
        $tags = array();
        $tagsLinks = $postPage->filter('.post__tags .tags a');
        foreach ($tagsLinks as $tagLink){
            $tags[]=$tagLink->textContent;
        }
        return $tags;
    }
    
    /**
     * Save all posts from $this->posts in DB
     */
    protected function save(){
        
    }

}
