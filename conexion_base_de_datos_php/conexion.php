<?php
$host ="localhost";
$user ="root";
$pass ="";



$con=mysqli_connect($host,$user,$pass)or die("Error al Conectar");
mysqli_select_db($con,'sucursaldeclientes')or die("No de pudo conectar con la base de datos ERROR 404 NOT FOUND");




if($con){
	echo "conectado";

}
else{
	echo "no conectado";
}


?>