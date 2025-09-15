-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 20:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hora`, `observacoes`) VALUES
(1, 1, 2, '2025-09-16 15:00:00', 'consulta de rotina'),
(2, 7, 8, '2025-09-17 16:00:00', 'consulta pós-parto'),
(3, 3, 4, '2025-09-18 17:00:00', 'Crise de ansiedade'),
(4, 4, 5, '2025-09-19 10:00:00', 'esperando o exame de daltonismo'),
(5, 5, 6, '2025-09-26 09:00:00', 'Rompimento do tendão');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especielidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `CRM` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especielidade`, `telefone`, `CRM`) VALUES
(1, 'Dr. Carlos Souza', 'Cardiogista', '4444-6666', 'CRM12345'),
(2, 'Dra Ana lima', 'pediatra', '2345-7777', 'CRM5678'),
(3, 'Dr Vinicius', 'neurologista', '8910-1112', 'CRM9101'),
(4, 'Dra Giulia', 'psicologa', '1314-1516', 'CRM1211'),
(5, 'Dra Maira', ' Oftalmologia,', '1718-1920', 'CRM3141'),
(6, 'Dra Joelma', 'traumatologia', '2122-2324', 'CRM5161'),
(7, 'Dra Alcione', 'Dermatologia', '2526-2728', 'CRM7181'),
(8, 'Dr Raul', 'Obstetrícia', '2930-3132', 'CRM9202'),
(9, 'Dr Douglas', 'Cirurgia Geral', '3334-3536', 'CRM1222'),
(10, 'Dra Vitoria', 'Ginecologia', '3738-3940', 'CRM3242');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(1, 'felipe augusto', '2008-07-12', '4554-6776', 'Avenida Fizzanow', '123-456-78', 'felps1234@gmail.com'),
(2, 'Vinicius', '2008-10-18', '2874-8384', 'Rua vila nova', '101-112-13', 'Ann4l@gmail.com'),
(3, 'Lebron James', '1990-12-30', '99345-6789', 'Alameda Santos', '014-224-67', 'lebron.james@gmail.com'),
(4, 'Kobe Bryant', '1988-11-23', '99456-7890', 'Rua dos Três Irmãos', '015-830-34', 'kobe.bryant@gmail.com'),
(5, 'Lebronny James', '1994-07-04', '99567-8901', 'Avenida Brigadeiro Faria Lima', '016-840-23', 'lebronny.james@gmail.com'),
(6, 'Shaq', '1992-02-15', '99678-9012', 'Rua dos Aliados', '017-950-56', 'shaq@gmail.com'),
(7, 'Stephen Curry', '1993-06-12', '99789-0123', 'Rua do Comércio', '018-560-67', 'stephen.curry@gmail.com'),
(8, 'James Harden', '1995-01-10', '99890-1234', 'Avenida do Rio', '019-370-78', 'james.harden@gmail.com'),
(9, 'Nikola Jokic', '1994-09-08', '99901-2345', 'Praça da República', '020-280-89', 'nikola.jokic@gmail.com'),
(10, 'Luka Doncic', '1997-02-28', '99123-5678', 'Rua São João', '021-190-90', 'luka.doncic@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
