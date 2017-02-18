	<?php 

	include("inc/header.inc.php");

	if($user)
	{

	}
	else{
		die("you must be login to vied page");
	}


if(!isset($_SESSION['user_login'])){
$username="";
}
else{
	$user=$_SESSION["user_login"];
}





	 ?>
	 <?php 

	$senddata=@$_POST['senddata'];
	//variables
	$old_password=@$_POST['oldpassword'];
	$new_password=@$_POST['newpassword'];
	$repeat_password=@$_POST['newpassword2'];
	if($senddata){

		$password_query=mysql_query("SELECT * FROM users WHERE username='$user'");
		while ($row=mysql_fetch_assoc($password_query)) {
			$db_password=$row['password'];
			//md5 the old password before we check if it match
			$old_password_md5=md5($old_password);

			//check whether old password equals $db_password
			if($old_password_md5==$db_password){
				//echo $db_password;
				//echo $old_password_md5;
				//echo "match";
				if($new_password==$repeat_password){


					if(strlen($new_password)<=4){
						echo "Sorry! But your password must be more than 4 character";
					}
					else{
					//echo "awesome your password is match";
					//greate update the user password
					//md5  the new password before we add it to database
					$new_password_md5=md5($new_password);
					$password_updata_query=mysql_query("UPDATE users SET password='$new_password_md5' WHERE username='$user' ");

					echo "success Your password has been update";

						}

				}
				else{
					echo "your two new password doesn't match";
				}

			}
			else{
				echo "The old password does not match";
			}
		}

	}
	else{
		echo "";
	}
	//first name last name and about the user query
	$get_info=mysql_query("SELECT first_name, last_name, bio FROM users WHERE username='$user'");
	$get_row=mysql_fetch_assoc($get_info);
	$firstname=$get_row['first_name'];
	$last_name=$get_row['last_name'];
	$db_bio=$get_row['bio'];



	//submit what the user types into database
	$updateinfo=@$_POST['updateinfo'];

	if($updateinfo){

		//if the form is submitted

	$firstname=strip_tags(@$_POST['fname']);
	$lastname=strip_tags(@$_POST['lname']);
	$bio=@$_POST['bio'];

	if(strlen($firstname)<3){
		echo "your first name must be greater than 3 character";

	}
	else



	if(strlen($lastname)<3){
		echo "your last name must be greater than 3 character";

	}
	else{

	$info_submit_query=mysql_query("UPDATE users SET first_name='$firstname',last_name='$lastname',bio='$bio' WHERE username='$user'");
	echo "Your profile information has been Updated";

	}


	}
	else{
		//do nothing
	}



	//check whether the user has uploaded a profile pic  or not
	$check_pic=mysql_query("SELECT profile_pic FROM users WHERE username='$user'");
	$get_pic_row=mysql_fetch_assoc($check_pic);
	$profile_pic_db=$get_pic_row['profile_pic'];
	if($profile_pic_db==""){
		$profile_pic="image/default_pic.jpg";
	}
	else{
		$profile_pic="userdata/profile_pics/".$profile_pic_db;
	}
	//profile image upload script
	if(isset($_FILES['profilepic'])){
		if(($_FILES["profilepic"]["type"]=="image/jpeg")||(@$_FILES["profilepic"]["type"]=="image/gif")&&(@$_FILES["profilepic"]["size"]<1048576)){//1 megabyte{


	$chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRST0123456789";
	$rand_dir_name=substr(str_shuffle($chars),0,15);
	mkdir("userdata/profile_pics/$rand_dir_name");


	 if(file_exists("userdata/profile_pics/$rand_dir_name/".@$_FILES["profilepic"]["name"]))
	{
		echo @$_FILES["profilepic"]["name"]."Already exists";

	}
	else{
		move_uploaded_file(@$_FILES["profilepic"]["tmp_name"],"userdata/profile_pics/$rand_dir_name/".$_FILES["profilepic"]["name"]);
		//echo "Uploaded and stored in: userdata/profile_pics/$rand_dir_name/ ".@$_FILES["profilepic"]["name"];

		$profile_pic_name=@$_FILES['profilepic']["name"];
		$profile_pic_query=mysql_query("UPDATE users SET profile_pic='$rand_dir_name/$profile_pic_name' WHERE username='$user'");
		header("location:account_seeting.php");
	}
	}
	else{
		echo "Invalid file! your image must be no larger then 1MB and it must be .jpg or .png or .jpeg or .jif ";



	}
	}

	  ?>
	 <h2>Edit your Account Seetings below</h2>
	 <hr/>
	 <p>Upload your profile photo:</p>
	 <form action="" method="post" enctype="multipart/form-data">
	 <img src="<?php echo $profile_pic; ?>" width="70">
	 <input type="file" name="profilepic"/><br/>
	 <input type="submit" name="uploadpic" value="Upload image">
	 	
	 </form>
	<hr/>
	<form action="account_seeting.php" method="post">
	 <p><b>change your password:</b></p>
	 Your old password:<input type="password" name="oldpassword" id="oldpassword" size="30"></br></br>
	 Your New password:<input type="password" name="newpassword" id="newpassword" size="30"></br></br>
	 Repate password:<input type="password" name="newpassword2" id="newpassword2" size="30"></br></br>
	 </hr>
	<input type="submit" name="senddata" id="senddata" value="Update information" 
	 ></form>

	<form action="account_seeting.php" method="post">
	<p>Update Ypur profile INFO:</p></br>
	First Name<input type="text" value="<?php echo $firstname; ?>" name="fname" id="fname" size="40"></br></br>
	Last Name<input type="text"  value="<?php echo $last_name; ?>" name="lname" id="lname" size="40"></br></br>
	About You:<textarea name="bio"  id="bio" cols="60" rows="4"><?php echo $db_bio; ?></textarea></br></br>
	</hr>
	<input type="submit" name="updateinfo" id="updateinfo" value="Update information" 
	 ></form>

</hr>
	 <form action="close_account.php" method="post">
	 <p><b>Closed Account</b></p>
	
	<input type="submit" name="closeaccount" id="closeaccount" value="Closed MY Account" 
	 ></form>
</hr>