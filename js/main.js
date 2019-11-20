//opciones cuando termina de cargar la pagina:
//mostrar el numero de lementos agregados al carrito
document.addEventListener('DOMContentLoaded', event =>{
    //cookies
    /*se guardan con ;*/
    const cookies = document.cookie.split(';');
    let cookie = null;
    cookies.forEach(item =>{
        //para cada cokie validar si existe un item
        if(item.indexOf('items') > -1){
            cookie = item;
        }
    });
    /*validacion: dividir con igual*/
    if(cookie != null){
        const count = cookie.split('=')[1];
        console.log(count);
        document.querySelector('.btn-carrito').innerHTML = `(${count}) Carrito`;
    }
});

const bCarrito = document.querySelector('.btn-carrito');

bCarrito.addEventListener('click', event =>{
    const carritoContainer = document.querySelector('#carrito-container');
    
    if(carritoContainer.style.display == ''){
        carritoContainer.style.display = 'block';
        actualizarCarritoUI();
    }else{
         carritoContainer.style.display = '';
    }
});
//lenar carrito y se vea:
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
                                <img src ='http://localhost:8080/catering/img/catalogo/${element.imagen}' width='100'/>
                            </div>

                            <div class='info'>
                                <input type='hidden' id="id" value='${element.id}'/>
                                <div class = 'nombre'>${element.nombre}</div>
                                <div>${element.cantidad} items de $${element.precio}</div>
                                <div>Subtotal: $${element.subtotal}</div>
                                <div class='botones'><button class='btn-remove btn-rojo'>Quitar 1 elemento del carrito</button></div>
                            </div>
                        </div>
                    `;
                });
                
                precioTotal = `<p>Total: $${data.info.total}</p>`;
                tablaCont.innerHTML = precioTotal + html;
                //para mantener actualizado los datos:
                document.cookie = `items=${data.info.count}`;

                bCarrito.innerHTML = `(${data.info.count}) Carrito`;
                //selecionar todos los botones de remover y añadir un evento
                document.querySelectorAll('.btn-remove').forEach(boton =>{
                    boton.addEventListener('click', e =>{
                        const id = boton.parentElement.parentElement.children[0].value;
                        removeItemFromCarrito(id);
                    });
                });
            });
}

const botones = document.querySelectorAll('.btn-add');

botones.forEach(boton =>{
    const id = boton.parentElement.parentElement.children[0].value;
    //console.log(id);
    boton.addEventListener('click', e =>{
        addItemToCarrito(id);
    });
});

function removeItemFromCarrito(id){
    fetch('http://localhost:8080/catering/tienda/api/carrito/api-carrito.php?action=remove&id='+ id)
    .then(res => res.json())
    .then(data =>{
        console.log(data.status);
        actualizarCarritoUI();
    });
}
//mandar a llamar api carrito con action add
function addItemToCarrito(id){
    fetch('http://localhost:8080/catering/tienda/api/carrito/api-carrito.php?action=add&id='+ id)
    .then(res => res.json())
    .then(data =>{
        console.log(data.status);
        actualizarCarritoUI();
    });
}