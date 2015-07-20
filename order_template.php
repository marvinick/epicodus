<?php
    $recipient = "Ed";
    $downtown_address = "208 SW 5th Ave #105, Portland, OR 97204";
    $northwest_address = "1978 19th Ave, Portland, OR 97209";
    $south_address = "1493 SW 2nd Ave, Portland, OR 97201";
    $downtown_order = "300 Cups";
    $northwest_order = "500 Cups";
    $south_order = "1000 Cups";
?>
<!DOCTYPE html>
<html>
<head>
    <title>Order Form</title>
</head>
<body>
    <p>Hi <?php echo $recipient; ?>, </p>
    <p>Just making my weekly order. Details are below.</p>
    <p><?php echo $downtown_order; ?></p>
    <p><?php echo $downtown_address; ?></p>
    <p><?php echo $northwest_order; ?></p>
    <p><?php echo $northwest_address; ?></p>
    <p><?php echo $south_order; ?></p>
    <p><?php echo $south_address; ?></p>
    <p>Thanks,</p>
    <p>Diane</p>
</body>
</html>