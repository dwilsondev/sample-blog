<?php

class Post extends Controller
{
    private $view;
    
    /**
     * Construct function
     *
     * This function loads the corresponding model for the view controller.
     */
    public function __construct()
    {
        $this->view = $this->model("View_Model");
    }
    
    /**
     * Index function
     *
     * This is an example index function to shows how to create a data array
     * and load a page passing in that data.
     * @return void
     */
    public function index($slug = 0)
    {
        $slug = filter_var($slug, FILTER_SANITIZE_STRING);

        $post = $this->view->getPost($slug, "post");
        
        if (empty($post)) {
            $data['page']['title'] = "Post not found.";
            die();
        } else {
            $data['page']['title'] = $post['title'];
        }

        $data['post'] = $post;

        $this->view("header", $data);
        
        $this->view("post", $data);

        $this->view("footer", $data);
    }
}
