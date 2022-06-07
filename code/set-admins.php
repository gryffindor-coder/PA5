<?php include 'config.php';?>

<!DOCTYPE html>
<html lan="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/global.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title>Set Admins</title>
</head>
<body>

<?php
    include('header.php');

    if (!isset($conn))
        die('Database not initialized');

    $stmt = $conn->db->prepareStatement("UPDATE USER SET type = 'default';");
    $stmt->execute();

    $emails = $conn->getAllUserEmails();

    $hasAdmin = false;
    $sql = "UPDATE USER SET type = 'admin' WHERE ";
    foreach ($emails as $email) {
        if ($_GET[str_replace('.', '_', $email)] === "on") {
            $hasAdmin = true;
            $sql = $sql . "email = '" . $email . "' ";
        }
    }

    if ($hasAdmin) {
        $stmt = $conn->db->prepareStatement($sql);
        if (!$stmt->execute())
            die('Fatal error!');
    }

    header('Location: manage-users.php');
?>

<?php include('footer.php'); ?>

</body>
</html>
