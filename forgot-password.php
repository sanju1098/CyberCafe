<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['submit']))
  {
    $contactno=$_POST['contactno'];
    $email=$_POST['email'];

        $query=mysqli_query($con,"select ID from tbladmin where  Email='$email' and MobileNumber='$contactno' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['contactno']=$contactno;
      $_SESSION['email']=$email;
     header('location:resetpassword.php');
    }
    else{
      $msg="Invalid Details. Please try again.";
    }
  }
  ?>
<!doctype html>
<html class="no-js" lang="en">
<head>
    
    <title>Forgot Password-Cyber Cafe</title>
  

    <link rel="apple-touch-icon" href="apple-icon.png">
   


    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">

    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>



</head>

<style>
p.a {
  font-family: cursive;
  font-size: 220%;
}
p.b {
  font-family: serif;
  font-size: 150%;
  color: black;
}
.reg_button {
    background-color: skyblue;
    color: black;
	margin-top:10px;
    padding:10px;
    width: 100%;
	font-family: serif;
	font-size:20px;
	font-weight: bold;
	 text-align: center;

}
body {
    background-repeat:   no-repeat; 
     background-size:  cover; 
   }
</style>

<body class="bg-dark" style=" background-image: url('images/pwd.jpg');">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                      <p class="a" style="color: black" class="a">Cyber Cafe Management System </p>
                    <hr  color="red"/>
                </div>
                <div class="login-form">
                    <form action="" method="post" name="submit">
                        <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
                        <div class="form-group">
                            <p label class="b">Email</label>
                            <input type="email" class="form-control" placeholder="Enter Email" required="" name="email">
                        </div>
                            <div class="form-group">
                                <p label class="b">Mobile No.</label>
                                <input type="text" class="form-control" placeholder="Enter Mobile Number" name="contactno" required="">
                        </div>
                                <button type="submit" class="reg_button" name="submit">Reset</button>
                                
                            
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>


</body>

</html>
