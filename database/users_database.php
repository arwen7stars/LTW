<?php
  function check_credentials($username, $password) {
    global $db;
    $password_hash = hash('sha256', $password);

    $stmt = $db->prepare('SELECT * FROM Login WHERE username=? AND password=?');
	$stmt->execute(array($username, $password));
    return $stmt->fetch() !== false;
  }

  function getLoginID($username) {
    global $db;

    $stmt = $db->prepare('SELECT id FROM Login WHERE username=:username');
	$stmt->bindParam(':username', $username);
	$stmt->execute();

	$row = $stmt->fetch();

    return $row['id'];
  }

  function getUserInfo($id) {
  	global $db;

  	$stmt = $db->prepare('SELECT * FROM User WHERE id=:userid');
	$stmt->bindParam(':userid', $id);
	$stmt->execute();

	return $stmt->fetch();
  }

  function is_registered($username) {
  	global $db;
	$stmt = $db->prepare('SELECT * FROM Login WHERE username=:username');
	$stmt->bindParam(':username', $username);
	$stmt->execute();
	return $stmt->fetch() !== false;
  }
  
   function isOwner($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT * FROM Owner WHERE id = :id');

    // bind and execute
    $stmt->bindParam(':id', $id);
    $stmt->execute();

    return $stmt->fetch() !== false;
    }

    function isReviewer($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT * FROM Reviewer WHERE id = :id');

    // bind and execute
    $stmt->bindParam(':id', $id);
    $stmt->execute();

    return $stmt->fetch() !== false;
    }

    function updateUsername($id, $username) {
    	global $db;

    	$stmt = $db->prepare('UPDATE Login
    	SET username=:username
    	WHERE id= :id');

		$stmt->bindParam(':username', $username);
		$stmt->bindParam(':id', $id);
		$stmt->execute();
    }

    function updatePassword($id, $password) {
    	global $db;

    	$stmt = $db->prepare('UPDATE Login
    	SET password=:password
    	WHERE id= :id');

		$stmt->bindParam(':password', $password);
		$stmt->bindParam(':id', $id);
		$stmt->execute();
    }

    function updateUserLocation($id, $location) {
    global $db;

    include_once(dirname(__FILE__) . '/location_database.php');
    
    $stmt = $db->prepare('UPDATE User
	SET residenceArea=:location_id
	WHERE id=:id');

	$stmt->bindParam(':location_id', $location);
	$stmt->bindParam(':id', $id);
	$stmt->execute();
  }

   function updateUserBirthday($id, $data) {
    global $db;
    
    $stmt = $db->prepare('UPDATE User
	SET dataOfBirth=:date
	WHERE id=:id');

	$stmt->bindParam(':date', $data);
	$stmt->bindParam(':id', $id);
	$stmt->execute();
  }

   function deleteOwnerStatus($id) {
    global $db;
    
    $stmt = $db->prepare('DELETE FROM Owner
	WHERE id=:id');

	$stmt->bindParam(':id', $id);
	$stmt->execute();

	$stmt = $db->prepare('DELETE FROM RestaurantOwners
	WHERE owner=:id');

	$stmt->bindParam(':id', $id);
	$stmt->execute();
   }

   function deleteReviewerStatus($id) {
    global $db;
    
    $stmt = $db->prepare('DELETE FROM Reviewer
	WHERE id=:id');

	$stmt->bindParam(':id', $id);
	$stmt->execute();

	/*$stmt = $db->prepare('DELETE FROM Review
	WHERE reviewer=:id');

	$stmt->bindParam(':id', $id);
	$stmt->execute();*/
   }

   function setOwnerStatus($id) {
    global $db;
    try {
		$stmt = $db->prepare('INSERT INTO Owner VALUES (?)');
		$stmt->execute(array($id));
    } catch (PDOException $e) {
		if ($e->errorInfo[1] == 1062) {
			// catches error when owner is already set
		}
	}
   }

   function setReviewerStatus($id) {
    global $db;
    try {
		$stmt = $db->prepare('INSERT INTO Reviewer VALUES (?)');
		$stmt->execute(array($id));
    } catch (PDOException $e) {
		if ($e->errorInfo[1] == 1062) {
			// catches error when owner is already set
		}
	}
   }
?>


