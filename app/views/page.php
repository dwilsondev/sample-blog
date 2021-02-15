<?php

    /**
     * 
     * This is the page template. It is loaded when a page is requested.
     * 
     */

?>
<main>
    <div class="wrapper">
        <section>
            <?php echo $data['page']['content']; ?>
        </section>

        <?php include 'sidebar.php'; ?>
    </div>
</main>