<?php

include '../../controllers/UserController.php';

if(isset($_POST['email_user']) && isset($_POST['pass_user'])){

  $email_user = $_POST['email_user'];
  $pass_user = $_POST['pass_user'];

  if( UserController::login($email_user, $pass_user)){
    session_start();
    $_SESSION['email_user'] = $_POST['email_user'];

    header('Location: http://localhost/login/views/admin/index.php');
  }
}