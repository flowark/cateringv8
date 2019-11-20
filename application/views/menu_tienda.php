<nav class="navbar menu-tienda">
    <ul>
        <li><a href="<?php echo base_url();?>index.php/Principal/tiendaSalones">Salones</a></li>
        <li><a href="<?php echo base_url();?>index.php/Principal/tiendaMusica">Música</a></li> 
        <li><a href="<?php echo base_url();?>index.php/Principal/tiendaEntretenimiento">Entretenimiento</a></li>
        <li><a href="<?php echo base_url();?>index.php/Principal/tiendaComida">Comida</a></li>
        <li><a href="<?php echo base_url();?>index.php/Principal/tiendaFloreria">Floreria</a></li>
        <li><a href="<?php echo base_url();?>index.php/Principal/tiendaAlquiladora">Alquiladora</a></li> 
    </ul>
    <ul class="navbar-right">
        <li class="carrito">
            <a href="#" class='btn-carrito'>Carrito</a>
            <div id="carrito-container">
                <div id="tabla">

                </div>
            </div>
        </li>
        <button><a class="btn btn-azul" href="<?php echo base_url();?>index.php/Principal/compra">Compra</a></button>
    </ul>
</nav>