<?php

    /**
     *
     * By default, this controller handles all page requests. In addition, the
     * corresponding view model is loaded.
     *
     */
    class View extends Controller
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
            
            $page = $this->view->getPost($slug, "page");

            $data['page'] = $page;
            $data['posts'] = $this->view->getPosts();
            
            // Load homepage if no page is found in database.
            if (empty($page)) {
                $page = $this->view->getPost("home", "page");
                $data['page'] = $page;

                $this->view("header", $data);
                $this->view("index", $data);
                $this->view("footer", $data);
                die();
            }

            $this->view("header", $data);
            
            $this->view("page", $data);

            $this->view("footer", $data);
        }
    }
