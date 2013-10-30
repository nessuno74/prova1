<?php
include 'function.php';

session_start();
$data->n74Login_ck();
$name_page="File Personali";
$msg=$_GET['msg'];
$msgok=$_GET['msgok'];
$utente=$_SESSION['utente'];
$id_user=$_SESSION['id_user'];
//$role=$_SESSION['role'];
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
                            <table class="table table-striped">
                                <tr>
                                    <td>#</td>
                                    <td>Nome</td>
                                    <td>Tipo</td>
                                    <td>Link</td>
                                    <td>Short Link</td>
                                </tr>
                                <?php include 'inc/list_personale.inc.php' ?>
                            </table>    
                         </div>
                    </div>
                </div>
            </div>
            <?php include 'inc/footer.inc.php' ?>
        </div>
<?php include 'inc/fine.inc.php' ?>