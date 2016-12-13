<!DOCTYPE html>

<html>

<head>
	<title>EAT&AVAIL</title>
	<meta charset="UTF-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/index.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
</head>

<body>

<?php
  session_start();
  include_once(dirname(__FILE__) . "/database/connection.php");
  include_once(dirname(__FILE__) . "/includes/header.php");
  include_once(dirname(__FILE__) . "/index_slideshow.php");
  include_once(dirname(__FILE__) . "/recentReviews.php");
  include_once(dirname(__FILE__) . "/includes/footer.php");
?>


</body>
</html>
