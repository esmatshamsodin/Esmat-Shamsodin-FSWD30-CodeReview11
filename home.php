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
    </div>
</nav>
	</header>	
				
           
		<!--header-start-->
		


	
			<?php
$servername = "localhost";
$username   = "root";
$password   = ""; 
$dbname     = "cr11_esmat_shamsodin_php_car_rental";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error() . "\n");
}
$sql = "SELECT * FROM media";
	
	$result = mysqli_query($conn, $sql);
?>
		<!--main-section-start-->


</section>
<!--main content-->
 <section id="services" >
        <div class="container">

            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Our Services</h2>
                <p class="text-center wow fadeInDown">You can easily reach our services by clicking on the picture.</p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                        <div class="media service-box">
                              <a href="listofoffices.php"><img  class="hexagon" src="our.jpg" width="100%" alt=""></a>
                            <div class="media-body">
                                <h4 class="media-heading">List of our Offices</h4>
                                
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                        <div class="media service-box">
                             <a href="listofcars.php"><img  class="hexagon" src="lc.jpg" width="100%" alt=""></a>
                            <div class="media-body">
                                <h4 class="media-heading">List Of Our Cars</h4>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                        <div class="media service-box">
                             <a href="oursp.php"><img  class="hexagon" src="sp.png" width="100%" alt=""></a>
                            <div class="media-body">
                                <h4 class="media-heading">Our Special offers</h4>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->
                    
                    </div><!--/.col-md-4-->
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                        <div class="media service-box">
                             <img  class="hexagon" src="ct.png" width="100%" height="100%" alt="">
                            <div class="media-body">
                                <h4 class="media-heading">Our Customers</h4>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">
                        <div class="media service-box"> 
                               <img  class="hexagon" src="cn.jpg" width="100%" alt="">
                            <div class="media-body">
                                <h4 class="media-heading">Contact Us</h4>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

            </div><!--/.row-->    
        </div><!--/.container-->
    </section><!--/#services-->

</body>
</html>

<?php ob_end_flush(); ?>

