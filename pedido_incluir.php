<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<?php

	 $nome = $_POST["nome"];
	 $descricao = $_POST["descricao"];
	 $preco = $_POST["preco"];

	 $connection = mysql_connect("localhost", "root"); 	
	 if (!$connection) {
    	die('Não foi possível conectar: ' . mysql_error());
	};

	mysql_select_db("Estoque");


	$sql = 'INSERT INTO Produto (nome, descricao, preco) VALUES ("'.$nome.'","'.$descricao.'",'.$preco.');';

	$resultado = mysql_query($sql, $connection);

	mysql_close($connection);

	header('location: produto.php');

?>