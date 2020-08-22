<?php
include("config.php");
// echo "<pre>";
// print_r($_SERVER);
// echo "</pre>";
// basename — Returns trailing name component of path
// echo "<h1>" . basename($_SERVER['PHP_SELF']) . "</h1>";

$page =  basename($_SERVER['PHP_SELF']);
switch ($page) {
    case 'single.php':
        $id = $_GET['id'];
        if (isset($id)) {
            $sql_title = "SELECT * FROM post WHERE post_id=$id";
            $result_title = mysqli_query($conn, $sql_title) or die("Title Query Failed");
            $rwo_title = mysqli_fetch_assoc($result_title);
            $page_title = $rwo_title['title'];
        } else {
            $page_title = "No Post found";
        }
        break;
    case 'category.php':
        $id = $_GET['cid'];
        if (isset($id)) {
            $sql_title = "SELECT * FROM category WHERE category_id=$id";
            $result_title = mysqli_query($conn, $sql_title) or die("Title Query Failed");
            $rwo_title = mysqli_fetch_assoc($result_title);
            $page_title = $rwo_title['category_name'];
        } else {
            $page_title = "No Post found";
        }
        break;
    case 'author.php':
        $id = $_GET['aid'];
        if (isset($id)) {
            $sql_title = "SELECT * FROM user WHERE user_id=$id";
            $result_title = mysqli_query($conn, $sql_title) or die("Title Query Failed");
            $rwo_title = mysqli_fetch_assoc($result_title);
            $page_title = $rwo_title['first_name'] . $rwo_title['last_name'];
        } else {
            $page_title = "No Post found";
        }
        break;
    case 'search.php':
        $search = $_GET['search'];
        if (isset($search)) {
            $page_title = $search;
        } else {
            $page_title = "No Search found";
        }
        break;

    default:
    $page_title = "News site";
        break;
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>News - <?php echo $page_title ?></title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Custom stlylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>


<body>
    <!-- HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class=" col-md-offset-4 col-md-4">
                    <a href="index.php" id="logo"><img src="images/news.jpg"></a>
                </div>
                <!-- /LOGO -->
            </div>
        </div>
    </div>
    <!-- /HEADER -->
    <!-- Menu Bar -->
    <div id="menu-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php
                    include('config.php');

                    if (isset($_GET['cid'])) {
                        $cat_id = $_GET['cid'];
                    }


                    $sql  = "SELECT * FROM category WHERE post > 0";
                    $result = mysqli_query($conn, $sql) or die("Query failed: Category");
                    // mysqli_num_rows — Gets the number of rows in a result
                    if (mysqli_num_rows($result) > 0) {
                        $active = "";
                    ?>
                        <ul class='menu'>
                            <li><a href="<?php echo $hostname ?>">Home</a></li>

                            <?php
                            while ($row = mysqli_fetch_assoc($result)) {
                                if (isset($_GET['cid'])) {
                                    if ($row['category_id'] == $cat_id) {
                                        $active = "active";
                                    } else {
                                        $active = "";
                                    }
                                }
                            ?>
                                <li><a class="<?php echo $active; ?>" href='category.php?cid=<?php echo $row["category_id"]; ?>'><?php echo $row['category_name']; ?></a></li>
                            <?php } ?>
                        </ul>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <!-- /Menu Bar -->