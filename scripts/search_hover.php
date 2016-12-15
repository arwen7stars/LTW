<?php

include_once(dirname(__FILE__) . "/../database/connection.php");

$id = $_GET['id'];

// get restaurant info
$stmt = $db->prepare(
  'SELECT name, description AS desc, address, type AS priceRange
  FROM Restaurant, PriceRange
  WHERE Restaurant.id = :id
  AND Restaurant.priceRange = PriceRange.id');

// bind
$stmt->bindParam(':id', $id);
// fetch reviews
$stmt->execute();
$restaurantInfo = $stmt->fetch();

// get restaurant score
$stmt = $db->prepare(
  'SELECT AVG(Review.score) AS score
  FROM Restaurant, Review
  WHERE Restaurant.id = :id
  AND Review.restaurant = Restaurant.id
  GROUP BY name');

  // bind
  $stmt->bindParam(':id', $id);
  // fetch reviews
  $stmt->execute();
  $score = $stmt->fetch();

// get one restaurant image
$stmt = $db->prepare(
  'SELECT url
  FROM Image
  WHERE Image.restaurant = :id');

  // bind
  $stmt->bindParam(':id', $id);
  // fetch reviews
  $stmt->execute();
  $url = $stmt->fetch();

echo json_encode([$restaurantInfo, $score, $url]);

 ?>
