<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['login']))
  {
    $adminuser=$_POST['username'];
    $password=md5($_POST['password']);
    $query=mysqli_query($con,"select ID from tbladmin where  UserName='$adminuser' && Password='$password' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['ccmsaid']=$ret['ID'];
     header('location:dashboard.php');
    }
    else{
    $msg="Invalid Credentials....Provide Correct Credentials.  ";
    }
  }
  ?>
<!doctype html>
<html class="no-js" lang="en">
<head>
    
    <title>Admin Login-Cyber Cafe</title>
    
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
.sgn_button {
    background-color: #4CAF50;
    color: white;
	margin-top:10px;
    padding:10px;
    width: 100%;
	font-family: serif;
	font-size:20px;
	font-weight: bold;
	 text-align: center;
}
body {
    background-image: url("images/home.png");        
    background-repeat:   no-repeat; 
     background-size:  cover; 
   }
</style>

<body class="bg-dark" style=" background-image: url('images/admin.jpg');">

	<div class="sufee-login d-flex align-content-center flex-wrap" >
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <p class="a" style="color: #E0FAFC " class="a">Cyber Cafe Management System </p>
                    <hr  color="red"/>
                </div>
                <div class="login-form">
                    <form action="" method="post" name="login">
                        <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
                        <div class="form-group">
						
                            <p label class="b">User Name</label>
                            <input type="text" class="form-control" placeholder="Enter User Name" required="true" name="username">
                        </div>
                            <div class="form-group">
                                <p label class="b">Password</label>
                                <input type="password" class="form-control" placeholder="Enter Password" name="password" required="true">
                        </div>
                                <div class="checkbox">
                                    <label class="pull-right">
                                <a href="forgot-password.php" style="color:black;font-family: serif;"><b>Forgot Password???</b></a>
                            </label>
								<br>
                                </div>
                                <button type="submit" class="sgn_button" name="login">Sign in</button>
                                
                            
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
