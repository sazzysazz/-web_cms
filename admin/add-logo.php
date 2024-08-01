<?php 
    include('sidebar.php');
    include('function.php');
?>
                <div class="col-10">
                    <div class="content-right">
                        <div class="top">
                            <h3>Add Page Logo</h3>
                        </div>
                        <div class="bottom">
                            <figure>
                            <form method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label>Show On</label>
                                    <select class="form-select" name="showOn">
                                        <option value="Header">Header</option>
                                        <option value="footer">Footer</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>File</label>
                                    <input name="thumbnail" type="file" class="form-control">
                                </div>
                                <div class="form-group">
                                    <button name="accept_save_logo" type="submit" class="btn btn-primary">Save</button>
                                    <a href="index.php" type="submit" class="btn btn-danger">Cancel</a>
                                </div>
                        </form>

                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>