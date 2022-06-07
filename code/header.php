<script type="text/javascript" src="src/header.js"></script>
<link rel="stylesheet" href="css/navBar.css" type="text/css">
<nav class="mainNavbar">
    <a id="NavbarIndex" class="mainPage" href="index.php">Home</a>

    <a id="NavbarSignup" href="signup.php">Signup</a>
    <a id="NavbarLogin" href="login.php">Login</a>
    <a id="NavbarLogout" href="logout.php">Logout</a>

    <!-- <a id="NavbarUser" href="user.php">User</a> -->

    <button id="NavbarMoreOptions" onclick="overrideRAWGKey()">:</button>
    <button id="NavbarHelp" onclick="helpPrompt()">?</button>
</nav>

<?php
    function init_login_h(){
        echo '<script type="text/javascript">initNavbarLogin(' . '"'.$_SESSION["Email"].'"' . ',' . '"'.$_SESSION["UserName"].'"' . ',' . ''.$_SESSION["LogedIN"].'' . ');</script>';
    }

    function logedIn(){
        echo '<script type="text/javascript">console.log("Login Check Header");</script>';
        if(isset($_SESSION["Email"]) && isset($_SESSION["UserName"]) && isset($_SESSION["APIKey"]) && isset($_SESSION["LogedIN"])){
            echo '<script type="text/javascript">console.log("Session Set Header");</script>';
            if($_SESSION["LogedIN"]){
                echo '<script type="text/javascript">console.log("Loged In Header");</script>';
                init_login_h();
            }
        }
    }

    logedIn();
?>