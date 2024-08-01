<?php include('header.php'); ?>
<main class="sport">
    <section class="trending">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="content-trending">
                        <div class="content-left">
                            SPORT NEWS
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="container">
            <div class="row">
            <?php 
if(isset($_GET['page'])){
    $page=$_GET['page'];
} else {
    $page=1;
}
list_news_contents('Sport', 'National', $page, 3);
?>


            </div>
            <div class="row pagination">
                <div class="col-12">
                    <ul>
                        <?php page_ination('sport','National',3)  ?>
                    </ul>   
                </div>
            </div>
        </div>
    </section>
</main>
<?php include('footer.php'); ?>