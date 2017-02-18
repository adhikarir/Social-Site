<?php 

include("inc/header.inc.php");

if(isset($_GET['u'])){
$username=mysql_real_escape_string($_GET['u']);
if(ctype_alnum($username)){
	//check user exist
	$check=mysql_query("SELECT username, first_name FROM users WHERE username='$username'");
	// if(mysql_num_rows($check==1)){
	// 	$get=mysql_fetch_assoc($check);
	// 	$username=$get['username'];
	// 	$firstname=$get['first_name'];



	$userCount=mysql_num_rows($check);//count the number of rows return
if($userCount==1){

	while($get=mysql_fetch_array($check)){
		//$id=$get['id'];
		$username=$get['username'];
	 	$firstname=$get['first_name'];
	 	//echo $username;
	 	//check user isn't sending themeself private message
	 	if($username!=$user){

	 		if(isset($_POST['sumbit_msg'])){
	 			//echo "your message has been sent";
	 			$msg_body=strip_tags(@$_POST['msg_body']);
	 			$msg_title=strip_tags(@$_POST['msg_title']);
	 			$date=date("Y-m-d");
	 			$opened="no";
	 			$deleted="no";
	 			if($msg_body==""){
	 				echo "Please enter the message";
	 			}

	 			$send_msg=mysql_query("INSERT INTO pvt_messages VALUES('','$user','$username','$msg_title','$msg_body','$date','$opened','$deleted')");
	 			if($send_msg){
	 				echo "your message is send";

	 			}

	 		}
	 		echo "
	 			<form action='send_msg.php?u=$username' method='POST'>
	 			<h2>Compose a Message:($username)</h2>
	 			<input type='text' name='msg_title' placeholder='Enter the Title of Message'></p>
	 		<textarea cols='50' rows='12' name='msg_body'placeholder='Enter the message you wish to send...'></textarea></p>
	 		<input type='submit' name='sumbit_msg' value='send Message'	>

	 			</form>


	 		";





	 	}
else{

	echo "You can't send mesage yourself";
	header("location=$user");
}

	}



	}
}
	
	}