<?php

    /**
     * 
     * This is the homepage of Sample Blog. It is loaded if no other page
     * is found in the database.
     * 
     */
    
?>
<main>
    <div class="wrapper">
        <section>
            <?php foreach($data['posts'] as $post) : ?>
                <a href="post/<?php echo $post['slug']; ?>/" target="_self">
                    <article class="post">
                        <h1 class="blue-text darken-2 title"><?php echo $post['title']; ?></h1>

                        <p class="content"><?php echo $post['description']; ?></p>

                        <small class="by-line right-align">Posted <?php echo $post['month']." ".$post['month'].", ".$post['year'] ; ?></small>
                    </article>
                </a>
            <?php endforeach; ?>
        </section>

        <?php include 'sidebar.php'; ?>
    </div>
</main>