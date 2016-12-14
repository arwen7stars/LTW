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
  include_once(dirname(__FILE__) . '/database/users_database.php');

  if(isset($_SESSION[$OWNER]) && ($_SESSION[$OWNER] == true)){
    $owner = true;
  } else $owner = false;

  if(isset($_SESSION[$REVIEWER]) && ($_SESSION[$REVIEWER] == true)){
    $reviewer = true;
  } else $reviewer = false;

  $login_id = getLoginID($_SESSION['username']);
  $user_info = getUserInfo($login_id);

?>

<div id="settings">
<h1>Settings</h2>

<h2>Account settings</h2>
 <form action="database/action_edit_profile.php" method="post" enctype="multipart/form-data" >
    <p>
        <label>Owner</label><input type="checkbox" name="owner" value="true"
        <?php if($owner == true) { ?> checked="checked" <?php } ?> >

        <label>Reviewer</label><input type="checkbox" name="reviewer" value="true"
        <?php if($reviewer == true) { ?> checked="checked" <?php } ?> >
    </p>

    <p><label>Username</label>
    <input type="text" name="username" value= <?php echo $_SESSION['username'] ?> ></p>

    <p><label>New password</label>
    <input type="password" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$"></p>
    <p><label>Repeat password</label><input type="password" name="password_repeat" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$"></p>

<h2>Profile settings</h2>

<p><label>Location </label><select name="location">
    <option value="-1" selected>Location</option>
    <?php
    include_once(dirname(__FILE__) . "/location_combobox.php");
    ?>
</select></p>

<p><label>Birth date: </label><input type="date" name="birth_date" value= <?php echo $user_info['dataOfBirth'] ?> ></p>

<p><label>Profile picture: </label> <input type="file" name="image">

<p><input type="submit" value="Save settings"></p>

</form>
</div>
<?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
?>

</body>
</html>
