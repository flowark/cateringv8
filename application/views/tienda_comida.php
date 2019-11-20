<!--!DOCTYPE html>
<html lang="en"-->
<head>
    <!--meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Documento</title-->
    <link rel="stylesheet" href="<?php echo base_url();?>css/styleTienda.css">
</head>
<body>
    <?php
        include_once('menu_tienda.php');
    ?>
    <div class="container">
    <h1><img id="imgPagina" src="<?php echo base_url();?>img/comida.svg">Comida</h1>
    <main>
        <?php
            //transformar json en un objeto:
            $response = json_decode(file_get_contents('http://localhost:8080/catering/tienda/api/productos/api-productos.php?categoria=comida'), true);
            //validacion
            if($response['statuscode'] == 200){
                foreach($response['items'] as $item){
                    //llamada a layout items
                    include('items.php');
                }
            }else{
                //mostrar error
                echo $response['response'];
            }
        ?>
        
    </main>
    </div>
    <script src="<?php echo base_url();?>js/main.js"></script>
</body>
<!--/html-->