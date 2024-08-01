<?php 
    include('sidebar.php');
    include('function.php');
?>
<div class="col-10">
    <div class="content-right">
        <div class="top">
            <h3>All Sport News</h3>
        </div>
        <div class="bottom view-post">
            <form method="post" enctype="multipart/form-data">
                <table class="table align-middle" style="table-layout: fixed;" border="1px">
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Type</th>
                        <th>Categories</th>
                        <th>Thumbnail</th>
                        <th>View</th>
                        <th>Post by</th>
                        <th>Publish Date</th>
                        <th>Actions</th>
                    </tr>
                    <?php get_news_post(); ?>
                </table>
                <ul class="pagination">
                    <li>
                        <a href="">1</a>
                        <a href="">2</a>
                        <a href="">3</a>
                        <a href="">4</a>
                    </li>
                </ul>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to remove this post?</h5>
                            </div>
                            <div class="modal-footer">
                                <form action="" method="post">
                                    <input type="hidden" class="value_remove" name="remove_id">
                                    <button name="accept_delete_news" type="submit" class="btn btn-danger">Yes</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</main>
</body>
</html>
