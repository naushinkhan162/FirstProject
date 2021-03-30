<?php
session_start();
include 'connection.php';
 $name = $_FILES['fileupload']['name'];
 $extension = strtolower(substr($name, strpos($name, '.')+1));
 $type = $_FILES['fileupload']['type'];
 $size = $_FILES['fileupload']['size'];
 //echo "size of file: $size";
 $max_size = 1000000;
 $tmp_name = $_FILES['fileupload']['tmp_name'];
 $doc_name = $_POST['name'];
 $Keywords = $_POST['keywords'];
 $user = $_SESSION['user'];
 $query = "select * from register where Username='$user'";
 $result = mysqli_query($conn,$query);
 $row = mysqli_fetch_array($result);
 $id = $row["ID"];
 if(isset($name)){
 if(!empty($name)){
 if(($extension=='doc' || $extension=='docx') && $size<=$max_size){
 $Location = "./documents/$name";
 $retrival_path = "http://localhost/cc/documents/$name";
 if(move_uploaded_file($tmp_name,$Location)){
 $sql = "INSERT INTO upload (Path,Name,Keywords,user_id) VALUES ('$retrival_path','$doc_name','$Keywords','$id')";
 if(!mysqli_query($conn,$sql))
 {
 echo'<script type="text/javascript">alert("File upload failed");</script>';
 header("refresh:2; url= Upload1.php");
 }
 else{
 echo'<script type="text/javascript">alert("File uploaded successfully");</script>';
 header("refresh:2; url=Upload1.php");
 }
 }
 else{
 echo'<script type="text/javascript">alert("There was an error");</script>';
 }
 }else{
 echo'<script type="text/javascript">alert("The file must be in .doc/.docx format and the
size should be less than or equal to 1MB");</script>';
 header("refresh:2; url= Upload1.php");
 }
 }
 }


?>