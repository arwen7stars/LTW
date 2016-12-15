<?php

include_once(dirname(__FILE__) . "/../database/connection.php");

$link = $_GET['link'];

$stmt = $db->prepare(
'SELECT name
FROM Restaurant
WHERE id = 51');

// fetch reviews
$stmt->execute();
$row = $stmt->fetch();

echo json_encode($row);

 ?>
