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
				if (!(isset($_SESSION['username'])))
					include_once('./includes/login_buttons.php');
			?>
    	</header>

		<div class="menu-wrap">
			<nav class="menu">
				<ul class="clearfix">
					<li><a href=".">Home</a></li>

					<?php
						include_once('./includes/restaurants_dropdown.php');
					?>

          			<li><a href="review.php">Reviewers</a></li>

          			<?php
						if (isset($_SESSION['username']))
							include_once('./includes/user_dropdown.php');
					?>
        		</ul>
      		</nav>
    	</div>

    <div id="content">
