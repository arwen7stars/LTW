<!DOCTYPE html>

<html>

<head>
	<title>EAT&AVAIL</title>
	<meta charset="UTF-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/index.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
  <link rel="stylesheet" href="stylesheets/myReviews.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
</head>

<body>

<?php
session_start();

include_once(dirname(__FILE__) . '/database/connection.php');
include_once(dirname(__FILE__) . '/database/restaurants_database.php');
include_once(dirname(__FILE__) . '/database/users_database.php');
include_once(dirname(__FILE__) . '/database/reviews_database.php');
include_once(dirname(__FILE__) . "/includes/header.php");

$review_id = $_GET['review_id'];

if(isset($_SESSION['username']))
  $user_id = getLoginID($_SESSION['username']);

$review = getReview($review_id);

$rest_info = getRestaurant($review['restaurant']);

$stmt = $db->prepare(
'SELECT *
FROM Review WHERE
id=:review_id
ORDER BY id DESC');

$stmt->bindParam(':review_id', $review_id);
$stmt->execute();

$row = $stmt->fetch();

$user_info = getUserInfo($row['reviewer']);
$restaurantId = $row['restaurant'];

?>


<div id="my_reviews">
<h2><?=$rest_info['name']?> Reviews</h2>
<div class="review">
<ul>
<h3><?= $row['title'] ?>: <?= $row['tldr'] ?>
 (<?= $row['score'] ?>/10)</h3>
<p><?= $row['body'] ?></p>
<p>Written by 
<a href="profile.php?id=<?=$user_info['id']?>"><?= $user_info['name'] ?></a>
</p>
 </ul>
</div>

<?php
$stmt = getRepliesReview($review_id);

while ($row = $stmt->fetch()) {
  $user = getUserInfo($row['commenter']);
?>
<div class="reply">
<ul>
<h3><?= $user['name'] ?></h3>
<p><?= $row['comment'] ?></p>
 </ul>
</div>
<?php } ?>


<?php if(isset($_SESSION['username']) && isOwner($user_id) &&  isUserOwner($user_id, $restaurantId)){ ?>
<div id="replyIntro">
<p><h3>Write a comment</h3></p>
<form action="database/action_write_reply.php" method="post">
        <input type="hidden" name="id" value="<?=$review_id?>">
        <input type="hidden" name="user_id" value="<?=$user_id?>">
        <p><label class="labelClass">Comment:</label><br><textarea name="comment" rows="6" cols="60"></textarea></p>
        <p><input type="submit" value="Send" class="button2"></p>
</form>
</div>
<?php } ?>


<?php include_once(dirname(__FILE__) . "/includes/footer.php"); ?>

</body>
</html>

