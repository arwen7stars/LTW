<?php
      include_once(dirname(__FILE__) . '/connection.php');
      include_once(dirname(__FILE__) . '/restaurants_database.php');
      include_once(dirname(__FILE__) . '/images_database.php');
      include_once(dirname(__FILE__) . '/users_database.php');

      session_start();

      $rest_id = $_GET['id'];

      deleteRestaurant($rest_id);

     $referer = '../my_restaurants.php';

      header('Location: ' . $referer);
?>