<?php
$Send='';
$Send1='';

if(isset($_POST['Submit'])){
 
      include('Config.php');
      $full_name =  $_POST['full_name'];
      $comment =  $_POST['comment'];
      
        $sql = "INSERT INTO `feedback`(`full_name`, `comment`) VALUES ('".mysqli_real_escape_string($db,$full_name)."','".mysqli_real_escape_string($db,$comment)."')";

          if ($db->query($sql) == TRUE) {
          
            $Send="<img src='images/thanks2.gif'>";

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
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Feedback</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link rel="icon" href="images/LIFEBIKE4.png" type="image/png">
    <!-- Main CSS-->
    <link href="css/signup.css" rel="stylesheet" media="all">
    <link rel="icon" href="images/LIFEBIKE4.png" type="image/png">
</head>

<body>
    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6"><div class="signup">
  <a class="effect1" href="index.html">
    Go Home!
    <span class="bg"></span>
  </a>
</div> <br><br><br>
                <div class="card-heading">
                    <center><h3 style="color: green"><b><?php echo $Send;   ?></b></h3></center>
                <center><h3 style="color: red"><b><?php echo $Send1;   ?></b></h3></center>
                    <h2 class="title">Please Give Your Feedback</h2>
                    
                </div>
                <div class="card-body">
                    <form method="POST" action="feedback.php">
                        <div class="form-row">
                            <div class="name">Full name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="full_name" required>
                            </div>
                        </div>
                       
                        
                       <div class="form-row">
                            <div class="name">Your Comment</div>
                            <div class="value">
                                <div class="input-group">
                                    <textarea class="textarea--style-6" name="comment" placeholder="Write Somthing about our Services or about us." required></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                    <button class="btn btn--radius-2 btn--blue-2" type="submit" name="Submit">Submit</button>
                </div>
                    </form>
                </div>
                
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->