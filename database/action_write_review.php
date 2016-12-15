<?php
      include_once(dirname(__FILE__) . '/connection.php');
      include_once(dirname(__FILE__) . '/restaurants_database.php');
      include_once(dirname(__FILE__) . '/users_database.php');
      include_once(dirname(__FILE__) . '/reviews_database.php');

      session_start();

      if (!strlen(trim($_POST['body']))){
          $body = null;
      } else {
          $body = $_POST['body'];
      }

      if(empty($_POST['title'])){
          $title = null;
      } else {
          $title = $_POST['title'];
      }

      if (!strlen(trim($_POST['tldr']))){
          $tldr = null;
      } else {
          $tldr = $_POST['tldr'];
      }

      $user_id = getLoginID($_SESSION['username']);

      reviewRestaurant($_POST['score'], $title, $tldr, $body, $user_id, $_POST['id']);
	
      $referer = '../restaurantProfile.php?id=' . $_POST['id'];

      header('Location: ' . $referer);
?>