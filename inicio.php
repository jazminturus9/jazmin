<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Destinos - JM Viajes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff8f2;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        header {
            display: flex;
            align-items: center;
            background-color: #fff;
            padding: 15px 40px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        header img {
            height: 70px;
            margin-right: 20px;
        }

        header h1 {
            font-size: 22px;
            color: #b46c3f;
            margin: 0;
        }

        h2 {
            color: #333;
            margin-top: 40px;
            font-size: 26px;
        }

        .galeria {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 40px;
            gap: 40px;
        }

        .destino {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            width: 250px;
            overflow: hidden;
            text-align: center;
            transition: 0.3s;
        }

        .destino:hover {
            transform: scale(1.05);
        }

        .destino img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .destino h3 {
            margin: 10px 0 5px;
            color: #b46c3f;
            font-size: 20px;
        }

        .destino p {
            margin: 0;
            color: #666;
        }

        .precio {
            margin-top: 10px;
            font-weight: bold;
            color: #333;
            padding-bottom: 15px;
        }

        a.volver {
            display: inline-block;
            margin: 50px 0;
            background-color: #b46c3f;
            color: white;
            padding: 12px 30px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 16px;
        }

        a.volver:hover {
            background-color: #8b512e;
        }
        a.ver{
            display: inline-block;
            margin: 70px 0;
            background-color: #b46c3f;
            color: white;
            padding: 12px 30px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 16px;
        }
    </style>
</head>
<body>

    <header>
        <img src="./logo.jpg" alt="Logo JM Viajes">
        <h1>JM Agencia de Viajes</h1>
    </header>

    <h2>Destinos Destacados</h2>

    <div class="galeria">
        <div class="destino">
            <img src="./newyork.jpg" alt="New York">
            <h3>New York</h3>
            <p>Noche Luminosa</p>
            <div class="precio">USD $890</div>
            <p> Fecha salida: 12/12/2025</p>
            <p>Fecha regreso: 05/01/2026</p>
            <p>10% OFF por 15 dias</p>
             <a href="index.php" class="ver">ver paquete</a>
            
        </div>

        <div class="destino">
            <img src="./bariloche.jpg" alt="Bariloche">
            <h3>Bariloche</h3>
            <p>Fiesta Chocolatosa</p>
            <div class="precio">USD $600</div>
            <a href="index.php" class="ver">ver paquete</a>
        </div>

        <div class="destino">
            <img src="./mexico.jpg" alt="México">
            <h3>México</h3>
            <p>Mariachi Fest</p>
            <div class="precio">USD $756</div>
            <a href="index.php" class="ver">ver paquete</a>
        </div>

        <div class="destino">
            <img src="./italia.jpg" alt="Italia">
            <h3>Italia</h3>
            <p>Risate Italiane</p>
            <div class="precio">USD $980</div>
            <a href="index.php" class="ver">ver paquete</a>
        </div>
    </div>

    <a href="index.php" class="volver">Volver al inicio</a>

</body>
</html>

