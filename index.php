<?php
require_once 'componentes/conexion.php';

$paquetes = $conexion->query("");

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agencia de viajes</title>
</head>
<body>
    <?php
        foreach($paquetes as $paquetes){
            echo $paquetes['nombre'];
        }
    ?>
</body>
</html>