<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="js/sweetalert2.js"></script>
    <script type="text/javascript" src="js/sweetalert2.min.js"></script>
    <link rel="stylesheet" href="css/sweetalert2.css" type="text/css">
    <link rel="stylesheet" href="css/sweetalert2.min.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <script src="js/jquery-2.1.4.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#form').submit(function (e) {
                e.preventDefault();
                //captura todos los valores que tiene el formulario es decir todos los input que esten en ese formulario...
                var datos=$(this).serialize();
                /*swal(
                 'Titulo del Mensaje',
                 'Mensaje',
                 'Tipo de mesaje'
                 );*/
                $.ajax({
                    type:"POST",
                    url:"ejecucion.php",
                    data:datos,
                    success:function(data){
                        swal(
                            'Titulo del Mensaje',
                            'Mensaje',
                            'success'
                        );
                        //imprimo el resultado en el div mensaje que procesa ajax
                        $("#mensaje").html(data);
                    }
                });
            });
        });
    </script>
    <title>Alert</title>
</head>
<body>

<!--<div class="container">
    <h3>Uso de Sweel Alert</h3>
    <form method="POST" id="form">
        <label for="">Nombre</label>
        <div class="form-group">
            <input type="text" name="nombre" id="nombre"class="form-control">
        </div>
        <input type="submit" name="aceptar" value="Aceptar"class="btn btn-primary">
    </form>
    <div id="mensaje"></div>

</div>-->

<div class="m-body panel container">
        <form action="<?php echo base_url();?>index.php/principal/insertaServicio" method="POST" class="formulario panel-body">
            <div class="form-group col-md-6">
              <label for="fecha_servicio">Fecha Servicio</label>
              <input type="date" value="" class="form-control" id="fecha_servicio" 
              name="fecha_servicio" required>
            </div>

            <div class="form-group col-md-6">
              <label for="fecha_instalacion">Fecha Instalacion</label>
              <input type="date" value="" class="form-control" id="fecha_instalacion" 
              name="fecha_instalacion" required>
            </div>

            <div class="form-group col-md-6">
              <label for="fecha_entrega">Fecha Entrega</label>
              <input type="date" value="" class="form-control" id="fecha_entrega" 
              name="fecha_entrega" required>
            </div>

             <div class="form-group col-md-6">
              <label for="hora">Hora</label>
              <input type="time" value="" class="form-control" id="hora" 
              name="hora" required>
            </div>

            <div class="form-group">
              <label for="descripcion">Descripcion</label>
              <input type="text" value="" class="form-control" id="descripcion" 
              name="descripcion" required>
            </div>
            <div class="form-group col-md-6">
              <label for="curp">Curp</label>
              <input type="text" value="" class="form-control" id="curp" 
              name="curp" required>
            </div>
            <div class="form-group col-md-6">
              <label for="tipoEvento">Tipo de evento</label>
              <select class="form-control" name="tipoEvento">
                <option selected value="Social">Social</option>
                <option selected value="Corporativo">Corporativo</option>
                <option selected value="Cultural">Cultural</option>
              </select>
            </div>


              <button type="submit" class="btn btn-azul">Agregar</button>
        </form>

      </div>



</body>
</html>

