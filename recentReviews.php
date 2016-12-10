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
