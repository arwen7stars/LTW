<!DOCTYPE html>

<html>

<?php
// connect to database
$db = new PDO('sqlite:Database/database.db');
?>

  <head>
    <title>EAT&AVAIL</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
  </head>

  <body>

    <header>
      <h1>EAT&AVAIL</h1>
      <div class="sign">
        <a href="/" class="signup" title="SIGN UP">SIGN UP</a>
        <a href="/" class="login" title="LOGIN">Login</a>
      </div>
    </header>

    <div class="menu-wrap">
      <nav class="menu">
        <ul class="clearfix">
          <li><a href=".">Home</a></li>
          <li>
            <a href="restaurant.php">Restaurants <span class="arrow">&#9660;</span></a>
            <ul class="sub-menu">
              <li><a href="topRestaurants.php">Top 10</a></li>
              <li><a href="#">Top 100</a></li>
            </ul>
          </li>
          <li><a href="review.php">Reviewers</a></li>
        </ul>
      </nav>
      <form class="search-bar"><input type="text" placeholder="Search..." required><input type="button" value="Search"></form>
    </div>

    <!--
    <nav id="menu">
      <ul>
        <li><a href="./">Home</a></li>
        <li>
          <a href="./restaurant.php">Restaurants &#9660;</a>
          <ul class="dropDownMenu">
            <li><a href="#">Top 10</a></li>
          </ul>
        </li>
        <li><a href="./review.php">Reviewers</a></li>
        <li id="seachBar"><form><input type="text" placeholder="Search..." required><input type="button" value="Search"></form></li>
      </ul>
    </nav>
    -->

    <div id="content">
