<?php
  include_once("connection.php");
  include_once("./utilities/utils.php");
    //if (!isset($_POST['id'])) die('No id');
    if (!isset($_POST['username']) || trim($_POST['username']) == '') die('Username is mandatory');
    if (!isset($_POST['email']) || trim($_POST['email']) == '') die('Email is mandatory');
// function saveUser() {
//echo ($name + " " + $birthday);
      $id = getNextId($db);
      $stmt = $db->prepare('INSERT INTO User (id, name, dataOfBirth, dateJoined) VALUES (?,?,?,?)');
      try{
          $stmt->execute(array($id, $_POST['username'], date('Y-m-d'), date('Y-m-d')));
          return $stmt->fetch();
      } catch(PDOException $e) {
          die($e->getMessage());
      }
 // }
 ?>
