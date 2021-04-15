<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
error_reporting(0);

if(isset($_POST['submit']))
  {
    $contactno=$_SESSION['contactno'];
    $email=$_SESSION['email'];
    $password=md5($_POST['newpassword']);

        $query=mysqli_query($con,"update tbladmin set Password='$password'  where  Email='$email' && MobileNumber='$contactno' ");
   if($query)
   {
echo "<script>alert('Password successfully changed');</script>";
header('location:index.php');
session_destroy();

   }
  
  }
  ?>
<!doctype html>
<html class="no-js" lang="en">
<head>
   
    <title>Reset Password-Cyber Cafe</title>
  
    <link rel="apple-touch-icon" href="apple-icon.png">
  


    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">

    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

<script type="text/javascript">
function checkpass()
{
if(document.changepassword.newpassword.value!=document.changepassword.confirmpassword.value)
{
alert('New Password and Confirm Password field does not match');
document.changepassword.confirmpassword.focus();
return false;
}
return true;
} 

</script>

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
.done_button {
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
    background-repeat:   no-repeat; 
     background-size:  cover; 
   }
</style>

<body class="bg-dark" style=" background-image: url('images/reset.jpg');">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
				<p class="a" style="color: Black" class="a">Cyber Cafe Management System </p>
				<p class="a" style="color: black" class="a">Reset-Password </p>
				<hr  color="red"/>
                </div>
                <div class="login-form">
                    <form action="" method="post" name="changepassword" onsubmit="return checkpass();">
                        <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
                        <div class="form-group">
						<p label class="b">New Password</label>
                                
                                <input type="password" class="form-control" placeholder="Enter New Password" name="newpassword" required="">
                        </div>
                            <div class="form-group">
                                <p label class="b">Confirm Your Password</label>
                                <input type="password" class="form-control" placeholder="Confirm Your Password" name="confirmpassword" required="">
                        </div>
                                
                                <button type="submit" class="done_button" name="submit">Done</button>
                                
                            
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
