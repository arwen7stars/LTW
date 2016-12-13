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
    include_once(dirname(__FILE__) . "/utilities/utils.php");
    include_once(dirname(__FILE__) . "/includes/header.php");
  ?>

  <section id="forms">
      <h3>
          Register
      </h3>
      <!-- TODO resolefr echo -->
      <form action="save_user.php" method="POST">
          <?php
          if(isset($error))
          {
           echo $error;
       }
          ?>
      <input type="text" name="username" placeholder="Username" required>
      <p></p>
      <input type="text" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Password" required>
      <p></p>
      <input type="text" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Repeat password" required>
      <p></p>
      <select name="location">
          <option value="-1" selected>Location</option>
          <?php
          include_once(dirname(__FILE__) . "/location_combobox.php");
          ?>
      </select>
      <p></p>
      <input type="submit" value= "Submit">
      </form>
  </section>

  <?php
    include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>

</body>
</html>
