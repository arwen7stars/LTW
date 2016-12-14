<?php
    function getRecentRestaurants($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT *
    FROM RestaurantOwners, Restaurant
    WHERE RestaurantOwners.owner = :userId
    AND RestaurantOwners.restaurant = Restaurant.id
    ORDER BY Restaurant.id DESC LIMIT 3');

    // bind and execute
    $stmt->bindParam(':userId', $id);
    $stmt->execute();

    return $stmt;
    }

   function getRestaurant($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT *
    FROM Restaurant
    WHERE Restaurant.id = :id');

    // bind and execute
    $stmt->bindParam(':id', $id);
    $stmt->execute();

    return $stmt->fetch();
    }

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

        return $stmt;
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

    function getImagesRestaurant($id) {
        global $db;

        // get restaurant images
        $stmt = $db->prepare(
        'SELECT *
        FROM Image
        WHERE Image.restaurant = :restaurantId');

        // bind, execute and fetch
        $stmt->bindParam(':restaurantId', $id);
        $stmt->execute();

        return $stmt;
    }

    function getNonOwners($id){
        global $db;


        $stmt = $db->prepare(
        'SELECT DISTINCT User.id, User.name
        FROM RestaurantOwners, Owner, User, Restaurant
        WHERE RestaurantOwners.restaurant = Restaurant.id
        AND RestaurantOwners.owner = Owner.id
        AND User.id = Owner.id
        AND User.id NOT IN(
        SELECT Owner.id
        FROM RestaurantOwners, Owner
        WHERE RestaurantOwners.restaurant = :id
        AND RestaurantOwners.owner = Owner.id)
        ORDER BY User.name');

        // bind, execute and fetch
        $stmt->bindParam(':id', $id);
        $stmt->execute();

        return $stmt;
    }

    function getOwnersRestaurant($id) {
        global $db;

        // get restaurant images
        $stmt = $db->prepare(
        'SELECT Owner.id
        FROM RestaurantOwners, Owner
        WHERE RestaurantOwners.restaurant = :id
        AND RestaurantOwners.owner = Owner.id');

        // bind, execute and fetch
        $stmt->bindParam(':id', $id);
        $stmt->execute();

        return $stmt;

    }

    function registerRestaurant($name, $description, $location, $priceRange) {
        global $db;

        include_once(dirname(__FILE__) . '/../utilities/utils.php');

        $id = getNextId($db);
        $stmt = $db->prepare('INSERT INTO Restaurant (id, name, description, address, priceRange) VALUES (?,?,?,?,?)');
        $stmt->execute(array($id, $name, $description, $location, $priceRange));

        return $id;
     }

     function setRestaurantOwner($rest_id, $user_id){
         global $db;
         
         $stmt = $db->prepare('INSERT INTO RestaurantOwners (restaurant, owner) VALUES (?,?)');
         $stmt->execute(array($rest_id,$user_id));
     }

    function deleteRestaurantOwner($rest_id, $user_id){
          global $db;

          $stmt = $db->prepare('DELETE FROM RestaurantOwners
          WHERE restaurant=:rest_id
          AND owner=:user_id');

          $stmt->bindParam(':rest_id', $rest_id);
          $stmt->bindParam(':user_id', $user_id);
          $stmt->execute();
                
    }

     function deleteRestaurant($rest_id){
          global $db;

          $stmt = $db->prepare('DELETE FROM Restaurant
          WHERE id=:id');

          $stmt->bindParam(':id', $rest_id);
          $stmt->execute();
     }

     function updateName($id, $name) {
    	global $db;

    	$stmt = $db->prepare('UPDATE Restaurant
    	SET name=:name
    	WHERE id=:id');

		$stmt->bindParam(':name', $name);
		$stmt->bindParam(':id', $id);
		$stmt->execute();
     }

     function updateDescription($id, $description) {
    	global $db;

    	$stmt = $db->prepare('UPDATE Restaurant
    	SET description=:description
    	WHERE id=:id');

		$stmt->bindParam(':description', $description);
		$stmt->bindParam(':id', $id);
		$stmt->execute();
     }

     function updateLocation($id, $location){
    	global $db;

    	$stmt = $db->prepare('UPDATE Restaurant
    	SET address=:location
    	WHERE id=:id');

		$stmt->bindParam(':location', $location);
		$stmt->bindParam(':id', $id);
		$stmt->execute();
     }

     function updatePrice($id, $price) {
    	global $db;

    	$stmt = $db->prepare('UPDATE Restaurant
    	SET priceRange=:priceRange
    	WHERE id=:id');

		$stmt->bindParam(':priceRange', $price);
		$stmt->bindParam(':id', $id);
		$stmt->execute();         
     }
?>