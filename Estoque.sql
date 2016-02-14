-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 14, 2016 at 10:09 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Estoque`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cliente`
--

CREATE TABLE `Cliente` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cliente`
--

INSERT INTO `Cliente` (`id`, `nome`, `email`, `telefone`) VALUES
(1, 'dennis', 'dennis.cardoso@outlook.com', 1398473984),
(2, 'Alicio Cardoso', 'dennis.cardoso.122@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `Pedido`
--

CREATE TABLE `Pedido` (
  `id_produto` int(11) NOT NULL,
  `id_cliente` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Produto`
--

CREATE TABLE `Produto` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `preco` double(8,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Produto`
--

INSERT INTO `Produto` (`id`, `nome`, `descricao`, `preco`) VALUES
(1, 'Cadeira', 'teste1', 11.000),
(2, 'Modelo de planta base', 'Modelo de planta base para engenharia civil', 2300.000),
(3, 'Teste 25', 'Testando inserÃ§Ã£o base', 300.000),
(4, 'Teste 90', 'colocando dados incorretos', 2560.000),
(5, 'tÃ£o bom ', 'testando acentuaÃ§Ã£o ', 20.000),
(6, 'testando novamene', 'vejamos o tesultado com Ã§ Ã£ Ã¬, Ã© ;', 11.000),
(7, 'teste', 'Ã£ Ã  Ãµ Ã©', 11.000),
(8, 'Modelo de planta base', 'Modelo de planta base para engenharia civil', 2300.000),
(9, 'Dennis', 'dennis.cardoso@outlook.com', 99999.999),
(10, 'Mesa', 'teste1', 1111.000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Pedido`
--
ALTER TABLE `Pedido`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `Produto`
--
ALTER TABLE `Produto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Produto`
--
ALTER TABLE `Produto`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
