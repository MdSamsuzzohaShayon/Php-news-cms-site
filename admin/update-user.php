<?php include "header.php";

// isset — Determine if a variable is declared and is different than NULL
if (isset($_POST['submit'])) {
    // CONNECTED TO DB
    include "config.php";

    // mysqli_real_escape_string — Escapes special characters in a string for use in an SQL statement, taking into account the current charset of the connection
    $user_id = mysqli_real_escape_string($conn, $_POST['user_id']); // THIS IS HIDDEN
    $fname = mysqli_real_escape_string($conn, $_POST['f_name']);
    $lname = mysqli_real_escape_string($conn, $_POST['l_name']);
    $user = mysqli_real_escape_string($conn, $_POST['username']);
    $role = mysqli_real_escape_string($conn, $_POST['role']);

    // UPDATE `user` SET `user_id`=[value-1],`first_name`=[value-2],`last_name`=[value-3],`username`=[value-4],`password`=[value-5],`role`=[value-6] WHERE 1
    $sql = "UPDATE user SET first_name='$fname', last_name='$lname', username='$user', role='$role' WHERE user_id='$user_id'";

    // mysqli_query — Performs a query on the database
    if (mysqli_query($conn, $sql)) {
        header("Location: {$hostname}/admin/users.php");
        // header("Location: users.php");
    }
}
?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="admin-heading">Modify User Details</h1>
            </div>
            <div class="col-md-offset-4 col-md-4">
                <?php
                include("config.php");
                $user_id = $_GET['id'];
                // SHOW DATA IN DECENDING ORDER 
                $sql = "SELECT * FROM user WHERE user_id=$user_id";
                $result = mysqli_query($conn, $sql) or die("QQuery field");
                // mysqli_num_rows — Gets the number of rows in a result
                if (mysqli_num_rows($result)) {
                    while ($row = mysqli_fetch_assoc($result)) {
                ?>
                        <!-- Form Start -->
                        <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
                            <div class="form-group">
                                <input type="hidden" name="user_id" class="form-control" value="<?php echo $row['user_id']; ?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" name="f_name" class="form-control" value="<?php echo $row['first_name']; ?>" placeholder="" required>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" name="l_name" class="form-control" value="<?php echo $row['last_name']; ?>" placeholder="" required>
                            </div>
                            <div class="form-group">
                                <label>User Name</label>
                                <input type="text" name="username" class="form-control" value="<?php echo $row['username']; ?>" placeholder="" required>
                            </div>
                            <div class="form-group">
                                <label>User Role</label>
                                <select class="form-control" name="role" value="<?php echo $row['role']; ?>">
                                    <?php
                                    if ($row['role'] == 1) {
                                        echo '<option value="0">normal User</option>
                                              <option value="1" selected>Admin</option>';
                                    } else {
                                        echo '<option value="0" selected>normal User</option>
                                              <option value="1" >Admin</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                            <input type="submit" name="submit" class="btn btn-primary" value="Update" required />
                        </form>
                        <!-- /Form -->
                <?php }
                } ?>
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>