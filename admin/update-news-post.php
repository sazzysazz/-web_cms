<?php 
    include('sidebar.php');
    include('function.php');
    
    $select_nation = ''; // Initialize variables to avoid undefined variable warnings
    $select_international = '';
    $select_sport = '';
    $select_social = '';
    $select_entertainment = '';

    if(isset($_GET['id']) && !empty($_GET['id'])) {
        $news_id = mysqli_real_escape_string($connection, $_GET['id']);

        $sql = "SELECT * FROM `news` WHERE id='$news_id'";
        $rs = $connection->query($sql);
        if($rs) {
            $row = mysqli_fetch_assoc($rs);
            $select_nation = ($row['type'] == 'National') ? 'selected' : '';
            $select_international = ($row['type'] == 'International') ? 'selected' : '';

            $select_sport = ($row['category'] == 'Sport') ? 'selected' : '';
            $select_social = ($row['category'] == 'Social') ? 'selected' : '';
            $select_entertainment = ($row['category'] == 'Entertainment') ? 'selected' : ''; // Corrected case of 'Entertainment'
        } else {
            echo "Error: " . $connection->error;
        }
    } else {
        echo "News ID is missing or empty.";
    }
?>

<div class="col-10">
    <div class="content-right">
        <div class="top">
            <h3>Add News</h3>
        </div>
        <div class="bottom">
            <figure>
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" class="form-control" name="news_title" value="<?php echo isset($row['title']) ? $row['title'] : ''; ?>" >
                    </div>
                    <div class="form-group">
                        <label>Type</label>
                        <select class="form-select" name="news_type">
                            <option value="National" <?php echo $select_nation; ?>>National</option>
                            <option value="International" <?php echo $select_international; ?>>International</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Category</label>
                        <select class="form-select" name="news_category">
                            <option value="Sport" <?php echo $select_sport; ?>>SPORT</option>
                            <option value="Social" <?php echo $select_social; ?>>SOCIAL</option>
                            <option value="Entertainment" <?php echo $select_entertainment; ?>>ENTERTAINMENT</option> <!-- Corrected case of 'Entertainment' -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Thumbnail </label>
                        <input name="news_thumbnail" type="file" class="form-control">
                    </div>
                    <img src="./assets/image/<?php echo $row['thumbnail'] ?>" width="120px"  alt=""><br><br>
                    <!-- hidden thumbnail -->
                    <input type="hidden" value="<?php echo $row['thumbnail'] ?> " width="120px" name="old_thumbnail" >
                    <div class="form-group">
                        <label>Banner </label>
                        <input type="file" class="form-control" name="news_banner">
                    </div>
                    <img src="./assets/image/<?php echo $row['banner'] ?>" width="120px"  alt="">
                    <!-- hidden Banner -->
                    <input type="hidden" value="<?php echo $row['banner'] ?>" width="120px" name="old_banner" >
                    <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" name="news_description" <?php echo $row['description'] ?> ></textarea>
                    </div>
                    <div class="form-group">
                        <button name="accept_update_news" type="submit" class="btn btn-primary">Update</button>
                        <button type="submit" class="btn btn-danger">Cancel</button>
                    </div>
                </form>
            </figure>
        </div>
    </div>
</div>
