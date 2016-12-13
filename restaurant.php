<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/footer.css">

	</head>

<body>

  <?php
    /* TODO porque raio e que nao posso retirar connection e deixar ficar session start? */
    session_start();
    include_once(dirname(__FILE__) . "/database/connection.php");
    include_once(dirname(__FILE__) . "/includes/header.php");
  ?>

  <br>
  <div class="restaurant_info">
    <img src="./resources/image.jpg" alt="bird" width="200" height="128">

    <ul>
    <li><a href="/">Name</a></li>
    <li>Location</li>
    <li>Score</li>
    </ul>

  </div>
  <div class="recent_reviews">
    <h3>
      Recent Reviews
    </h3>

    <ul>
      <li>Get them from db</li>
    </ul>
  </div>

  <?php
    include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>


</body>
</html>
