<?php 

include('inc/header.inc.php');

// echo "Hello," .$user;
// echo "<br>Would you like to Logout?<a href='logout.php'>Logout</a>";

if(!isset($_SESSION['user_login'])){
	echo"<meta http-equiv=\"refresh\" content=\"0; url=http://soc_sit.index.php";

}
else{
	echo "";
}
//if the user is logged in
//echo "Hello," .$user;
//echo "<br>Would you like to Logout?<a href='logout.php'>Logout</a>";

 ?>
 <h2>Newsfeed</h2>


 <?php 


$check=mysql_query("SELECT * FROM posts WHERE user_posted_to='$user' ORDER BY id DESC LIMIT 10");




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

//echo $id;
// if($profilepic_info==""){
// 	$profilepic_info="img/default_pic.jpg";
// }else{
// 	$profilepic_info="userdata/profile_pics".$profilepic_info;
// }
// //echo $profilepic_info;



//Get Revalent Comments
$get_comments=mysql_query("SELECT * FROM post_comments WHERE post_id='$id'  ORDER BY id ASC ");
while($comments=mysql_fetch_assoc($get_comments)){


$comment_body=$comments['post_body'];
$posted_to=$comments['posted_to'];
$posted_by=$comments['posted_by'];
$remove=$comments['post_remove'];



?>

// <script language="javascript">
	
// function toggle<? echo $id; ?>(){
// 	var ele=document.getElementById("toggleComment<? echo $id;?>");
// 	var text=document.getElementById("displayComments <? echo $id;?>");
// 	if(ele.style.display=="block"){
// 		ele.style.display="none";
// 		// text.innerHTML="show";

// 	}
// 	else{
// 		ele.style.display="block";
// 		// text.innerHTML="hide";


// 	}


// }



// </script>


<?php
//<a href='#' onClick='javascript:toggle$id()'>Show Comments</a>

echo "

<div class='newfeedpostoption'>
 $comment_body;
</div>

 		<div style='float:left;'>


 		<img src='userdata/profile_pics/$profilepic_info' height='60'>
 		</div>

 			<div class='posted_by' >
 			Posted by:

 			<a href='$added_by'>$added_by</a> on $date_added</div>
 			<br/><br/>
 			<div style=' max-width:600px;'>
 			$body<br/>

<div id='toggleComments$id' style='display:none;'>
</br>$comment_body

<iframe src='comment_frame.php?id=$id' style='height:auto; width:100%; min-height:10px; max-height:20px;'></iframe>
</div></br><hr/>



 			<hr/>
 			</div>

 		";


}
}


  ?>
