<?php

include_once 'productos.php';

//mapear solicitudes para mandar la informacion:
    //devuelve un json con la respuesta que analice
if(isset($_GET['categoria'])){
    $categoria = $_GET['categoria'];

    if($categoria == ''){
        echo json_encode(['statuscode' => 400, 'response' => 'No existe esa categoria']);
    }else{
        $productos = new Productos();
        if($categoria == "salon"){
            $items = $productos->getItemsByCategory($categoria);    
        }
        else if($categoria == "musica"){
            $items = $productos->getItemsByCategoryMusica($categoria);
        }else if($categoria == "entretenimiento"){
            $items = $productos->getItemsByCategoryEntretenimiento($categoria);
        }else if($categoria == "comida"){
            $items = $productos->getItemsByCategoryComida($categoria);
        }else if($categoria == "floreria"){
            $items = $productos->getItemsByCategoryFloreria($categoria);
        }else if($categoria == "alquiladora"){
            $items = $productos->getItemsByCategoryAlquiladora($categoria);
        }
        
        echo json_encode(['statuscode' => 200,'items' => $items]);
    }
}else if(isset ($_GET['get-item'])){
    $id = $_GET['get-item'];

    if($id == ''){
        echo json_encode(['statuscode' => 400, 'response' => 'no hay valor para id']);
    }else{
        //nuevo objeto productos
        $productos = new Productos();
        //regresa todo el elemento de acuerdo al id
        $item = $productos->get($id);
        echo json_encode(['status code' => 200, 'item' => $item]);
    }
}else{
    echo json_encode(['statuscode' => 400, 'response' => 'No hay accion']);
}

?>