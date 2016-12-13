<?php
    function getRestaurantsUser($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT name, description, address, priceRange
    FROM RestaurantOwners, Restaurant
    WHERE RestaurantOwners.owner = :userId
    AND RestaurantOwners.restaurant = Restaurant.id
    ORDER BY Restaurant.id DESC LIMIT 3');

    // bind and execute
    $stmt->bindParam(':userId', $id);
    $stmt->execute();

    return $stmt;
    }

    function getPriceRange($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT *
    FROM PriceRange
    WHERE id = :id');

    // bind and execute
    $stmt->bindParam(':id', $id);
    $stmt->execute();

    return $stmt->fetch();
    }
?>