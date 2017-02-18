   <?php include('inc/header.inc.php'); ?>
   <?php include('inc/connect.inc.php'); ?>

   <?php 
global $con;
   $reg=@$_POST['reg'];
   //declaring variable to prevent errors
   $fn="";
   $ln="";
   $un="";
   $em="";
   $em2="";
   $pswd="";
   $pswd2="";
   $d="";



//registation form
   $fn=@$_POST['fname'];
   $ln=@$_POST['lname'];
   $un=@$_POST['username'];
   $em=@$_POST['email'];
   $em2=@$_POST['email2'];
   $pswd=@$_POST['password'];
   $pswd2=@$_POST['password2'];
   $d=date('Y-m-d');//Year-month-day

   if($reg){
   	if($em==$em2){
   		$e_check=mysql_query("SELECT email FROM users WHERE email='$em' ");
   		$email_check=mysql_num_rows($e_check);
   		if ($email_check==0) {
   			# code...
   		
   		//check if user already exist
   	$u_check=mysql_query("SELECT username FROM users WHERE username='$un'");
   	//count the amount of rows where username=$un
   	$check=mysql_num_rows($u_check);
   	if($check==0){
   		//check all of the fields have been filed in
   		if($fn&&$ln&&$em&&$em2&&$pswd&&$pswd2){
   			//check that password match
   		if($pswd=$pswd2){
   			//check the maximum length of username/first name/last name does not exceed 25 character
   			if(strlen($un)>25||strlen($fn)>25||strlen($ln)>25){
   				echo "the maximum limit for username/first name/last name is 25 characters";
   			}
   			else{
   				//check the maximum length of password does not exceed 25 characters and is not less than 5 characters
   				if(strlen($pswd)>30||strlen($pswd)<5){
   					echo "your password must be between 5 and 30 characters long";
   				}
   				else{

   					//encrypt password and password 2 using md5 before sending to database
   					$pswd=md5($pswd);
   					$pswd2=md5($pswd2);
   					//global $con;
   					$query=mysql_query("INSERT INTO `findfrends`.`users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `sign_up_date`,`bio`,`profile_pic`,`friend_array`,`closed`) VALUES (NULL, '$un', '$fn', '$ln', '$em', '$pswd', '$d','','','','no' )");
   					//$query=mysql_query("INSERT INTO users/*users(id,username,first_name,last_name,email,password,sign_up_date)*/ VALUES ('','$un',$fn','$ln','$em','$pswd','$d')");
	//$run_pro=mysql_query($con, $query);

			//if($run_pro){
				//echo "ok";
			//}

   					die("<h2>Welcom to findfrends</h2>Login to your account to get started....");
   				}
   			}
   		}
   		else{
   			echo "your password don't match";
   		}
   		}
   		else{
   			echo "please fill all the fields";
   		}
   	}
   	else{
   		echo "Username already taken...";
   	}
   	}
   		else{
   		echo "sorry this email is already used...";
   	}
   }
   	
else{
	echo "Your email don't match";
   }
}


//User login
if(isset($_POST['user_login'])&&isset($_POST['password_login'])){
	$user_login=preg_replace('#[^A-Za-z0-9]#i', '', $_POST['user_login']);//filtering everything but numbers and letter
	$password_login=preg_replace('#[^A-Za-z0-9]#i', '', $_POST['password_login']);//filtering everything but numbers and letter
	$password_login_md5=md5($password_login);

$sql=mysql_query("SELECT id FROM users WHERE username='$user_login' AND password='$password_login_md5' AND closed='no' LIMIT 1");//query
//check for their existance
$userCount=mysql_num_rows($sql);//count the number of rows return
if($userCount==1){

	while($row=mysql_fetch_array($sql)){
		$id=$row['id'];
	}
	$_SESSION['user_login']=$user_login;
	header("location:home.php");
	exit();
}
else{
	echo "That information is incorrect, try again";
	exit();
}
}






?>




	<div style="width:800px; margin:0px auto 0px auto;">
	<table>
		<tr>
			<td width="60%" valign="top">
			<h2>Already a member? Sign in below</h2>
			<form action="index.php" method="post">
			<input type="text" name="user_login" size="25" placeholder="Enter Username"><br/><br/>
				<input type="password" name="password_login" size="25" placeholder="Enter Password"><br/><br/>
				<input type="submit" name="login" value="Login" ><br/><br/>
				
			</form>
				
			</td>
			<td width="40%" valign="top">
			<h2>Sign Up Below</h2>
			<form action="#" method="post">
				<input type="text" name="fname" size="25" placeholder="First Name"><br/><br/>
				<input type="text" name="lname" size="25" placeholder="Last Name"><br/><br/>
				<input type="text" name="username" size="25" placeholder="Username"><br/><br/>
				<input type="text" name="email" size="25" placeholder="Email Address"><br/><br/>
				<input type="text" name="email2" size="25" placeholder="Email Address again"><br/><br/>
				<input type="password" name="password" size="25" placeholder="password"><br/><br/>
				<input type="password" name="password2" size="25" placeholder="password again"><br/><br/>
				<input type="submit" name="reg" value="Sign Up" ><br/><br/>

				
			</form>
				
			</td>
		</tr>
	</table>

	</div>
</body>
</html>