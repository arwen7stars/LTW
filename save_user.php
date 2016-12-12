<?php
  include_once("connection.php");
  include_once("./utilities/utils.php");
    //if (!isset($_POST['id'])) die('No id')

    echo $_POST['username'], " ",$_POST['location']," ", $_POST['password'], " ";
    if (!isset($_POST['username']) || trim($_POST['username']) == ''){
        $error = "Username is mandatory";
    }

    $findUsername = $db->prepare('SELECT * FROM User WHERE (name = ?)');
    $findUsername->execute(array($_POST['username']));
    $foundUsername = $findUsername->fetchAll();

    if(isset($foundUsername)){
        $error = "Username in use!";
        header("Location: ./register.php");
        die();
    } else echo 'new user!';

      $id = getNextId($db);
      $stmt = $db->prepare('INSERT INTO User (id, name, dataOfBirth, dateJoined) VALUES (?,?,?,?)');
      try{
          $stmt->execute(array($id, $_POST['username'], date('Y-m-d'), date('Y-m-d')));
          return $stmt->fetch();
      } catch(PDOException $e) {
          die($e->getMessage());
      }
      header("Location: ./index.php");
      die();
 // }
 ?>
