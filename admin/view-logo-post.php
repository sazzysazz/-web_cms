<?php 
    include('sidebar.php');
    include('function.php');
?>
<div class="col-10 text-center">
    <div class="content-right">
        <div class="top">
            <h3>All Page logo</h3>
        </div>
        <div class="bottom view-post">
            <form method="post" class="" enctype="multipart/form-data">
                <div class="table-responsive"> <!-- Added to make the table scroll horizontally on smaller screens -->
                    <table class="table table-striped table-bordered align-middle">
                        <thead class="thead-dark">
                            <tr>
                                <th class="text-center">ID</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Thumbnail</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php get_logo_post(); ?> 
                        </tbody>
                    </table>
                </div>
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
                                    <button name="accept_delete_logo" type="submit" class="btn btn-danger" style="border-radius: 10px;">Yes</button>
                                    <button type="button" class="btn btn-secondary" style="border-radius: 10px;" data-bs-dismiss="modal">No</button>  
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>
</main>
</body>
</html>
