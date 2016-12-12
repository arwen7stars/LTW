<!DOCTYPE html>

<html>

<head>
  <title>EAT&AVAIL</title>
  <meta charset="utf-8">
  <!-- TODO include website.css once it is done -->
  <!-- TODO include header.css once it is done -->
  <!-- TODO include footer.css once it is done -->
  <link rel="stylesheet" href="stylesheets/restaurantProfile.css">
  <script type="text/javascript" src="imageSlideShow.js" defer></script>
</head>

<?php
// TODO replace this with include connect database
// connect to database
$db = new PDO('sqlite:database/database.db');
?>

<body>

  <!-- TODO include header.php instead -->
  <!-- HEADER -->
  <header class="website-header">
    <h1>EAT&AVAIL</h1>
    <div class="sign">
      <a href="/" class="signup" title="SIGN UP">SIGN UP</a>
      <a href="/" class="login" title="LOGIN">Login</a>
    </div>
  </header>

  <div class="menu-wrap">
    <nav class="menu">
      <ul class="clearfix">
        <li><a href=".">Home</a></li>
        <li>
          <a href="restaurant.php">Restaurants <span class="arrow">&#9660;</span></a>
          <ul class="sub-menu">
            <li><a href="topRestaurants.php">Top 10</a></li>
            <li><a href="#">Top 100</a></li>
          </ul>
        </li>
        <li><a href="review.php">Reviewers</a></li>
      </ul>
    </nav>
    <form class="search-bar"><input type="text" placeholder="Search..." required><input type="button" value="Search"></form>
  </div>
  <!-- !HEADER -->

  <!-- RESTAURANT INFO -->
  <?php

  // get restaurant id
  $restaurantId = $_GET['id'];

  // get restaurant info
  $stmt = $db->prepare(
    'SELECT name, description, address, type AS priceRange, AVG(Review.score) AS restScore
    FROM Restaurant, Review, PriceRange
    WHERE Restaurant.id = :restaurantId
    AND Review.restaurant = Restaurant.id
    AND Restaurant.priceRange = PriceRange.id
    GROUP BY name
    ORDER BY restScore DESC LIMIT 10');

  // bind, execute and fetch
  $stmt->bindParam(':restaurantId', $restaurantId);
  $stmt->execute();
  $restaurantInfo = $stmt->fetch();

  ?>
  <!-- !RESTAURANT INFO -->

  <section class="restaurantProfile">

    <header class="header-wrap">
      <h1 class="name"><?= $restaurantInfo['name'] ?></h1>
    </header>

    <div class="imgGallery-wrap">
      <h2>Image Gallery</h2>

      <?php

      // get restaurant images
      $stmt = $db->prepare(
        'SELECT url, description
        FROM Image
        WHERE Image.restaurant = :restaurantId');

      // bind, execute and fetch
      $stmt->bindParam(':restaurantId', $restaurantId);
      $stmt->execute();

      while ($img = $stmt->fetch()) { ?>

        <img class="slideShow" src="<?= $img['url'] ?>" alt="<?= $img['description'] ?>">

      <?php } ?>

    </div>

    <div class="description-wrap">
      <h2>Description</h2>
      <p><?= $restaurantInfo['description'] ?></p>
    </div>

    <aside class="recentReview-wrap">

      <h1>Recent Reviews</h1>

      <?php

      // prepare query
      $stmt = $db->prepare(
        'SELECT score, tldr, body, name
        FROM Review, Reviewer, User
        WHERE Review.restaurant = :restaurantId
        AND Review.reviewer = Reviewer.id
        AND Reviewer.id = User.id
        ORDER BY Review.id DESC LIMIT 3');

      // bind and execute
      $stmt->bindParam(':restaurantId', $restaurantId);
      $stmt->execute();

      while ($row = $stmt->fetch()) { ?>

        <section>
          <h2 class="tldr"><?= $row['tldr']?> <?= $row['score']?>/10</h2>
          <!-- TODO fazer display dos \n correctamente -->
          <p class="body"><?= $row['body']?></p>
          <!-- TODO link name of user to his profile page -->
          <p class="reviewer">Written by <?= $row['name'] ?></p>
        </section>

      <?php } ?>

    </aside>

  </section>

  <!-- TODO include footer.php instead -->
  <!-- FOOTER -->
  <div id="footer">
    <b><center>Powered up by cool&genius people 8)</center></b>
  </div>
  <!-- !FOOTER -->

</body>

</html>
