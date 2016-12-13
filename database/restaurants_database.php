<?php
    function getRestaurantsUser($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT *
    FROM RestaurantOwners, Restaurant
    WHERE RestaurantOwners.owner = :userId
    AND RestaurantOwners.restaurant = Restaurant.id');

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

    function getPriceRangeId($type) {
        global $db;
        
        // prepare query
        $stmt = $db->prepare(
        'SELECT *
        FROM PriceRange
        WHERE type = :type');

        // bind and execute
        $stmt->bindParam(':type', $type);
        $stmt->execute();

        $row = $stmt->fetch();

        return $row['id'];
    }

    function registerRestaurant($name, $description, $location, $priceRange) {
        global $db;

        include_once("../utilities/utils.php");

        $id = getNextId($db);
        $price_id = getPriceRangeId($priceRange);
        $stmt = $db->prepare('INSERT INTO Restaurant (id, name, description, address, priceRange) VALUES (?,?,?,?,?)');
        $stmt->execute(array($id, $name, $description, $location, $price_id));

        return $id;
     }

     function setRestaurantOwner($rest_id, $user_id){
         global $db;
         
         $stmt = $db->prepare('INSERT INTO RestaurantOwners (restaurant, owner) VALUES (?,?)');
         $stmt->execute(array($rest_id,$user_id));
     }
?>