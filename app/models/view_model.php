<?php

    /**
     * 
     * This is the model for the view controller.
     * 
     */
    Class View_Model extends Model 
    {
        
        private $connect;

        public function __construct() {

            $this->connect = $this->db();

        }

        public function getPost($id, $type) {

            $sql = "SELECT * FROM `posts` WHERE slug = ? AND `type` = ?";
            $statement = $this->connect->prepare($sql);
            $statement->execute(array($id, $type));
            $results = $statement->fetch();
            
            if(empty($results)) {
                return false;
            }
            
            return $results;

        }

        public function getPosts() {

            $sql = "SELECT * FROM `posts` WHERE `type` = 'post'";
            $statement = $this->connect->prepare($sql);
            $statement->execute();
            $results = $statement->fetchAll();
            
            if(empty($results)) {
                return false;
            }
            
            return $results;

        }
        
    }