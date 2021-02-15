<?php

    /**
     * 
     * This is the post template. It is loaded when a blog post is requested.
     * 
     */

?>
<main>
    <div class="wrapper">
        <section id="post">
            <?php if(empty($data['post'])) : ?>
                <h2>Post not found.</h2>

            <?php else : ?>

                <h1 class="title"><?php echo $data['post']['title']; ?></h1>

                <article class="content"><?php echo $data['post']['content']; ?></article>

                <small class="by-line right-align">Posted <?php echo $data['post']['month']." ".$data['post']['month'].", ".$data['post']['year'] ; ?></small>
            
            <?php endif; ?>
        </section>

        <?php include 'sidebar.php'; ?>
    </div>
</main>