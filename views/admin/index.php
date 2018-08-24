<?php include ('templates/head.php');?>

<article class="art1">
<div class="encabezado">
<h1>ScriptWeb</h1>
</div>
</article >
<article class="art-buscador">
<div>
	<input type="search" class="buscar">
	<input type="submit" value="BUSCAR" class="btn-buscar">
</div>
</article>
<?php
session_start();

if(isset($_SESSION['email_user'])){
  echo'
      <p>
        Bienvenid@: '. $_SESSION['email_user'] .'
      </p>
      ';
}

?>
<article class="tipos">
<div class="div-a"><h2>Aprendices</h2></div>
<div class="div-i"><h2>Instructores</h2></div>
<div class="div-e"><h2>Empresas</h2></div>
</article>
<article class="info">
<div class="info-perfil"><h3>Perfil</h3></div>
<div class="proyecto"><h3>Proyecto</h3></div>
<div class="info-proyecto"><h3>Info-Proyecto</h3></div>
</article>
<?php include ('templates/foot.php');?>



