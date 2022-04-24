<?php

$db = new PDO(
    'mysql:host=127.0.0.1;dbname=phpoop',
    'root',
    ''
);

$sql = 'SELECT * FROM productos';

// El método 'prepare' recibe como parámetro el SQL que va a ejecutarse luego
// Retorna un objeto de tipo 'PDOStatement', que se utiliza para ejecutar la consulta y obtener los datos

$stmt = $db->prepare($sql);
//print_r($stmt);

$stmt->execute();

$resultado = $stmt->fetch();
print_r($resultado);

echo '<hr>';
$resultado = $stmt->fetch();
print_r($resultado);