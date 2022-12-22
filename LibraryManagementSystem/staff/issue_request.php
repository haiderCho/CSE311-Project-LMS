<?php
require('dbconn.php');

$id=$_GET['id'];

$roll=$_SESSION['Personal_ID'];

$sql="insert into LMS.record (Personal_ID,BookId,Time) values ('$roll','$id', curtime())";

if($conn->query($sql) === TRUE)
{
echo "<script type='text/javascript'>alert('Request Sent to Admin.')</script>";
header( "Refresh:0.01; url=book.php", true, 303);
}
else
{
	echo "<script type='text/javascript'>alert('Request Already Sent.')</script>";
    header( "Refresh:0.01; url=book.php", true, 303);

}




?>