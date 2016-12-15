<br>
	<div class="img-gallery-wrap">

      <?php
      // get restaurant images
      $stmt = $db->prepare(
        'SELECT *
        FROM Image, Restaurant
        WHERE Image.restaurant = Restaurant.id
        ORDER BY Restaurant.id DESC LIMIT 5');
      // bind, execute and fetch
      $stmt->execute();
      // number of images found
      $nImg = 0;
      while ($img = $stmt->fetch()) {
        ?>
        <div class="img-wrap">
          <img class="img-slide" src="<?= $img['url'] ?>" alt="<?= $img['description'] ?>">
        </div>
      <?php
        $nImg++;
      } ?>

      <div class="dot-wrap">

        <?php
        // create dots
        for ($i = 0; $i < $nImg; $i++) {
          ?>
          <span class="dot"></span>
        <?php
        } ?>

      </div>

      <div class="prev">
        <a>&#10096;</a>
      </div>

      <div class="next">
        <a>&#10097;</a>
      </div>


    </div>


<?php include_once("recentReviews.php"); ?>
