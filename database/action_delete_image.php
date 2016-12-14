<?php
      include_once(dirname(__FILE__) . '/connection.php');
      include_once(dirname(__FILE__) . '/images_database.php');

      session_start();

      $rest_id = $_GET['rest_id'];
      $img_id = $_GET['img_id'];

      deleteImageRestaurant($img_id);

      $referer = '../edit_restaurant.php?id=' . $rest_id;

      header('Location: ' . $referer);
?>