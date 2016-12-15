<aside id="recentReviews">

	<h1>RECENT REVIEWS</h1>

  <?php
  // prepare query TODO allow user to decide LIMIT in his profle settings

  $stmt = $db->prepare(
  'SELECT score, tldr, body, name
  FROM Review, Reviewer, User
  WHERE Review.reviewer = Reviewer.id
  AND Reviewer.id = User.id
  ORDER BY Review.id DESC LIMIT 3');

	// fetch reviews
  $stmt->execute();

  while ($row = $stmt->fetch()) {
		$tldr_clean = str_replace('\n', '<br />', $row['tldr']);
		$body_clean = str_replace('\n', '<br />', $row['body']);
		?>

    <section>
      <h2 class="tldr"><?= $tldr_clean ?> <?= $row['score']?>/10</h2>
      <p class="body"><?= $body_clean ?></p>
      <!-- TODO link name of user to his profile page -->
      <p class="reviewer">Written by <?= $row['name'] ?></p>
    </section>

  <?php
	} ?>

</aside>
