<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/global-style.css">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/footer.css">
    <link rel="stylesheet" href="stylesheets/profile.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	</head>

<body>

  <?php
    session_start();
    include_once(dirname(__FILE__) . "/database/connection.php");
    include_once(dirname(__FILE__) . "/includes/header.php");
    include_once(dirname(__FILE__) . "/constants.php");
  ?>

<div id="profile">
    <?php
      include_once(dirname(__FILE__) . '/database/users_database.php');
      include_once(dirname(__FILE__) . '/database/images_database.php');
      include_once(dirname(__FILE__) . '/database/location_database.php');
      include_once(dirname(__FILE__) . '/database/reviews_database.php');
      include_once(dirname(__FILE__) . '/database/restaurants_database.php');

      $login_id = $_GET['id'];
      $login_info = getLoginInfo($login_id);
      $user_info = getUserInfo($login_id);
      $image_id = $user_info['image'];
      $image_info = getImageInfo($image_id);
      $location_id = $user_info['residenceArea'];
      $location_info = getLocationInfo($location_id);
      
      if($image_info['url'] == null){
          $url = $DEFAULT_URL;
      } else $url = $image_info['url'];

    ?>

<div class = "user_bar">
    <h1><?php echo $login_info['username'];?></h1>
    <img src="<?php echo $url;?>"
     alt="<?php echo $image_info['description'];?>">

    <p>Current user status:

    <?php

    if(isOwner($login_id)
    && isReviewer($login_id)){
        echo 'Owner & Reviewer';
    } else if(isOwner($login_id))
        echo 'Owner';
    else if(isReviewer($login_id))
        echo 'Reviewer';
    else echo 'Normal user';
     
    ?></p>

    <ul>
      <li><b>Name:</b> <?php echo $user_info['name'];?></li>
      <li><b>Location:</b> <?php echo $location_info['name'];?></li>


      <?php if(!($user_info['dataOfBirth'] == null)){ ?>
          <li><b>Date of birth:</b> <?php echo $user_info['dataOfBirth'];?></li>
      <?php } ?>

      <li><b>Joined:</b> <?php echo $user_info['dateJoined'];?></li>
    </ul>
</div>

    <?php if(isReviewer($user_info['id'])) { ?>
    <div class="reviews">
        <h2>Recent Reviews</h2>
<?php
        $stmt = getRecentReviews($user_info['id']);

        while ($row = $stmt->fetch()) { 
        ?>

          <li><p> <b><?= $row['title']?></b> ~ 
          <?= $row['tldr']?>
          (<?= $row['score']?>/10 for <i><a href="restaurantProfile.php?id=<?=$row['id']?>"><?= $row['name']?></a></i>)</p></li>
<?php } ?>
  </div>
<?php } ?>


<?php if(isOwner($user_info['id'])) { ?>
    <div class="restaurants">

        <h2>Owned Restaurants</h2>
        <ul>
<?php
        $stmt = getRestaurantsUser($user_info['id']);
        while ($row = $stmt->fetch()) {
        ?>
          <li><a href="restaurantProfile.php?id=<?=$row['id']?>"><?= $row['name']?></a></li> 

<?php } ?>
  </ul>
  </div>
<?php } ?>


  <?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>

</body>
</html>
