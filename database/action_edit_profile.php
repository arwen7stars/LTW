<?php
    session_start();

    include_once(dirname(__FILE__) . '/connection.php');
    include_once(dirname(__FILE__) . '/users_database.php');
    include_once(dirname(__FILE__) . '/images_database.php');
 
    $id = getLoginID($_SESSION['username']);

    if(isset($_POST['owner'])){
    	setOwnerStatus($id);
    } else{
    	deleteOwnerStatus($id);
    }

    if(isset($_POST['reviewer'])){
    	setReviewerStatus($id);
    } else{
    	deleteReviewerStatus($id);
    }

    $password_hash1 = hash('sha256', $_POST["password"]);
    $password_hash2 = hash('sha256', $_POST["password_repeat"]);

    if(!empty($_POST["password"]) && (!empty($_POST["password_repeat"]))){
		if ($password_hash1 == $password_hash2) {
			updatePassword($id, $password_hash1);
		}
		else {
		   // TODO INFORM USER THAT PASSWORDS DON'T MATCH
		}
    }

    if(!empty($_POST['name'])){
		updateName($id, $_POST['name']);
	}

	if(!empty($_POST['username'])){
		if(is_registered($_POST['username'])){
			// TODO INFORM USER THAT THE GIVEN USERNAME IS ALREADY IN USE
		} else{
			updateUsername($id, $_POST['username']);
			$_SESSION['username'] = $_POST['username'];
		}
	}

	if( $_POST['location'] != -1 ){
			updateUserLocation($id, $_POST['location']);
	}

	$user_info = getUserInfo($id);

	updateUserBirthday($id, $_POST['birth_date']);

	if (!empty($_FILES['image']['name'])){
	$name_file = $_FILES['image']['name'];
	$destination = '../resources/' . $name_file;
	$tmp_file = $_FILES['image']['tmp_name'];

	move_uploaded_file($tmp_file, $destination);

	$username = $_SESSION['username'];
	$description = "Profile Picture of $username";

	$path = 'resources/' . $name_file;
	updateImage($user_info['image'], $path, $description);

	}
    
    $referer = '../profile.php?id=' . $id;

    header('Location: ' . $referer);
?>