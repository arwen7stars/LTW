<?php
    include_once(dirname(__FILE__) . '/connection.php');
    include_once(dirname(__FILE__) . '/restaurants_database.php');
    include_once(dirname(__FILE__) . '/images_database.php');
    include_once(dirname(__FILE__) . '/users_database.php');

    session_start();

    $rest_id = $_GET['id'];

    if(!empty($_POST["name"])){
        updateNameRestaurant($rest_id, $_POST["name"]);
    }

    if(!empty($_POST['description'])){
        updateDescription($rest_id, $_POST['description']);
    }

    if(!empty($_POST['location'])){
        updateLocation($rest_id, $_POST['location']);
    }

    if( $_POST['price'] != -1 ){
        updatePrice($rest_id, $_POST['price']);
    }

    if (!empty($_FILES['image']['name'])){
        $name_file = $_FILES['image']['name'];
        $destination = '../resources/' . $name_file;
        $tmp_file = $_FILES['image']['tmp_name'];

        move_uploaded_file($tmp_file, $destination);

        $username = $_SESSION['username'];
        if(empty($_POST['image_title']))
            $description = null;
        else $description = $_POST['image_title'];

        $path = 'resources/' . $name_file;
        addImageRestaurant($path, $description, $rest_id);

    }

    if( $_POST['owner'] != -1 ){
      setRestaurantOwner($rest_id,$_POST['owner']);
    }

      $referer = '../edit_restaurant.php?id=' . $rest_id;

      header('Location: ' . $referer);
?>