-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2020 a las 20:11:20
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
-- Base de datos: `sucursaldeclientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `nombre` varchar(25) NOT NULL,
  `primer_apellido` varchar(15) NOT NULL,
  `segundo_apellido` varchar(15) NOT NULL,
  `edad` tinyint(3) NOT NULL,
  `celular` int(11) NOT NULL,
  `sucursal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`nombre`, `primer_apellido`, `segundo_apellido`, `edad`, `celular`, `sucursal`) VALUES
('eminem', 'lopez', 'sanchez', 48, 654321098, 'sur'),
('fabiola guadalupe', 'arellano ', 'rangel', 48, 123456789, 'oeste'),
('fransisco', 'romero', 'garcia', 47, 45678901, 'este'),
('gerardo daniel', 'gutierrez', 'cruz', 73, 678901234, 'norte'),
('jesus angel', 'roque', 'gamez', 39, 567890123, 'este'),
('jose luis', 'ramirez', 'lopez', 49, 321098765, 'sur'),
('jose maria', 'lopez', 'mora', 57, 987654321, 'oeste'),
('josefina', 'contreras', 'arriaga', 47, 901234567, 'norte'),
('juan', 'gonzales', 'de la rosa', 54, 890123456, 'norte'),
('juan carlos', 'arriaga', 'lopez', 67, 543210987, 'sur'),
('julian guadalupe', 'mora', 'escobedo', 50, 987654321, 'oeste'),
('lourdes maribel', 'sanchez', 'arriaga', 37, 765432109, 'oeste'),
('maria del carmen', 'lopez', 'sanchez', 50, 210987654, 'sur'),
('maria elena', 'lopez', 'lopez', 48, 109876543, 'sur'),
('maria jose', 'martinez', 'lopez', 69, 876543219, 'oeste'),
('mario', 'rosales', 'lopez', 32, 234567890, 'este'),
('pedro', 'perez', 'de la rosa', 42, 1234567890, 'este'),
('roberto', 'gonzales', 'mora', 50, 345678901, 'este'),
('rosa', 'martinez', 'lopez', 50, 789012345, 'norte'),
('sergio enrique', 'romero', 'escobosa', 47, 890123456, 'norte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `nombre_sucursal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`nombre_sucursal`) VALUES
('este'),
('norte'),
('oeste'),
('sur');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `sucursal` (`sucursal`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`nombre_sucursal`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`nombre_sucursal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
