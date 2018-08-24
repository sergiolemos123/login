
<?php include ('../../../views/front/templates/head.php'); ?>
<article>




<h1> Ingresar </h1>


<div class="container">

  <form action="/action_page.php">

    <div class="row">

      <div class="campos">
        <label>USUARIO</label>
      </div>
      <div class="respuesta">
        <input type="text" placeholder="Tu Usuario...">
      </div>
    </div>

    <div class="row">
      <div class="campos">
        <label for="lname">PASSWORD</label>
      </div>
      <div class="respuesta">
        <input type="password" id="lname" name="lastname" placeholder="Tu Contraseña...">
      </div>
    </div>


<center>
    <div class="row">
      <input class="Enviar" type="submit" value="Ingresar">
    </div>
  </form>
</div>
</center>
</article>

<?php include ('../../../views/front/templates/foot.php'); ?>