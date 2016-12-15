<?php
    function getReview($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT *
    FROM Review
    WHERE id=:id');

    // bind and execute
    $stmt->bindParam(':id', $id);
    $stmt->execute();

    return $stmt->fetch();       
    }

    function getRecentReviews($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT Restaurant.id, score, title, tldr, body, name
    FROM Review, Reviewer, Restaurant
    WHERE Review.reviewer = Reviewer.id
    AND Reviewer.id = :userId
    AND Restaurant.id = Review.restaurant
    ORDER BY Review.id DESC LIMIT 3');

    // bind and execute
    $stmt->bindParam(':userId', $id);
    $stmt->execute();

    return $stmt;
    }

    function getReviewsUser($id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT *
    FROM Review, Reviewer, Restaurant
    WHERE Review.reviewer = Reviewer.id
    AND Reviewer.id = :userId
    AND Restaurant.id = Review.restaurant');

    // bind and execute
    $stmt->bindParam(':userId', $id);
    $stmt->execute();

    return $stmt;
    }

    function getRepliesReview($review_id, $user_id) {
    global $db;

    // prepare query
    $stmt = $db->prepare(
    'SELECT *
    FROM ReplyReviews
    WHERE ReplyReviews.review = :id
    AND ReplyReviews.commenter = :user_id');

    // bind and execute
    $stmt->bindParam(':id', $review_id);
    $stmt->bindParam(':user_id', $user_id);    
    $stmt->execute();

    return $stmt;
    }

    function getRestaurantReviews($id){
      global $db;
        
      $stmt = $db->prepare(
      'SELECT *
      FROM Review WHERE
      restaurant=:id');

      $stmt->bindParam(':id', $restaurantId);
      $stmt->execute();

      return $stmt->fetch();     
    }

    function reviewRestaurant($score, $title, $tldr, $body, $user_id, $rest_id) {
        global $db;

        include_once(dirname(__FILE__) . '/../utilities/utils.php');

        $id = getNextId($db);
        $stmt = $db->prepare('INSERT INTO Review (id, score, title, tldr, body, reviewer, restaurant) VALUES (?,?,?,?,?,?,?)');
        $stmt->execute(array($id, $score, $title, $tldr, $body, $user_id, $rest_id));

        return $id;
     }


?>