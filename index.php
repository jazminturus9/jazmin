<?php
require_once 'componentes/conexion.php';

$paquetes = $conexion->query(query: "SELECT* FROM agencia.paquetes WHERE paquetes.estado = 'disponible';");

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
    <style>
        h1 {
            text-align: center;
            color: rgb(149, 100, 196);
        }
        
    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Empresa de Viajes</title>
</head>
<body>
      
</body>


<body>
        <h1>Empresa de Viajes</h1>
        <h5></h5>
        <p class="parrafo"></span> Somos JM VIAJES.Una Empresa encargada de conseguir los MEJORES VIAJES para usted.</p>     

    <form action="">
        <button type="submit">INICIAR</button>
    </form>

        <h5></h5>
        <p class="parrafo"></span>Hace 10 Años que fue creada esta Empresa y Siempre le dimos la Seguridad de que va a tener UN VIAJE INOLVIDABLE</p>     
   
    <div class="container">
        
        <div>
            <h2>DATOS PERSONALES</h2>
            <ul>
                <li class="subtitle">351-783-953</li>
            </ul>
        </div>
    </div>


</body>
</html>