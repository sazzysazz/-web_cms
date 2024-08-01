<!-- @import jquery & sweet alert  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<?php 
    $connection = new mysqli('localhost','root','','web_cms', 4306);
    if ($connection->connect_error) {
        die("Connection failed: " . $connection->connect_error);
    }

    // get logo
    function get_logo($status){
        global $connection;
        $sql="SELECT `thumbnail` FROM `logo` WHERE `status`= '$status' ORDER BY id DESC LIMIT 1 ";
        $rs= $connection->query($sql);
        $row= mysqli_fetch_assoc($rs);
        echo $row['thumbnail'];
    }

    function get_trending_new(){
        global $connection;
        $sql="SELECT * FROM `news` ORDER BY id DESC";
        $rs=$connection->query($sql);
        while($row=mysqli_fetch_assoc($rs)){
            echo '
                <i class="fas fa-angle-double-right"></i>
                <a href="./news-detail.php?id='.$row['id'].'">'.$row['title'].' </a> &ensp;
                ';
        }
    }

    function get_news_detail($post_id){
        global $connection;
        $sql="SELECT * FROM `news` WHERE id='$post_id'  ORDER BY id DESC LIMIT 3";
        $rs=$connection->query($sql);
        $row = mysqli_fetch_assoc($rs);
        $date= $row['create_at'];
        $date= date('d/m/y');
        $image= $row['thumbnail'];
        echo '
        <div class="thumbnail">
        <img src="../admin/assets/image/'.$image.'">
            </div>
            <div class="detail">
                <h3 class="title">'.$row['title'].'</h3>
                <div class="date">'.$date.'</div>
                <div class="description">'.$row['description'].'</div>
            </div>
        ';
    }
    
    function get_news_type($id)
    {
        global  $connection;
        $sql="SELECT * FROM `news` WHERE id='$id'";
        $rs= $connection->query($sql);
        $row=mysqli_fetch_assoc($rs);
        return $row['type'];    
    }

    function get_rate_news($news_id) {
        global $connection;
        
        // Get news type
        $news_content = get_news_type($news_id);
        
        // Prepare and execute SQL query
        $stmt = $connection->prepare("SELECT * FROM `news` WHERE `type` = ? AND id != ? ORDER BY id DESC LIMIT 3");
        $stmt->bind_param("si", $news_content, $news_id);
        $stmt->execute();
        $result = $stmt->get_result();
        
        // Fetch and display news
        while ($row = $result->fetch_assoc()) {
            $date = date('d/M/Y', strtotime($row['create_at']));
            
            echo '
            <figure>
                <a href="./news-detail.php?id=' . $row['id'] . '">
                    <div class="thumbnail">
                        <img src="../admin/assets/image/' . $row['thumbnail'] . '"  width="350px" height="200px" alt="">
                    </div>
                    <div class="detail">
                        <h3 class="title">' . $row['title'] . '</h3>
                        <div class="date">' . $date . '</div>
                        <div class="description">
                            ' . $row['description'] . '
                        </div>
                    </div>
                </a>
            </figure>
            ';
        }
        
        // Close statement
        $stmt->close();
    }


    function get_view($id_view) {
        global $connection;
        $sql = "UPDATE `news` SET view = view + 1 WHERE id = $id_view";
        $rs = $connection->query($sql);
    }
    

    function get_min_news($type) {
        global $connection;
        if ($type == 'Trending') {
            $sql = "SELECT * FROM `news` ORDER BY view DESC LIMIT 1";
            $rs = $connection->query($sql);
            $row = mysqli_fetch_assoc($rs);
            echo '
            <figure>
                <a href="news-detail.php?id=' . $row['id'] . '">
                    <div class="thumbnail">
                        <img src="../admin/assets/image/' . $row['thumbnail'] . '" width="750px" height="415px" alt="">
                        <div class="title" style="width: 750px; text-align: center;" >
                            ' . $row['title'] . '
                        </div>
                    </div>
                </a>
            </figure>
            ';
        } else {
            $sql = "SELECT n.* FROM `news` n LEFT JOIN (SELECT id FROM `news` ORDER BY view DESC LIMIT 1) t ON n.id = t.id WHERE t.id IS NULL ORDER BY n.id DESC LIMIT 2";
            $rs = $connection->query($sql);
            while ($row = mysqli_fetch_assoc($rs)) {
                echo '
                <figure>
                    <a href="./news-detail.php?id=' . $row['id'] . '">
                        <div class="thumbnail">
                            <img src="../admin/assets/image/' . $row['thumbnail'] . '" width="350px" height="200px" alt="">
                            <div class="title" style="width: 350px;">
                                ' . $row['title'] . '
                            </div>
                        </div>
                    </a>
                </figure>
                ';
                
            }
        }
    }
    

    function get_news($type){
        global $connection; // Assuming $connection is your database connection object
    
        // Assuming $type is properly sanitized to prevent SQL injection
    
        $sql = "SELECT * FROM `news` WHERE 	category='$type' ORDER BY id DESC LIMIT 3";
        $rs = $connection->query($sql);
    
        if ($rs) {
            while ($row = mysqli_fetch_assoc($rs)) {
                echo '
                <div class="col-4">
                    <figure>
                        <a href="./news-detail.php?id='.$row['id'].'">
                            <div class="thumbnail">
                                <img src="../admin/assets/image/'.$row['thumbnail'].'"  width="350px" height="200px" alt="">
                                <div class="title">
                                    '.$row['title'].'
                                </div>
                            </div>
                        </a>
                    </figure>
                </div>
                ';
            }
        } else {
            echo "Error: " . $connection->error;
        }
    }
    

    function list_news_contents($category, $news_type, $page, $limit) {
        global $connection;
        $start = ($page - 1) * $limit;
        $sql = "SELECT * FROM `news` WHERE `category` = ? AND `type` = ? ORDER BY id LIMIT ?, ?";
        $stmt = $connection->prepare($sql);
    
        // Bind parameters
        $stmt->bind_param("ssii", $category, $news_type, $start, $limit);
    
        // Execute the statement
        $stmt->execute();
    
        // Get the result set
        $rs = $stmt->get_result();
    
        while ($row = $rs->fetch_assoc()) {
            $date = $row['create_at'];
            $date = date('d/M/Y', strtotime($date)); // Correct date formatting
            echo '
            <div class="col-4">
                <figure>
                    <a href="./news-detail.php?id='.$row['id'].'">
                        <div class="thumbnail">
                            <img src="../admin/assets/image/'.$row['thumbnail'].'" width="350px" height="200px" alt="">
                        </div>
                        <div class="detail">
                            <h3 class="title">'.$row['title'].'</h3>
                            <div class="date">'.$date.'</div>
                            <div class="description">
                            '.$row['description'].'
                            </div>
                        </div>
                    </a>
                </figure>
            </div>
            ';
        }
    
        // Close the statement
        $stmt->close();
    }
    

    function page_ination($category,$news_type,$limit){
        global $connection;
        $sql = "SELECT COUNT(id) as total_post FROM news WHERE `category` = '$category' AND `type` = '$news_type'";
        $rs=$connection->query($sql);
        $row=mysqli_fetch_assoc($rs);
        $total_post=$row['total_post'];
        $pageination= ceil($total_post/$limit);
        for($i=1;$i<=$pageination;$i++){
            echo '
                <li>
                    <a href="?page'.$i.'" >'.$i.'</a>
                </li>
            ';
        }
    }

    function search_news($query) {
        global $connection;
        $sql = "SELECT * FROM news WHERE title LIKE '%$query%'";
        $rs = $connection->query($sql);
        while ($row = mysqli_fetch_assoc($rs)) {
            $date = $row['create_at'];
            $date = date('d/M/Y', strtotime($date)); // Correct date formatting
            echo '
            <div class="col-4">
                <figure>
                    <a href="./news-detail.php?id='.$row['id'].'">
                        <div class="thumbnail">
                            <img src="../admin/assets/image/'.$row['thumbnail'].'" width="350px" height="200px" alt="">
                        </div>
                        <div class="detail">
                            <h3 class="title">'.$row['title'].'</h3>
                            <div class="date">'.$date.'</div>
                            <div class="description">
                                '.$row['description'].'
                            </div>
                        </div>
                    </a>
                </figure>
            </div>
            ';
        }
    }
    
?>