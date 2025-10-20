-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2025 às 20:55
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
-- Banco de dados: `cep`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cep`
--

CREATE TABLE `cep` (
  `id_Cep` int(11) NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `ddd` varchar(2) DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cep`
--

INSERT INTO `cep` (`id_Cep`, `logradouro`, `bairro`, `ddd`, `id_cidade`) VALUES
(1, 'Rua A', 'Centro', '68', 1),
(2, 'Rua B', 'Jardim das Palmeiras', '68', 2),
(3, 'Avenida Rio Branco', 'Centro', '82', 3),
(4, 'Rua Ponta Verde', 'Ponta Verde', '82', 4),
(5, 'Rua das Palmeiras', 'Centro', '92', 5),
(6, 'Avenida das Nações', 'Centro', '92', 6),
(7, 'Avenida Sete de Setembro', 'Centro', '71', 7),
(8, 'Rua da Paz', 'Pituba', '71', 8),
(9, 'Rua Ceará', 'Centro', '85', 9),
(10, 'Avenida da Saudade', 'Meireles', '85', 10),
(11, 'Avenida Vitória', 'Centro', '27', 11),
(12, 'Rua do Sol', 'Vila Velha', '27', 12),
(13, 'Rua Goiás', 'Setor Bueno', '62', 13),
(14, 'Avenida Independência', 'Centro', '62', 14),
(15, 'Rua do Mercado', 'Centro', '98', 15),
(16, 'Avenida Litorânea', 'Calhau', '98', 16),
(17, 'Rua Mato Grosso', 'Centro', '65', 17),
(18, 'Avenida Beira Rio', 'Várzea Grande', '65', 18),
(19, 'Rua do Comércio', 'Centro', '67', 19),
(20, 'Avenida Presidente Vargas', 'Bairro São Francisco', '67', 20),
(21, 'Rua dos Três Irmãos', 'Centro', '31', 21),
(22, 'Avenida Afonso Pena', 'Centro', '31', 22),
(23, 'Rua São João', 'Marco', '91', 23),
(24, 'Avenida Magalhães Barata', 'Curió', '91', 24),
(25, 'Rua das Palmeiras', 'Centro', '83', 25),
(26, 'Avenida Cabedelo', 'Bairro do Cordeiro', '83', 26),
(27, 'Avenida Getúlio Vargas', 'Centro', '41', 27),
(28, 'Rua 24 de Maio', 'Jardim Social', '41', 28),
(29, 'Rua José Bonifácio', 'Boa Viagem', '81', 29),
(30, 'Rua das Flores', 'Cordeiro', '81', 30),
(31, 'Avenida Piauí', 'Centro', '86', 31),
(32, 'Rua das Laranjeiras', 'Parnaíba', '86', 32),
(33, 'Rua Visconde de Inhaúma', 'Centro', '21', 33),
(34, 'Rua Siqueira Campos', 'Copacabana', '21', 34),
(35, 'Rua do Sol', 'Centro', '84', 35),
(36, 'Rua dos Três Irmãos', 'Petrópolis', '84', 36),
(37, 'Rua da Lapa', 'Centro', '51', 37),
(38, 'Rua São João', 'Moinhos de Vento', '51', 38),
(39, 'Avenida Imigrantes', 'Centro', '69', 39),
(40, 'Rua Rio Branco', 'Zona Leste', '69', 40),
(41, 'Rua dos Caiçaras', 'Centro', '95', 41),
(42, 'Avenida Glória', 'São Vicente', '95', 42),
(43, 'Rua do Sol', 'Jurerê', '48', 43),
(44, 'Avenida das Nações', 'Centro', '48', 44),
(45, 'Rua da Paz', 'Bela Vista', '19', 45),
(46, 'Avenida Paulista', 'Jardins', '19', 46),
(47, 'Rua Tobias Barreto', 'Centro', '79', 47),
(48, 'Rua do Comércio', 'Itabaiana', '79', 48),
(49, 'Rua Tocantins', 'Centro', '63', 49),
(50, 'Avenida Norte', 'Araguaína', '63', 50),
(51, 'Rua do Sol', 'Plano Piloto', '61', 51),
(52, 'Avenida W3', 'Sudoeste', '61', 51),
(53, 'Rua do Sol', 'Gama', '61', 52);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cep`
--
ALTER TABLE `cep`
  ADD PRIMARY KEY (`id_Cep`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cep`
--
ALTER TABLE `cep`
  MODIFY `id_Cep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cep`
--
ALTER TABLE `cep`
  ADD CONSTRAINT `cep_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
