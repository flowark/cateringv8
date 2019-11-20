<head>
    <link rel="stylesheet" href="<?php echo base_url();?>css/styleTienda.css">
</head>
<body>
    <?php
        include_once('menu_tienda.php');
    ?>
    <div class="container">
    <h1><img id="imgPagina" src="<?php echo base_url();?>img/banda.svg">Entretenimiento</h1>
    <main>
        <?php
            $response = json_decode(file_get_contents('http://localhost/catering/tienda/api/productos/api-productos.php?categoria=entretenimiento'), true);
            if($response['statuscode'] == 200){
                foreach($response['items'] as $item){
                    include('items.php');
                }
            }
        ?>
        
    </main>
    </div>
    <script src="<?php echo base_url();?>js/main.js"></script>
</body>