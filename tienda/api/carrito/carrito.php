<?php
include_once '../../lib/session.php';

class Carrito extends Session{

    function __construct(){
        parent::__construct('carrito');
    }

    public function load(){
        //validar
        if($this->getValue() == NULL){
            return [];
        }
        
        return $this->getValue();
    }
    //añadir elementos al carrito:
    public function add($id){
        //validar:
        if($this->getValue() == NULL){
            $items = [];
        }else{
            //codificar la informacion del arreglo
            //el arreglo que se guarda en mi sesion esta codificado
            //items es un arreglo de productos de mi carrito

            //decodificar json para transformar el arreglo
            $items = json_decode($this->getValue(),1);
            
            //actualizar los datos
            //añadir un nuevo elemento o actualizar la cantidad:
            for($i=0; $i < sizeof($items); $i++){
                if($items[$i]['id'] == $id){
                    //si tengo mas de un mismo producto incremento en 1:
                    $items[$i]['cantidad'] ++;
                    //Codificar en formato json para usarlo como string en la sesion:
                    $this->setValue(json_encode($items));
                    
                    return $this->getValue();
                }
            }
        }
        //Operaciones cuando el carrito esta vacio y
        //operaciones cuando el carrito tiene un nuevo elemento
        $item = ['id' => (int)$id, 'cantidad' => 1];
        //se agrega a nuestros elementos del carrito
        array_push($items, $item);
        //se vuelve a decodificar:
        $this ->setValue(json_encode($items));
        //devolvemos en formato string
        return $this->getValue();
    }
    
    public function remove($id){
        if($this -> getValue() == NULL){
            $items = [];
        }else{
            //decodificar string en json
          $items = json_decode($this ->getValue(), 1);
          
          for($i = 0; $i<sizeof($items);$i++){
              //validacion
              if($items[$i]['id']== $id){
                  $items[$i]['cantidad']--;
                  
                  if($items[$i]['cantidad']==0){
                      //eliminar de nuestro arreglo
                      unset($items[$i]);
                      //reordenar los indices del arreglo:
                      $items = array_values($items);
                  }
                  //decodificar a json
                  $this ->setValue(json_encode($items));
                  return true;
              }
          }
        }
    }
}
?>