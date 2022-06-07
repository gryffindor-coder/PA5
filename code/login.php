<!-- Damian Jordaan u20473509 -->

<?php include 'config.php';?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/global.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/form.css" type="text/css">

    <script type="text/javascript" src="src/validateUserData.js"></script>

    <title>Login</title>
</head>
<body>
    <?php include 'header.php';?>
	<br><br><br>
	<div id="SubBody">
        <form onsubmit="" style="align-self: left;" action="validate-login.php">
            <div class="DataObjectPageLeft row form">
                <h2>Login</h2>
            </div>
            <hr style="width: 570px; float: left;">
            <div class="DataObjectPageLeft row">
                <div class="col">
                    Email: <br><input style="width: 465px;" class="input" type="email" name="email" id="email" onkeyup="logIn()">
                </div>
            </div>
            <hr style="width: 570px; float: left;">
            <div class="DataObjectPageRight row">
                <div class="col">
                    Password: <br><input style="width: 465px;" class="input" type="password" name="password" id="password" onkeyup="logIn()">
                </div>
            </div>
            <hr style="width: 570px; float: left;">
            <div class="DataObjectPageLeft row">
                <div class="col">
                    <button class="input" type="submit" id="submit">Submit</button>
                </div>
                <div class="col">
                    <p id="error"></p>
                </div>
            </div>
            <hr style="width: 570px; float: left;">
            <div class="DataObjectPageLeft row">
                <div class="col">
                    <p style="margin-top: 2px; margin-bottom: 2px;"><a style="color: var(--highlight-color)" href="signup.php">Don't have an account, SignUp</a></p>
                </div>
            </div>
        </form>
	</div>
	<script type="text/javascript">
        initNavbar(Login_Page);
        logIn();

        function invalidLogin(){
            document.getElementById("error").innerHTML = "Invalid Login Credentials";
        }
    </script>
    <?php include 'footer.php';?>
</body>
</html>

<?php
    if(isset($_SESSION['InvalidLogin'])){
        unset($_SESSION['InvalidLogin']);
        echo '<script type="text/javascript">invalidLogin();</script>';
    }
?>