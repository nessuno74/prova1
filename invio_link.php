<?php
//include 'function.php';
session_start();
$data->n74Login_ck();
$ok='Email inviata correttamente!';
$err="Errore nell'invio della mail";
$mail_link=$_POST['mail'];
$qry_check_address="SELECT * FROM mail WHERE mail_address = '$mail_link'";
$qry_check_address1=$data->n74Query($qry_check_address);
$qry_rec_address="INSERT INTO mail (id,mail_address) VALUES ('','$mail_link')";
$qry_rec_invio="INSERT INTO mail_inviate (id,mail_address, file_send) VALUES ('','$mail_link', '$url_real')";


$testo_mail=<<<TESTO
<html>
    <head>
        <title>File manager Chimera Informatica</title>
    </head>
    <body>
        <h3>File manager Chimera Informatica</h3>
        <p>messaggio inviato dal sistema di gestione file di Chimera Informatica dall utente $utente</p>
        <p>per scaricarire il file cliccate su download in fondo alla mail</p>
        <a href="$url_real">Download</a>
    </body>
</html>
TESTO;

//definiamo le intestazioni e il corpo del messaggio
$messaggio->From='info@chimeracomputer.it';
$messaggio->AddAddress($mail_link);
$messaggio->AddReplyTo('info@chimeracomputer.it'); 
$messaggio->Subject='Chimera Informatica File Manager';
$messaggio->Body=$testo_mail;

if(!empty($mail_link)){
		if(!$messaggio->Send()){
  			header("Location: link.php?msg=".urlencode($err)); 
		}else{
        $messaggio->SmtpClose();
        unset($messaggio);
        //echo $qry_check_address;

        if(mysql_num_rows($qry_check_address1)!=0){
            $data->n74Query($qry_rec_invio);
            header("Location: link.php?msgok=".urlencode($ok));
        }else{
            $data->n74Query($qry_rec_invio);
            $data->n74Query($qry_rec_address);
            header("Location: link.php?msgok=".urlencode($ok));
        }
        
        //header("Location: link.php?msgok=".urlencode($ok));
		}
	
}else{
?>
<form class="form-horizontal" name="form_up" action="" method="post">
	<label><h4>Mail</h4></label>
	<input type="text" name="mail"/>
	<button type="submit" class="btn btn-primary">INVIA</button>
</form>
<?php
}



?>