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
        <title>Library Of Ohara</title>
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
                    <div class="module">
                        <div class="module-head">
                            <h3>Update Book Details</h3>
                        </div>
                        <div class="module-body">

                            <?php
                            $bookid = $_GET['id'];
                            $sql = "select * from LMS.book where Bookid='$bookid'";
                            $result = $conn->query($sql);
                            $row = $result->fetch_assoc();
                            $name = $row['Title'];
                            $Genre = $row['Genre'];
                            $year = $row['Year'];
                            $avail = $row['Availability'];

                            // $sqlg = "select Genre from LMS.genre where Bookid='$bookid'";
                            // $result=$conn->query($sqlg);
                            // $row=$result->fetch_assoc();
                            // $genre=$row['Genre'];
                            ?>

                            <br>
                            <form class="form-horizontal row-fluid"
                                  action="edit_book_details.php?id=<?php echo $bookid ?>" method="post">
                                <div class="control-group">
                                    <b>
                                        <label class="control-label" for="Title">Book Title:</label></b>
                                    <div class="controls">
                                        <input type="text" id="Title" name="Title" value="<?php echo $name ?>"
                                               class="span8" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <b>
                                        <label class="control-label" for="Genre">Genre:</label></b>
                                    <div class="controls">
                                        <select name="Genre" id="Genre">
                                            <option value="<?php echo $Genre ?>"><?php echo $Genre ?> </option>
                                            <option value="Action and Adventure">Action and Adventure</option>
                                            <option value="Detective and Mystery">Detective and Mystery</option>
                                            <option value="Fantasy">Fantasy</option>
                                            <option value="Historical Fiction">Historical Fiction</option>
                                            <option value="Horror">Horror</option>
                                            <option value="Memoir & Autobiography">Memoir & Autobiography</option>
                                            <option value="Novel">Novel</option>
                                            <option value="Psychological Fiction">Psychological Fiction</option>
                                            <option value="Romance">Romance</option>
                                            <option value="Sci-Fi">Science Fiction</option>
                                            <option value="True Crime">True Crime</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <b>
                                        <label class="control-label" for="Year">Year:</label></b>
                                    <div class="controls">
                                        <input type="text" id="Year" name="Year" value="<?php echo $year ?>"
                                               class="span8" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <b>
                                        <label class="control-label" for="Availability">Availability:</label></b>
                                    <div class="controls">
                                        <input type="text" id="Availability" name="Availability"
                                               value="<?php echo $avail ?>" class="span8" required>
                                    </div>
                                </div> 

                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" name="submit" class="btn">Update Details</button>
                                        <button type="remove" name="remove" class="btn">Remove Book</button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div><!--/.span9-->
            </div>
        </div><!--/.container-->
    </div><!--/.wrapper-->

    <div class="footer">
        <div class="container">
            <b class="copyright">&copy; 2022 Ohara Library Management System </b>All rights reserved.
        </div>
    </div>

    <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
    <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="scripts/common.js" type="text/javascript"></script>

    <?php
    if (isset($_POST['submit'])) {
        $bookid = $_GET['id'];
        $name = $_POST['Title'];
        $Genre = $_POST['Genre'];
        $year = $_POST['Year'];
        $avail = $_POST['Availability'];
        // $genre=$_POST['Genre'];

        $sql1 = "update LMS.book set Title='$name', Genre='$Genre', Year='$year', Availability='$avail' where BookId='$bookid'";
        // $sql2="update LMS.genre set Genre='$genre' where BookId='$bookid'";

        if ($conn->query($sql1) === TRUE) {
            echo "<script type='text/javascript'>alert('Success')</script>";
            header("Refresh:0.01; url=book.php", true, 303);
        } else {
            //echo $conn->error;
            echo "<script type='text/javascript'>alert('Error')</script>";
        }
    } else  if (isset($_POST['remove'])) {
        $sql2 = "DELETE FROM LMS.author WHERE author.BookId='$bookid'";
        $sql3 = "DELETE FROM LMS.book WHERE book.BookId='$bookid'";

        if ($conn->query($sql2) && $conn->query($sql3) === TRUE) {
            echo "<script type='text/javascript'>alert('Success')</script>";
            header("Refresh:0.01; url=book.php", true, 303);
        } else {
            //echo $conn->error;
            echo "<script type='text/javascript'>alert('Error')</script>";
        }
    }
    ?>
    </body>
    </html>

<?php } else {
    echo "<script type='text/javascript'>alert('Access Denied!!!')</script>";
} ?>