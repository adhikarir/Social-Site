
<?php 
include('inc/connect.inc.php');

session_start();

if(!isset($_SESSION['user_login'])){
$user="";
}
else{
	$user=$_SESSION["user_login"];
}
 ?>





 <?php 

$get_unread_query=mysql_query("SELECT opened FROM pvt_messages WHERE user_to='$user' && opened='no' ");
$get_unread=mysql_fetch_assoc($get_unread_query);
$unread_numrows=mysql_num_rows($get_unread_query);
 

$unread_numrows="(".$unread_numrows.")";


  ?>

<!DOCTYPE html>
<html>
<head>
	<title>findfrends</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="css/javascript.main.js" type="text/javascript"></script>
</head>
<body>

	<div class="headerMenu">
		<div id="wrapper">
			<div class="logo">
				<h1>FindFriend</h1>
			</div>
			<div class="search_box">
			<form action="search.php" method="GET" id="search">
				<input type="text" name="q" size="60" placeholder="Search..."/>
				
			</form>
				
			</div>
			<?php
			

			if(!$user) {
				echo
			'<div id="menu">
			<a href="index.php">Sign Up</a>
			<a href="index.php">login</a>
			 </div>';
			}
			else{
					echo
			'<div id="menu">
			<a href="'.$user.'">'.$user.' &nbsp;&nbsp;profile</a>
			<a href="account_seeting.php">Account seeting</a>
			<a href="my_message.php">My Message'.$unread_numrows.'</a>
			<a href="my_pokes.php">Pokes</a>
			<a href="home.php">NewsFeed</a>


			<a href="logout.php">logout</a>
			</div>';

			}
			
				
			
			 ?>
		</div>
	
	</div id="wrapper">