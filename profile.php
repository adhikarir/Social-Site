<?php 
include('inc/header.inc.php');

if(!isset($_SESSION['user_login'])){
$username="";
}
else{
	$user=$_SESSION["user_login"];
}


?>
<?php 
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
	}



	}
	else{
		echo "<meta http-equiv=\"refresh\"content=\"0;url=http://localhost/soc_sit/index.php\">";
		exit();
	}
}




}



 ?>

 <div class="postForm">
 	
 	<form action="<?php echo $username; ?> " method="post"> 
 	<textarea id="post" name="post" rows="4" cols="58"></textarea>
 	<input type="submit" name="send"  value="Post" style="background-color:#DCE5EE;float:right;border:1px solid #666;">
 		
 	 </form>
 </div>
 <div class="profilePosts">
 	
<?php 









if(isset($_POST['send'])){//&& isset($_POST['send'])){ 

$post=$_POST['post'];

	$date_added="2072/02/11";//date("Y-m-d");
	$added_by=$user;
	$user_posted_to=$username;
	$query="INSERT INTO `findfrends`.`posts` (`id`, `body`, `date_added`, `added_by`, `user_posted_to`) VALUES (NULL, '$post', '$date_added', '$added_by', '$user_posted_to')";
	$que=mysql_query($query) or die (mysql_error());
if($que){
	//echo "ok";
}

else{
	echo "You must entre something in the post field before you can send it...";
}
}
?>





<?php  





$check=mysql_query("SELECT * FROM posts WHERE user_posted_to='$username' ORDER BY id DESC LIMIT 10");




	// if(mysql_num_rows($check==1)){
	// 	$get=mysql_fetch_assoc($check);
	// 	$username=$get['username'];
	// 	$firstname=$get['first_name'];



// 	$userCount=mysql_num_rows($check);//count the number of rows return
// if($userCount==1){

	while($row=mysql_fetch_array($check)){
		//$id=$get['id'];
 		$id=$row['id'];
 		$body=$row['body'];
 		$date_added=$row['date_added'];
 		$added_by=$row['added_by'];
 		$user_posted_to=$row['user_posted_to'];


 		$get_user_info=mysql_query("SELECT * FROM users WHERE username='$added_by'");
$get_info=mysql_fetch_assoc($get_user_info);
$profilepic_info=$get_info['profile_pic'];
//echo $profilepic_info;
 		//echo "$body";
 		echo "

 		<div style='float:left;'>


 		<img src='userdata/profile_pics/$profilepic_info' height='60'>
 		</div>

 			<div class='posted_by' >
 			Posted by:

 			<a href='$added_by'>$added_by</a> on $date_added</div>
 			<br/><br/>
 			<div style=' max-width:600px;'>
 			$body<br/><hr/>
 			</div>

 		";




}




//check whether the user has uploaded a profile pic  or not
	$check_pic=mysql_query("SELECT profile_pic FROM users WHERE username='$username'");
	$get_pic_row=mysql_fetch_assoc($check_pic);
	$profile_pic_db=$get_pic_row['profile_pic'];
	if($profile_pic_db==""){
		$profile_pic="image/default_pic.jpg";
	}
	else{
		$profile_pic="userdata/profile_pics/".$profile_pic_db;
	}




 ?>

<?php

//messaging
if(isset($_POST['sending'])){
	header("location:send_msg.php?u=$username");
}




$errormsg="";

if(isset($_POST['addfriend'])){

	$fiiend_request=$_POST['addfriend'];
	$user_to=$user;
	$user_from=$username;

	if($user_to==$username){
		echo "you cann't send friend request yourself";
	}
	else{
		$create_request=mysql_query("INSERT INTO friend_requests VALUES('','$user_from','$user_to')");
		echo"your friend request has been sent";

	}




}
else{
	//do nothing
}






 ?>




 </div>
 <img src="<?php echo $profile_pic; ?>" height="250" width="200" alt="<?php echo $username; ?>'s profile" title="<?php echo $username; ?>'s profile"/>
 </br>

<form action="<?php echo $username; ?>" method="post">
<?php 

$friendsArray="";
$countFriends="";
$friendsArray12="";
$selectFriendsQuery=mysql_query("SELECT friend_array FROM users WHERE username='$username'");
$friendRow=mysql_fetch_assoc($selectFriendsQuery);
$friendsArray=$friendRow['friend_array'];
if($friendsArray!=""){
	$friendsArray=explode(",", $friendsArray);
	$countFriends=count($friendsArray);
	$friendsArray12=array_slice($friendsArray, 0,12);



$i=0;
if(in_array($user, $friendsArray)){
	$addAsFriend='<input type="submit" name="removefriend" value="Remove Friend">';
}
else{
	$addAsFriend='<input type="submit" name="addfriend" value="Add As Friend">';

}
echo $addAsFriend;
 

}
else
{
	$addAsFriend='<input type="submit" name="addfriend" value="Add As Friend">';
	echo $addAsFriend;





}

