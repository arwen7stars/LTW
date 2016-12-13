<!DOCTYPE html>

<html>

<head>
  	<title>EAT&AVAIL</title>
  	<meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/global-style.css">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/login.css">
    <link rel="stylesheet" href="stylesheets/footer.css">

	</head>

<body>

  <?php
    session_start();
    include_once(dirname(__FILE__) . "/database/connection.php");
    include_once(dirname(__FILE__) . "/includes/constants.php");
    include_once(dirname(__FILE__) . "/includes/header.php")
  ?>

  <div class="login_form">
        <form action="database/action_login.php" method="post">

        <label class="login-label"><b>Username</b></label>
        <input type="text" name="username" placeholder="username" required>

        <label class="login-label"><b>Password</b></label>
        <input type="password" name="password" placeholder="password" required>

        <input class="signup" type="submit" value="Login">

        </form>
  </div>

  <?php
  include_once(dirname(__FILE__) . "/includes/footer.php");
  ?>

</body>
</html>
