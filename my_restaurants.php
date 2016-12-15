<!DOCTYPE html>

<html>

<head>
	<title>EAT&AVAIL</title>
	<meta charset="UTF-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/index.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
  <link rel="stylesheet" href="stylesheets/myRestaurants.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
</head>

<body>
<?php
session_start();

include_once(dirname(__FILE__) . '/database/connection.php');
include_once(dirname(__FILE__) . '/database/restaurants_database.php');
include_once(dirname(__FILE__) . '/database/users_database.php');
include_once(dirname(__FILE__) . "/includes/header.php");

$user_id = getLoginID($_SESSION['username']);
$stmt = getRestaurantsUser($user_id);?>

<div id="my_restaurants">
<h2>My Restaurants</h2>

<div class="manage_restaurants">
<p><ul>
<?php
while ($row = $stmt->fetch()) { ?>
<li><a href="restaurantProfile.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a>
	<a href="edit_restaurant.php?id=<?= $row['id'] ?>" title="EDIT">
	<img src="resources/edit.png"></a>
	<a href="database/action_delete_restaurant.php?id=<?= $row['id'] ?>" title="DELETE">
	<img src="resources/remove.png"></a>

</li>
<?php } ?>
</ul></p>
<p><a href="add_restaurant.php" class="button2">Add restaurant</a></p>
</div>
</div>

<?php include_once(dirname(__FILE__) . "/includes/footer.php"); ?>

</body>
</html>

