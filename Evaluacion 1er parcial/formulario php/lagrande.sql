-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2020 a las 03:01:09
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lagrande`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` varchar(45) NOT NULL,
  `ApellidoPaterno` varchar(45) NOT NULL,
  `ApellidoMaterno` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Telefono` smallint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `Correo`, `Telefono`) VALUES
('Keaunu', 'sggsr', 'sseg', 'asfesf@gmail.com', 32767),
('sdfgh', 'dfgh', 'derftg', 'dfgh@gmaiol.com', 0),
('sdfgh', 'dfgh', 'derftg', 'dfgh@gmaiol.com', 0),
('sdfgh', 'dfgh', 'derftg', 'dfgh@gmaiol.com', 0),
('sdfgh', 'dfgh', 'derftg', 'dfgh@gmaiol.com', 0),
('ola', 'wenas', 'tardes', 'olawenas@gmail.com', 32767),
('', '', '', '', 0),
('dfghjkl', 'dfgh', 'derftg', 'dfgh@gmaiol.com', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
