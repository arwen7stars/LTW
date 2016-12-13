<li>
<?php echo $_SESSION['username']; ?>
<span class="arrow">&#9660;</span>

<ul class="sub-menu">
<li><a href="profile.php">Profile</a></li>
<?php
include_once(dirname(__FILE__) . "/constants.php");
include_once(dirname(__FILE__) . '/database/users_database.php');

$login_id = getLoginID($_SESSION['username']);
$user_info = getUserInfo($login_id);

if(isOwner($user_info['id'])){
  $_SESSION[$OWNER] = true;
} else $_SESSION[$OWNER] = false;

if(isReviewer($user_info['id'])){
  $_SESSION[$REVIEWER] = true;
} else $_SESSION[$REVIEWER] = false;

if(isset($_SESSION[$OWNER]) && ($_SESSION[$OWNER] == true)){ ?>
<li><a href="my_restaurants.php">My Restaurants</a></li>
<?php } ?>

<?php if(isset($_SESSION[$OWNER]) && ($_SESSION[$OWNER] == true)){ ?>
<li><a href="my_reviews.php">My Reviews</a></li>
<?php } ?>

<li><a href="edit_profile.php">Settings</a></li>
<li><a href="database/action_logout.php">Logout</a></li>     
</ul>
</li>
