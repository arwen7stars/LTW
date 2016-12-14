<?php
function check_credentials($username, $password) {
    global $db;
    $password_encrypted = sha1($password);

    $stmt = $db->prepare('SELECT * FROM Login WHERE username=? AND password=?');
    $stmt->execute(array($username, $password));
    return $stmt->fetch() !== false;
}

function getLoginID($username) {
    global $db;

    $stmt = $db->prepare('SELECT id FROM Login WHERE username=:username');
    $stmt->bindParam(':username', $username);
    $stmt->execute();

    $row = $stmt->fetch();

    return $row['id'];
}

function getUserInfo($id) {
    global $db;

    $stmt = $db->prepare('SELECT * FROM User WHERE id=:userid');
    $stmt->bindParam(':userid', $id);
    $stmt->execute();

    return $stmt->fetch();
}

function is_registered($username) { //retorna true se esta registado
    global $db;
    $findUsername = $db->prepare('SELECT * FROM User WHERE (name = ?)');
    $findUsername->execute(array($_POST['username']));
    $foundUsername = $findUsername->fetchAll();

    if(empty($foundUsername)){
        return false; //nao esta registado
    } else{

        return true; //esta registado
    }
}

function isOwner($id) {
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

        return $stmt->fetch() !== false;
    }
    
    function isReviewer($id) {
        global $db;

        // prepare query
        $stmt = $db->prepare(
            'SELECT score, title, tldr, body, name
            FROM Review, Reviewer, Restaurant
            WHERE Review.reviewer = Reviewer.id
            AND Reviewer.id = :userId
            AND Restaurant.id = Review.restaurant
            ORDER BY Review.id DESC LIMIT 3');

            // bind and execute
            $stmt->bindParam(':userId', $id);
            $stmt->execute();

            return $stmt->fetch() !== false;
        }

        ?>
