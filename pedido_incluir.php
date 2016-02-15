<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<?php

	 $nome = $_POST["idpedido"];
	 $descricao = $_POST["idcliente"];
	

	 $connection = mysql_connect("localhost", "root"); 	
	 if (!$connection) {
    	die('Não foi possível conectar: ' . mysql_error());
	};

	mysql_select_db("Estoque");


	$sql = 'INSERT INTO Pedido (id_produto,id_cliente) VALUES ('.$idpedido.','.$idproduto.');';

	$resultado = mysql_query($sql, $connection);

	mysql_close($connection);

	header('location: pedido.php');

?>