<div id="recentReviews">

	<h1>RECENT REVIEWS</h1>

  <?php

  // prepare query TODO allow user to decide LIMIT in his profle settings

  $stmt = $db->prepare(
  'SELECT User.id, title, score, tldr, body, name, restaurant
  FROM Review, Reviewer, User
  WHERE Review.reviewer = Reviewer.id
  AND Reviewer.id = User.id
  ORDER BY Review.id DESC LIMIT 3');

	// fetch reviews
  $stmt->execute();
  while ($row = $stmt->fetch()) {
  	$rest_info = getRestaurant($row['restaurant']);
  ?>

    <div class="review">
      <h4><?= $row['title']?>: <?= $row['tldr']?> (<?= $row['score']?>/10)</h3>
      <!-- TODO fazer display dos \n correctamente -->
      <p class="body"><?= $row['body']?></p>
      <p>Written by <a href="profile.php?id=<?=$row['id']?>"><?= $row['name'] ?></a>
      for <a href="restaurantProfile.php?id=<?=$row['restaurant']?>"><?=$rest_info['name']?></a></p>
    </div>

  <?php } ?>

</div>
