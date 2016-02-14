<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<?php

	 $nome = $_POST["nome"];
	 $email = $_POST["email"];
	 $telefone = $_POST["telefone"];


	 $connection = mysql_connect("localhost", "root"); 	
	 if (!$connection) {
    	die('Não foi possível conectar: ' . mysql_error());
	};

	mysql_select_db("Estoque");


	$sql = 'INSERT INTO Cliente (nome, email, telefone) VALUES ("'.$nome.'","'.$email.'",'.$telefone.');';

	//echo $sql;

	$resultado = mysql_query($sql, $connection);

	mysql_close($connection);

	header('location: produto.php');

?>