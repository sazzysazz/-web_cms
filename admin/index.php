<?php 
    include('sidebar.php');
    // session_start();
    if(empty($_SESSION['user'])){
        header('location:login.php');
    }
?>
                <div class="col-10">
                    <div class="content-right">
                        <div class="top">
                            <h3 class="text-center">Admin Dashboard</h3>
                        </div>
                        <div class="bottom view-post">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>