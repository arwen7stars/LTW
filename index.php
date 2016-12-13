<?php
  // connect to database
  $db = new PDO('sqlite:database/database.db');

  session_start();

  include_once("includes/header.php");
  include_once("includes/content_index.php");
  include_once("includes/footer.php");
?>
