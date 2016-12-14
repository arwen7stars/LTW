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

<div id="my_restaurants">
<?php
session_start();

include_once(dirname(__FILE__) . '/database/connection.php');
include_once(dirname(__FILE__) . '/database/restaurants_database.php');
include_once(dirname(__FILE__) . '/database/users_database.php');
include_once(dirname(__FILE__) . "/includes/header.php");

$user_id = getLoginID($_SESSION['username']);
$stmt = getRestaurantsUser($user_id);

while ($row = $stmt->fetch()) { ?>
<li><a href="restaurantProfile.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></li>
<?php } ?>

<p><a href="add_restaurant.php">Add a new restaurant!</a></p>
</div>

<?php include_once(dirname(__FILE__) . "/includes/footer.php"); ?>

</body>
</html>

