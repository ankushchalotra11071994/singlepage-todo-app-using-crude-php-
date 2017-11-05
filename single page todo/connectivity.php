<?php

// Create connection
$con=mysqli_connect("localhost","id3300961_ankushchalotra58","9797696900","id3300961_demo");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }



if(isset($_POST['add']))
{
  $user=  $_SESSION['username'];
$get_user = "SELECT * FROM users WHERE username ='$user'";
       $run_user = mysqli_query($con,$get_user);
       $row = mysqli_fetch_array($run_user);
        $user_id = $row['userid'];
     
   
  
    $task=$_POST['task'];
    $status=$_POST['status'];
  
    $sql="INSERT into task (userid,task,status) values ('$user_id ','$task','$status')";
if(mysqli_query($con,$sql))
{
 echo "<script>window.open('home.php','_self')</script>";
}
}

if(isset($_POST['logout']))
{

  session_destroy();
  
  echo "<script>window.open('index.html','_self')</script>";

}

if(isset($_POST['del']))
{

    $task=$_POST['task'];
$sql="DELETE FROM task WHERE taskid='$task'";
if(mysqli_query($con,$sql))
{
    echo "<script>window.open('home.php','_self')</script>";
}


}
if(isset($_POST['delall']))
{

    
$sql="DELETE FROM task ";
if(mysqli_query($con,$sql))
{
    echo "<script>window.open('home.php','_self')</script>";
}


}

if(isset($_POST['upu']))
{

 $task=$_POST['task'];  
  $status=$_POST['status'];  
$sql="update task set status='$status' WHERE taskid='$task'";
if(mysqli_query($con,$sql))
{
    echo "<script>window.open('home.php','_self')</script>";
}


}

?>