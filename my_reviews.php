<!DOCTYPE html>

<html>

<head>
	<title>EAT&AVAIL</title>
	<meta charset="UTF-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/index.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
  <link rel="stylesheet" href="stylesheets/myReviews.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
</head>

<body>

<?php
session_start();

include_once(dirname(__FILE__) . '/database/connection.php');
include_once(dirname(__FILE__) . '/database/restaurants_database.php');
include_once(dirname(__FILE__) . '/database/reviews_database.php');
include_once(dirname(__FILE__) . "/includes/header.php");

$user_id = getLoginID($_SESSION['username']);
$stmt = getReviewsUser($user_id);

?>
<div id="my_reviews">
<h2>My Reviews</h2>
<?php

while ($row = $stmt->fetch()) { 
$rest_info = getRestaurant($row['restaurant']);
?>
<div class="review">
<ul>
<h3><?= $row['title'] ?>: <?= $row['tldr'] ?>
 (<?= $row['score'] ?>/10)</h3>
<p><?= $row['body'] ?></p>
<p>Written for 
<a href="restaurantProfile.php?id=<?=$rest_info['id']?>"><?= $rest_info['name'] ?></a>
</p>
 </ul>
</div>
<?php } ?>


<?php include_once(dirname(__FILE__) . "/includes/footer.php"); ?>

</body>
</html>

