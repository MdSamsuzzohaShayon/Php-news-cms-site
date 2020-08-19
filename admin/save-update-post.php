<?php
include("config.php");

if (empty($_FILES['new_image']['name'])) {
    $file_name = $_POST['old_image'];
} else {
    # code...
    $errors = array();

    $file_name = $_FILES['new_image']['name'];
    $file_size = $_FILES['new_image']['size'];
    $file_tmp = $_FILES['new_image']['tmp_name'];
    $file_type = $_FILES['new_image']['type'];
    // explode — Split a string by a string
    // end — Set the internal pointer of an array to its last element
    // strtolower — Make a string lowercase
    $file_ext = strtolower(end(explode('.', $file_name)));

    $extensions = array("jpeg", "jpg", "png");

    // in_array — Checks if a value exists in an array
    if (in_array($file_ext, $extensions) === false) {
        $errors[] = ["This extension file is not allowed, please upload jpg or png file"];
    }

    // 1kb = 1024 bytes, 1mb = 1024kb, 1gb = 1024mb
    // 2 mb = 2097152 bytes
    if ($file_size > 2097152) {
        $errors[] = ["File size is too large, it must be 2 mb or lower"];
    }

    // CHECK FOR ERROR
    if (empty($errors) == true) {
        // move_uploaded_file — Moves an uploaded file to a new location
        move_uploaded_file($file_tmp, "upload/" . $file_name);
    } else {
        print_r($errors);
        die();
    }
}


// $sql = "UPDATE post SET title={$_POST['post_title']},description={$_POST['post_desc']},category={$_POST['category']},post_img={$file_name}
//         WHERE post_id={$_POST['post_id']}";


$sql ="UPDATE post SET title='{$_POST["post_title"]}',description='{$_POST["post_desc"]}', category={$_POST["category"]}, post_img='{$file_name}'
        WHERE post_id={$_POST['post_id']}";

print_r($sql);
$result = mysqli_query($conn, $sql);
// print_r($result);

if($result){
    header("Location: {$hostname}/admin/post.php");
}else{
    echo "<div class='alert alert-info'>Query failed..</div>";
}
