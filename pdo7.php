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

$stmt->execute([
    ':stock' => $stock,
    ':nombre' => $nombre
]);

// Mientras (while) el $stmt contenga data, 'fetch' asociará índice y valor
// Guardo tal operación en una variable ($resultado), la cual itero mientras se cumpla tal condición,
// especificando los valores a mostrar
while ($resultado = $stmt->fetch()) {
    echo 'Nombre: ' . $resultado['Nombre'] . '<br>';
    echo 'Precio: ' . $resultado['Precio'] . '<br>';
    echo 'Marcas: ' . $resultado['Marcas'] . '<br>';
    echo 'Stock: ' . $resultado['Stock'] . '<hr>';
}