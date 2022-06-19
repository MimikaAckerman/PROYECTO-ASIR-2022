  <title>añadirdatos.php</title>
    <link href="hola.css" rel="stylesheet">
<?php

include("conexion.php");

$nom=$_POST['f_nombre'];

$email=$_POST['f_email'];

$telefono=$_POST['f_tlf_consulta'];

$motivo=$_POST['f_motivo_consulta'];

$diahora=$_POST['f_dia_hora'];

$diahora2=$_POST['f_dia_hora'];

$sql="INSERT INTO consulta(nombre, email, tlf_consulta, motivo_consulta, dia_hora) VALUES ('$nom','$email','$telefono','$motivo','$diahora')";

mysqli_query($mysqli,$sql) or die("Error en la consulta $sql");

mysqli_close($mysqli);

header("location:formulariodatos.php");
?>

<body id="container2" align="center"><b>Registro enviado satisfactoriamente. <br>Pulse <a href='formulariodatos.php'>aqui</a> para volver</b></body>