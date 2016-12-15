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
?>

<h1>Add Restaurant</h1>
  <form action="database/action_add_restaurant.php" method="post" enctype="multipart/form-data">
      <div class="settings">
      <p><label class="labelClass">Name: </label><input type="text" name="name" required="required"></p>

      <p><label class="labelClass">Description: </label><textarea name="description" required="required" rows="5" cols="40"></textarea></p>

      <p><label class="labelClass">Location: </label><input type="text" name="location" required="required"></p>

      <p><label class="labelClass">Image: </label><input type="file" name="image"><br>
      <label class="labelClass">Image description: </label><input type="text" name="image_title"></p>

      <p><label class="labelClass">Price: </label>

      <select name="price">
      <?php
    $priceRange= $db->prepare(
        'SELECT type, id
        FROM PriceRange');
        $priceRange->execute();

    while($row = $priceRange->fetch()) { ?>
    <option value=<?php echo $row['id'] ?> > <?php echo $row['type'] ?> </option>
    <?php }?>
    </select></p>

      </div>

      <p><input type="submit" value="Submit" class="button2"></p>
  </form>
<?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
?>

</body>
</html>
