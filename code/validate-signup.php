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
    <title>Validate</title>
</head>
<body>
<?php
    function isValidEmail($email){
        //echo $email;
        $validEmailExp = '/^[A-Za-z0-9._%+-]{1,64}@(?:[A-Za-z0-9-]{1,63}\.){1,125}[A-Za-z]{2,63}/';
        return (preg_match($validEmailExp, $email) === 1);
    }
    
    function isValidPassword($password){
        //echo $password;
        $validPasswordExp = '/(?=(((\w)*([A-Z])+(\w)*(\W)+(\w)*([0-9])+)|((\w)*(\W)+(\w)*([0-9])(\w)*([A-Z])+)|((\w)*([0-9])+(\w)*([A-Z])+(\w)*(\W)+)|((\w)*([A-Z])+(\w)*([0-9])+(\w)*(\W)+)|((\w)*([0-9])+(\w)*(\W)+(\w)*([A-Z])+)|((\w)*(\W)+(\w)*([A-Z])+(\w)*([0-9])+)))(?=.{8,})/';
        return (preg_match($validPasswordExp, $password) === 1);
    }
    
    function isValidInput($input){
        //echo $input;
        $validInputExp = '/.{1,}/';
        return (preg_match($validInputExp, $input) === 1);
    }

    $fname = $_GET["fname"];
    $lname = $_GET["lname"];
    $uname = $_GET["uname"];
    $email = $_GET["email"];
    $password = $_GET["password"];

    $fnb = isValidInput($fname);
    $lnb = isValidInput($lname);
    $unb = isValidInput($uname);
    $emb = isValidEmail($email);
    $pwb = isValidPassword($password);

    if($fnb && $lnb && $unb && $emb && $pwb){
        include 'header.php';
        //
        signup($fname, $lname, $uname, $email, $password);
        include 'footer.php';
    }else{
        //echo "Invalid";
        //include 'signup.php';
        header("Location: signup.php");
        exit();
    }

    function signup($fname, $lname, $uname, $email, $password){
        global $conn;
        $sU = $conn->insertUser($fname, $lname, $uname, $email, $password);
        if($sU === true){
            if($conn->userLogin($email, $password)){
                signupComplete($uname);
                init_login();
            }else{
                die("Fatal Error.");
            }
        }else{
            signupFail($sU);
        }
    }

    function signupComplete($uname){
        echo '<br><br><br><h1>Singup Complete.</h1>';
        echo 'Welcome ';
        echo $uname;
        echo '<script type="text/javascript">initNavbar("");</script>';
    }
    function signupFail($error){
        echo '<br><br><br><h1>Singup Failed:</h1>';
        echo $error;
        echo '<script type="text/javascript">initNavbar("");</script>';
    }

    function init_login(){
        echo '<script type="text/javascript">initNavbarLogin(' . '"'.$_SESSION["Email"].'"' . ',' . '"'.$_SESSION["UserName"].'"' . ',' . ''.$_SESSION["LogedIN"].'' . ');</script>';
    }
?>   
</body>
</html>