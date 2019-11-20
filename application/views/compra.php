<body>
    <div class="container">
        <h1>Verifique su compra</h1>
        <div class="contenido">
            <form action="<?php echo base_url();?>index.php/Principal/insertaCompra/" method="post">
                <div id="tabla">

            
                </div>
                <br>
                <button type="submit" class="btn btn-verde center-block">Pagar</button>
                <br>
            </form>
        </div>
    </div>
    <script>
const contenido = document.querySelector('#tabla');
if(contenido.style.display == ''){
        contenido.style.display = 'block'; 
        contenido.style.textAlign = "center";
        actualizarCarritoUI();
}else{
         contenido.style.display = '';
}
function actualizarCarritoUI(){
    fetch('http://localhost:8080/catering/tienda/api/carrito/api-carrito.php?action=mostrar')
            .then(response => response.json())
            .then(data => {
                console.log(data);
                let tablaCont = document.querySelector('#tabla');
                let precioTotal = '';
                let html = '';
                
                data.items.forEach(element =>{
                    html += `
                        <div class='fila'>
                            <div class = 'imagen'>
                                <img src ='http://localhost:8080/catering/img/catalogo/${element.imagen}' width='400'/>
                            </div>

                            <div class='info'>
                                <input type='hidden' id="id" value='${element.id}'/>
                                <div class = 'nombre'>${element.nombre}</div>
                                <div>${element.cantidad} items de $${element.precio}</div>
                                <div>Subtotal: $${element.subtotal}</div>
                            </div>
                        </div>
                        <br>
                    `;
                });
                
                precioTotal = `<br><h2>Total: $${data.info.total}</h2><br>`;
                tablaCont.innerHTML = precioTotal + `<input type='hidden' id="total" name="total" value='${data.info.total}'/>` + html;
                //para mantener actualizado los datos:
                document.cookie = `items=${data.info.count}`;
                //visualizar datos:
                bCarrito.innerHTML = `(${data.info.count}) Carrito`;
            });
}
</script>
</body>