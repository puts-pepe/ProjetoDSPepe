-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Abr-2025 às 16:38
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdclinicapsiquiatrica`
--
CREATE DATABASE IF NOT EXISTS `bdclinicapsiquiatrica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdclinicapsiquiatrica`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

DROP TABLE IF EXISTS `consulta`;
CREATE TABLE `consulta` (
  `cod_consulta` int(11) NOT NULL,
  `data_consulta` date NOT NULL,
  `horario_consulta` time NOT NULL,
  `local` varchar(30) NOT NULL,
  `valor_consulta` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente` (
  `cpf` varchar(18) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `Login` varchar(50) NOT NULL,
  `Senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`cod_consulta`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `cod_consulta` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
