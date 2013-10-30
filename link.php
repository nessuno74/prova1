<?php
include 'function.php';
//include 'theme.inc.php';
session_start();
$data->n74Login_ck();
$name_page="Genera il link ed invio mail";
$msg=$_GET['msg'];
$msgok=$_GET['msgok'];
$utente=$_SESSION['utente'];
$id_user=$_SESSION['id_user'];

$url_real=$_GET['url'];

include 'inc/head.inc.php';
?>
<body>
        <div class="container">
            <div class="row">
                <div class="span12" >
                    <h3> <? echo $title ?> </h3>
                    <div class="row-fluid">

                        <div class="span3">
                            <ul class="nav nav-list">
                            	<?php echo nav($link)?> 
                            </ul>
                        </div>
                        <div class="span9">
                            <h3><?php echo $name_page ?> </h3>
							<p class="text-error"> <?echo $msg  ?></p>
							<p> <?echo $msgok  ?></p>
                            <?php include "invio_link.php" ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php include 'inc/footer.inc.php' ?>
        </div>
<?php include 'inc/fine.inc.php' ?>

