<!DOCTYPE html>

<html>

<head>
  <title>EAT&AVAIL</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
</head>

<body>
  <?php
  session_start();
  include_once dirname(__FILE__).'/database/connection.php';
  include_once dirname(__FILE__).'/includes/header.php';

  // get search
  $search = $_GET['search'];

  // create regexp
  $pattern =

  // get restaurant info
  $stmt = $db->prepare(
    'SELECT name, id
    FROM Restaurant');

  // bind, execute and fetch
  $stmt->execute();

  ?>

  <h1>Restaurants found!</h1>

  <?php
  while ($row = $stmt->fetch()) {
    $matched = preg_match('/.*' . $search . '.*/i', $row['name'], $matches);
    if ($matched) {
      ?>

      <a href="#"><?= $row['id'] ?> <?= $row['name'] ?></a>

    <?php
    }
  } ?>



  <?php
  include_once dirname(__FILE__).'/includes/footer.php';
  ?>

</body>
</html>
