<?php
  function check_credentials($username, $password) {
    global $db;
    $password_encrypted = sha1($password);

    $stmt = $db->prepare('SELECT * FROM Login WHERE username=? AND password=?');
	$stmt->execute(array($username, $password));
    return $stmt->fetch() !== false;
  }
  function is_registered($username) {
  	global $db;
	$stmt = $db->prepare('SELECT * FROM Login WHERE username=:username');
	$stmt->bindParam(':username', $username);
	$stmt->execute();
	return $stmt->fetch() !== false;
  }
?>
