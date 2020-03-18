<?php
$host ="localhost";
$user ="root";
$pass ="";



$con=mysqli_connect($host,$user,$pass)or die("Error al Conectar");
mysqli_select_db($con,'sucursaldeclientes')or die("No de pudo conectar con la base de datos ERROR 404 NOT FOUND");




$busqueda=$_POST["busqueda"];
$nombre=$_POST["nombre"];
$xd=1;

if ($busqueda == "clientes"){
	$sql = "select * from clientes where nombre = '$nombre'";

	$result = mysqli_query($con, $sql);

	$num = mysqli_num_rows($result);
	if ($num==0){
		echo "non hay nada unu";
		}else{

		// output data of each row
			while ( $row = mysqli_fetch_assoc($result)) {

				echo "Nombre: ".$row["nombre"]."<br>"; 
				echo "Primer apellido: ".$row["primer_apellido"]."<br>";
				echo "Segundo apellido: ".$row["segundo_apellido"]."<br>";     
				echo "Edad: ".$row["edad"]."<br>";
				echo "Celular: ".$row["celular"]."<br>"; 
				echo "Sucursal a la que pertenece: ".$row["sucursal"]."<br>";

		}

	} 

}else{ 
if ($busqueda == "sucursal"){
	$sql = "select nombre,primer_apellido from clientes where sucursal = '$nombre'";

	$result = mysqli_query($con, $sql);

	$num = mysqli_num_rows($result);
	if ($num==0){
		echo "non hay nada unu";
		}else{
		echo "Clientes de sucursal ".$nombre."<br>";
		// output data of each row
		while ( $row = mysqli_fetch_assoc($result)) {

			echo "Nombre: ".$row["nombre"]."<br>"; 
			echo "Primer apellido: ".$row["primer_apellido"]."<br>";
			echo "=================================================="."<br>";
		} 
	}


	}else{

	echo "selecciona que deseas buscar";
	}
}










?>