<?php

    class Contact extends Controller
    {
        private $view;
        
        public function __construct()
        {
            $this->view = $this->model("View_Model");
        }
        
        public function index()
        {
            $data['page']['title'] = "Contact Us";

            $this->view("header", $data);
            
            $this->view("contact", $data);

            $this->view("footer", $data);
        }
    }
