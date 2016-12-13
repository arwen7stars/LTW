<?php
      include_once('connection.php'); 
      include_once('restaurants_database.php');
      include_once('users_database.php');

      session_start();

      $rest_id = registerRestaurant($_POST['name'], $_POST['description'], $_POST['location'], $_POST['price']);
      $user_id = getLoginID($_SESSION['username']);

      setRestaurantOwner($rest_id,$user_id);

      header('Location: ../restaurantProfile.php?id=' .  $rest_id);
?>