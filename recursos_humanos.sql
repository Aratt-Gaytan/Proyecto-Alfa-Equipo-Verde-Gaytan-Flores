-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2020 a las 04:04:19
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
-- Base de datos: `recursos_humanos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `idAnuncio` int(11) NOT NULL,
  `Titulo_Del_Puesto` varchar(45) DEFAULT NULL,
  `Fecha_de_cierre` date DEFAULT NULL,
  `idPuesto` int(11) NOT NULL,
  `idMedio_Publicidad` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `Nombre_de_empresa` varchar(100) NOT NULL,
  `Contacto_idcomtacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `Area_Descripcion` varchar(150) DEFAULT NULL,
  `Area_Nombre` varchar(90) DEFAULT NULL,
  `Solicitud_de_Puesto_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `Curp` varchar(18) NOT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Domicilio` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `Edad` tinyint(2) DEFAULT NULL,
  `NSS` varchar(11) DEFAULT NULL,
  `Fotografia` blob DEFAULT NULL,
  `idEstado_Civil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_habilidad`
--

CREATE TABLE `candidato_has_habilidad` (
  `Curp` varchar(18) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  `Nivel` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_has_idioma`
--

CREATE TABLE `candidato_has_idioma` (
  `Curp` varchar(18) NOT NULL,
  `idIdioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idcomtacto` int(11) NOT NULL,
  `Nombre` varchar(90) DEFAULT NULL,
  `Email_de_Contacto` varchar(50) DEFAULT NULL,
  `Numero_Telefonico` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_de_empresa`
--

CREATE TABLE `datos_de_empresa` (
  `Nombre_de_empresa` varchar(100) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Estructura_Juridica` varchar(50) DEFAULT NULL,
  `Razon_Social` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Domicilo` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Encargado` varchar(50) DEFAULT NULL,
  `CIF_de_empresa` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `idEstado_Civil` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_solicitud`
--

CREATE TABLE `estatus_solicitud` (
  `idEstatus_Solicitud` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `idExperiencia` int(11) NOT NULL,
  `Nombre_de_empresa` varchar(150) DEFAULT NULL,
  `Descripcion_del_Puesto` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_has_candidato`
--

CREATE TABLE `experiencia_has_candidato` (
  `Curp` varchar(18) NOT NULL,
  `idExperiencia` int(11) NOT NULL,
  `Nombre_de_empresa` varchar(150) DEFAULT NULL,
  `Años` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_has_perfil`
--

CREATE TABLE `experiencia_has_perfil` (
  `idExperiencia` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `idHabilidad` int(11) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Nivel` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad_has_perfil`
--

CREATE TABLE `habilidad_has_perfil` (
  `idHabilidad` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `idIdioma` int(11) NOT NULL,
  `Lenguaje` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma_has_perfil`
--

CREATE TABLE `idioma_has_perfil` (
  `idIdioma` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_publicidad`
--

CREATE TABLE `medio_publicidad` (
  `idMedio_Publicidad` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_academico`
--

CREATE TABLE `nivel_academico` (
  `idNivel_Academico` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_academico_has_candidato`
--

CREATE TABLE `nivel_academico_has_candidato` (
  `Candidato_Curp` varchar(18) NOT NULL,
  `Nivel_Academico_idNivel_Academico` int(11) NOT NULL,
  `Carrera_idCarrera` int(11) NOT NULL,
  `Institucion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_idioma`
--

CREATE TABLE `nivel_idioma` (
  `idNivel_Idioma` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `idIdioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `idPerfil` int(11) NOT NULL,
  `Descrpcion` varchar(250) DEFAULT NULL,
  `idPuesto` int(11) NOT NULL,
  `idNivel_Academico` int(11) NOT NULL,
  `Carrera_idCarrera` int(11) NOT NULL,
  `idNivel_Idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_has_registrousuario1`
--

CREATE TABLE `perfil_has_registrousuario1` (
  `idPerfil` int(11) NOT NULL,
  `idUsuarioR` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Tipo_de_movimiento` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idPuesto` int(11) NOT NULL,
  `Descripcion` varchar(90) DEFAULT NULL,
  `Salario_Anual` decimal(7,0) DEFAULT NULL,
  `Beneficios` varchar(100) DEFAULT NULL,
  `Bonos` decimal(7,0) DEFAULT NULL,
  `N_Vacantes` int(11) DEFAULT NULL,
  `N_solicitantes` int(11) DEFAULT NULL,
  `Plazas` int(11) DEFAULT NULL,
  `Localizacion` varchar(50) DEFAULT NULL,
  `Autorizacion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrousuario`
--

CREATE TABLE `registrousuario` (
  `idUsuarioR` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Contraseña` varchar(45) DEFAULT NULL,
  `Puesto` varchar(45) DEFAULT NULL,
  `Usuarios_E_idUsuario` int(11) NOT NULL,
  `Descripcion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_candidato`
--

CREATE TABLE `resultado_candidato` (
  `Estatus_Proceso` varchar(15) DEFAULT NULL,
  `Comentarios` varchar(250) DEFAULT NULL,
  `Comentarios_Ofertas_Salario` varchar(250) DEFAULT NULL,
  `Comentarios_Area_Seleccion` varchar(250) DEFAULT NULL,
  `Examen_Psicometico` varchar(250) DEFAULT NULL,
  `Examen_Psicologico` varchar(250) DEFAULT NULL,
  `Examen_Conocimiento` varchar(250) DEFAULT NULL,
  `Examen_Salud` varchar(250) DEFAULT NULL,
  `Candidato_Curp` varchar(18) NOT NULL,
  `Solicitud_Candidato_idSolicitud_Candidato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_candidato`
--

CREATE TABLE `solicitud_candidato` (
  `idSolicitud_Candidato` int(11) NOT NULL,
  `Fecha_de_Solicitud` date DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  `idArea` int(11) NOT NULL,
  `idPuesto` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_candidato_has_anuncio`
--

CREATE TABLE `solicitud_candidato_has_anuncio` (
  `idSolicitud_Candidato` int(11) NOT NULL,
  `idAnuncio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_candidato_has_puesto`
--

CREATE TABLE `solicitud_candidato_has_puesto` (
  `Solicitud_Candidato_idSolicitud_Candidato` int(11) NOT NULL,
  `Puesto_idPuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_de_puesto`
--

CREATE TABLE `solicitud_de_puesto` (
  `Id` int(11) NOT NULL,
  `Puesto` varchar(50) DEFAULT NULL,
  `Vacantes` int(11) DEFAULT NULL,
  `Solicitantes` int(11) DEFAULT NULL,
  `Fecha_Solicitud` date DEFAULT NULL,
  `Fecha_Estatus` date DEFAULT NULL,
  `idPuesto` int(11) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `idEstatus_Solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`idAnuncio`),
  ADD KEY `fk_Anuncio_Puesto1` (`idPuesto`),
  ADD KEY `fk_Anuncio_Medio_Publicidad1` (`idMedio_Publicidad`),
  ADD KEY `fk_Anuncio_Perfil1` (`idPerfil`),
  ADD KEY `fk_Anuncio_Datos_de_empresa1` (`Nombre_de_empresa`),
  ADD KEY `fk_Anuncio_Contacto1` (`Contacto_idcomtacto`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`),
  ADD KEY `fk_Area_Solicitud_de_Puesto1` (`Solicitud_de_Puesto_Id`);

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`Curp`),
  ADD KEY `fk_Candidato_Estado_Civil1` (`idEstado_Civil`);

--
-- Indices de la tabla `candidato_has_habilidad`
--
ALTER TABLE `candidato_has_habilidad`
  ADD PRIMARY KEY (`Curp`),
  ADD KEY `fk_Candidato_has_Habilidad_Habilidad1` (`idHabilidad`),
  ADD KEY `Curp` (`Curp`);

--
-- Indices de la tabla `candidato_has_idioma`
--
ALTER TABLE `candidato_has_idioma`
  ADD KEY `fk_Candidato_has_Idioma_Candidato1` (`Curp`),
  ADD KEY `fk_Candidato_has_Idioma_Idioma1` (`idIdioma`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idCarrera`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idcomtacto`);

--
-- Indices de la tabla `datos_de_empresa`
--
ALTER TABLE `datos_de_empresa`
  ADD PRIMARY KEY (`Nombre_de_empresa`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`idEstado_Civil`);

--
-- Indices de la tabla `estatus_solicitud`
--
ALTER TABLE `estatus_solicitud`
  ADD PRIMARY KEY (`idEstatus_Solicitud`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`idExperiencia`);

--
-- Indices de la tabla `experiencia_has_candidato`
--
ALTER TABLE `experiencia_has_candidato`
  ADD KEY `fk_Experiencia_has_Candidato_Experiencia1` (`idExperiencia`),
  ADD KEY `fk_Experiencia_has_Candidato_Candidato1` (`Curp`);

--
-- Indices de la tabla `experiencia_has_perfil`
--
ALTER TABLE `experiencia_has_perfil`
  ADD KEY `fk_Experiencia_has_Perfil_Experiencia1` (`idExperiencia`),
  ADD KEY `fk_Experiencia_has_Perfil_Perfil1` (`idPerfil`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`idHabilidad`);

--
-- Indices de la tabla `habilidad_has_perfil`
--
ALTER TABLE `habilidad_has_perfil`
  ADD KEY `fk_Habilidad_has_Perfil_Habilidad1` (`idHabilidad`),
  ADD KEY `fk_Habilidad_has_Perfil_Perfil1` (`idPerfil`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`idIdioma`);

--
-- Indices de la tabla `idioma_has_perfil`
--
ALTER TABLE `idioma_has_perfil`
  ADD KEY `fk_Idioma_has_Perfil_Idioma1` (`idIdioma`),
  ADD KEY `fk_Idioma_has_Perfil_Perfil1` (`idPerfil`);

--
-- Indices de la tabla `medio_publicidad`
--
ALTER TABLE `medio_publicidad`
  ADD PRIMARY KEY (`idMedio_Publicidad`);

--
-- Indices de la tabla `nivel_academico`
--
ALTER TABLE `nivel_academico`
  ADD PRIMARY KEY (`idNivel_Academico`);

--
-- Indices de la tabla `nivel_academico_has_candidato`
--
ALTER TABLE `nivel_academico_has_candidato`
  ADD KEY `fk_Nivel_Academico_has_Candidato_Candidato1` (`Candidato_Curp`),
  ADD KEY `fk_Nivel_Academico_has_Candidato_Nivel_Academico1` (`Nivel_Academico_idNivel_Academico`),
  ADD KEY `fk_Nivel_Academico_has_Candidato_Carrera1` (`Carrera_idCarrera`);

--
-- Indices de la tabla `nivel_idioma`
--
ALTER TABLE `nivel_idioma`
  ADD PRIMARY KEY (`idNivel_Idioma`),
  ADD KEY `fk_Nivel_Idioma_Idioma1` (`idIdioma`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`idPerfil`),
  ADD KEY `fk_Perfil_Puesto1` (`idPuesto`),
  ADD KEY `fk_Perfil_Nivel_Academico1` (`idNivel_Academico`),
  ADD KEY `fk_Perfil_Carrera1` (`Carrera_idCarrera`),
  ADD KEY `fk_Perfil_Nivel_Idioma1` (`idNivel_Idioma`);

--
-- Indices de la tabla `perfil_has_registrousuario1`
--
ALTER TABLE `perfil_has_registrousuario1`
  ADD KEY `fk_Perfil_has_RegistroUsuario1_Perfil1` (`idPerfil`),
  ADD KEY `fk_Perfil_has_RegistroUsuario1_RegistroUsuario1` (`idUsuarioR`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idPuesto`);

--
-- Indices de la tabla `registrousuario`
--
ALTER TABLE `registrousuario`
  ADD PRIMARY KEY (`idUsuarioR`);

--
-- Indices de la tabla `resultado_candidato`
--
ALTER TABLE `resultado_candidato`
  ADD KEY `fk_Resultado_Candidato_Candidato1` (`Candidato_Curp`),
  ADD KEY `fk_Resultado_Candidato_Solicitud_Candidato1` (`Solicitud_Candidato_idSolicitud_Candidato`);

--
-- Indices de la tabla `solicitud_candidato`
--
ALTER TABLE `solicitud_candidato`
  ADD PRIMARY KEY (`idSolicitud_Candidato`),
  ADD KEY `fk_Solicitud_Candidato_Area1` (`idArea`),
  ADD KEY `fk_Solicitud_Candidato_Puesto1` (`idPuesto`),
  ADD KEY `fk_Solicitud_Candidato_Perfil1` (`idPerfil`);

--
-- Indices de la tabla `solicitud_candidato_has_anuncio`
--
ALTER TABLE `solicitud_candidato_has_anuncio`
  ADD KEY `fk_Solicitud_Candidato_has_Anuncio_Solicitud_Candidato1` (`idSolicitud_Candidato`),
  ADD KEY `fk_Solicitud_Candidato_has_Anuncio_Anuncio1` (`idAnuncio`);

--
-- Indices de la tabla `solicitud_candidato_has_puesto`
--
ALTER TABLE `solicitud_candidato_has_puesto`
  ADD KEY `fk_Solicitud_Candidato_has_Puesto_Solicitud_Candidato1` (`Solicitud_Candidato_idSolicitud_Candidato`),
  ADD KEY `fk_Solicitud_Candidato_has_Puesto_Puesto1` (`Puesto_idPuesto`);

--
-- Indices de la tabla `solicitud_de_puesto`
--
ALTER TABLE `solicitud_de_puesto`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Solicitud_de_Puesto_Puesto1` (`idPuesto`),
  ADD KEY `fk_Solicitud_de_Puesto_Perfil1` (`idPerfil`),
  ADD KEY `fk_Solicitud_de_Puesto_Estatus_Solicitud1` (`idEstatus_Solicitud`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `idAnuncio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `idEstado_Civil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `idExperiencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  MODIFY `idHabilidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `idIdioma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medio_publicidad`
--
ALTER TABLE `medio_publicidad`
  MODIFY `idMedio_Publicidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel_academico`
--
ALTER TABLE `nivel_academico`
  MODIFY `idNivel_Academico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel_idioma`
--
ALTER TABLE `nivel_idioma`
  MODIFY `idNivel_Idioma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `idPerfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `idPuesto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registrousuario`
--
ALTER TABLE `registrousuario`
  MODIFY `idUsuarioR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_candidato`
--
ALTER TABLE `solicitud_candidato`
  MODIFY `idSolicitud_Candidato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_de_puesto`
--
ALTER TABLE `solicitud_de_puesto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `fk_Anuncio_Contacto1` FOREIGN KEY (`Contacto_idcomtacto`) REFERENCES `contacto` (`idcomtacto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_Datos_de_empresa1` FOREIGN KEY (`Nombre_de_empresa`) REFERENCES `datos_de_empresa` (`Nombre_de_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_Medio_Publicidad1` FOREIGN KEY (`idMedio_Publicidad`) REFERENCES `medio_publicidad` (`idMedio_Publicidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_Perfil1` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Anuncio_Puesto1` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `fk_Area_Solicitud_de_Puesto1` FOREIGN KEY (`Solicitud_de_Puesto_Id`) REFERENCES `solicitud_de_puesto` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `fk_Candidato_Estado_Civil1` FOREIGN KEY (`idEstado_Civil`) REFERENCES `estado_civil` (`idEstado_Civil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato_has_habilidad`
--
ALTER TABLE `candidato_has_habilidad`
  ADD CONSTRAINT `candidato_has_habilidad_ibfk_1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`),
  ADD CONSTRAINT `candidato_has_habilidad_ibfk_2` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`),
  ADD CONSTRAINT `fk_Candidato_has_Habilidad_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Candidato_has_Habilidad_Habilidad1` FOREIGN KEY (`idHabilidad`) REFERENCES `habilidad` (`idHabilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `candidato_has_idioma`
--
ALTER TABLE `candidato_has_idioma`
  ADD CONSTRAINT `fk_Candidato_has_Idioma_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Candidato_has_Idioma_Idioma1` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `experiencia_has_candidato`
--
ALTER TABLE `experiencia_has_candidato`
  ADD CONSTRAINT `fk_Experiencia_has_Candidato_Candidato1` FOREIGN KEY (`Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Experiencia_has_Candidato_Experiencia1` FOREIGN KEY (`idExperiencia`) REFERENCES `experiencia` (`idExperiencia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `experiencia_has_perfil`
--
ALTER TABLE `experiencia_has_perfil`
  ADD CONSTRAINT `fk_Experiencia_has_Perfil_Experiencia1` FOREIGN KEY (`idExperiencia`) REFERENCES `experiencia` (`idExperiencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Experiencia_has_Perfil_Perfil1` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `habilidad_has_perfil`
--
ALTER TABLE `habilidad_has_perfil`
  ADD CONSTRAINT `fk_Habilidad_has_Perfil_Habilidad1` FOREIGN KEY (`idHabilidad`) REFERENCES `habilidad` (`idHabilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Habilidad_has_Perfil_Perfil1` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `idioma_has_perfil`
--
ALTER TABLE `idioma_has_perfil`
  ADD CONSTRAINT `fk_Idioma_has_Perfil_Idioma1` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Idioma_has_Perfil_Perfil1` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nivel_academico_has_candidato`
--
ALTER TABLE `nivel_academico_has_candidato`
  ADD CONSTRAINT `fk_Nivel_Academico_has_Candidato_Candidato1` FOREIGN KEY (`Candidato_Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Nivel_Academico_has_Candidato_Carrera1` FOREIGN KEY (`Carrera_idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Nivel_Academico_has_Candidato_Nivel_Academico1` FOREIGN KEY (`Nivel_Academico_idNivel_Academico`) REFERENCES `nivel_academico` (`idNivel_Academico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nivel_idioma`
--
ALTER TABLE `nivel_idioma`
  ADD CONSTRAINT `fk_Nivel_Idioma_Idioma1` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `fk_Perfil_Carrera1` FOREIGN KEY (`Carrera_idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Perfil_Nivel_Academico1` FOREIGN KEY (`idNivel_Academico`) REFERENCES `nivel_academico` (`idNivel_Academico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Perfil_Nivel_Idioma1` FOREIGN KEY (`idNivel_Idioma`) REFERENCES `nivel_idioma` (`idNivel_Idioma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Perfil_Puesto1` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfil_has_registrousuario1`
--
ALTER TABLE `perfil_has_registrousuario1`
  ADD CONSTRAINT `fk_Perfil_has_RegistroUsuario1_Perfil1` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Perfil_has_RegistroUsuario1_RegistroUsuario1` FOREIGN KEY (`idUsuarioR`) REFERENCES `registrousuario` (`idUsuarioR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `resultado_candidato`
--
ALTER TABLE `resultado_candidato`
  ADD CONSTRAINT `fk_Resultado_Candidato_Candidato1` FOREIGN KEY (`Candidato_Curp`) REFERENCES `candidato` (`Curp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Resultado_Candidato_Solicitud_Candidato1` FOREIGN KEY (`Solicitud_Candidato_idSolicitud_Candidato`) REFERENCES `solicitud_candidato` (`idSolicitud_Candidato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud_candidato`
--
ALTER TABLE `solicitud_candidato`
  ADD CONSTRAINT `fk_Solicitud_Candidato_Area1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Candidato_Perfil1` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Candidato_Puesto1` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud_candidato_has_anuncio`
--
ALTER TABLE `solicitud_candidato_has_anuncio`
  ADD CONSTRAINT `fk_Solicitud_Candidato_has_Anuncio_Anuncio1` FOREIGN KEY (`idAnuncio`) REFERENCES `anuncio` (`idAnuncio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Candidato_has_Anuncio_Solicitud_Candidato1` FOREIGN KEY (`idSolicitud_Candidato`) REFERENCES `solicitud_candidato` (`idSolicitud_Candidato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud_candidato_has_puesto`
--
ALTER TABLE `solicitud_candidato_has_puesto`
  ADD CONSTRAINT `fk_Solicitud_Candidato_has_Puesto_Puesto1` FOREIGN KEY (`Puesto_idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_Candidato_has_Puesto_Solicitud_Candidato1` FOREIGN KEY (`Solicitud_Candidato_idSolicitud_Candidato`) REFERENCES `solicitud_candidato` (`idSolicitud_Candidato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud_de_puesto`
--
ALTER TABLE `solicitud_de_puesto`
  ADD CONSTRAINT `fk_Solicitud_de_Puesto_Estatus_Solicitud1` FOREIGN KEY (`idEstatus_Solicitud`) REFERENCES `estatus_solicitud` (`idEstatus_Solicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_de_Puesto_Perfil1` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitud_de_Puesto_Puesto1` FOREIGN KEY (`idPuesto`) REFERENCES `puesto` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
