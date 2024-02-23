-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 22/02/2024 às 14:50
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `admin_tributaria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tributario`
--

CREATE TABLE `tributario` (
  `nit` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `tributo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tributario`
--

INSERT INTO `tributario` (`nit`, `nome`, `tributo`) VALUES
(1, 'Alice Oliveira', 3200),
(2, 'Mário Gaspar ', 3300),
(3, 'Ana Gonçalves', 5000),
(4, 'Salome Pedro', 6000),
(5, 'Elimar Veiga', 2000),
(6, 'Pedro João Salvador', 5000),
(7, 'Francisco Morvão', 1000);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tributario`
--
ALTER TABLE `tributario`
  ADD PRIMARY KEY (`nit`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tributario`
--
ALTER TABLE `tributario`
  MODIFY `nit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
