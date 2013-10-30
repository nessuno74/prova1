<?php




include 'function.php';

session_start();
login_ck();

$url_real=$_GET['url'];


	$urlinput=mysql_real_escape_string($url_real); 
	$id=rand(10000,99999);
	$shorturl=base_convert($id,20,36);
	$qry="INSERT INTO url VALUES ('$id','$urlinput','$shorturl')";
	mysql_query($qry);
	echo "Shortened url is <a href=\"http://127.0.0.1/files/". $shorturl ."\">http://127.0.0.1/". $shorturl ."</a>";
	

?>