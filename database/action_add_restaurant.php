<?php
      include_once(dirname(__FILE__) . '/connection.php');
      include_once(dirname(__FILE__) . '/restaurants_database.php');
      include_once(dirname(__FILE__) . '/users_database.php');

      session_start();

      $rest_id = registerRestaurant($_POST['name'], $_POST['description'], $_POST['location'], $_POST['price']);
      $user_id = getLoginID($_SESSION['username']);

      setRestaurantOwner($rest_id,$user_id);

      header('Location: ../restaurantProfile.php?id=' .  $rest_id);
?>