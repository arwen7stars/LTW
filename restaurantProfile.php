<!DOCTYPE html>

<html>

<head>
  <title>EAT&AVAIL</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/restaurantProfile.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
  <script type="text/javascript" src="utilities/imageSlideShow.js" defer></script>
</head>


<body>

  <?php //TODO pagina esta mal quando nao ha reviews
  session_start();
  include_once(dirname(__FILE__) . "/database/connection.php");
  include_once(dirname(__FILE__) . "/includes/header.php");
  ?>


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

  <?php include_once(dirname(__FILE__) . "/includes/footer.php"); ?>

</body>

</html>
