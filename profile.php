<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/global-style.css">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/footer.css">
	</head>

<body>

  <?php
    session_start();
    include_once(dirname(__FILE__) . "/database/connection.php");
    include_once(dirname(__FILE__) . "/includes/header.php");
  ?>

  <div id="user_info">
    <?php
      include_once(dirname(__FILE__) . '/database/users_database.php');
      include_once(dirname(__FILE__) . '/database/images_database.php');
      include_once(dirname(__FILE__) . '/database/location_database.php');
      include_once(dirname(__FILE__) . '/database/reviews_database.php');
      include_once(dirname(__FILE__) . '/database/restaurants_database.php');

      $login_id = getLoginID($_SESSION['username']);
      $user_info = getUserInfo($login_id);
      $image_id = $user_info['image'];
      $image_info = getImageInfo($image_id);
      $location_id = $user_info['residenceArea'];
      $location_info = getLocationInfo($location_id);

      if($image_info['url'] == null){
          $url = $DEFAULT_URL;
      } else $url = $image_info['url'];

    ?>

    <img src="<?php echo $url;?>"
     alt="<?php echo $image_info['description'];?>">

    <p>Current user status:

    <?php

    if(isset($_SESSION[$OWNER]) && ($_SESSION[$OWNER] == true)
    && isset($_SESSION[$REVIEWER]) && ($_SESSION[$REVIEWER] == true)){
        echo 'Owner & Reviewer';
    } else if(isset($_SESSION[$OWNER]) && ($_SESSION[$OWNER] == true))
        echo 'Owner';
    else if(isset($_SESSION[$REVIEWER]) && ($_SESSION[$REVIEWER] == true))
        echo 'Reviewer';
    else echo 'Normal user';
     
    ?></p>

    <h2><?php echo $_SESSION['username'];?></h2>

    <ul>
    <li>Location: <?php echo $location_info['name'];?></li>
   

    <?php if(!($user_info['dataOfBirth'] == null)){ ?>
        <li>Date of birth: <?php echo $user_info['dataOfBirth'];?></li>
    <?php } ?>

    <li>Joined: <?php echo $user_info['dateJoined'];?></li>
    </ul>

    <?php if(isReviewer($user_info['id'])) { ?>
    <div id="recent_reviews">
    
        <h2>Recent Reviews</h2>
<?php
        $stmt = getReviewsUser($user_info['id']);

        while ($row = $stmt->fetch()) { ?>

        <section>
          <h3><?= $row['title']?> - 
          <?= $row['tldr']?></h3>
          <p>(<?= $row['score']?>/10) for <i><?= $row['name'] ?></i></p>
        </section>
<?php } ?>
    </div>
<?php } ?>


<?php if(isOwner($user_info['id'])) { ?>
    <div id="recent_restaurants">

        <h2>Recent Restaurants</h2>
<?php
        $stmt = getRestaurantsUser($user_info['id']);
        while ($row = $stmt->fetch()) { 
            $priceRange = getPriceRange($row['priceRange']);
        ?>

        <section>
          <h3><?= $row['name']?> </h1>
          <p><?= $row['address']?> - <?= $priceRange['type'] ?></p>          
        </section>
<?php } ?>
    </div>
<?php } ?>

  </div>

  <?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>

</body>
</html>
