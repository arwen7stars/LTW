<?php

function save_user(){

    global $db;
    $id = getNextId($db);

    //guardar em users
    $stmt = $db->prepare('INSERT INTO User (id, name, dataOfBirth, dateJoined) VALUES (?,?,?,?)');
    try{
        $stmt->execute(array($id, $_POST['real_name'], $_POST['birthday'], date('Y-m-d')));
    } catch(PDOException $e) {
        die($e->getMessage());
    }

    //guardar em login
    $hashpass = hash('sha256',  $_POST['password']);

    $stmt = $db->prepare('INSERT INTO Login (id, username, password) VALUES (?,?,?)');
    try{
        $stmt->execute(array($id, $_POST['username'], $hashpass));
    } catch(PDOException $e) {
        die($e->getMessage());
    }

}
?>
