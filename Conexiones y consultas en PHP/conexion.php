<?php
$host ="localhost";
$user ="root";
$pass ="";



$con=mysqli_connect($host,$user,$pass)or die("Error al Conectar");
mysqli_select_db($con,'sucursaldeclientes')or die("No de pudo conectar con la base de datos ERROR 404 NOT FOUND");




$busqueda=$_POST["busqueda"];
$nombre=$_POST["nombre"];
$xd=1;

if ($busqueda == "cli"){
	//se borra la "s" para que detecte el error el filtro
	$sql = "select * from cliente where nombre like '%". $nombre ."%';";

	$result = mysqli_query($con, $sql);
if (!$result) {
 // El commit falló!
 echo "Error numero $con->errno $con->error";
}
else{$num = mysqli_num_rows($result);
	if ($num==0){
		echo "no se encontraron resultados";
		}else{

		// output data of each row
			while ( $row = mysqli_fetch_assoc($result)) {

				echo $row["nombre"]."<br>"; 
				echo $row["primer_apellido"]."<br>";
				echo $row["segundo_apellido"]."<br>";     
				echo $row["edad"]."<br>";
				echo $row["celular"]."<br>"; 
				echo $row["sucursal"]."<br>";

		}

	} 
}
	
}else{ 
if ($busqueda == "suc"){
	//se borra la "l" en sucursal para que marque un error y lo detecte el filtro
	$sql = "select nombre,primer_apellido from clientes where sucursa ='$nombre';";

	$result = mysqli_query($con, $sql);
if (!$result) {
    printf("Errormessage: %s\n", $con->error);
}else{$num = mysqli_num_rows($result);
	if ($num==0){
		echo "non hay nada unu";
		}else{
		echo "clientes de la sucursal ".$nombre."<br>";
		// output data of each row
		while ( $row = mysqli_fetch_assoc($result)) {

			echo $row["nombre"]."<br>"; 
			echo $row["primer_apellido"]."<br>";
			
		} 
	}


	}}
	else{

	echo "no has escrito nada";
	}
}










?>