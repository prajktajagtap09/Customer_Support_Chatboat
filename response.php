<?php
include("db.php");

$message = strtolower(trim($_POST['message']));

$sql = "SELECT response FROM support_responses WHERE keyword LIKE '%$message%'";
$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result) > 0){
    $row = mysqli_fetch_assoc($result);
    echo $row['response'];
} else {
    echo "Sorry, our support team will connect with you soon.";
}
?>