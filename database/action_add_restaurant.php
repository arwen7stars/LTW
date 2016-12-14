<?php
      include_once(dirname(__FILE__) . '/connection.php');
      include_once(dirname(__FILE__) . '/restaurants_database.php');
      include_once(dirname(__FILE__) . '/images_database.php');
      include_once(dirname(__FILE__) . '/users_database.php');

      session_start();

      if(!isset($_POST['name']) || empty($_POST['name'])
        || !isset($_POST['description']) || empty($_POST['description']))
        die('Required attributes not given');

      $rest_id = registerRestaurant($_POST['name'], $_POST['description'], $_POST['location'], $_POST['price']);
      $user_id = getLoginID($_SESSION['username']);
      setRestaurantOwner($rest_id,$user_id);

      $name_file = $_FILES['image']['name'];
      $destination = '../resources/' . $name_file;
      $tmp_file = $_FILES['image']['tmp_name'];

      move_uploaded_file($tmp_file, $destination);

      $rest_name = $_POST['name'];
      $description = "A image of $rest_name";

      $image_id = addImageRestaurant($destination, $description, $rest_id);


      header('Location: ../restaurantProfile.php?id=' .  $rest_id);
?>