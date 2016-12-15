<li>
<?php 
include_once(dirname(__FILE__) . '/database/users_database.php');

$login_id = getLoginID($_SESSION['username']);
$user_info = getUserInfo($login_id);

echo $_SESSION['username']; ?>
<span class="arrow">&#9660;</span>

<ul class="sub-menu">
<li><a href="profile.php?id=<?=$login_id?>">Profile</a></li>
<?php

if(isOwner($user_info['id'])){ ?>
<li><a href="my_restaurants.php">My Restaurants</a></li>
<?php } ?>

<?php if(isReviewer($user_info['id'])){ ?>
<li><a href="my_reviews.php">My Reviews</a></li>
<?php } ?>

<li><a href="settings.php">Settings</a></li>
<li><a href="database/action_logout.php">Logout</a></li>     
</ul>
</li>