//remove the friend from profile
//$user=Logged in user
//$username=user who owns profile
if(@$_POST['removefriend']){
	//friend array for logged in user
	$add_friend_check=mysql_query("SELECT friend_array FROM users WHERE username='$user' ");
$get_friend_row=mysql_fetch_assoc($add_friend_check);
$friend_array=$get_friend_row['friend_array'];
$friend_array_explode=explode(",", $friend_array);
$friend_array_count=count($friend_array_explode);


	//friend array for user who owns profile
	$add_friend_check_username=mysql_query("SELECT friend_array FROM users WHERE username='$username' ");
$get_friend_row_username=mysql_fetch_assoc($add_friend_check_username);
$friend_array_username=$get_friend_row_username['friend_array'];
$friend_array_explode_username=explode(",", $friend_array_username);
$friend_array_count_username=count($friend_array_explode_username);


$usernameComma=",".$username;
$usernameComma2=$username.",";


$userComma=",".$user;
$userComma2=$user.",";

if(strstr($friend_array, $usernameComma)){
	$friend1=str_replace("$usernameComma", "",$friend_array );
}
else

if(strstr($friend_array, $usernameComma2)){
	$friend1=str_replace("$usernameComma2", "",$friend_array );
}
else

if(strstr($friend_array, $username)){
	$friend1=str_replace("$username", "",$friend_array );
}


//remove logged in user from other person array
if(strstr($friend_array, $userComma)){
	$friend2=str_replace("$userComma", "",$friend_array );
}
else

if(strstr($friend_array, $userComma2)){
	$friend2=str_replace("$userComma2", "",$friend_array );
}
else

if(strstr($friend_array, $user)){
	$friend2=str_replace("$user", "",$friend_array );
}

//$friend2="";

$removeFeiendQuery=mysql_query("UPDATE uses SET friend_array='$friend1' WHERE username='$user' ");
$removeFeiendQuery_username=mysql_query("UPDATE users SET friend_array='$friend2' WHERE username='$username' ");

echo "Friend Remove";
header("location:$username");
}



//Poke code
$check_if_poked=mysql_query("SELECT * FROM pokes WHERE user_to='$username' && user_from='$user'  ");
$num_poke_found=mysql_num_rows($check_if_poked);
if($num_poke_found==1){
	echo "You must wait to be poked back";
}
else
if($username==$user){
	echo "you can't poke by yourself";
}
else{

	

if(@$_POST['poke']){
$poke_user=mysql_query("INSERT INTO pokes VALUES('','$user','$username')")	;
echo "$username has been poke by $user";
}

}



 ?>
<input type="submit" name="poke" value=" Poke">	

<!-- <input type="submit" name="addfriend" value="Add as Friend"> -->
<input type="submit" name="sending" value="Send Message">	
</form>



 <div class="textHeader"><?php echo $username ; ?>'s profile</div>
 <div class="profileLeftSideContent">
 	
<?php 
$about_query=mysql_query("SELECT bio FROM users WHERE username='$username'");
$get_result=mysql_fetch_assoc($about_query);
$about_the_user=$get_result['bio'];

echo $about_the_user;

 ?>


 </div>
 <div class="textHeader"><?php echo $username; ?>'s Friends</div>
 <div class="profileLeftSideContent">

<?php 

//show the friend in profile start
echo '<div id="profilefriends">' ;
if($countFriends!=0){

foreach ($friendsArray12 as $key => $value) {
	$i++;
	$getFriendQuery=mysql_query("SELECT * FROM users WHERE username= '$value' LIMIT 1 ");
	$getFriendRow=mysql_fetch_assoc($getFriendQuery);
	$friendUsername=$getFriendRow['username'];
	$friendprofilePic=$getFriendRow['profile_pic'];
	
	//echo $friendUsername;

	if($friendprofilePic==""){




		echo "<a href='$friendUsername'><img src='img/default_pic.jpg' alt=\"$friendUsername's Profile\"    title=\"$friendUsername's Profile\" height='50' width='40' style='padding right:6px;'> </a> ";
	}
	else{
		echo "<a href='$friendUsername'><img src='userdata/profile_pic/$friendprofilePic' alt=\"$friendUsername's Profile\"   title=\"$friendUsername's Profile\" height='50' width='40' style='padding right:6px;'> </a> ";
		
	}
	# code...
}

}
else{
	echo $username."has no friend yet";
}


//show the friend in profile end

 ?>



 	<!-- <img src="#" height="50" width="40"/>&nbsp;&nbsp; -->
 	<!-- <img src="#" height="50" width="40"/>&nbsp;&nbsp;
 	<img src="#" height="50" width="40"/>&nbsp;&nbsp;
 	<img src="#" height="50" width="40"/>&nbsp;&nbsp;
 	<img src="#" height="50" width="40"/>&nbsp;&nbsp;
 	<img src="#" height="50" width="40"/>&nbsp;&nbsp;
 	<img src="#" height="50" width="40"/>&nbsp;&nbsp;
 	<img src="#" height="50" width="40"/>&nbsp;&nbsp; -->


 </div>

 