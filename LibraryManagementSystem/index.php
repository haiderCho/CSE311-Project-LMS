<?php
require('dbconn.php');
?>

<!DOCTYPE html>
<html>

<!-- Head -->
<head>

    <title>The Library of Ohara</title>

    <!-- Style -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
    <!-- //Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

<div class="title-box"><img src="images/small_logo.png" alt="The Library of Ohara"></div>

<div class="container">

    <div class="login">
        <h2><b>Sign In</b></h2>
        <form action="index.php" method="post">
            <input type="text" Name="Personal_ID" placeholder="ID" required="">
            <input type="password" Name="Password" placeholder="Password" required="">


            <div class="send-button">
                <!--<form>-->
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

<?php
if (isset($_POST['signin'])) {
    $u = $_POST['Personal_ID'];
    $p = $_POST['Password'];
    $c = $_POST['Gender'];

    $sql = "select * from LMS.user where Personal_ID='$u'";

    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $x = $row['Password'];
    $y = $row['Type'];
    if (strcasecmp($x, $p) == 0 && !empty($u) && !empty($p)) {//echo "Login Successful";
        $_SESSION['Personal_ID'] = $u;

        if ($y == 'Admin' || $y == 'Librarian')
            header('location:admin/index.php');
        else if ($y == 'Faculty Member' || $y == 'Staff')
            header('location:staff/index.php');
        else
            header('location:student/index.php');

    } else {
        echo "<script type='text/javascript'>alert('Failed to Login! Incorrect Personal ID or Password')</script>";
    }

}

if (isset($_POST['signup'])) {
    $name = $_POST['Name'];
    $email = $_POST['Email'];
    $password = $_POST['Password'];
    $mobno = $_POST['PhoneNumber'];
    $Personal_ID = $_POST['Personal_ID'];
    $Gender = $_POST['Gender'];
    $type = 'Student';

    $sql = "insert into LMS.user (Name,Type,Gender,Personal_ID,EmailId,MobNo,Password) values ('$name','$type','$Gender','$Personal_ID','$email','$mobno','$password')";

    if ($conn->query($sql) === TRUE) {
        echo "<script type='text/javascript'>alert('Registration Successful')</script>";
    } else {
        //echo "Error: " . $sql . "<br>" . $conn->error;
        echo "<script type='text/javascript'>alert('User Exists')</script>";
    }
}

?>

</body>
<!-- //Body -->

</html>