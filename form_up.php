<?php
//include 'function.php';
session_start();
$data->n74Login_ck();
$role=$_POST['role'];
$file_tmp=$_FILES['file']['tmp_name'];
$file_name=$_FILES['file']['name'];
$file_name=str_replace(' ', '_', $file_name);
$file_ext=$_FILES['file']['type'];
$file_ext=explode('/',$file_ext);
$file_ext=$file_ext[1];
$file_size=$_FILES['file']['size'];
$file_error=$_FILES['file']['error'];
$err1="errore nell upload del file";
$err2="il file esiste gia";
$ok= "Il file ".$file_name." è stato caricato correttamente e il formato è:".$file_ext;
$url=$upload_dir.$file_name;
$qry="INSERT INTO file (id, file_name, file_path, file_ext, id_user, policy) VALUES (NULL, '$file_name', '$upload_dir', '$file_ext', '$id_user', '$role')";

if(!empty($file_tmp)){
	if ($file_error>0) {
		//echo "errore nell upload del file<br>";
		header("Location: home.php?msg=".urlencode($err1));
	}elseif(file_exists($url)){
		//echo "il file esiste gia<br>";
		header("Location: home.php?msg=".urlencode($err2));
	}else{
		if(move_uploaded_file($file_tmp,$url)){
			mysql_query($qry)or die("ci sono errori nella query");
			header("Location: home.php?msgok=".urlencode($ok));
		}else{
			header("Location: home.php?msg=".urlencode($err1));
		}
	}
}else{
?>
<form class="form-horizontal" name="form_up" action="" method="post" enctype="multipart/form-data">
	<label><h4>File</h4></label>
	<span class="btn btn-file">Upload<input type="file" name="file"/></span>
	<label><h4>Condivisione</h4></label>
	<select name="role">
		<?php echo role_option($link) ?>
	</select>
	<button type="submit" class="btn btn-primary">CARICA</button>
</form>
<?php
}
?>