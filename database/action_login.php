<?php
  include_once('connection.php'); // connects to the database
  include_once('users.php');      // loads the functions responsible for the users table
  include_once('../includes/constants.php');

  if (session_status() == PHP_SESSION_NONE)
    session_start();
  if (check_credentials($_POST['username'], $_POST['password'])){
    $_SESSION[$LOGGEDIN] = true;
    $_SESSION['username'] = $_POST['username'];
  } else {
    $_SESSION[$LOGGEDIN] = false;
  }
  if($_SESSION[$LOGGEDIN] == true)
    $referer = '../index.php';          // if login is correct redirects to index page
  else $referer = '../login_page.php';  // if login isn't correct stays on login page
   header('Location: ' . $referer);
?>
