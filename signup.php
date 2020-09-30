<?php
$Send='';
$Send1='';
function encrypt_password($password) {
    $salt1 = "qm&h*";
    $salt2 = "ez!@";
    return hash('sha256', $salt1.$password.$salt2);
}
if(isset($_POST['Submit'])){

    
  
      include('Config.php');
      $fname =  $_POST['f_name'];
      $lname =  $_POST['l_name'];
      $email =  $_POST['email'];
      $phone =  $_POST['phone'];
      $gender =  $_POST['gender'];
      $pass =  $_POST['password'];
      $conpass =  $_POST['con-password'];
      $hash = encrypt_password($_POST['password']);
      if ($pass == $conpass) {
          $sql = "INSERT INTO `user`(`first_name`,`last_name`, `email_address`, `password`, `drivers_license_id`,`hero`,`gender`) VALUES ('$fname','$lname','$email','$hash','$phone','1','$gender')";
          if ($db->query($sql) == TRUE) {
          
            $Send="SignUp Successful!";
            } 
        else {
                     $Send1="SignUp Unsuccessful! <br> Something wrong with your input. ";
            }
            
      }
      else{
        $Send1="Check your Password Again.";
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
    <title>Apply for Life Bike HERO</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link rel="icon" href="images/LIFEBIKE4.png" type="image/png">
    <!-- Main CSS-->
    <link href="css/signup.css" rel="stylesheet" media="all">
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
                    <h2 class="title">BE a Hero</h2>
                    <center><h4 style="color: white">Please fill in this form to create an account.</h4></center>
                <center><h3 style="color: green"><b><?php echo $Send;   ?></b></h3></center>
                <center><h3 style="color: red"><b><?php echo $Send1;   ?></b></h3></center>
                </div>
                <div class="card-body">
                    <form method="POST" action="signup.php">
                        <div class="form-row">
                            <div class="name">First name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="f_name" required placeholder="example: Riaz">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Last name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="l_name" required placeholder="example: Uddin">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="email" name="email" placeholder="example@email.com" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <input class="input--style-6" type="password" name="password" required placeholder="Minimum 8 digits">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Retype Password</div>
                            <div class="value">
                                <input class="input--style-6" type="password" name="con-password" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Phone Number</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="phone" placeholder="Ex: 01X12345678" pattern="[0]+[1]+[7/8/9/6/5/3]+[0-9]{8}" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Gender</div>
                            
                                <center><input  type="radio" name="gender" value="m">&nbsp;&nbsp; Male &nbsp;&nbsp;</center>
                                <center><input  type="radio" name="gender" value="f"> &nbsp;&nbsp;Female &nbsp;&nbsp;</center>
                                <center><input  type="radio" name="gender" value="o"> &nbsp;&nbsp;Other &nbsp;&nbsp;</center>
                            
                        </div>
                       
                        <div class="card-footer">
                    <button class="btn btn--radius-2 btn--blue-2" type="submit" name="Submit">Send</button>
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