<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/global-style.css">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/footer.css">
    <link rel="stylesheet" href="stylesheets/topRestaurants.css">

  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

	</head>

<body>

  <?php
    session_start();
    include_once(dirname(__FILE__) . "/database/connection.php");
    include_once(dirname(__FILE__) . "/includes/header.php");
  ?>

  <center><h2>Top 10 Restaurants</h2></center>
  <section class="topRestaurants">

    <ul>

      <?php

      // prepare query TODO make limit come from url and get it with post, for top 10, 100 etc
      $stmt = $db->prepare(
      'SELECT Restaurant.id AS id, name, AVG(Review.score) AS restScore
      FROM Restaurant, Review
      WHERE Review.restaurant = Restaurant.id
      GROUP BY name
      ORDER BY restScore DESC LIMIT 10');

      // fetch reviews
      $stmt->execute();

      while ($row = $stmt->fetch()) { 
    $score = number_format(round($row['restScore'],2),2);
      ?>

        <li><a href="restaurantProfile.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a> - <?= $score ?>/10</li>

      <?php } ?>

    </ul>

  </section>

  <?php
    include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>

</body>
</html>
