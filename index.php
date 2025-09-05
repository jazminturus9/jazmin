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
    <div class="row row.cols-2 row-cols-md-3 g-3">
        <?php foreach($paquetes as $paquetes){ ?>
            <div class="col-md-6 col-lg-4 mb-4">
                <d class="flex flex-column">
                    <div class="card">
                        <div class="card-title">
                            <h3><?=$paquetes['nombre']?></h3>
                    </div>
                     <div class="card-body">
                        <img class="card-img-top" scr="<?=$paquetes['url_imagen'] ?>" alt="">
                        <p><?= $paquetes['descripcion_galeria']?></p>
                     </div>
                    <div class="card-foter"></div>
                </d>
            </div>
    </div>
    <?php } ?>
</body>
</html>