<?php

function save_user(){

    global $db;
    $id = getNextId($db);

    $stmt = $db->prepare('INSERT INTO User (id, name, dataOfBirth, dateJoined) VALUES (?,?,?,?)');
    try{
        $stmt->execute(array($id, $_POST['username'], $_POST['birthday'], date('Y-m-d')));
        return $stmt->fetch();
    } catch(PDOException $e) {
        die($e->getMessage());
    }

}
?>
