<?php
    session_start();

    if(!isset($_SESSION['UserName'])) $_SESSION['UserName'] = "";
    if(!isset($_SESSION['LoggedIN'])) $_SESSION['LoggedIN'] = false;
    if(!isset($_SESSION['Email'])) $_SESSION['host'] = "";
    if(!isset($_SESSION['Type'])) $_SESSION['Type'] = "";

    include 'functions.php';
    include 'connection.php';
    $conn = WheatlyDatabase::conn();

    $user_email = "";
    $key = "";
?>