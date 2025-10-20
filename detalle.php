<?php
$id = $_GET['id'] ?? 0;
$detalles = [
    1 => ["nombre" => "New York", "salida" => "10/11/2025", "regreso" => "20/11/2025", "hora" => "08:00 AM", "personas" => "2 adultos y 2 niños", "precio" => "USD $890"],
    2 => ["nombre" => "Bariloche", "salida" => "05/12/2025", "regreso" => "15/12/2025", "hora" => "10:00 AM", "personas" => "2-3 adultos y 2 niños", "precio" => "USD $600"],
    3 => ["nombre" => "México", "salida" => "22/11/2025", "regreso" => "30/11/2025", "hora" => "09:30 AM", "personas" => "2-3 adultos y 2 niños", "precio" => "USD $556"],
    4 => ["nombre" => "Italia", "salida" => "01/01/2026", "regreso" => "12/01/2026", "hora" => "07:15 AM", "personas" => "2 adultos y 2 niños", "precio" => "USD $980"],
];
$d = $detalles[$id] ?? null;
session_start();
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $_SESSION['carrito'][] = $d;
    header("Location: carrito.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title><?= $d['nombre'] ?> - Detalles</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
<header><a href="paquetes.php">← Volver</a></header>
<h2><?= $d['nombre'] ?></h2>
<p><strong>Salida:</strong> <?= $d['salida'] ?></p>
<p><strong>Regreso:</strong> <?= $d['regreso'] ?></p>
<p><strong>Hora de vuelo:</strong> <?= $d['hora'] ?></p>
<p><strong>Personas:</strong> <?= $d['personas'] ?></p>
<p><strong>Precio:</strong> <?= $d['precio'] ?></p>

<form method="post">
    <button type="submit" class="boton">Añadir al carrito</button>
    <a href="carrito.php" class="boton">Comprar ahora</a>
</form>

</body>
</html>