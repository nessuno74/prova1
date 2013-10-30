<?php

session_start();
$data->n74Login_ck();
$name_page="Lista File personali";

$utente=$_SESSION['utente'];
$id_user=$_SESSION['id_user'];
$role=$_SESSION['role'];
$policy_personal=1;

$res_personale=mysql_query("SELECT * FROM file WHERE id_user = '$id_user' AND policy = '$policy_personal'");
while ($res=mysql_fetch_array($res_personale,MYSQL_ASSOC)) {
	?>
	<tr>
		<td><?php echo $res['id']?></td>
		<td><?php echo $res['file_name']?></td>
		<td><?php echo $res['file_ext']?></td>
		<td><a href='<?php echo $res['file_path'].$res['file_name'] ?>'>Download</a></td>
		<td><a href='link.php?url=http://<?php echo $server.$res['file_path'].$res['file_name'] ?>'>Invia File</a></td>
	</tr>
	<?php
}

?>