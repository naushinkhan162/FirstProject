<?php
session_start();
include 'connection.php';
$Username = $_POST['name'];
$_SESSION['user']=$Username;
$Password = $_POST['pass'];
$sql = "select * from register where Username = '$Username' and Password = '$Password'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
if ($row['Username'] == $Username && $row['Password'] == $Password)
{
    echo'<script type="text/javascript">alert("Login successful!!  Welcome");</script>';
    header("refresh:2; url=your_post.php");
}
else{
    echo'<script type="text/javascript">alert("check your login credentials");</script>';
    header("refresh:2; url=index.php");
}

?>