<header>
		<h1>EAT&AVAIL</h1>
		<?php
	if (!(isset($_SESSION['username'])))
		include_once(dirname(__FILE__) . "/../login_buttons.php");
?>
</header>

<div class="menu-wrap">
<nav class="menu">
	<ul class="clearfix">
		<li><a href=".">Home</a></li>

		<?php
			include_once(dirname(__FILE__) . '/../restaurants_dropdown.php');
		?>

    			<li><a href="review.php">Reviewers</a></li>

    			<?php
			if (isset($_SESSION['username']))
				include_once(dirname(__FILE__) . '/../user_dropdown.php');
		?>
  		</ul>
		</nav>
</div>
