<?php

const PDO_DSN = 'mysql:host=127.0.0.1;dbname=phpoop';
const PDO_USERNAME = 'root';
const PDO_PASSWORD = '';

$db = new PDO(PDO_DSN, PDO_USERNAME, PDO_PASSWORD);

$nombre = '%Galaxy%';
$stock = 3;

$sql = 'SELECT * FROM productos WHERE
            stock >= :stock AND nombre LIKE :nombre';

// El método 'prepare' recibe como parámetro el SQL que va a ejecutarse luego
// Retorna un objeto de tipo 'PDOStatement', que se utiliza para ejecutar la consulta y obtener los datos

$stmt = $db->prepare($sql);
//print_r($stmt);

// 'bindParam' especifica cómo se rellenarán los ? de la consulta ($sql), a saber:
// Orden en la query, Variable de donde extrae la información, y Tipo de Dato (INT = 1; STR = 2, etc.)
$stmt->bindParam(':stock', $stock, 1);
$stmt->bindParam(':nombre', $nombre, 2);

$stmt->execute();

// Mientras (while) el $stmt contenga data, 'fetch' asociará índice y valor
// Guardo tal operación en una variable ($resultado), la cual itero mientras se cumpla tal condición,
// especificando los valores a mostrar
while ($resultado = $stmt->fetch()) {
    echo 'Nombre: ' . $resultado['Nombre'] . '<br>';
    echo 'Precio: ' . $resultado['Precio'] . '<br>';
    echo 'Marcas: ' . $resultado['Marcas'] . '<br>';
    echo 'Stock: ' . $resultado['Stock'] . '<hr>';
}