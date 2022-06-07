<?php include('config.php'); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/global.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/form.css" type="text/css">

    <title>Manage Users</title>
</head>

<body>
<?php include('header.php'); ?>
<br><br><br>

<div id="SubBody">
    <form onsubmit="" action="set-admins.php">
        <div class="DataObjectPageLeft row form">
            <h2>Manage Users</h2>
        </div>
        <div class="DataObjectPageLeft row form">
            Admin status<br><br>
            <?php
                if (!isset($conn))
                    die('Fatal error');

                $emails = $conn->getAllUserEmails();
                $admins = $conn->getAllAdmins();
                foreach ($emails as $email) {
                    $isAdmin = false;
                    foreach ($admins as $admin) {
                        if ($email === $admin)
                            $isAdmin = true;
                    }

                    if (!$isAdmin)
                        echo "$email <input type='checkbox' name='$email' id='$email'><br>";
                    else
                        echo "$email <input type='checkbox' name='$email' id='$email' checked='yes'><br>";
                }
            ?>
        </div>
        <div class="DataObjectPageLeft row">
            <div class="col">
                <button class="input" type="submit" id="submit">Submit</button>
            </div>
            <div class="col">
                <p id="error"></p>
            </div>
        </div>
    </form>
</div>
<?php include 'footer.php';?>
</body>

</html>