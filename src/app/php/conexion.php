<?php
/* Conectar a la BD y luego ya actuo siempre sobre la variable conexion*/
function conexion() {
    $conexion = mysqli_connect("localhost", "root", "", "libreria_online");
    
    return $conexion;
  }

/* Para seleccionar la bd*/
mysqli_select_db($conexion, "libreria_online") or die("No se puede seleccionar la BD");

/* para detectar errores*/
if (mysqli_connect_errno()) {
    printf("<p>Conexión fallida: %s</p>", mysqli_connect_error());
    exit();
}
