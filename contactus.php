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
<header class="header" id="header">
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
                        <li class="scroll "><a href="rent.php">Reserve a car</a></li>
                       
                        <li class="scroll"><a href="logout.php?logout">Sign Out</a></li>   

                    </ul>
                </div>
                <div class="container">

				<?php
				 ob_start();
				 session_start();

				 require_once 'dbconnect.php';

				 // if session is not set this will redirect to login page
				 if( !isset($_SESSION['user']) ) {
				  header("Location: index.php");
				  exit;
				 }

				 // select logged-in users detail
				 $res=mysqli_query($conn, "SELECT * FROM users WHERE userId=".$_SESSION['user']);
				 $userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
				?>

				           <h2 id="text">Wellcome <?php echo $userRow['userName'] ?> </h2>
				 
		</div>
	</header>	

    <body>
        
<h1>Elegant Contact Form</h1>
<form class="cf">
  <div class="half left cf">
    <input type="text" id="input-name" placeholder="Name">
    <input type="email" id="input-email" placeholder="Email address">
    <input type="text" id="input-subject" placeholder="Subject">
  </div>
  <div class="half right cf">
    <textarea name="message" type="text" id="input-message" placeholder="Message"></textarea>
  </div>  
  <input type="submit" value="Submit" id="input-submit">
</form>

        
    </body>
    </html>