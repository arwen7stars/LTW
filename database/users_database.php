<?php
  function check_credentials($username, $password) {
    global $db;
    $password_encrypted = sha1($password);

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

?>
