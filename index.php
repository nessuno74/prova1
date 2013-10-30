<?php
include 'function.php';

$title="Login";
$frase="Inserisci i dati per accedere al sito";
$msg=$_GET['msg'];

include 'inc/head.inc.php';

?>
<body>
  <div class="container">
   	<div class="row">
   		<div class="span4"></div>
     		<div class="span4">
          <h3 class="form-signin-heading"><?php echo $title ?></h3>
					<p class="text-error"><?php echo $msg ?></p>
					<form class="form-signin" name="login" action="controllo.php" method="POST">
        				<input type="text" class="input-block-level" name="username"placeholder="Email address">
        				<input type="password" class="input-block-level" name="password" placeholder="Password">
        				<button class="btn btn-large btn-primary" type="submit">Sign in</button>
      		</form>
      	</div>
  			<div class="span4"></div>
    	</div>
			<?php //include 'inc/footer.inc.php' ?>
	</div>
<?php include 'inc/fine.inc.php' ?>

