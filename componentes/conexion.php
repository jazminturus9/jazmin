<?php
$servidor = "localhost";
$usuario = "root";
$contraseña = "";
$base_datos = "Turismo";

$conexion = new mysqli($servidor,$usuario,$contraseña,$base_datos);

if ($conexion->connect_error){
    die("Error de conexion:".$conexion->connect_error);
}