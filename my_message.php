<?php 

include("inc/header.inc.php");
//Grab the messages for the logged in user


?>



<h2>My Unread Messages</h2></p>
<?php

$grab_message=mysql_query("SELECT * FROM pvt_messages WHERE user_to='$user' && opened='no'  && deleted='no' ");

$numrows=mysql_num_rows($grab_message);
if($numrows!=0){
while($get_msg=mysql_fetch_assoc($grab_message)){
	$id=$get_msg['id'];
	$user_from=$get_msg['user_from'];
	$user_to=$get_msg['user_to'];
	$msg_title=$get_msg['msg_title'];

	$msg_body=$get_msg['msg_body'];
	$date=$get_msg['date'];
	$opened=$get_msg['opened'];
	$deleted=$get_msg['deleted'];
?>



<script language="javascript">
	
function toggle<? echo $id; ?>(){
	var ele=document.getElementById("toggleText<? echo $id;?>");
	var text=document.getElementById("displayText <? echo $id;?>");
	if(ele.style.display=="block"){
		ele.style.display="none";
		// text.innerHTML="show";

	}
	else{
		ele.style.display="block";
		// text.innerHTML="hide";


	}


}



</script>



<?php
	if(strlen($msg_title)>50){
		$msg_title=substr($msg_title,0,50)."...";
	}
	else{
		$msg_title=$msg_title;
	}

	if(strlen($msg_body)>150){
		$msg_body=substr($msg_body,0,150)."...";
	}
	else{
		$msg_body=$msg_body;
	}


	if(@$_POST['setopened_'.$id.'']){
		//echo "ok";
		//update the private messages table
		$setopened_query=mysql_query("UPDATE pvt_messages SET opened='yes' WHERE msg_title='$msg_title'") or die(mysql_error());


	}
	//echo $user_from."&nbsp;&nbsp Send You message,&nbsp;&nbsp";
	echo"






	
	
	<form method='POST' action='my_message.php' name='$msg_title'>
	<a href='$user_from'>$user_from</a></b> 

	<input type='button' name='openmsg' value='$msg_title' OnClick='javascript: toggle$id()'>
	<input type ='submit' name='setopened_$id' value=\"i have read this\">



	</form>




<div id='toggleText$id' style='display:none;'>
</br>$msg_body
</div></br><hr/>

	";


}
}
else{
	echo"you haven't any messages yet";
}


 ?>






<h2>My Read Messages</h2></p>
<?php

$grab_message=mysql_query("SELECT * FROM pvt_messages WHERE user_to='$user' && opened='yes'  && deleted='no' ");

$numrows_read=mysql_num_rows($grab_message);
if($numrows_read!=0){
while($get_msg=mysql_fetch_assoc($grab_message)){
	$id=$get_msg['id'];
	$user_from=$get_msg['user_from'];
	$user_to=$get_msg['user_to'];
	$msg_title=$get_msg['msg_title'];

	$msg_body=$get_msg['msg_body'];
	$date=$get_msg['date'];
	$opened=$get_msg['opened'];
	$deleted=$get_msg['deleted'];




	//echo $msg_title;


	?>

<script language="javascript">
	
function toggle<? echo $id; ?>(){
	var ele=document.getElementById("toggleText<? echo $id;?>");
	var text=document.getElementById("displayText<? echo $id;?>");
	if(ele.style.display=="block"){
		ele.style.display="none";
		// text.innerHTML="show";

	}
	else{
		ele.style.display="block";
		// text.innerHTML="hide";


	}


}



</script>




	<?php


	if(strlen($msg_title)>50){
		$msg_title=substr($msg_title,0,50)."...";
	}
	else{
		$msg_title=$msg_title;
	}

	if(strlen($msg_body)>150){
		$msg_body=substr($msg_body,0,150)."...";
	}
	else
		$msg_body=$msg_body;

	if(@$_POST['reply_'.$id.'']){

		header("location:msg_reply.php?u=$user_from");

	}



	if(@$_POST['delete_'.$id.'']){

		$delete_msg_query=mysql_query("UPDATE pvt_messages SET deleted='yes' WHERE id='$id' ");
	}
	
	echo"






	
	<form method='POST' action='my_message.php' name='$msg_title'>
	<a href='$user_from'>$user_from</a></b> 

	<input type='button' name='openmsg' value='$msg_title' OnClick='javascript:toggle$id()'>
	<input type ='submit' name='delete_$id' value=\"X\" title='Delete Message'>
	<input type ='submit' name='reply_$id' value=\"Reply\" title='Reply Message'>



	</form>




<div id='toggleText$id' style='display:none;'>
</br>$msg_body
</div></br><hr/>

	";
	}
}
else{
	echo"you haven't any messages yet";
}



  ?>



