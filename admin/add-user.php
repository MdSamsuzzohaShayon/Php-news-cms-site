<?php

include "header.php";

// isset — Determine if a variable is declared and is different than NULL
if (isset($_POST['save'])) {
    // CONNECTED TO DB
    include "config.php";

    // mysqli_real_escape_string — Escapes special characters in a string for use in an SQL statement, taking into account the current charset of the connection
    $fname = mysqli_real_escape_string($conn, $_POST['fname']);
    $lname = mysqli_real_escape_string($conn, $_POST['lname']);
    $user = mysqli_real_escape_string($conn, $_POST['user']);
    $password = mysqli_real_escape_string($conn, md5($_POST['password'])); // md5 — Calculate the md5 hash of a string
    $role = mysqli_real_escape_string($conn, $_POST['role']);


    $sql = "SELECT username FROM user WHERE username='{$user}'";
    
    // mysqli_query — Performs a query on the database
    $result = mysqli_query($conn, $sql) or die("Query frield");
    print_r($result);
    
    // mysqli_num_rows — Gets the number of rows in a result
    if (mysqli_num_rows($result) > 0) {
        echo "<p style='color:red;text-align:center;margin: 10px 0'> Username already exist</p>";
    } else {
        $sql1 = "INSERT INTO user (first_name, last_name, username, password, role) VALUES ('$fname', '$lname', '$user','$password', '$role' )";
        if (mysqli_query($conn, $sql1)) {
            header("Location: {$hostname}/admin/users.php");
            // header("Location: users.php");
        }
    }
}

?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="admin-heading">Add User</h1>
            </div>
            <div class="col-md-offset-3 col-md-6">
                <!-- Form Start -->
                <!-- $_SERVER -- $HTTP_SERVER_VARS [removed] — Server and execution environment information .... $_SERVER is an array containing information such as headers, paths, and script locations.-->
                <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST" autocomplete="off">
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" name="fname" class="form-control" placeholder="First Name" required>
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" name="lname" class="form-control" placeholder="Last Name" required>
                    </div>
                    <div class="form-group">
                        <label>User Name</label>
                        <input type="text" name="user" class="form-control" placeholder="Username" required>
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                        <label>User Role</label>
                        <select class="form-control" name="role">
                            <option value="0">Normal User</option>
                            <option value="1">Admin</option>
                        </select>
                    </div>
                    <input type="submit" name="save" class="btn btn-primary" value="Save" required />
                </form>
                <!-- Form End-->
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>