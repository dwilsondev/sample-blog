<?php

    /**
     *
     * model class is the main model used to access a database. It uses PDO to
     * connect. Extend this class in your models to access the DB. Raw Framework
     * only sets up the database connection for use with models. If you need
     * a more robust database library, you can add to the model class or simply delete
     * this file and run/install your own.
     *
     */
    class Model
    {

        /**
         * db function
         *
         * Database connection function. Grabs database info from system/config.php
         * and tries to establish a connection.
         *
         * @return void
         */
        protected function db()
        {
            $servername = "localhost";
            $dbname = "sample-blog";
            $username = "root";
            $password = "";
    
            try {
                $connect_pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
            } catch (PDOException $e) {
                echo $e->getMessage();
                echo "<br>Configure database connection in system/core/model.php and be sure to import sample-blog.sql in your database server.";
                die();
            }

            return $connect_pdo;
        }
    }