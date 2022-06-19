<title>añadir_formulario</title>
    
<?php

include("conexion.php");

$nom=$_POST['f_nombre'];

$email=$_POST['f_email'];

$tlf=$_POST['f_telefono'];

$dia=$_POST['f_dia_hora'];

$hora=$_POST['f_dia_hora'];

$consulta=$_POST['f_motivo_consulta'];



$sql=   "INSERT INTO consulta(nombre,email,dia_hora,motivo_consulta,tlf_consulta)
            VALUES ('$nom','$email','$tlf','$dia','$hora','$consulta')";

mysqli_query($mysqli,$sql) or die("Error en la consulta $sql");

mysqli_close($mysqli);

header("location:prueba.php");
?>

<body id="container2" align="center"><b>Registro enviado satisfactoriamente. <br>Pulse <a href='prueba2.php'>aqui</a> para volver</b></body>