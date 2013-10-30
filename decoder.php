<?php
include 'function.php';

session_start();
login_ck();

$de= mysql_real_escape_string($_GET['decode']);
echo $de."<br>"; 

$qry="SELECT * FROM url WHERE url_short='$de'";
$result=mysql_query($qry);

while($row = mysql_fetch_array($result))
{
$res=$row['url_real'];
echo $res;
//header("location:".$res);
}

?>