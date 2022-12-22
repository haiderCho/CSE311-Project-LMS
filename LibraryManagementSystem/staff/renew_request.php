<?php
require('dbconn.php');

$id=$_GET['id'];

$Personal_ID=$_SESSION['Personal_ID'];

$sql="insert into LMS.renew (Personal_ID,BookId) values ('$Personal_ID','$id')";

if($conn->query($sql) === TRUE)
{
echo "<script type='text/javascript'>alert('Request Sent to Admin.')</script>";
header( "Refresh:0.01; url=current.php", true, 303);
}
else
{
	echo "<script type='text/javascript'>alert('Request Already Sent.')</script>";
    header( "Refresh:0.01; url=current.php", true, 303);

}




?>