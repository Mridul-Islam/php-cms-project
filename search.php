<?php include('includes/db.php'); ?>
<?php include('includes/functions.php'); ?>

<?php include('includes/header.php'); ?>

    <!-- Navigation -->
<?php include('includes/navigation.php'); ?>

    <!-- Page Content -->
    <div class="container">
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">

            <?php

            if(isset($_POST['search_submit'])){
                $search = $_POST['search'];
                if(!$search){
                    header("Location: index.php");
                }
                else{
                    global $connection;
                    $query = "SELECT * FROM posts WHERE post_tags LIKE '%$search%'";
                    $searched_posts = mysqli_query($connection, $query);
                    if(!$searched_posts){
                        die("Query Failed " . mysqli_error($connection));
                    }
                    $count = mysqli_num_rows($searched_posts);
                    if($count > 0){
                        while($row = mysqli_fetch_assoc($searched_posts)){
                            $post_title   = $row['post_title'];
                            $post_author  = $row['post_author'];
                            $post_date    = $row['post_date'];
                            $post_image   = $row['post_image'];
                            $post_content = $row['post_content'];
            ?>

                            <!-- All Blog Posts -->
                            <h2>
                                <a href="#"><?php echo $post_title; ?></a>
                            </h2>
                            <p class="lead">
                                by <a href="index.php"><?php echo $post_author; ?></a>
                            </p>
                            <p><span class="glyphicon glyphicon-time"></span> Posted on <?php echo $post_date; ?></p>
                            <hr>
                            <img class="img-responsive" src="./images/<?php echo $post_image;?>" alt="">
                            <hr>
                            <p><?php echo $post_content; ?></p>
                            <a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

                            <hr><hr>

            <?php
                        }
                    }
                    else{
                        echo "<h2 class='text-center bg-info'>No Post Available</h2>";
                    }
                }
            }
            ?>


            <!-- Pager -->
            <ul class="pager">
                <li class="previous">
                    <a href="#">&larr; Older</a>
                </li>
                <li class="next">
                    <a href="#">Newer &rarr;</a>
                </li>
            </ul>

        </div>

        <!-- Blog Sidebar Widgets Column -->
        <?php include('includes/sidebar.php'); ?>

    </div>
    <!-- /.row -->

    <hr>

<?php include('includes/footer.php'); ?>