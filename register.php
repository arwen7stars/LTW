<?php
  include_once("includes/header.php");
  include_once("connection.php");
  include_once("utilities/utils.php");
?>

<section id="forms">
    <h3>
        Register
    </h3>

    <form action="./save_user.php" method="POST">
        <?php
        if(isset($error))
        {
         echo $error;
     }
        ?>
    <input type="text" name="username" placeholder="Username" required>
    <p></p>
    <input type="text" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Password" required>
    <p></p>
    <input type="text" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Repeat password" required>
    <p></p>
    <select name="location">
        <option value="-1" selected>Location</option>
        <?php
        include_once("location_combobox.php");
        ?>
    </select>
    <p></p>
    <input type="submit" value= "Submit">
    </form>
</section>

<?php
  include_once("includes/footer.php");
?>
