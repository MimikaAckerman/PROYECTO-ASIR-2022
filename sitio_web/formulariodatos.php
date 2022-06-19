<?php
        session_start();
        require("conexion.php");
?>

<!DOCTYPE html>
<html lang="en">
 <head style="header">
    <title>formulariodatos.php</title>
    
    <link rel="stylesheet" href="css/formulario.css">

 </head>
 <a class="logo">
            <img src="img/logo.png" width="90" height="90" >
        </a>
 
        <div id="container3">
            <h1 align="center">&bull;La Terapia&bull;</h1>
        
        <div 
            class="underline">
        </div>
   
    <form align="center" name="datos" id="datos" action="añadirdatos.php" method="post">
        <div>
            <tr>
                <td><input type="text" name="f_nombre" id="f_nombre" required=""  placeholder="Introduce tu nombre"></td>
            </tr>
        </div><br>

        <div>
            <tr>
                <td><input type="email" name="f_email" id="f_email" required="" placeholder="Introduce tu Email"></td>
            </tr>
        </div><br><br>
	  

        <div>
            <tr>
                <td><input type="number" name="f_tlf_consulta" id="f_tlf_consulta" required="" placeholder="Introduce tu numero de telefono"></td>
            </tr>
        </div><br><br>


        <div>
            <tr>
                <td><input type="datetime-local" name="f_dia_hora" id="f_dia_hora" required=""></td>
            </tr>
        </div><br><br>
	  
        <div>
            <tr>
                <td><input type="textarea" name="f_motivo_consulta" id="f_motivo_consulta" required="" placeholder="Introduce el motivo de tu consulta"></td>
            </tr>
        </div><br><br>
    <div class="submit"> 
        <tr>
            <td colspan="2" align="left"><input type="submit" value="Enviar"></td>
        </tr>
    </div>
    </table>
    </form>
    </div>
    </html>