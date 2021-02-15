<?php

    /**
     * 
     * This is the header template. It contains all header info as-well as
     * the site navigation.
     * 
     */

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <base href="<?php echo DOMAIN.ROOT_FOLDER; ?>" target="_blank" />

    <title><?php echo $data['page']['title']; ?></title>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="app/assets/css/materialize.min.css">

    <!-- Material icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- Sample Blog css and less -->
    <link rel="stylesheet/less" type="text/css" href="app/assets/css/style.less">
    <script src="//cdn.jsdelivr.net/npm/less@3.13" ></script>

</head>
<body>

<header class="center-align">
    <a href="./" target="_self"><h1 class="white-text">Sample Blog</h1></a>
</header>

<nav class="blue darken-2">
    <div class="wrapper center-align">
        <a href="./" target="_self">Home</a>
        <a href="./about/" target="_self">About</a>
        <a href="./contact/" target="_self">Contact Us</a>
    </div>
</nav>