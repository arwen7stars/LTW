<?php
  include_once("includes/header.php");
?>

<section id="forms">
    <h3>
        Register
    </h3>

    <form action="./save_user.php" method="POST">
    <input type="text" name="username" placeholder="Username" required>
    <p></p>
    <input type="text" name="email" placeholder="Email" required>
    <p></p>
    <input type="text" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Password" required>
    <p></p>
    <input type="text" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Repeat password" required>
    <p></p>
    <input type="submit" value= "Submit">
    </form>
</section>

<?php
  include_once("includes/footer.php");
?>
