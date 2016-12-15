<header class="website-header">
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

    			<?php
			if (isset($_SESSION['username']))
				include_once(dirname(__FILE__) . '/../user_dropdown.php');
		?>
  		<form action="search.php" method="get"><input type="search" placeholder="Search..." required="required" name="search" class="search"><input type="submit" value=""></form></ul>
		</nav>
</div>
