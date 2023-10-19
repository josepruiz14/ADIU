<?php
$conexio = mysqli_connect("localhost", "root", "")
or die("Fatal erro: Localhost Connection");
$bd = mysqli_select_db($conexio, "BD218")
or die("Fatal error 015: DB error");
    print_r($_POST); // Opción 1

    // $query = $_POST['query'];
    // echo $query
    // $consulta = mysqli_query($conexio,query);
    // $reg =mysqli_fetch_array($consulta);
    // echo $reg["nom_usuari"]


?>

