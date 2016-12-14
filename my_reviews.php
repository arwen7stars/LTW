<!DOCTYPE html>

<html>

<head>
	<title>EAT&AVAIL</title>
	<meta charset="UTF-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/index.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
</head>

<body>

<div id="my_reviews">
<?php
session_start();

include_once(dirname(__FILE__) . '/database/connection.php');
include_once(dirname(__FILE__) . '/database/restaurants_database.php');
include_once(dirname(__FILE__) . '/database/reviews_database.php');
include_once(dirname(__FILE__) . "/includes/header.php");

$user_id = getLoginID($_SESSION['username']);
$stmt = getReviewsUser($user_id);

while ($row = $stmt->fetch()) { 
$rest_info = getRestaurant($row['restaurant']);
?>
<ul>
<h3><?= $row['title'] ?>: <?= $row['tldr'] ?>
 (<?= $row['score'] ?>/10.0)</h3>
<p><?= $row['body'] ?></p>
<p>Written for <?= $rest_info['name'] ?></p>


 </ul>
<?php } ?>


<?php include_once(dirname(__FILE__) . "/includes/footer.php"); ?>

</body>
</html>

