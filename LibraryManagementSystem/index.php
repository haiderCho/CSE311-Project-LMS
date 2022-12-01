<?php
require('dbconn.php');
?>

<!DOCTYPE html>
<html>

<head>
    <title>The Library of Ohara</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
</head>

<body>

<h1><img src="images/small_logo.png" alt="The Library of Ohara"></h1>

<div class="container">
    <div class="login">
        <h2><b>Sign In</b></h2>
        <form action="index.php" method="post">
            <input type="text" Name="Personal_ID" placeholder="ID" required="">
            <input type="password" Name="Password" placeholder="Password" required="">
            <div class="send-button">
                <input type="submit" name="signin" ; value="Sign In">
        </form>
    </div>
    <div class="clear"></div>
</div>

<div class="register">
    <h2><b>Sign Up</b></h2>
    <form action="index.php" method="post">
        <input type="text" Name="Name" placeholder="Name" required>
        <input type="text" Name="Email" placeholder="Email" required>
        <input type="password" Name="Password" placeholder="Password" required>
        <input type="text" Name="PhoneNumber" placeholder="Phone Number" required>
        <input type="text" Name="Personal_ID" placeholder="ID" required="">
        <select name="Gender" id="Gender">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
        </select>
        <select name="Type" id="Type">
            <option value="Student">Student</option>
            <option value="Faculty Member">Faculty Member</option>
            <option value="Staff">Staff</option>
        </select>
        <br>
        <br>
        <div class="send-button">
            <input type="submit" name="signup" value="Sign Up">
    </form>
</div>
<p>By creating an account, you agree to our Terms</a></p>
<div class="clear"></div>
</div>
<div class="clear"></div>
</div>

<div class="footer w3layouts agileits">
    <p> &copy; 2022 Ohara Library Management System. All Rights Reserved.</a></p>
    <p><a class="underline" href="about.html"><b>About the Project.</b></a></p>
</div>
</body>
</html>
