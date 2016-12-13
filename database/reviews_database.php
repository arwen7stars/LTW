<?php
    function getReviewsUser($id) {
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

    return $stmt;
    }

?>