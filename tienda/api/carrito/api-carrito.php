<?php
//mapear operaciones a traves de una interfaz
include_once 'carrito.php';

/*header("Access-Control-Allow-Origin: http://localhost:8080/catering");
// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');    // cache for 1 day
}*/

//que tipo de accion realizar?:
if(isset($_GET['action'])){
    $accion = $_GET['action'];
    $carrito = new Carrito();
    //tres acciones que respondera nuestra api
    switch ($accion){
        case 'mostrar':
            mostrar($carrito);
        break;
    
        case 'add':
            add($carrito);
        break;
    
        case 'remove':
            remove($carrito);
        break;
    
        default :
    }
}else{
    //mensaje de error
    echo json_encode(['statuscode' => 404,
                        'response' => 'No se puede procesar la solicitud']);
}
//cargar nuestro carrito para mostrarlo en la interfaz:
function mostrar($carrito){
    //cargar arreglo en la sesion
    //cosultar la base de datos para actualizar valores de los productos

    //regresa valor de mi sesion y decodifica
    $itemsCarrito = json_decode($carrito->load(),1);
    $fullItems = []; //contiene toda la info de mis productos
    $total = 0;
    $totalItems = 0; //cantidad de productos
    
    //obtener un elemento item del carrito
    foreach ($itemsCarrito as $itemCarrito){
        //obtener solicitud mediante url
        $httpRequest = file_get_contents('http://localhost:8080/catering/tienda/api/productos/api-productos.php?get-item=' . $itemCarrito['id']);
        //decodificar http request
        $itemProducto = json_decode($httpRequest,1)['item'];
        $itemProducto['cantidad'] = $itemCarrito['cantidad'];
        $itemProducto['subtotal'] = $itemProducto['cantidad'] * $itemProducto['precio'];
        
        $total += $itemProducto['subtotal'];
        $totalItems += $itemProducto['cantidad'];

        array_push($fullItems, $itemProducto);
    }
    //un arreglo con dos arreglos
    $resArray = array('info' => ['count' => $totalItems, 'total' => $total], 'items' => $fullItems);
    //imprimir
    echo json_encode($resArray);
}

function add($carrito){
    //si existe un id
    if(isset($_GET['id'])){
        $res = $carrito->add($_GET['id']);
        echo $res;
    }else{
        //error
        echo json_encode(['status code' => 404,
                             'response' => 'No se puede procesar la solicitud, id vacio']);
    }
}

function remove($carrito){
    if(isset($_GET['id'])){
        $res = $carrito->remove($_GET['id']);
        if ($res){
            echo json_encode(['statuscode' => 200]);
        }else{
            echo json_encode(['statuscode' => 400]);
        }
    }else{
        //error
        echo json_encode(['statuscode' => 404,
                            'response' => 'No se pude procesar la solicitud, id vacio']);
    }
}

?>