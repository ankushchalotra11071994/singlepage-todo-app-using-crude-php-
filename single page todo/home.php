<?php
session_start();

if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) 
{
include'connectivity.php'; 
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">


  <title>home page</title>
  <style>
body {
    background-image: url("ba.jpeg");
}
</style>
</head>
<body>
<table class ="table table-striped table-hover">
<thead>
    <tr>
  <th>taskno</th>
  <th>task </th>
<th> STATUS</th>
<th> </th>
<th colspan="2"></th>
    </tr>
  </thead>
    <tbody> <tr>
    
      <?php 

 

  $user=  $_SESSION['username'];
$get_user = "SELECT * FROM users WHERE username ='$user'";
       $run_user = mysqli_query($con,$get_user);
       $row = mysqli_fetch_array($run_user);
        $user_id = $row['userid'];
    

$get_user = "SELECT * FROM task WHERE userid ='$user_id '";
       $run_user = mysqli_query($con,$get_user);
       while($row = mysqli_fetch_array($run_user))
       {
echo "<tr>";
  echo "<td>" . $row['taskid'] . "</td>";
  echo "<td>" . $row['task'] . "</td>";
   echo "<td>" . $row['status'] . "</td>";

   echo "<tr>"; 
}

mysqli_close($con);

 

?></tr>
</tbody>
    

 <?php 


   echo "
    <h1> <h1 align='center'>Welcome $user</h1>";  echo" <form method='post'><button type='submit' align='center' name='logout' class='btn'>logout</button></form>";
 

 ?>
 
 <- user logout 

 </table>


     <form method="post" >

   
    <input id="email" type="text" class="form-contro" name="task" placeholder="ADD TASK">
 <input id="email" type="text" class="form-contro" name="status" placeholder="STATUS">


   <button type="submit" name="add" class="btn">Add Task</button><- add tasks
  </form>

    
     
  <form method="post" >
 <input align="right" id="email" type="text" class="form-contro" name="task" placeholder=" TASKNO"> <button type="submit" name="del" class="btn">delete Task</button> <- delete by taskno
  <button type="submit" name="delall" class="btn">delete all</button><- Single click delete all
  </form>




<form method="post" >
   <input align="right" id="email" type="text" class="form-contro" name="task" placeholder=" TASKNO">
  <input id="email" type="text" class="form-contro" name="status" placeholder="STATUS">
    <button type="submit" name="upu" class="btn">update</button><- enter the taskno to change the status
    </form>
<?php
}
else
{
echo "<h1>you are not allowed to perform this operation(s) as you are not logged in<h1>";
echo "<a href='index.html'>Log-In</a>";
}?>
</body>
</html>