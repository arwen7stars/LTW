<!DOCTYPE html>

<html>

<head>
  <title>EAT&AVAIL</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="stylesheets/global-style.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link rel="stylesheet" href="stylesheets/header.css">
  <link rel="stylesheet" href="stylesheets/footer.css">
  <link rel="stylesheet" href="stylesheets/search.css">
  <script type="text/javascript" src="scripts/search.js" defer></script>
  <script src="includes/jquery-3.1.1.min.js"></script>
</head>

<body>
  <?php
  session_start();
  include_once dirname(__FILE__).'/database/connection.php';
  include_once dirname(__FILE__).'/includes/header.php';

  // get search
  $search = $_GET['search'];

  // get restaurant info
  $restaurants = $db->prepare(
    'SELECT name, id
    FROM Restaurant
    ORDER BY name ASC');

  // bind, execute and fetch
  $restaurants->execute();

  // get user info
  $users = $db->prepare(
    'SELECT name, id
    FROM User
    ORDER BY name ASC');

  // bind, execute and fetch
  $users->execute();

  ?>
  
<h1><center>Restaurants</center></h1>
<section class="main-body">

    <section class="search-results">

      <div class="restaurant-results">
        <ul>
          <?php
          while ($row = $restaurants->fetch()) {
            $matched = preg_match('/.*' . $search . '.*/i', $row['name'], $matches);
            if ($matched) {
              ?>
              <li>
                  <a href="restaurantProfile.php?id=<?= $row['id']?>"><?= $row['name'] ?></a>
              </li>
            <?php
            }
          } ?>
        </ul>

      </div>

    </section>

      <div class="restaurant-display">
        <div class="restaurant-name">

        </div>
        <div class="restaurant-img">

        </div>
        <div class="restaurant-score">

        </div>
       
      </div>

</section>





  <?php
  include_once dirname(__FILE__).'/includes/footer.php';
  ?>

</body>
</html>
