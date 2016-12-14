<?php
echo ' in validate ';
    if(isset($_POST['submit'])){
echo ' in isset ';
        $username = trim($_POST['username']); //tira espacos
	    $password = $_POST['password'];
        $repeat_password = $_POST['repeat_password'];
        $location_id = $_POST['location'];

        if($username == ''){
            $error = 'Please choose a username.';
        }
        if (!ctype_alnum($username)) { //se tiver algo mais que letras ou nums
			$error = 'Username should be numbers and letters only';
		}

        if($password != $repeat_password){
            $error = 'Passwords don\'t match';
        }
        //verificar se a pass esta no formato
        preg_match('/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$/', $password, $matches);
        if(!isset($matches)){}

    }

    //header("Location: ./register.php");
    ?>
    <span> <?php echo $error; ?> </span>
