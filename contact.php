<?php
$Send='';
$Send1='';

if(isset($_POST['Submit'])){
 
      include('Config.php');
      $full_name =  $_POST['full_name'];
      $email =  $_POST['email'];
      $subject =  $_POST['subject'];
      $message =  $_POST['message'];
      
        $sql = "INSERT INTO `message`(`full_name`, `email`, `subject`, `message`) VALUES ('$full_name','$email','$subject','".mysqli_real_escape_string($db,$message)."')";

          if ($db->query($sql) == TRUE) {
          
            $Send="Message Send Successful!";
            } 
        else {
                     $Send1="Unsuccessful! <br> Something wrong with your input. ";
            }
            
    
      
    $db->close();
      

    }

?> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LifeBike-Contact</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">
	<link rel="icon" href="images/LIFEBIKE4.png" type="image/png">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
  	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	        <a class="navbar-brand" href="index.html"><img class="logo "src="images/LIFEBIKE4.png" alt="">Life Bike</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item "><a href="index.html" class="nav-link">Home</a></li>
						<li class="nav-item "><a href="about.html" class="nav-link">About</a></li>
	        
	          <li class="nav-item"><a href="pricing.html" class="nav-link">Service</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item active"><a href="contact.php" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
		  </div>
	  </nav>
    <!-- END nav -->


    <section class="hero-wrap js-fullheight">
      <div class="overlay" style="background-image: url(images/bg5.jpg);" data-stellar-background-ratio="0.5"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end">
          <div class="col-md-12 text-center ftco-animate">
            <h1 class="mb-3 bread" style="background-image: url(images/bg10.jpg);" data-stellar-background-ratio="0.5">Contact Us</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home.</a></span> <span>Contact</span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section contact-section" >
      <div class="container mt-5">
        <div class="row block-9">
					<div class="col-md-4 text-md-left contact-info ftco-animate" style="border-style: ridge; border-radius: 20px;">
						<div class="row">
							<div class="col-md-12 mb-4">
	              <h2 class="h5 font-weight-bold">Contact Information</h2>
	            </div>
	            <div class="col-md-12 mb-3">
	              <p><span>Address:</span> Bashundhara Residential Area, Dhaka, Bangladesh.</p>
	            </div>
	            <div class="col-md-12 mb-3">
	              <p><span>Phone:</span> <a href="tel://01817098032">+88 01817-098032</a></p>
	            </div>
	            <div class="col-md-12 mb-3">
	              <p><span>Email:</span> <a href="mailto:info@lifebike.com">info@lifebike.com</a></p>
	            </div>
	            <div class="col-md-12 mb-3">
	              <p><span>Website:</span> <a href="#">lifebike.com</a></p>
	            </div>
						</div>
					</div>
					<div class="col-md-1"></div>
          <div class="col-md-6 ftco-animate" style="border-style: ridge; border-radius: 20px;">
            <center><h3 style="color: green"><b><?php echo $Send;   ?></b></h3></center>
                <center><h3 style="color: red"><b><?php echo $Send1;   ?></b></h3></center>
            <form action="contact.php" class="contact-form" method="POST" >
            	<div class="row">
            		<div class="col-md-6">
	                <div class="form-group">
	                  <input type="text" class="form-control" placeholder="Your Name" name="full_name" required>
	                </div>
                </div>
                <div class="col-md-6">
	                <div class="form-group">
	                  <input type="email" class="form-control" placeholder="Your Email" name="email" required >
	                </div>
	                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject" name="subject" required >
              </div>
              <div class="form-group">
                <textarea id="" cols="30" rows="7" class="form-control" placeholder="Message" name="message" required ></textarea>
              </div>
              <div class="form-group">
                <button class="btn btn--radius-2 btn--blue-2" type="submit" name="Submit">Send Message</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <div class="map">
     <center> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.0983083934057!2d90.42334931442734!3d23.815102984557612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c64c103a8093%3A0xd660a4f50365294a!2sNorth+South+University!5e0!3m2!1sen!2sbd!4v1566579896304!5m2!1sen!2sbd" width="95%" height="500" frameborder="5" style="border-style: ridge; border-radius: 20px;" allowfullscreen></iframe></center>
    </div>
    
   <footer class="ftco-footer ftco-section img" >
        <div class="overlay"></div>
        <div class="container">
            <div class="row mb-5">
                <div class="col-lg-5 col-md-6 mb-5 mb-md-5">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">About Us</h2>
                        <p>Bike based emergency ambulace service. By avoiding the traffic jam we try to reah you in the near by hospital in a short time ever.</p>
                        <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                            <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                    <div class="ftco-footer-widget mb-4 ml-md-4">
                        <h2 class="ftco-heading-2">Services</h2>
                        <ul class="list-unstyled">
                            <li><a href="pricing.html" class="py-2 d-block">Ambu-Bike</a></li>
                            <li><a href="pricing.html" class="py-2 d-block">First Aid</a></li>
                            <li><a href="pricing.html" class="py-2 d-block">Pharmacy</a></li>
                            <li><a href="pricing.html" class="py-2 d-block">Emergency 24x7</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Have a Questions?</h2>
                        <div class="block-23 mb-3">
                            <ul>
                                <li><span class="icon icon-map-marker"></span><span class="text">Bashundhara Residential Area, Dhaka, Bangladesh</span></li>
                                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+88 01817-098032</span></a></li>
                                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@lifebike.com</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved  by <a href="#" target="_blank"> Life Bike <i class="icon-heart" aria-hidden="true"></i></a>
 </p>
                </div>
            </div>
        </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>