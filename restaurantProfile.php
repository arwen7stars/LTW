<!DOCTYPE html>

<html>

<head>
  <title>EAT&AVAIL</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
  <link rel="stylesheet" href="stylesheets/restaurantProfile.css">
  <link rel="stylesheet" href="stylesheets/img-gallery.css">
  <script type="text/javascript" src="utilities/imageSlideShow.js" defer></script>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <script src="includes/jquery-3.1.1.min.js"></script>

</head>


<body>

  <?php //TODO pagina esta mal quando nao ha reviews
  session_start();
  include_once(dirname(__FILE__) . "/database/connection.php");
  include_once(dirname(__FILE__) . "/includes/header.php");
  include_once(dirname(__FILE__) . "/database/reviews_database.php");
  include_once(dirname(__FILE__) . "/database/restaurants_database.php");
  include_once(dirname(__FILE__) . "/database/users_database.php");
?>


  <!-- RESTAURANT INFO -->
<?php
// get restaurant id
$restaurantId = $_GET['id'];
// will only get restaurant info
$restaurantInfo = getRestaurant($restaurantId);
?>
<div id="restaurantProfile">

<h1><?= $restaurantInfo['name'] ?></h1>

<div class="img-gallery-wrap">

      <?php
      // get restaurant images
      $stmt = $db->prepare(
        'SELECT url, description
        FROM Image
        WHERE Image.restaurant = :restaurantId');
      // bind, execute and fetch
      $stmt->bindParam(':restaurantId', $restaurantId);
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

<div class="restInfo-wrap">

<h3>Description: </h3>
<p><?= $restaurantInfo['description'] ?></p>

<h3>Location: </h3>
<p><?= $restaurantInfo['address'] ?></p>

<h3>Owners: </h3>

<?php
$stmt = getOwnersRestaurant($restaurantId);
while ($row = $stmt->fetch()){
  $user_info = getUserInfo($row['id']);
  ?>
<li><a href="profile.php?id=<?=$row['id']?>"><?=$user_info['name']?></a></li>
<?php } ?>

<?php

if(isset($_SESSION['username'])){
$user_id = getLoginID($_SESSION['username']);

if(isOwner($user_id) && !isUserOwner($user_id, $restaurantId)){?>
  <form action="database/action_add_to_owners.php?id=<?=$restaurantId?>" method="post">
        <p><input type="submit" value="Add to restaurants!" class="button2"></p>
</form>
<?php } ?>


</div>

<div class="recentReview-wrap">

<h2>Recent Reviews</h2>

<?php
// prepare query
$stmt = $db->prepare(
'SELECT User.id, title, score, tldr, body, name
FROM Review, Reviewer, User
WHERE Review.restaurant = :restaurantId
AND Review.reviewer = Reviewer.id
AND Reviewer.id = User.id
ORDER BY Review.id DESC LIMIT 3');
// bind and execute
$stmt->bindParam(':restaurantId', $restaurantId);
$stmt->execute();
while ($row = $stmt->fetch()) { ?>

<h3><?= $row['title']?></h3>
<p><?= $row['tldr']?> (<?= $row['score']?>/10)</p>
<p>Written by
<a href="profile.php?id=<?=$row['id']?>"><?= $row['name'] ?></p></a>
<hr>
<?php } ?>
<a href="reviewsRestaurant.php?id=<?=$restaurantId?>">Read more...</a>
</div>

<div class="writeReview-wrap">

<?php
if(isReviewer($user_id)){?>

<p><h2>Write a review</h2></p>
<form action="database/action_write_review.php" method="post">
        <input type="hidden" name="id" value="<?=$restaurantId?>">
        <p><label class="labelClass">Title:</label><input type="text" name="title"></p>
        <p><label class="labelClass">Summary:</label><br><textarea name="tldr" rows="2" cols="60"></textarea></p>
        <p><label class="labelClass">Body:</label><br><textarea name="body" rows="6" cols="60"></textarea></p>
        <p><label class="labelClass">Score:</label><input type="number" name="score" min="0" max="10" required="required"></p>
        <p><input type="submit" value="Send" class="button2"></p>
</form>
<?php } } ?>
</div>
</div>

<?php include_once(dirname(__FILE__) . "/includes/footer.php"); ?>

</body>

</html>