<?php
  include_once(dirname(__FILE__) . '/connection.php');           // connects to the database
  include_once(dirname(__FILE__) . '/users_database.php');      // loads the functions responsible for the users table
  include_once(dirname(__FILE__) . '/../constants.php');

  if (session_status() == PHP_SESSION_NONE)
    session_start();

    $WRONG_PASS = false;

  if (check_credentials($_POST['username'], $_POST['password'])){
    $_SESSION[$LOGGEDIN] = true;
    $_SESSION['username'] = $_POST['username'];
  } else if(is_registered($_POST['username'])) {
    $_SESSION[$LOGGEDIN] = false;
    $WRONG_PASS = true;
  }


  if($_SESSION[$LOGGEDIN] == true)
    $referer = '../index.php';          // if login is correct redirects to index page
  else $referer = '../login_page.php';  // if login isn't correct stays on login page
   header('Location: ' . $referer);
?>
