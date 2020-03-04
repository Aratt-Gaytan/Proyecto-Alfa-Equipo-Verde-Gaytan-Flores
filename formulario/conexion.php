<?php
 	$host ="localhost";
 	$user ="root";
 	$pass ="";

 
 	
 	$con=mysqli_connect($host,$user,$pass)or die("Error al Conectar");
 	mysqli_select_db($con,'lagrande')or die("No de pudo conectar con la base de datos ERROR 404 NOT FOUND");

 	

 	
	$nom=$_POST["nombre"];
 	$app=$_POST["apellidopaterno"];
 	$apm=$_POST["apellidomaterno"];
 	$co=$_POST["correo"];
 	$tel=$_POST["telefono"];
 	$ejecuta=mysqli_query($con,"insert into usuarios (nombre,ApellidoPaterno,ApellidoMaterno,Correo,Telefono) values ('$nom','$app','$apm','$co','$tel')");
	if (!$ejecuta) {
 		echo "Hubo un error al insertar los datos";
 	}
 		else{
 			echo "Los datos fueron insertados correctemente";
 		}





 ?>