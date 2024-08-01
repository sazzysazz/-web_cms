<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<?php
    // Corrected assignment operator
    $connection = new mysqli('localhost','root','','web_cms', 4306);
    
    // Check connection
    if ($connection->connect_error) {
        die("Connection failed: " . $connection->connect_error);
    }

    // function move upload file
    function move_image($image){
        $thumbnail= date('dmyhis').'-'.$_FILES[$image]['name'];
        $path='../admin/assets/image/'.$thumbnail;
        move_uploaded_file($_FILES[$image]['tmp_name'],$path);
        return $thumbnail;
    }
    
    // Register Acc
    function register_acc(){
        global $connection;
        if(isset($_POST['btn_register'])){
            $username=$_POST['username'];
            $email=$_POST['email'];
            $password=$_POST['password'];
            $profile=move_image('profile');

            // move upload file profile and exchange password
            if(!empty($username) && !empty($email) && !empty($password) && !empty($profile) ){
               
                $password=md5($password) ;

            // take data to database
            $sql="INSERT INTO `user`( `username`, `email`, `password`, `profile`)
                VALUES ('$username','$email','$password','$profile')";
            $rs= $connection->query($sql);
                if($rs){
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "SUCCESS!",
                                    text: "Created Successfully!",
                                    icon: "success",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }else{
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "ERROR!",
                                    text: "Please Try Again !",
                                    icon: "error",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }
            }
        }
    }
    register_acc();

    // login Acc
 
// Start a session if it hasn't been started already
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Function to handle login
function login_acc(){
    global $connection;

    if(isset($_POST['btn_login'])){
        $name_email = $_POST['name_email'];
        $password = $_POST['password'];

        // Ensure both fields are not empty
        if(!empty($name_email) && !empty($password)){
            // Sanitize user input to prevent SQL injection
            $name_email = mysqli_real_escape_string($connection, $name_email);
            $password = md5($password);

            // Prepare the SQL query
            $sql = "SELECT `id` FROM `user` WHERE (`username`=? OR `email`=?) AND `password`=?";
            $stmt = $connection->prepare($sql);
            $stmt->bind_param('sss', $name_email, $name_email, $password);
            $stmt->execute();
            $result = $stmt->get_result();

            if($row = $result->fetch_assoc()){
                $_SESSION['user'] = $row['id'];
                header('location:index.php');
                exit();
            } else {
                echo '<script>
                        $(document).ready(function(){
                            swal({
                                title: "ERROR!",
                                text: "Please Try Again!",
                                icon: "error",
                                button: "OK",
                            });
                        });
                      </script>';
            }

            // Close the statement
            $stmt->close();
        }
    }
}

