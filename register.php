<!DOCTYPE html>

<html>

<head>
    <title>EAT&AVAIL</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheets/global-style.css">
    <link rel="stylesheet" href="stylesheets/header.css">
    <link rel="stylesheet" href="stylesheets/register.css">
    <link rel="stylesheet" href="stylesheets/footer.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
</head>

<body>

    <?php
    ob_start(); // This turns on PHP's output buffering feature
    session_start();
    include_once(dirname(__FILE__) . "/database/connection.php");
    include_once(dirname(__FILE__) . "/utilities/utils.php");
    include_once(dirname(__FILE__) . "/database/users_database.php");
    include_once(dirname(__FILE__) . "/save_user.php");
    include_once(dirname(__FILE__) . "/includes/header.php");
    ?>
    <?php?>
    <section id="forms">
        <h3>
            Register
        </h3>

        <?php function validate(){ //para validar o user input. e chamada ao clicar submit

            global $error;
            $error = '';

            if(isset($_POST['submit'])){
                $username = trim($_POST['username']); //tira espacos
                $real_name = trim($_POST['real_name']); //tira espacos
                $password = $_POST['password'];
                $repeat_password = $_POST['repeat_password'];
                $location_id = $_POST['location'];

                //username vazio
                if($username == ''){
                    $error .= 'Please choose a username. <p></p>';
                }
                //username tem caracteres != de letras, nums, e espacos
                $usernameNoSpace = str_replace(' ', '', $username);
                if (!ctype_alnum($usernameNoSpace)) { //se tiver algo mais que letras ou nums
                    $error .= 'Username should be numbers, letters and spaces only. <p></p>';
                }
                //username em uso
                $usernameTaken = is_registered($username);
                if($usernameTaken == true){
                    $error .= 'Username is already taken. <p></p>';
                }
                //real name tem caracteres estranhos
                $realNameNoSpace = str_replace(' ', '', $real_name);
                if (!ctype_alpha($realNameNoSpace)) { //se tiver algo mais que letras ou nums
                    $error .= 'Please type your real name with only letters and spaces. <p></p>';
                }
                //passwords diferentes
                if($password != $repeat_password){
                    $error .= 'Passwords don\'t match. <p></p>';
                }
                //password nao esta no formato
                preg_match('/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$/', $password, $matches);
                if(empty($matches)){
                    $error .= 'Password must contain upper and lower case letters, a number, and be at least 4 characters long <p></p>';
                }
                //location nao selecionada
                if($location_id == -1){
                    $error .= 'Please select a location. <p></p>';
                }

            }
        }
        ?>

        <!-- paragrafo para display dos erros -->
        <p id="form_error"> </p>

        <!-- form de registo -->
        <form id="register_form" action="register.php" method="POST">
            <label> Username (only letters and numbers):
                <p></p>
                <input type="text" name="username" placeholder="Type username" required>
            </label>
            <p></p>
            <label> Name (only letters and spaces):
                <p></p>
                <input type="text" name="real_name" placeholder="Type your name" required>
            </label>
            <p></p>
            <label> Birthday:
                <p></p>
                <input id="birthday" type="date" name="birthday" max="14-12-2016">
            </label>
            <p></p>
            <label> Password (longer than 4 characters; contains a digit, upper and lower case letters):
                <p></p>
                <input type="password" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Type password" required>
            </label>
            <p></p>
            <input type="password" name="repeat_password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$" placeholder="Repeat password" required>
            <p></p>
            <label> Location:
                <p></p>
                <select name="location">
                    <option value="-1" selected>Select location</option>
                    <?php
                    include_once(dirname(__FILE__) . "/location_combobox.php");
                    ?>
                </select>
            </label>
            <p></p>
            <input type="submit" name="submit" value= "Submit">
        </form>

        <script>
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1; //comeca em 0
        var yyyy = today.getFullYear();
        if(dd<10){
            dd='0'+dd
        }
        if(mm<10){
            mm='0'+mm
        }

        today = yyyy+'-'+mm+'-'+dd; //data formatada
        document.getElementById("birthday").setAttribute("max", today);

         </script>




        <!-- depois de click em submit entra aqui e chama a funcao de validacao -->
        <?php
        if($_SERVER['REQUEST_METHOD']=='POST')
        {

            validate();

            if($error == ''){ //nao ha erros

                save_user();


                                $loginpage='login_page.php';
                                header('Location: ' . $loginpage);
                ?>
                <script>
                    document.getElementById("form_error").innerHTML = "You are now registered!";
                </script>
                <?php

                //include_once(dirname(__FILE__) . "/database/action_login.php");
                // redirect?

            } else{ //display dos erros
                ?>

                <script>
                    var errors = "<?php echo $error?>";
                    document.getElementById("form_error").innerHTML = "<font color=\"red\">"+errors+"</font>";
                </script>

                <?php
            }
        }

        ?>
    </section>

    <?php
    include_once(dirname(__FILE__) . "/includes/footer.php");
    ?>

</body>
</html>
