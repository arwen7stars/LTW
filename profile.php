<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/index.css">
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

    ?>

    <img src="<?php echo $image_info['url'];?>"
      alt="<?php echo $image_info['description'];?>">

    <h2><?php echo $_SESSION['username'];?></h2>

    <ul>
      <li>Location: <?php echo $location_info['name'];?></li>
      <li>Date of birth: <?php echo $user_info['dataOfBirth'];?></li>
      <li>Joined: <?php echo $user_info['dateJoined'];?></li>
    </ul>

    <?php if(isReviewer($user_info['id'])) { ?>
        <div id="recent_reviews">

            <h2>Recent Reviews</h2>
    <?php
            $stmt = getReviewsUser($user_info['id']);

            while ($row = $stmt->fetch()) { ?>

            <section>
              <h3 class="title"><?= $row['title']?> -
              <?= $row['tldr']?> <?= $row['score']?>/10</h1>
              <!-- TODO fazer display dos \n correctamente -->
              <p class="body"><?= $row['body']?></p>
              <!-- TODO link name of user to his profile page -->
              <p class="reviewer">Written for <?= $row['name'] ?></p>
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
            <h3 class="name"><?= $row['name']?> </h1>
            <p class="description"<?= $row['description']?> </p>
            <p class="address"><?= $row['address']?></p>
            <p class="type"><?= $priceRange['type'] ?></p>

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
