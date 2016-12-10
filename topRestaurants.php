<?php
include_once("includes/header.php");
?>

<section class="topRestaurants">

  <ul>

    <?php

    // prepare query TODO make limit come from url and get it with post, for top 10, 100 etc
    $stmt = $db->prepare(
    'SELECT name, AVG(Review.score) AS restScore
    FROM Restaurant, Review
    WHERE Review.restaurant = Restaurant.id
    GROUP BY name
    ORDER BY restScore DESC LIMIT 10');

    // fetch reviews
    $stmt->execute();

    while ($row = $stmt->fetch()) { ?>

      <li><a href="#"><?= $row['name'] ?></a> <?= $row['restScore'] ?>/10</li>

      <?php } ?>

  </ul>

</section>

<?php
include_once("includes/footer.php");
?>
