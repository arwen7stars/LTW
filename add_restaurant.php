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
?>


  <form action="database/action_add_restaurant.php" method="post" enctype="multipart/form-data">
      <input type="hidden" name="idOwner" value="1">

  	<br>
      <label>Name: </label> <input type="text" name="name" required="required">
      <br><br>
      <label>Description: </label><textarea name="description" required="required" rows="3" cols="30"></textarea>
  	<br><br>
      <label>Location: </label> <input type="text" name="location" required="required">

  	<br><br>
      <label>Image: </label> <input type="file" name="image"><br>
      <label>Image description: </label><input type="text" name="image_title">

      <br><br>
      <label>Price: </label>

      <select name="price">
<?php
    $priceRange= $db->prepare(
        'SELECT type, id
        FROM PriceRange');
        $priceRange->execute();

    while($row = $priceRange->fetch()) { ?>

        <option value=<?php echo $row['id'] ?> > <?php echo $row['type'] ?> </option>

<?php } ?>
      </select>

      <br><br>
      <input type="submit" value="Add">
  </form>

<?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
?>

</body>
</html>
