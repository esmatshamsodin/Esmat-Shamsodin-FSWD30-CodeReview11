
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CodeReview</title>
  <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.transitions.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">  
  <link href="css/magnific-popup.css" rel="stylesheet">  
  <link href="css/gallery-1.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">      
    <link rel="shortcut icon" href="images/ico/favicon.ico">

  
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mousescroll.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script> 
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
    
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script><!-- Gallery Filter -->
  <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script><!-- Gallery Popup -->
   
    <script src="js/custom-scripts.js"></script> 
</head>

<body id="home">
   <header id="header">
        <nav id="main-nav" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
          <i class="fa fa-car" aria-hidden="true"></i>
                    <div class="logoSection"> <a class="navbar-brand" href="index.html">Esmat  </a>
                      <span class="caption">Car Rental </span>
          </div>

           <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="#home">Home</a></li> 
                        <li class="scroll"><a href="login.php">LogIn</a></li>
                        <li class="scroll"><a href="register.php">SignUp</a></li>                       
                    </ul>
                </div>
        
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->


<?php
 ob_start();
 session_start();
 require_once 'dbconnect.php';

  // it will never let you open index(login) page if session is set
 if ( isset($_SESSION['user'])!="" ) {
  header("Location: home.php");
  exit;
 }

  $error = false;

 if( isset($_POST['btn-login']) ) {

  // prevent sql injections/ clear user invalid inputs
  $email = trim($_POST['email']);
  $email = strip_tags($email);
  $email = htmlspecialchars($email);

  $pass = trim($_POST['pass']);
  $pass = strip_tags($pass);
  $pass = htmlspecialchars($pass);

  // prevent sql injections / clear user invalid inputs

  if(empty($email)){
   $error = true;
   $emailError = "Please enter your email address.";
  } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
   $error = true;
   $emailError = "Please enter valid email address.";
  }

   if(empty($pass)){
   $error = true;
   $passError = "Please enter your password.";
  }

  // if there's no error, continue to login
  if (!$error) {
   $password = hash('sha256', $pass); // password hashing using SHA256
   $res=mysqli_query($conn, "SELECT userId, userName, userPass FROM users WHERE userEmail='$email'");
   $row=mysqli_fetch_array($res, MYSQLI_ASSOC);
   $count = mysqli_num_rows($res); // if uname/pass correct it returns must be 1 row

   if( $count == 1 && $row['userPass']==$password ) {
    $_SESSION['user'] = $row['userId'];
    header("Location: home.php");
   } else {
    $errMSG = "Incorrect Credentials, Try again...";
   }
  }
 }

?>

    <div class="container" >
      <div class="row">
        <div class="col-lg-12 col-sm-6 wow fadeInLeft delay-05s">
          <div class="login-list">
             <form class="text-center" method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off" >
              
             <h2>Sign In.</h2>
             <hr />
                <?php
                if ( isset($errMSG) ){
                echo $errMSG; ?>
                  <?php
                   }
                   ?>
             <input type="email" name="email" class="form-control" placeholder="Your Email" value="<?php echo $email; ?>" maxlength="40" />

             <span class="text-danger"><?php echo $emailError; ?></span>

             <input  type="password" name="pass" class="form-control" placeholder="Your Password" maxlength="15" />
       
            <span class="text-danger"><?php echo $passError; ?></span>
             <hr />

             <button class="btn btn-block btn-primary" class="btn btn-default" type="submit" name="btn-login">Sign In</button>

             <hr />
             <a class="btn btn-block btn-primary"  href="register.php">Sign Up Here...</a>
    </form>
    </div>
</div>
            
          </div>
        </div>

      </div>
    </div>
   

</body>
</html>

<?php ob_end_flush(); ?>

