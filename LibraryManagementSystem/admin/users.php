<?php
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
                </div><!-- /.nav-collapse -->
            </div>
        </div><!-- /navbar-inner -->
    </div><!-- /navbar -->

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
                    </div><!--/.sidebar-->
                </div><!--/.span3-->

                <div class="span9">

                    <form class="form-horizontal row-fluid" action="users.php" method="post">
                        <div class="control-group">
                            <label class="control-label" for="Search"><b>Search:</b></label>

                            <div class="controls">
                                <input type="text" id="title" name="title" placeholder="Enter Name/Personal ID"
                                       class="span8" required>
                                <button type="submit" name="submit" class="btn">Search</button>
                            </div>
                        </div>
                    </form>

                    <br>
                    <?php
                    if (isset($_POST['submit'])) {
                        $s = $_POST['title'];
                        $sql = "select * from LMS.user where (Personal_ID='$s' or Name like '%$s%') and Personal_ID<>'ADMIN'";
                    } else
                        $sql = "select * from LMS.user where Personal_ID<>'ADMIN'";

                    $result = $conn->query($sql);
                    $rowcount = mysqli_num_rows($result);

                    if (!($rowcount))
                        echo "<br><center><h2><b><i>No Results</i></b></h2></center>";
                    else {
                        ?>
                        <div class="module">
                            <table class="table" id="tables">
                                <thead>
                                <tr>
                                    <th>Personal ID</th>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>Type</th>
                                    <th>Email ID</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                        </div>
                        <?php

                        //$result=$conn->query($sql);
                        while ($row = $result->fetch_assoc()) {
                            $Personal_ID = $row['Personal_ID'];
                            $name = $row['Name'];
                            $gender = $row['Gender'];
                            $Type = $row['Type'];
                            $email = $row['EmailId'];
                            ?>
                            <tr>
                                <td><b><?php echo $Personal_ID ?></b></td>
                                <td><b><?php echo $name ?></b></td>
                                <td><b><?php echo $gender ?></b></td>
                                <td><b><?php echo $Type ?></b></td>
                                <td><b><?php echo $email ?></b></td>
                                <td>
                                    <center>
                                        <a href="userdetails.php?id=<?php echo $Personal_ID; ?>"
                                           class="btn btn-success">Details</a>
                                        <!--a href="remove_user.php?id=<?php echo $Personal_ID; ?>" class="btn btn-danger">Remove</a-->
                                    </center>
                                </td>
                            </tr>
                        <?php }
                    } ?>
                    </tbody>
                    </table>
                </div><!--/.span9-->
            </div>
        </div><!--/.container-->
    </div>
    </div><!--/.wrapper-->
    <div class="footer">
        <div class="container">
            <b class="copyright">&copy; 2022 Ohara Library Management System. </b>All rights reserved.
        </div>
    </div>

    <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
    <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="scripts/common.js" type="text/javascript"></script>

    </body>
    </html>

<?php } else {
    echo "<script type='text/javascript'>alert('Access Denied!!!')</script>";
} ?>