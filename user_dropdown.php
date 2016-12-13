<li>
<?php echo $_SESSION['username']; ?>
<span class="arrow">&#9660;</span>

<ul class="sub-menu">
<li><a href="profile.php">Profile</a></li>
<?php
include_once('database/users_database.php');

if(isOwner(getLoginID($_SESSION['username']))){ ?>
<li><a href="add_restaurant.php">Add Restaurant</a></li>

<?php } ?>

<?php

if(isOwner(getLoginID($_SESSION['username']))){ ?>
<li><a href="add_restaurant.php">My Restaurants</a></li>

<?php } ?>

<?php

if(isReviewer(getLoginID($_SESSION['username']))){ ?>
<li><a href="search_rest.php">Search</a></li>
<?php } ?>

<li><a href="database/action_logout.php">Logout</a></li>     
</ul>
</li>
