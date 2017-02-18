<!-- <iframe src="localhost/soc_sit"></iframe> -->
<?php 

include ("inc/connect.inc.php");

$getid=$_GET['id'];
?>


<a href="#"><div style='floar:right; display:inline;'>Post Comment</div></a>
<div id='toggleComments<?php echo $getid;?>' style='display:none;'>

</div>

<?



$get_comments=mysql_query("SELECT * FROM post_comments WHERE post_id='$getid'");

$count=mysql_num_rows($get_comments);
if($count!=0){
while($comments=mysql_fetch_assoc($get_comments)){



// 	$get_comments=mysql_query("SELECT * FROM post_comments WHERE post_id='$id'  ORDER BY id ASC ");
// while($comments=mysql_fetch_assoc($get_comments)){


$comment_body=$comments['post_body'];
$posted_to=$comments['posted_to'];
$posted_by=$comments['posted_by'];
$remove=$comments['post_remove'];
echo "<b>$posted_by said:</b><br/>".$comment_body."<hr/><br>";
}
}
else{
	echo "No comment display";
}


//echo $comment_body."<br/>";



 ?>