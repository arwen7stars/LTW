<?php

/**
* Get ID to be used for next INSERT into the database
* @param db Database
* @return Next ID (integer number)
*/
function getNextId($db) {

  // prepare query
  $stmt = $db->prepare('
  SELECT MAX(id)
  FROM (
    SELECT id
    FROM Image
    UNION
    SELECT id
    FROM User
    UNION
    SELECT id
    FROM Login
    UNION
    SELECT id
    FROM ResidenceArea
    UNION
    SELECT id
    FROM Restaurant
    UNION
    SELECT id
    FROM Review
    UNION
    SELECT id
    FROM Event
    UNION
    SELECT id
    FROM PriceRange );');

  // fetch max id
  $stmt->execute();
  $row = $stmt->fetch();
  $maxId = (int) $row['MAX(id)'];

  //return next id
  return $maxId + 1;
}

?>
