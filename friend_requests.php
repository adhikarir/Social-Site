<?php 

include("inc/header.inc.php");
?>
<?php 
//fiend fiends requests
$findrequest=mysql_query("SELECT * FROM friend_requests WHERE user_to='$user' ");

$numrows=mysql_num_rows($findrequest);
if($numrows==0){
	echo "Ypu have no friend request";
}
else{
	while($get_row=mysql_fetch_assoc($findrequest)){
		$id=$get_row['id'];
		$user_to=$get_row['user_to'];
		$user_from=$get_row['user_from'];
		echo '' .$user_from .'wants to be friend' . '<br/><br/>';
	

//echo $user;
//echo $username;
 ?>

 <?php 

// $add_friend_check="";
// $get_friend_row="";
if(isset($_POST['acceptrequest'.$user_from])){
	//echo "accepted";

	
	//get friend array for logged user
	$add_friend_check=mysql_query("SELECT friend_array FROM users where username='$user' ");
	$get_friend_row=mysql_fetch_assoc($add_friend_check);
	$friend_array=$get_friend_row['friend_array'];
	$friendArray_explode=explode(",",$friend_array);
	$friendArray_count=count($friend_array);




//get friend array for person who send request
	$add_friend_check_friend=mysql_query("SELECT friend_array FROM users where username='$user_from' ");

$get_friend_row_friend=mysql_fetch_assoc($add_friend_check_friend);
	$friend_array_friend=$get_friend_row_friend['friend_array'];
	$friendArray_explode_friend=explode(",",$friend_array_friend);
	$friendArray_count_friend=count($friend_array_friend);





if($friend_array==""){
	$friendArray_count=count(NULL);
}
if($friend_array_friend==""){
	$friendArray_count_friend=count(NULL);
}
if($friendArray_count==NULL){
	$add_friend_query=mysql_query("UPDATE users SET friend_array=CONCAT(friend_array,'$user_from') WHERE username='$user'");

}
if($friendArray_count_friend==NULL){
	$add_friend_query_friend=mysql_query("UPDATE users SET friend_array=CONCAT(friend_array,'$user_to') WHERE username='$user_from'");
	
}

if($friendArray_count >=1){
	$add_friend_query=mysql_query("UPDATE users SET friend_array=CONCAT(friend_array,',$user_from') WHERE username='$user'");
	
}
if($friendArray_count_friend >=1){
	$add_friend_query_friend=mysql_query("UPDATE users SET friend_array=CONCAT(friend_array,',$user_to') WHERE username='$user_from'");
	
}
$delete_request=mysql_query("DELETE FROM friend_requests WHERE user_to='$user_to' && user_from='$user_from' ");

echo "you are now friends";
header("location:friend_requests.php");

}
if(isset($_POST['ignorerequest'.$user_from])){

	$ignore_request=mysql_query("DELETE FROM friend_requests WHERE user_to='$user_to' && user_from='$user_from' ");

echo "request ignore";
header("location:friend_requests.php");


}







  ?>

 <form action="friend_requests.php" method="post">
 <input type="submit" name="acceptrequest<?php echo $user_from ;?>" value="Accept Request">
 <input type="submit" name="ignorerequest<?php echo $user_from ;?>" value="Ignore Request">

 	
 </form>

<?php 

}
}

 ?>