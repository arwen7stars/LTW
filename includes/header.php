<!DOCTYPE html>

<html>

<?php
// connect to database
$db = new PDO('sqlite:database/database.db');
?>

  <head>
    <title>EAT&AVAIL</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
  </head>

  <body>

    <header>
      <h1>EAT&AVAIL</h1>
      <?php
		include_once('./includes/constants.php');

		if (!(isset($_SESSION[$LOGGEDIN]) && $_SESSION[$LOGGEDIN] == true)) { ?>

      <div class="sign">
        <a href="./register.php" class="signup" title="SIGN UP">SIGN UP</a>
        <a href="./login_page.php" class="login" title="LOGIN">Login</a>
      </div>
      <?php } ?>

    </header>

    <div class="menu-wrap">
      <nav class="menu">
        <ul class="clearfix">
          <li><a href=".">Home</a></li>
          <li>
            <a href="restaurant.php">Restaurants <span class="arrow">&#9660;</span></a>
            <ul class="sub-menu">
              <li><a href="topRestaurants.php">Top 10</a></li>
              <li><a href="#">Top 100</a></li>
            </ul>
          </li>
          <li><a href="review.php">Reviewers</a></li>
          <?php
			if (isset($_SESSION[$LOGGEDIN]) && $_SESSION[$LOGGEDIN] == true) { ?>
				<li>
				<?php echo $_SESSION['username']; ?>
				<span class="arrow">&#9660;</span>

					<ul class="sub-menu">
						<li><a href="profile.php">Profile</a></li>
						<li><a href="database/action_logout.php">Logout</a></li>
					</ul>
				</li>
			<?php } ?>
        </ul>
      </nav>
      <form class="search-bar"><input type="text" placeholder="Search..." required><input type="button" value="Search"></form>
    </div>

    <div id="content">
