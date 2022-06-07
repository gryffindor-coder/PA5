<?php
    include 'config.php';

    // if(isset($_SESSION["Email"]) && isset($_SESSION["UserName"]) && isset($_SESSION["APIKey"]) && isset($_SESSION["LogedIN"])){
    //     unset($_SESSION["Email"]);
    //     unset($_SESSION["UserName"]);
    //     unset($_SESSION["APIKey"]);
    //     unset($_SESSION["LogedIN"]);

    //     unset($_COOKIE["Email"]);
    //     unset($_COOKIE["UserName"]);
    //     unset($_COOKIE["APIKey"]);
    // }

    unset($_SESSION["Email"]);
    unset($_SESSION["UserName"]);
    unset($_SESSION["LogedIN"]);

    unset($_COOKIE["Email"]);
    unset($_COOKIE["UserName"]);

    header("Location: index.php");
    die;
?>