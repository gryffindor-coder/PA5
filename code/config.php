<?php
    //echo 'config new';
    session_start();

    include 'functions.php';
    include 'connection.php';

    // $conn = WheatlyDatabase::conn();
    $conn = null;

    $user_email = "";
    $key = "";
?>