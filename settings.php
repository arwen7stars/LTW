<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/global-style.css">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/footer.css">
    <link rel="stylesheet" href="stylesheets/settings.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

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

<h1>Settings</h2>

<div class="settings">
<h2>Account settings</h2>
 <form action="database/action_edit_profile.php" method="post" enctype="multipart/form-data" >
    <p>
        <label>Owner</label><input type="checkbox" name="owner" value="true"
        <?php if($owner == true) { ?> checked="checked" <?php } ?> >

        <label>Reviewer</label><input type="checkbox" name="reviewer" value="true"
        <?php if($reviewer == true) { ?> checked="checked" <?php } ?> >
    </p>

    <p><label class="labelClass">Username</label><input type="text" name="username" value="<?= $_SESSION['username']?>" ></p>
    <p><label class="labelClass">Name</label><input type="text" name="name" value="<?= $user_info['name'] ?>"></p>
    <p><label class="labelClass">New password</label><input type="password" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$"></p>
    <p><label class="labelClass">Repeat password</label><input type="password" name="password_repeat" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$"></p>
</div>

<div class="settings">
<h2>Profile settings</h2>

<p><label class="labelClass">Location </label><select name="location">
    <option value="-1">Location</option>
<?php
    $areaNameStmt= $db->prepare(
        'SELECT name, id
        FROM ResidenceArea');
        $areaNameStmt->execute();

    while($row = $areaNameStmt->fetch()) { 
      if($user_info['residenceArea'] == $row['id']){?>
        <option value="<?= $row['id'] ?>" selected="selected"> <?= $row['name'] ?> </option>
<?php } else{ ?>
        <option value="<?= $row['id'] ?>"> <?= $row['name'] ?> </option>
<?php }
} ?>
</select></p>

<p><label class="labelClass">Birth date: </label><input type="date" name="birth_date" max="<?= $user_info['dateJoined'] ?>" value="<?= $user_info['dataOfBirth'] ?>" ></p>

<p><label class="labelClass">Profile picture: </label><input type="file" name="image">
</div>
<p><input type="submit" value="Save" class="button2"></p>

</form>
<?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
?>

</body>
</html>
