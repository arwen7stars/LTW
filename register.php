<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/global-style.css">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/footer.css">
    <link rel="stylesheet" href="stylesheets/login.css">

  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

	</head>

<body>

  <?php
    session_start();
    include_once(dirname(__FILE__) . "/database/connection.php");
    include_once(dirname(__FILE__) . "/utilities/utils.php");
    include_once(dirname(__FILE__) . "/includes/header.php");
  ?>

  <div class ="sign_login_form">
      <h2>
          Register
      </h2>
      <form action="save_user.php" method="POST">
          <?php
          if(isset($error))
          {
           echo $error;
       }
          ?>
      <p><label>Username:</label><br>
      <input type="text" name="username" placeholder="Username" required></p>

      <p><label>Password: </label><br>
      <input type="text" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Password" required></p>

      <p><label>Confirm Password: </label><br>
      <input type="text" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Repeat password" required></p>
      
      <p><label>Location: </label><br>
      <select name="location"><br>
          <option value="-1" selected>Location</option>
          <?php
          include_once(dirname(__FILE__) . "/location_combobox.php");
          ?>
      </select>
      </p>
      <input type="submit" value= "Submit" class="button2">
      </form>
  </div>

  <?php
    include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>

</body>
</html>