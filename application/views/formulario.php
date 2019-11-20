<body>
<!--Registro-->
<div class="container" id="Registro">
<h1>Sugerencias</h1>
  <div class="row">
    <div class="col-md-6 panel">
      <form action="<?php echo base_url();?>index.php/Principal/insertaSugerencia" method="post">
    
        <div class="form-group col-md-12s">
          <label for="sugerencias">Para seguir mejorando nuestros servicios le pedimos deje sus comentarios:</label>
          <textarea class="form-control" rows="15" id="sugerencias" name="sugerencias" required=""></textarea>
        </div>
        <button type="submit" class="btn btn-azul center-block">Enviar comentarios</button>
      </form>
    </div>
    <div class="col-md-6 text-center">
      <img src="<?php echo base_url(); ?>img/talk.svg" alt="registrate" width="100%">
    </div>
  </div>
</body>