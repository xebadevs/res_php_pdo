<?php

const PDO_DSN = 'mysql:host=127.0.0.1;dbname=comercioit';
const PDO_USERNAME = 'root';
const PDO_PASSWORD = '';

$db = new PDO(PDO_DSN, PDO_USERNAME, PDO_PASSWORD);

$nombre = 'galaxy';
$stock = 3;

$sql = "SELECT * FROM productos WHERE
            nombre LIKE '%$nombre%' AND
            stock >= $stock";

// El método 'prepare' recibe como parámetro el SQL que va a ejecutarse luego
// Retorna un objeto de tipo 'PDOStatement', que se utiliza para ejecutar la consulta y obtener los datos

$stmt = $db->prepare($sql);
//print_r($stmt);

$stmt->execute();

// Mientras (while) el $stmt contenga data, 'files' asociará índice y valor
// Guardo tal operación en una variable ($resultado), la cual itero mientras se cumpla tal condición,
// especificando los valores a mostrar
while($resultado = $stmt->fetch()){
    echo 'Nombre: ' . $resultado['Nombre'] . '<br>';
    echo 'Precio: ' . $resultado['Precio'] . '<br>';
    echo 'Marca: ' . $resultado['Marca'] . '<br>';
    echo 'Stock: ' . $resultado['Stock'] . '<hr>';
}