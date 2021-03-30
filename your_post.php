<?php
session_start();
if(isset($_SESSION['user'])){

?>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
<title>Search</title>
<script type="text/javascript">
function validateForm() {
var search = document.forms["myForm"]["search"];
if (search.value== "") 
  {
    window.alert("Name must be filled out");
    search.focus();
    return false;
  }
}

</script>
<style>
  th{
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid green;
    border-radius: 4px;
  }
  td{
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid green;
    border-radius: 4px;
    text-align: center;
  }
</style>
</head>
<body><nav>
    <div class="topnav" id="myTopnav">
            <a href="index.php">Saas</a>
            <a href="Upload1.php" style="float:right; margin-right:60px;">Upload</a>
            <a href="index.php" style="float:right; margin-right:40px;">Logout</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
              <i class="fa fa-bars"></i>
            </a>
          </div></nav>
          <script>
                function myFunction() {
                  var x = document.getElementById("myTopnav");
                  if (x.className === "topnav") {
                    x.className += " responsive";
                  } else {
                    x.className = "topnav";
                  }
                }
            </script>
            <br><br><br>
    <center>
       <h2></h2>
        <form action="try.php" name="myForm" method="POST" onsubmit="return validateForm()">
            <fieldset>
               <h2>  Search for the document you want:<br>
<input type="text" placeholder="Search.." name="search">
<button type="submit"><i class="fa fa-search"></i></button></h2>
</fieldset>
</form>
    </center>
    <?php
    include 'connection.php';
$user = $_SESSION['user'];
$query1 = "select * from register where Username='$user'";
$result1 = mysqli_query($conn,$query1);
$row1 = mysqli_fetch_array($result1);
$id = $row1["ID"];
$query = "SELECT * FROM  upload WHERE user_id='$id'";
$result = mysqli_query($conn,$query);
$rowcount = mysqli_num_rows($result);
?>
<center><h1 style="color:black;">Documents uploaded</h1></center>
<center><table border="1">
    <tr>
        <th>Name</th>
        <th>Keywords</th>
        <th></th>
    </tr>
<?php
for($i=1;$i<=$rowcount;$i++)
{
    $row = mysqli_fetch_array($result);
?>
<tr>
    <td><?php echo $row["Name"] ?></td>
    <td><?php echo $row["Keywords"] ?></td>
    <td><?php echo "<a href=".$row["Path"]."><button>Download</button></a>" ?></td>
</tr>
<?php
}
?>
</table>
</center>
    <?php
}else{
    header("location:index.php");
}?>
</body>
</html>