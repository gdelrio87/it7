-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-03-2018 a las 16:41:34
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aparcamiento`
--
CREATE DATABASE IF NOT EXISTS `aparcamiento` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `aparcamiento`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coche`
--

CREATE TABLE IF NOT EXISTS `coche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `horaEntrada` time NOT NULL,
  `horaSalida` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `tiempoPermitido` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coche`
--

INSERT INTO `coche` (`id`, `matricula`, `modelo`, `horaEntrada`, `horaSalida`, `tiempoPermitido`) VALUES
(1, '12784HIH', 'BMW', '10:05:00', NULL, 30),
(2, '76234AAC', 'Toyota', '10:07:00', '2018-03-20 09:35:00', 30),
(3, '32162BAQ', 'Audi', '10:45:00', NULL, 90),
(4, '87823CDA', 'Mercedes', '10:46:00', '2018-03-20 10:05:00', 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
