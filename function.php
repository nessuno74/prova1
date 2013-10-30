<?php
//INCLUDO I FILE NECESSARI AL FUNZIONAMENTO
include "class/function.class.php"; //CLASSE GLOBALE
require "mail/class.phpmailer.php"; //CLASSE PHP MAILER 

$data=new n74("127.0.0.1","root","root","files");//PASSO I PARAMETRI DEL DATABASE ALL CLASSE N74
$data->n74Connect();//MI CONNETTO AL DATABASE
$link=$data->mylink;//CREO LA VARIABILE LINK PER DA USARE NELLA QUERY

//cartelle server
$server1= $_SERVER['SERVER_NAME']."/files/";
$server=str_replace($_SERVER['DOCUMENT_ROOT'], $_SERVER['SERVER_NAME'], dirname(__FILE__))."/";
//directory upload
$upload_dir="file/";

//parametri invio mail
$messaggio = new PHPmailer();
$messaggio->IsSMTP(); // telling the class to use SMTP
$messaggio->SMTPAuth   = true;                  // enable SMTP authentication
$messaggio->Host       = "smtps.aruba.it"; // sets the SMTP server
$messaggio->SMTPSecure = 'ssl';
$messaggio->Port       = 465;                    // set the SMTP port for the GMAIL server
$messaggio->Username   = "fb@macelleriamunicchi.com"; // SMTP account username
$messaggio->Password   = "fb";        // SMTP account password
$messaggio->IsHTML(true);


$title="Files Chimera Informatica";
//$menu="menu";

$footer="piede";
$frase="Esegui il login";
$logout="<a href='logout.php'>esci</a>";

//funzione che gestisce il menu
function nav(){
	$result=mysql_query("SELECT * FROM menu");
	while ($res=mysql_fetch_array($result,MYSQL_ASSOC)) {
		echo "<li><a href=".$res['link'].">".$res['name']."</a></li>";
	}
}


//select form upload dati assegna al file il tipo di condivisione
function role_option(){
	$result=mysql_query("SELECT * FROM role");
	while ($res=mysql_fetch_array($result,MYSQL_ASSOC)) {
		echo "<option value=".$res['id'].">".$res['nome']."</option>";
	}
}

?>
