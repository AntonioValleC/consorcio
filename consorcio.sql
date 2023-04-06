-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2023 a las 19:37:22
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consorcio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cod` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `ape` varchar(50) NOT NULL,
  `dir` varchar(50) NOT NULL,
  `fnac` date NOT NULL,
  `sex` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cod`, `nom`, `ape`, `dir`, `fnac`, `sex`) VALUES
(2, 'Marcos', 'Torres', 'Comas', '1999-09-05', 'm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `cod` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `ape` varchar(50) NOT NULL,
  `dir` varchar(50) NOT NULL,
  `fnac` date NOT NULL,
  `sex` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`cod`, `nom`, `ape`, `dir`, `fnac`, `sex`) VALUES
(2, 'Julio', 'Guzman', 'Lima', '1996-02-16', 'm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `mar` varchar(50) NOT NULL,
  `pre` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod`, `nom`, `mar`, `pre`) VALUES
(15, 'cartuchera', 'artesco', '15.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `tel` varchar(9) NOT NULL,
  `cor` varchar(50) NOT NULL,
  `dir` varchar(50) NOT NULL,
  `rep` varchar(50) NOT NULL,
  `ruc` varchar(15) NOT NULL,
  `rub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nom`, `tel`, `cor`, `dir`, `rep`, `ruc`, `rub`) VALUES
(1, 'Mudanzas El UNICO', '923611780', 'albert45@gmail.com', 'San Miguel', 'Alberto', '45920390023', 'Servicio de transporte de mudanza'),
(2, 'Recicladora San Toribio', '989234112', 'santori12@gmail.com', 'Comas', 'Julia', '55312345603', 'Servicio de reciclaje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `cor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `clave`, `cor`) VALUES
(8, 'Antonio', '123', ''),
(11, 'marcas', '1234', 'marca13@gmail.com'),
(12, 'mark', '1234', 'mark10@gmail.com'),
(13, 'luzca', '123cream', 'luz34@gmail.com'),
(16, 'ante', '12345', 'anto56@gmail.com'),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, '', '', ''),
(0, 'dsdsds', 'sdsd', 'dsdedwed@fzs'),
(0, 'dsds', 'dsdds', 'sddsd@123'),
(0, 'lucky', '123', 'lucky123@gmail.com'),
(0, 'lucky', '123', 'lucky123@gmail.com'),
(0, 'dobby', '123', 'dobby@123.gmail'),
(0, 'dobby', '123', 'dobby@123.gmail'),
(0, 'valle', '12345', 'valle657@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
