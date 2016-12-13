<?php
  function getImageInfo($id) {
    global $db;
    
    $stmt = $db->prepare('SELECT * FROM Image WHERE id=:id');
	$stmt->bindParam(':id', $id);
	$stmt->execute();

    return $stmt->fetch();
  }
?>