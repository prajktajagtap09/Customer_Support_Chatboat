<?php
$conn = mysqli_connect("localhost", "root", "", "chatboat");

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>