<?php
    session_start();

    include_once(dirname(__FILE__) . '/connection.php');
    include_once(dirname(__FILE__) . '/users_database.php');
    include_once(dirname(__FILE__) . '/images_database.php');
    include_once(dirname(__FILE__) . '/../constants.php');

    $id = getLoginID($_SESSION['username']);

    if(isset($_POST['owner']))
   		$_SESSION[$OWNER] = true;
   	else $_SESSION[$OWNER] = false;

   	if(isset($_POST['reviewer']))
   		$_SESSION[$REVIEWER] = true;
   	else $_SESSION[$REVIEWER] = false;   		

    if($_SESSION[$OWNER]){
    	setOwnerStatus($id);
    } else{
    	deleteOwnerStatus($id);
    }

    if($_SESSION[$REVIEWER]){
    	setReviewerStatus($id);
    } else{
    	deleteReviewerStatus($id);
    }

    if(!empty($_POST["password"]) && (!empty($_POST["password_repeat"]))){
		if ($_POST["password"] == $_POST["password_repeat"]) {
			updatePassword($id, $_POST["password"]);
		}
		else {
		   // TODO INFORM USER THAT PASSWORDS DON'T MATCH
		}
    }
	if(!empty($_POST['username'])){
		if(is_registered($_POST['username'])){
			// TODO INFORM USER THAT THE GIVEN USERNAME IS ALREADY IN USE
		}
		updateUsername($id, $_POST['username']);
		$_SESSION['username'] = $_POST['username'];
	}

	if( $_POST['location'] != -1 ){
			updateUserLocation($id, $_POST['location']);
	}

	$user_info = getUserInfo($id);

	strtotime($user_info['dateJoined']);
	strtotime($_POST['birth_date']);

	if(strtotime($user_info['dateJoined']) < strtotime($_POST['birth_date'])){
			// TODO INFORM USER THAT THE BIRTH DATE CANNOT BE AFTER JOIN DATE		
	} else updateUserBirthday($id, $_POST['birth_date']);

	if (!empty($_FILES['logo']['name'])){

	$name_file = $_FILES['image']['name'];
	$destination = '/../resources/' . $name_file;
	echo $destination;
	$tmp_file = $_FILES['image']['tmp_name'];

	move_uploaded_file($tmp_file, $destination);

	$username = $_SESSION['username'];
	$description = "Profile Picture of $username";

	updateImage($user_info['image'], $destination, $description);

	}
?>