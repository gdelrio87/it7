-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2016 a las 13:20:45
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `profesores`
--
CREATE DATABASE IF NOT EXISTS `profesores` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `profesores`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

DROP TABLE IF EXISTS `profesor`;
CREATE TABLE `profesor` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `fechaAlta` date NOT NULL,
  `departamento` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`dni`, `nombre`, `apellidos`, `fechaAlta`, `departamento`) VALUES
('11111110A', 'ada', 'ada', '2005-05-05', 'informatica'),
('11111111A', 'Carlos', 'Barranco', '2006-02-02', 'Informatica'),
('12345555A', 'ee', 'dd', '2005-05-05', 'informatica'),
('22222222A', 'Ricardo', 'Talavera', '2016-02-06', 'Informatica'),
('28813872R', 'dfa', 'dfd', '2005-05-05', 'informatica'),
('33333333A', 'Antonio', 'Perez', '2010-09-14', 'Deporte'),
('44444444A', 'Isabel', 'Moreno', '2012-01-20', 'LADE'),
('55555555A', 'Maria', 'Campano', '2011-05-06', 'Biotecnologia'),
('99999090A', 'def', 'd', '2005-05-05', 'informatica'),
('99999098A', 'def', 'def', '1984-05-05', 'informatica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`dni`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
