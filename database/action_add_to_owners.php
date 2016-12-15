<?php
    include_once(dirname(__FILE__) . '/connection.php');
    include_once(dirname(__FILE__) . '/restaurants_database.php');
    include_once(dirname(__FILE__) . '/images_database.php');
    include_once(dirname(__FILE__) . '/users_database.php');

    session_start();

    $rest_id = $_GET['id'];

    $user_id = getLoginID($_SESSION['username']);

    setRestaurantOwner($rest_id, $user_id);

    $referer = '../restaurantProfile.php?id=' . $_POST['id'];

    header('Location: ' . $referer);
?>