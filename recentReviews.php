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
		$tldr_clean = str_replace('\n', '<br />', $row['tldr']);
		$body_clean = str_replace('\n', '<br />', $row['body']);
  	$rest_info = getRestaurant($row['restaurant']);
  ?>

    <div class="review">
      <h4><?= $row['title']?>: <?= $tldr_clean?> (<?= $row['score']?>/10)</h3>
      <p class="body"><?= $body_clean?></p>
      <p>Written by <a href="profile.php?id=<?=$row['id']?>"><?= $row['name'] ?></a>
      for <a href="restaurantProfile.php?id=<?=$row['restaurant']?>"><?=$rest_info['name']?></a></p>
    </div>

  <?php } ?>

</div>
