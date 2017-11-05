<?php
session_start();
include('connectivity.php');
$username= $_POST["username"];
$userpassword1 = $_POST["password"];

$result=mysqli_query($con,"select username,userpassword from users where username='$username'");
if($result === FALSE) 
{ 
die('no record fetched'.mysql_error());
}
$row =mysqli_fetch_array($result);

if(password_verify($userpassword1,$row['userpassword']) )
{$_SESSION['loggedin']=true;
$_SESSION["username"]=$username;
sleep(1);
header("Location:home.php");
}
else
{
sleep(1);
 echo "
<div class='alert alert-warning' role='alert'><h1><strong>Wrong! </strong>username  or password  use only  username</div></h1>
  ";
echo "<a href='index.html'>Log-In</a>";
exit();
}
mysqli_close($con);
?>