<?php 
include("inc/header.inc.php");

 ?>

 <?php 
if($user){

if(isset($_POST['no'])){
	header("location:account_seeting.php");
}
if(isset($_POST['yes'])){

$close_account=mysql_query("UPDATE users SET closed='yes' WHERE username='$user'");

if($close_account){
	echo"Your Account has been closed";

session_destroy();
}

}


}
else{
	die("You must be logged in to view this page");
}


  ?>

 <br/>
 <center>
 	<form action="close_account.php" method="post">
 	Are You sure you want to close your Account<br/>
 	<input type="submit" name="no" value="No">
 	<input type="submit" name="yes" value="Yes">
 		
 	</form>
 </center>