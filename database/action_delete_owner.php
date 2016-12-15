<?php
      include_once(dirname(__FILE__) . '/connection.php');
      include_once(dirname(__FILE__) . '/images_database.php');
      include_once(dirname(__FILE__) . '/restaurants_database.php');
      session_start();

      $rest_id = $_GET['id'];
      $user_id = $_GET['user_id'];

      deleteRestaurantOwner($rest_id, $user_id);

      $referer = '../edit_restaurant.php?id=' . $rest_id;

      header('Location: ' . $referer);
?>