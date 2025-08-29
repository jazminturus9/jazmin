<?php
$servidor = "localhost";
$usuario = "root";
$contraseña = "";
$base = "agencia_viajes";

//conxion propia ala bbdd
$conexion = new mysqli($servidor, $usuario, $contraseña, $base);

//c chequear la conexion

if($conexion->connect_error){
    die("Error de conexion: " . $conexion->connect_error);
}