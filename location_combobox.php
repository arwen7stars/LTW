<?php
    $areaNameStmt= $db->prepare(
        'SELECT name, id
        FROM ResidenceArea');
        $areaNameStmt->execute();

    while($row = $areaNameStmt->fetch()) { ?>

        <option value=<?php echo $row['id'] ?> > <?php echo $row['name'] ?> </option>

<?php } ?>
