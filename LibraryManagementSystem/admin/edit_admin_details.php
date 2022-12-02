<?php
ob_start();
require('dbconn.php');
?>

<?php
if ($_SESSION['Personal_ID']) {
    ?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Library of Ohara</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
              rel='stylesheet'>
    </head>
    <body>
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                    <i class="icon-reorder shaded"></i></a><a class="brand" href="index.php">Library of Ohara </a>
                <div class="nav-collapse collapse navbar-inverse-collapse">
                    <ul class="nav pull-right">
                        <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="images/user.png" class="nav-avatar"/>
                                <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="index.php">Your Profile</a></li>
                                <!--li><a href="#">Edit Profile</a></li>
                                <li><a href="#">Account Settings</a></li-->
                                <li class="divider"></li>
                                <li><a href="logout.php">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.nav-collapse -->
            </div>
        </div>
        <!-- /navbar-inner -->
    </div>
    <!-- /navbar -->
    <div class="wrapper">
        <div class="container">
            <div class="row">
                <div class="span3">
                    <div class="sidebar">
                        <ul class="widget widget-menu unstyled">
                            <li class="active"><a href="index.php"><i class="menu-icon icon-home"></i>Home
                                </a></li>
                            <li><a href="message.php"><i class="menu-icon icon-inbox"></i>Messages</a>
                            </li>
                            <li><a href="users.php"><i class="menu-icon icon-user"></i>Manage Clients </a>
                            </li>
                            <li><a href="book.php"><i class="menu-icon icon-book"></i>All Books </a></li>
                            <li><a href="addbook.php"><i class="menu-icon icon-edit"></i>Add Books </a></li>
                            <li><a href="requests.php"><i class="menu-icon icon-tasks"></i>Issue/Return Requests </a>
                            </li>
                            <li><a href="recommendations.php"><i class="menu-icon icon-list"></i>Book Recommendations
                                </a></li>
                            <li><a href="current.php"><i class="menu-icon icon-list"></i>Currently Issued Books </a>
                            </li>
                        </ul>
                        <ul class="widget widget-menu unstyled">
                            <li><a href="logout.php"><i class="menu-icon icon-signout"></i>Logout </a></li>
                        </ul>
                    </div>
                    <!--/.sidebar-->
                </div>
                <!--/.span3-->

                <div class="span9">
                    <div class="module">
                        <div class="module-head">
                            <h3>Update Details</h3>
                        </div>
                        <div class="module-body">

                            <?php
                            $Personal_ID = $_SESSION['Personal_ID'];
                            $sql = "select * from LMS.user where Personal_ID='$Personal_ID'";
                            $result = $conn->query($sql);
                            $row = $result->fetch_assoc();

                            $name = $row['Name'];
                            $email = $row['EmailId'];
                            $mobno = $row['MobNo'];
                            $pswd = $row['Password'];
                            ?>

                            <form class="form-horizontal row-fluid"
                                  action="edit_admin_details.php?id=<?php echo $Personal_ID ?>" method="post">

                                <div class="control-group">
                                    <label class="control-label" for="Name"><b>Name:</b></label>
                                    <div class="controls">
                                        <input type="text" id="Name" name="Name" value="<?php echo $name ?>"
                                               class="span8" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="EmailId"><b>Email Id:</b></label>
                                    <div class="controls">
                                        <input type="text" id="EmailId" name="EmailId" value="<?php echo $email ?>"
                                               class="span8" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="MobNo"><b>Mobile Number:</b></label>
                                    <div class="controls">
                                        <input type="text" id="MobNo" name="MobNo" value="<?php echo $mobno ?>"
                                               class="span8" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="Password"><b>New Password:</b></label>
                                    <div class="controls">
                                        <input type="password" id="Password" name="Password" value="<?php echo $pswd ?>"
                                               class="span8" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" name="submit" class="btn-primary">
                                            <center>Update Details</center>
                                        </button>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>
                </div>

                <!--/.span9-->
            </div>
        </div>
        <!--/.container-->
    </div>
    <div class="footer">
        <div class="container">
            <b class="copyright">&copy; 2022 Ohara Library Management System. </b>All rights reserved.
        </div>
    </div>

    <!--/.wrapper-->
    <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
    <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="scripts/common.js" type="text/javascript"></script>

    <?php
    if (isset($_POST['submit'])) {
        $Personal_ID = $_GET['id'];
        $name = $_POST['Name'];
        $email = $_POST['EmailId'];
        $mobno = $_POST['MobNo'];
        $pswd = $_POST['Password'];

        $sql1 = "update LMS.user set Name='$name', EmailId='$email', MobNo='$mobno', Password='$pswd' where Personal_ID='$Personal_ID'";


        if ($conn->query($sql1) === TRUE) {
            echo "<script type='text/javascript'>alert('Success')</script>";
            header("Refresh:0.01; url=index.php", true, 303);
        } else {//echo $conn->error;
            echo "<script type='text/javascript'>alert('Error')</script>";
        }
    }
    ?>

    </body>

    </html>


<?php } else {
    echo "<script type='text/javascript'>alert('Access Denied!!!')</script>";
} ?>