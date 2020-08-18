<?php
include('config.php');

// session_start — Start new or resume existing session
session_start();


// The session_unset() function frees all session variables currently registered.
session_unset();


// session_destroy — Destroys all data registered to a session
session_destroy();


header("location: {$hostname}/admin/");
?>
