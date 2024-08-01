<?php include('header.php'); ?>
<main class="sport">
    <section class="trending">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="content-trending">
                        <div class="content-left">
                            RESULT SEARCH
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
if(isset($_GET['query'])) {
    $query = $_GET['query'];
    search_news($query);
} else {
    // Handle case where query parameter is not set
    echo "No search query provided.";
}
?>

            </div>
        </div>
    </section>
</main>
<?php include('footer.php'); ?>