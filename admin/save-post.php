<?php 
include('config.php');

// $_FILES — HTTP File Upload variables - An associative array of items uploaded to the current script via the HTTP POST method
if (isset($_FILES['fileToUpload'])) {
    # code...
    $errors = array();

    $file_name = $_FILES['fileToUpload']['name'];
    $file_size = $_FILES['fileToUpload']['size'];
    $file_tmp = $_FILES['fileToUpload']['tmp_name'];
    // explode — Split a string by a string
    // end — Set the internal pointer of an array to its last element
    // strtolower — Make a string lowercase
    $file_ext = strtolower(end(explode('.', $file_name)));

    $extensions = array("jpeg", "jpg", "png");

    // in_array — Checks if a value exists in an array
    if(in_array($file_ext, $extensions) === false){
        $errors[] = ["This extension file is not allowed, please upload jpg or png file"];
    }

    // 1kb = 1024 bytes, 1mb = 1024kb, 1gb = 1024mb
    // 2 mb = 2097152 bytes
    if($file_size > 2097152){
        $errors[] = ["File size is too large, it must be 2 mb or lower"];
    }

    // CHECK FOR ERROR
    if(empty($errors) == true){
        // move_uploaded_file — Moves an uploaded file to a new location
        move_uploaded_file($file_tmp, "upload/" . $file_name);
        }else{
            print_r($errors);
            die();
        }
}

session_start();
$title = mysqli_real_escape_string($conn, $_POST['post_title']);
$description = mysqli_real_escape_string($conn, $_POST['post_desc']);
$category = mysqli_real_escape_string($conn, $_POST['category']);
$date = date("d M, Y", );
// CREATED SUPER VARIABLE IN SESSION FROM INDEX.PHP
$author = $_SESSION['user_id'];




$sql = "INSERT into post(title, description, category, post_date, author, post_img) VALUES ('$title', '$description', '$category', '$date', $author, '$file_name');" ;
$sql .= "UPDATE category SET post = post+1 WHERE category_id={$category}";

// mysqli_multi_query — Performs a query on the database - Executes one or multiple queries which are concatenated by a semicolon.
if(mysqli_multi_query($conn, $sql)){
    header("location: {$hostname}/admin/post.php");
}else{
    echo "<div class='alert alert-danger'>Query failed</div>";
}
