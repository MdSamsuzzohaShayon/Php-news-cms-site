<?php 
include("config.php");
$post_id = $_GET['id'];
$cat_id = $_GET['catid'];

echo $post_id;
echo $cat_id;


// DELETE FROM `post` WHERE 0
$sql = "DELETE FROM post WHERE post_id=$post_id;";
$sql .= "UPDATE category SET post= post-1 WHERE category_id={$cat_id}";
// WE NEED TO GIVE AN SEMI COLON {;} IN ORDER TO WRITE MULTIPLE QQUERY



if(mysqli_multi_query($conn, $sql)){
    header("location: {$hostname}/admin/post.php");
}else{
    echo "<div class='alert alert-danger'>Query failed</div>";
}

?>