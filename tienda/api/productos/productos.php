<?php
include_once '../../lib/db.php';

class Productos extends DB{

    function __construct(){
        parent::__construct();
    }
    //Obtener productos por id
    public function get($id){
        $query = $this->connect()->prepare('SELECT * FROM finalcarrito where id = :id');
        $query->execute(['id' => $id]);
        
        $row = $query->fetch();
        
        return[
            'id'         => $row['id'],
            'nombre'     => $row['nombre'],
            'precio'     => $row['precio'],
            'categoria'  => $row['id_categoria'],
            'imagen'     => $row['foto'],
        ];
    }
    public function getItemsByCategory($category){
        $query = $this->connect()->prepare('SELECT * FROM salon left join categorias on salon.id_categoria = categorias.id_categoria where categorias.nombre_categoria = :cat');
        $query->execute(['cat' => $category]);
       
        //Se va a crear un elemento con todos los productos
        $items = []; 
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            
            $item = [
            'id'         => $row['id_salon'],
            'nombre'     => $row['nombre'],
            'precio'     => $row['precio'],
            'categoria'  => $row['id_categoria'],
            'imagen'     => $row['foto'],
            ];
        
            array_push($items, $item);
        }
     return $items;   
    }
    public function getItemsByCategoryMusica($category){
        $query = $this->connect()->prepare('SELECT musica.id_musica, musica.nombre, musica.comentario, musica.foto,musica.id_tipoMusica, musica.id_categoria, tipomusica.precio, tipomusica.hora FROM musica left join tipomusica on musica.id_tipoMusica = tipomusica.id_tipoMusica left join categorias on musica.id_categoria = categorias.id_categoria where categorias.nombre_categoria = :cat');
        $query->execute(['cat' => $category]);
       
        //Se va a crear un elemento con todos los productos
        $items = []; 
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            
            $item = [
            'id'         => $row['id_musica'],
            'nombre'     => $row['nombre'],
            'precio'     => $row['precio'],
            'categoria'  => $row['id_categoria'],
            'imagen'     => $row['foto'],
            ];
        
            array_push($items, $item);
        }
     return $items;   
    }

    public function getItemsByCategoryEntretenimiento($category){
        $query = $this->connect()->prepare('SELECT entretenimiento.id_entretenimiento, entretenimiento.nombre, entretenimiento.comentario, entretenimiento.foto,entretenimiento.id_categoria, entretenimiento.precio FROM entretenimiento left join categorias on entretenimiento.id_categoria = categorias.id_categoria where categorias.nombre_categoria = :cat');
        $query->execute(['cat' => $category]);
       
        //Se va a crear un elemento con todos los productos
        $items = []; 
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            
            $item = [
            'id'         => $row['id_entretenimiento'],
            'nombre'     => $row['nombre'],
            'precio'     => $row['precio'],
            'categoria'  => $row['id_categoria'],
            'imagen'     => $row['foto'],
            ];
        
            array_push($items, $item);
        }
     return $items;   
    }

    public function getItemsByCategoryComida($category){
        $query = $this->connect()->prepare('SELECT comida.id_comida, comida.nombre, comida.comentario, comida.foto,comida.id_categoria, comida.precio FROM comida left join categorias on comida.id_categoria = categorias.id_categoria where categorias.nombre_categoria = :cat');
        $query->execute(['cat' => $category]);
       
        //Se va a crear un elemento con todos los productos
        $items = []; 
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            
            $item = [
            'id'         => $row['id_comida'],
            'nombre'     => $row['nombre'],
            'precio'     => $row['precio'],
            'categoria'  => $row['id_categoria'],
            'imagen'     => $row['foto'],
            ];
        
            array_push($items, $item);
        }
     return $items;   
    }

    public function getItemsByCategoryFloreria($category){
        $query = $this->connect()->prepare('SELECT floreria.id_floreria, floreria.nombre, floreria.comentario, floreria.foto,floreria.id_categoria, floreria.precio FROM floreria left join categorias on floreria.id_categoria = categorias.id_categoria where categorias.nombre_categoria = :cat');
        $query->execute(['cat' => $category]);
       
        //Se va a crear un elemento con todos los productos
        $items = []; 
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            
            $item = [
            'id'         => $row['id_floreria'],
            'nombre'     => $row['nombre'],
            'precio'     => $row['precio'],
            'categoria'  => $row['id_categoria'],
            'imagen'     => $row['foto'],
            ];
        
            array_push($items, $item);
        }
     return $items;   
    }

    public function getItemsByCategoryAlquiladora($category){
        $query = $this->connect()->prepare('SELECT alquiladora.id_alquiladora, alquiladora.nombre, alquiladora.comentario, alquiladora.foto,alquiladora.id_categoria, alquiladora.precio FROM alquiladora left join categorias on alquiladora.id_categoria = categorias.id_categoria where categorias.nombre_categoria = :cat');
        $query->execute(['cat' => $category]);
       
        //Se va a crear un elemento con todos los productos
        $items = []; 
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            
            $item = [
            'id'         => $row['id_alquiladora'],
            'nombre'     => $row['nombre'],
            'precio'     => $row['precio'],
            'categoria'  => $row['id_categoria'],
            'imagen'     => $row['foto'],
            ];
        
            array_push($items, $item);
        }
     return $items;   
    }
}
 
?>