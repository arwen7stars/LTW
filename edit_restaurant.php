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
  include_once(dirname(__FILE__) . "/database/restaurants_database.php");
  include_once(dirname(__FILE__) . "/database/users_database.php");
  include_once(dirname(__FILE__) . "/includes/header.php");

  $rest_id = $_GET['id'];
  $rest_info = getRestaurant($rest_id);
?>

<h1>Edit <?=$rest_info['name']?></h1>

<div class="settings">
<h2>General Info</h2>
  <form action="database/action_edit_restaurant.php?id=<?= $rest_id ?>" method="post"  enctype="multipart/form-data">
      <input type="hidden" name="idOwner" value="1">

  	
      <p><label class="labelClass">Name: </label><input type="text" name="name" value= "<?= $rest_info['name'] ?>" ></p>

      <p><label class="labelClass">Description: </label><textarea name="description" rows="5" cols="40"><?= $rest_info['description'] ?></textarea></p>

      <p><label class="labelClass">Location: </label><input type="text" name="location"value= "<?= $rest_info['address'] ?>" ></p>

      <p><label class="labelClass">Price: </label><select name="price">
      <?php
    $priceRange= $db->prepare('SELECT * FROM PriceRange');
    $priceRange->execute();

    while($row = $priceRange->fetch()) {
      if($row['id'] == $rest_info['priceRange']){ ?>
        <option value=<?php echo $row['id'] ?> selected="selected"> <?php echo $row['type'] ?> </option>
<?php 
      } else{ ?>
        <option value=<?php echo $row['id'] ?>> <?php echo $row['type'] ?> </option>     

  <?php }
} ?>
      </select></p>
</div>

<div class="settings">
<h2>Images</h2>
  <?php
      $stmt = getImagesRestaurant($rest_id);

      while ($img = $stmt->fetch()) {
      ?>
        <li><a href="<?= $img['url'] ?>"><?= $img['description'] ?></a>
        <a href="database/action_delete_image.php?rest_id=<?= $rest_id ?>&img_id=<?= $img['id'] ?>" alt="DELETE">
        <img src="resources/remove.png"></a></li>

      <?php } ?>
      <p><label class="labelClass">Add image: </label><input type="file" name="image"><br>
      <label class="labelClass">Image description: </label><input type="text" name="image_title" autocomplete=off></p>
</div>

<div class="settings">
<h2>Owners</h2>
<?php
      $stmt = getOwnersRestaurant($rest_id);

      while ($row = $stmt->fetch()) {  
        $owner = getUserInfo($row['id']);
      ?>
        <li><?= $owner['name'] ?></a>

        <a href="database/action_delete_owner.php?id=<?= $rest_id ?>&user_id=<?= $row['id']?>" alt="DELETE">
        <img src="resources/remove.png"></a></li>

<?php } ?>
  
      <p><label class="labelClass">Add Owner: </label> 
      <select name="owner">
          <option value="-1" selected="selected"> -- select an option -- </option>
<?php
$stmt = getNonOwners($rest_id);
while ($row = $stmt->fetch()) { ?>
  <option value=<?php echo $row['id'] ?>> <?php echo $row['name'] ?> </option>
<?php }
?>
      </select></p>
</div>
      <p><input type="submit" value="Save All" class="button2"></p>
</form>

<?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
?>

</body>
</html>
