<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/global-style.css">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/footer.css">
    <link rel="stylesheet" href="stylesheets/listRestaurants.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

	</head>

<body>

  <?php
    session_start();
    include_once(dirname(__FILE__) . "/database/connection.php");
    include_once(dirname(__FILE__) . "/database/restaurants_database.php");
    include_once(dirname(__FILE__) . "/includes/header.php");
  ?>

  <center><h2>All Restaurants</h2></center>
  <div id="restaurants">
  <ul>
    <?php
    $stmt = getAllRestaurants();
while ($row = $stmt->fetch()) { ?>
<li><a href="restaurantProfile.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></li>
<?php } ?>
  </div>
  </ul>

  <?php
    include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>


</body>
</html>
