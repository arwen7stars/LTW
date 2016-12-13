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

  <br>
  <div id="review">
      <div class="review info">

          <h3>Title from db</h3>
          <ul>
              <li>Review of <a href="/">Restaurant from db</a> by <a href="/">Reviewer from db</a></li>
              <li>Score from db</li>
              <li>Review from db</li>
              <li>Tl;dr: TLDR from db</li>
          </ul>
      </div>
  </div>

  <?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>

</body>
</html>
