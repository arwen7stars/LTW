<?php
  function getLocationInfo($id) {
    global $db;
    
    $stmt = $db->prepare('SELECT * FROM residenceArea WHERE id=:id');
	$stmt->bindParam(':id', $id);
	$stmt->execute();

    return $stmt->fetch();
  }
?>