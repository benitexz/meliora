<?php
session_start();

$username = $_POST['username'];
$password = $_POST['password'];

/* USER LOGIN TANPA DATABASE */

$user_benar = "admin";
$pass_benar = "admin";

if($username == $user_benar && $password == $pass_benar){

    $_SESSION['login'] = true;
    $_SESSION['username'] = $username;

    header("Location: index.php");

}else{

    echo "Login gagal";
}