<div class="articulo panel panel-default"> 
    <div class="panel-body">
        <input type="hidden" id="id" value="<?php echo $item['id'];?>">
        <div class="imagen"><img class="img-responsive" src="<?php echo base_url();?>img/catalogo/<?php echo $item['imagen']; ?>" /></div>
        <div class="titulo"> <?php echo $item['nombre']; ?> </div>
        <div class="precio">$<?php echo $item['precio']; ?> MXN</div>
        <div class="botones">
            <button class="btn-add btn-amarillo">Agregar al carrito</button>
        </div>
    </div>
</div>