// Call the login function
login_acc();



    // log Out acc
    function logout_acc(){
        global $connection;
        if(isset($_POST['accept_logout'])){
            unset($_SESSION['user']);
            header('location:login.php');
        }
    }
    logout_acc();

    // add logo 
    function add_post_logo(){
        global $connection;
        if(isset($_POST['accept_save_logo'])){
            $show_on=$_POST['showOn'];
            $thumbnail=move_image('thumbnail');
            if(!empty($show_on) && !empty($thumbnail)){
                $sql="INSERT INTO `logo`( `status`, `thumbnail`)
                    VALUES ('$show_on','$thumbnail')";
                $rs= $connection->query($sql);
                if($rs){
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "SUCCESS!",
                                    text: "Add Logo Successfully!",
                                    icon: "success",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }else{
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "ERROR!",
                                    text: "Please Try Again !",
                                    icon: "error",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }
            }
        }
    }
    add_post_logo();

    // get logo post
    function get_logo_post(){
        global $connection;
        $sql = "SELECT * FROM `logo` ORDER BY `id` DESC LIMIT 4";
        $rs = $connection->query($sql);
        while($row=mysqli_fetch_assoc($rs)){
            $id = $row ['id'];
            $status= $row['status'];
            $thumbnail= $row['thumbnail'];
            echo '
            <tr>
                <td>'.$id.'</td>
                <td>'.$status.'</td>
                <td><img width="80px" height="80px" src="./assets/image/'.$thumbnail.'"/></td>
                <td width="150px">
                    <a href="./update-logo-post.php?id='.$id.'" class="btn btn-primary" style="border-radius:5px; " >Update</a>
                    <button type="button" remove-id="'.$id.'" class="btn btn-danger btn-remove" style="border-radius:5px; " data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Remove
                    </button>
                </td>
            </tr>    
            ';
        };
    }

    // functuion delete logo 
    function delete_logo_post(){
        global $connection;
        if(isset($_POST['accept_delete_logo'])){
            $id= $_POST['remove_id'];
            $sql= "DELETE FROM `logo` WHERE id='$id'";
            $rs= $connection->query($sql);
            if($rs){
                echo '
                <script>
                        $(document).ready(function(){
                            swal({
                                title: "SUCCESS!",
                                text: "Deleted Successfully!",
                                icon: "success",
                                button: "OK",
                            });
                        });
                </script>
                ';
            }else{
                echo '
                <script>
                        $(document).ready(function(){
                            swal({
                                title: "ERROR!",
                                text: "Please Try Again !",
                                icon: "error",
                                button: "OK",
                            });
                        });
                </script>
                ';
            }
        }
    }
    delete_logo_post();


    // update logo post
    function update_logo_post(){
        global $connection;
        if(isset($_POST['accept_update_logo'])){
            $show_on=$_POST['showOn'];
            $thumbnail=$_FILES['thumbnail']['name'];
            $id= $_GET['id'];
            if(empty($thumbnail)){
                $thumbnail = $_POST['old_logo'];
            }else{
                $thumbnail=move_image('thumbnail');
            }
            if(!empty($show_on) && !empty($thumbnail)){
                $sql="UPDATE `logo` SET `status`='$show_on',`thumbnail`='$thumbnail' WHERE id='$id'";
                $rs= $connection->query($sql);
                if($rs){
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "SUCCESS!",
                                    text: "Updated Logo Successfully!",
                                    icon: "success",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }else{
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "ERROR!",
                                    text: "Please Try Again !",
                                    icon: "error",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }
            }
        }
    }
    update_logo_post();

    // add News 
    function add_news_post(){
        global $connection;
        if(isset($_POST['accept_save_news'])){
            $title=$_POST['news_title'];
            $type=$_POST['news_type'];
            $category=$_POST['news_category'];
            $thumbnail=move_image('news_thumbnail');
            $banner=move_image('news_banner');
            $description=$_POST['news_description'];
            $author=$_SESSION['user'];
            if(!empty($title)&&!empty($type)&&!empty($category)&&!empty($thumbnail)&&!empty($banner)&&!empty($description)&&!empty($author)){
                $sql="INSERT INTO `news`(`author_id`, `title`, `type`, `category`, `banner`, `thumbnail`, `description`) 
                VALUES ('$author','$title','$type','$category','$banner','$thumbnail','$description')";
                $rs=$connection->query($sql);
                if($rs){
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "SUCCESS!",
                                    text: "Data has been Added to Systems Successfully!",
                                    icon: "success",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }else{
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "ERROR!",
                                    text: "Please Try Again !",
                                    icon: "error",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }
            }
        }
    }
    add_news_post();

    // add-news_post
    function get_news_post(){
        global $connection;
        $sql="SELECT t_user.username, t_news.*
        FROM user AS t_user
        INNER JOIN news AS t_news ON t_user.id = t_news.author_id
        ORDER BY t_news.id DESC;
        ";
        $rs=$connection->query($sql);
        while($row=mysqli_fetch_assoc($rs)){
            $id=$row['id'];
            $title=$row['title'];
            $type = $row['type'];
            $category=$row['category'];
            $thumbnail=$row['thumbnail'];
            $view=$row['view'];
            $post_by=$row['username'];
            $date=$row['create_at'];

            echo '
            <tr>
                <td>'.$id.'</td>
                <td>'.$title.'</td>
                <td>'.$type.'</td>
                <td>'.$category.'</td>
                <td><img width="80px" height="80px" src="./assets/image/'.$thumbnail.'"/></td>
                <td>'.$view.'</td>
                <td>'.$post_by.'</td>
                <td>'.$date.'</td>
                <td width="150px">
                    <a href="./update-news-post.php?id='.$id.'" style="border-radius: 5px ;" class="btn btn-primary">Update</a> 
                    <button style="border-radius: 5px;" type="button" remove-id="'.$id.'" class="btn btn-danger btn-remove" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Remove
                    </button>
                </td>
            </tr>
            ';
        }
    }

    // delete news
    function delete_news_post(){
        global $connection;
        if(isset($_POST['accept_delete_news'])){
            $delete_id=$_POST['remove_id'];
            $sql="DELETE FROM `news` WHERE id='$delete_id'";
            $rs=$connection->query($sql);
            if($rs){
                echo '
                <script>
                        $(document).ready(function(){
                            swal({
                                title: "SUCCESS!",
                                text: "Data has been Deleted from Systems Successfully!",
                                icon: "success",
                                button: "OK",
                            });
                        });
                </script>
                ';
            }else{
                echo '
                <script>
                        $(document).ready(function(){
                            swal({
                                title: "ERROR!",
                                text: "Please Try Again !",
                                icon: "error",
                                button: "OK",
                            });
                        });
                </script>
                ';
            }
        }
    }
    delete_news_post();

    // update news post
    function update_news_post(){
        global $connection;
        if(isset($_POST['accept_update_news'])){
            $title=$_POST['news_title'];
            $type=$_POST['news_type'];
            $category=$_POST['news_category'];
            $thumbnail=$_FILES['news_thumbnail']['name'];
            $banner=$_FILES['news_banner'];
            $description=$_POST['news_description'];
            $author=$_SESSION['user'];
            $id= $_GET['id'];
            if(empty($thumbnail)){
                $thumbnail = $_POST['old_thumbnail'];
            }else{
                $thumbnail=move_image('news_thumbnail');
            }
            if(empty($banner)){
                $banner=$_POST['old_banner'];
            }else{
                $banner=move_image('news_banner');
            }
            if(!empty($title)&&!empty($type)&&!empty($category)&&!empty($thumbnail)&&!empty($banner)&&!empty($description)&&!empty($author)){
                $sql="UPDATE `news` SET `author_id`='$author',`title`='$title',`type`='$type',`category`='$category',`banner`='$banner',`thumbnail`='$thumbnail',`description`='$description'
                WHERE id='$id'";
                $rs=$connection->query($sql);
                if($rs){
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "SUCCESS!",
                                    text: "Data has been Deleted from Systems Successfully!",
                                    icon: "success",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }else{
                    echo '
                    <script>
                            $(document).ready(function(){
                                swal({
                                    title: "ERROR!",
                                    text: "Please Try Again !",
                                    icon: "error",
                                    button: "OK",
                                });
                            });
                    </script>
                    ';
                }
            }
        }
    }
    update_news_post();

?>
