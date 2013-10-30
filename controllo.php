<?php
include 'function.php';

$err1="utente e password errati";
$err2="utente o password errati";

$user=$_POST['username'];
$pass=$_POST['password'];

$res1=$data->n74Query("SELECT * FROM users WHERE user='$user' AND pass='$pass'");
$res2=$data->n74Query("SELECT * FROM users WHERE user='$user' OR pass='$pass'");
//$res1=mysql_query("SELECT * FROM users WHERE user='$user' AND pass='$pass'");
//$res2=mysql_query("SELECT * FROM users WHERE user='$user' OR pass='$pass'");

$res=mysql_fetch_array($res1,MYSQL_ASSOC);
$id=$res['id'];
$role=$res['privilegi'];

if(mysql_num_rows($res2)==0){
	header("Location: index.php?msg=".urlencode($err1));
}elseif (mysql_num_rows($res1)==0) {
	header("Location: index.php?msg=".urlencode($err2));
}else{
	session_start();
	$_SESSION['login']="1";
	$_SESSION['utente']=$user;
	$_SESSION['password']=$pass;
	$_SESSION['id_user']=$id;
	$_SESSION['privilegi']=$role;
	
	header("Location: home.php");
}


?>