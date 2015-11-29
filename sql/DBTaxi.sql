-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-11-2015 a las 12:05:28
-- Versión del servidor: 5.6.27-0ubuntu0.15.04.1
-- Versión de PHP: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `DBTaxi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Artista`
--

CREATE TABLE IF NOT EXISTS `Artista` (
`ArtistaID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Asignar`
--

CREATE TABLE IF NOT EXISTS `Asignar` (
  `idCall_Center` int(11) NOT NULL,
  `idViaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Atender`
--

CREATE TABLE IF NOT EXISTS `Atender` (
  `idCall_Center` int(11) NOT NULL,
  `idUsuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Calificacion`
--

CREATE TABLE IF NOT EXISTS `Calificacion` (
  `idCalificacion` int(11) NOT NULL,
  `Tpregunta1` varchar(45) DEFAULT NULL,
  `Tpregunta2` varchar(45) DEFAULT NULL,
  `Tpregunta3` varchar(45) DEFAULT NULL,
  `Cpregunta1` varchar(45) DEFAULT NULL,
  `Cpregunta2` varchar(45) DEFAULT NULL,
  `Cpregunta3` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Call_Center`
--

CREATE TABLE IF NOT EXISTS `Call_Center` (
`idCall_Center` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cancion`
--

CREATE TABLE IF NOT EXISTS `Cancion` (
`CancionID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente`
--

CREATE TABLE IF NOT EXISTS `Cliente` (
  `CorreoID` varchar(100) NOT NULL DEFAULT '',
  `Password` varchar(25) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apaterno` varchar(50) NOT NULL,
  `Amaterno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ClienteTelefono`
--

CREATE TABLE IF NOT EXISTS `ClienteTelefono` (
  `CorreoID` varchar(100) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Contactar`
--

CREATE TABLE IF NOT EXISTS `Contactar` (
  `idCall_Center` int(11) NOT NULL,
  `Curp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Delegacion/Municipio`
--

CREATE TABLE IF NOT EXISTS `Delegacion/Municipio` (
  `idDelegacion/Municipio` int(11) NOT NULL,
  `Del/Mun` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Destino`
--

CREATE TABLE IF NOT EXISTS `Destino` (
  `idViaje` int(10) unsigned NOT NULL,
  `idDireccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Direccion`
--

CREATE TABLE IF NOT EXISTS `Direccion` (
  `idDireccion` int(11) NOT NULL,
  `Col` varchar(45) DEFAULT NULL,
  `C.P.` varchar(45) DEFAULT NULL,
  `Calle` varchar(45) DEFAULT NULL,
  `Num` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Dueno`
--

CREATE TABLE IF NOT EXISTS `Dueno` (
  `Curp` varchar(13) NOT NULL,
  `Placa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Escuchar`
--

CREATE TABLE IF NOT EXISTS `Escuchar` (
  `CorreoID` int(11) NOT NULL,
  `CancionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estado`
--

CREATE TABLE IF NOT EXISTS `Estado` (
  `idEstado` int(11) NOT NULL,
  `nomEstado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Fabrica`
--

CREATE TABLE IF NOT EXISTS `Fabrica` (
  `Placa` varchar(45) NOT NULL,
  `idMarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Favorito`
--

CREATE TABLE IF NOT EXISTS `Favorito` (
  `idDireccion` int(11) NOT NULL,
  `CorreoID` varchar(100) NOT NULL,
  `Visitas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Foto_Taxi`
--

CREATE TABLE IF NOT EXISTS `Foto_Taxi` (
  `Placa` varchar(45) NOT NULL,
  `Foto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Genero`
--

CREATE TABLE IF NOT EXISTS `Genero` (
`GeneroID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Interpretar`
--

CREATE TABLE IF NOT EXISTS `Interpretar` (
  `ArtistaID` int(11) NOT NULL,
  `CancionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Manejar`
--

CREATE TABLE IF NOT EXISTS `Manejar` (
  `idViaje` int(10) unsigned NOT NULL,
  `Curp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Marca`
--

CREATE TABLE IF NOT EXISTS `Marca` (
  `idMarca` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Operador`
--

CREATE TABLE IF NOT EXISTS `Operador` (
  `Usuario` varchar(45) NOT NULL,
  `Apaterno` varchar(45) DEFAULT NULL,
  `Amaterno` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Operar`
--

CREATE TABLE IF NOT EXISTS `Operar` (
  `Curp` varchar(13) NOT NULL,
  `Placa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Origen`
--

CREATE TABLE IF NOT EXISTS `Origen` (
  `idViaje` int(10) unsigned NOT NULL,
  `idDireccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pertenecer`
--

CREATE TABLE IF NOT EXISTS `Pertenecer` (
  `CancionID` int(50) NOT NULL,
  `GeneroID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PertenecerDel`
--

CREATE TABLE IF NOT EXISTS `PertenecerDel` (
  `idDelegacion/Municipio` int(11) NOT NULL,
  `idDireccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PertenecerEstado`
--

CREATE TABLE IF NOT EXISTS `PertenecerEstado` (
  `idDelegacion/Municipio` int(11) NOT NULL,
  `idEstado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Poseer`
--

CREATE TABLE IF NOT EXISTS `Poseer` (
  `idCalificacion` int(11) NOT NULL,
  `idViaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Solicitar`
--

CREATE TABLE IF NOT EXISTS `Solicitar` (
  `CorreoID` varchar(100) NOT NULL,
  `idCall_Center` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Taxi`
--

CREATE TABLE IF NOT EXISTS `Taxi` (
  `Placa` varchar(45) NOT NULL,
  `Modelo` varchar(45) DEFAULT NULL,
  `Anio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Trabajador`
--

CREATE TABLE IF NOT EXISTS `Trabajador` (
  `Curp` varchar(13) NOT NULL,
  `Foto` varchar(45) DEFAULT NULL,
  `Apaterno` varchar(45) DEFAULT NULL,
  `Amaterno` varchar(45) DEFAULT NULL,
  `Fecha_Nac` datetime DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TrabajadorTelefono`
--

CREATE TABLE IF NOT EXISTS `TrabajadorTelefono` (
  `Curp` varchar(13) NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ubicar`
--

CREATE TABLE IF NOT EXISTS `Ubicar` (
  `idDireccion` int(10) unsigned NOT NULL,
  `idCall_Center` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Viajar`
--

CREATE TABLE IF NOT EXISTS `Viajar` (
  `idViaje` int(11) NOT NULL,
  `CorreoID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Viaje`
--

CREATE TABLE IF NOT EXISTS `Viaje` (
`idViaje` int(11) NOT NULL,
  `Completado` binary(1) DEFAULT NULL,
  `Fecha_I` datetime DEFAULT NULL,
  `Fecha_F` datetime DEFAULT NULL,
  `Costo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Vivir`
--

CREATE TABLE IF NOT EXISTS `Vivir` (
  `Curp` varchar(13) NOT NULL,
  `idDireccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Artista`
--
ALTER TABLE `Artista`
 ADD PRIMARY KEY (`ArtistaID`);

--
-- Indices de la tabla `Asignar`
--
ALTER TABLE `Asignar`
 ADD PRIMARY KEY (`idCall_Center`,`idViaje`), ADD KEY `fk_Asignar_1_idx` (`idViaje`);

--
-- Indices de la tabla `Atender`
--
ALTER TABLE `Atender`
 ADD PRIMARY KEY (`idCall_Center`,`idUsuario`), ADD KEY `fk_Atender_2_idx` (`idUsuario`);

--
-- Indices de la tabla `Calificacion`
--
ALTER TABLE `Calificacion`
 ADD PRIMARY KEY (`idCalificacion`);

--
-- Indices de la tabla `Call_Center`
--
ALTER TABLE `Call_Center`
 ADD PRIMARY KEY (`idCall_Center`);

--
-- Indices de la tabla `Cancion`
--
ALTER TABLE `Cancion`
 ADD PRIMARY KEY (`CancionID`);

--
-- Indices de la tabla `Cliente`
--
ALTER TABLE `Cliente`
 ADD PRIMARY KEY (`CorreoID`);

--
-- Indices de la tabla `ClienteTelefono`
--
ALTER TABLE `ClienteTelefono`
 ADD PRIMARY KEY (`CorreoID`,`Telefono`);

--
-- Indices de la tabla `Contactar`
--
ALTER TABLE `Contactar`
 ADD PRIMARY KEY (`idCall_Center`,`Curp`), ADD KEY `fk_Contactar_2_idx` (`Curp`);

--
-- Indices de la tabla `Delegacion/Municipio`
--
ALTER TABLE `Delegacion/Municipio`
 ADD PRIMARY KEY (`idDelegacion/Municipio`);

--
-- Indices de la tabla `Destino`
--
ALTER TABLE `Destino`
 ADD PRIMARY KEY (`idViaje`,`idDireccion`), ADD KEY `fk_Destino_1_idx` (`idDireccion`);

--
-- Indices de la tabla `Direccion`
--
ALTER TABLE `Direccion`
 ADD PRIMARY KEY (`idDireccion`);

--
-- Indices de la tabla `Dueno`
--
ALTER TABLE `Dueno`
 ADD PRIMARY KEY (`Curp`,`Placa`), ADD KEY `fk_Dueno_2_idx` (`Placa`);

--
-- Indices de la tabla `Escuchar`
--
ALTER TABLE `Escuchar`
 ADD PRIMARY KEY (`CancionID`,`CorreoID`);

--
-- Indices de la tabla `Estado`
--
ALTER TABLE `Estado`
 ADD PRIMARY KEY (`idEstado`);

--
-- Indices de la tabla `Fabrica`
--
ALTER TABLE `Fabrica`
 ADD PRIMARY KEY (`Placa`,`idMarca`), ADD KEY `fk_Fabrica_2_idx` (`idMarca`);

--
-- Indices de la tabla `Favorito`
--
ALTER TABLE `Favorito`
 ADD PRIMARY KEY (`idDireccion`,`CorreoID`), ADD KEY `fk_Favorito_2_idx` (`CorreoID`);

--
-- Indices de la tabla `Foto_Taxi`
--
ALTER TABLE `Foto_Taxi`
 ADD PRIMARY KEY (`Placa`,`Foto`);

--
-- Indices de la tabla `Genero`
--
ALTER TABLE `Genero`
 ADD PRIMARY KEY (`GeneroID`);

--
-- Indices de la tabla `Interpretar`
--
ALTER TABLE `Interpretar`
 ADD PRIMARY KEY (`CancionID`,`ArtistaID`), ADD KEY `ArtistaID` (`ArtistaID`), ADD KEY `CancionID` (`CancionID`);

--
-- Indices de la tabla `Manejar`
--
ALTER TABLE `Manejar`
 ADD PRIMARY KEY (`idViaje`,`Curp`), ADD KEY `fk_Manejar_1_idx` (`Curp`);

--
-- Indices de la tabla `Marca`
--
ALTER TABLE `Marca`
 ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `Operador`
--
ALTER TABLE `Operador`
 ADD PRIMARY KEY (`Usuario`);

--
-- Indices de la tabla `Operar`
--
ALTER TABLE `Operar`
 ADD PRIMARY KEY (`Curp`,`Placa`), ADD KEY `fk_Operar_1_idx` (`Placa`);

--
-- Indices de la tabla `Origen`
--
ALTER TABLE `Origen`
 ADD PRIMARY KEY (`idViaje`,`idDireccion`), ADD KEY `fk_Origen_1_idx` (`idDireccion`);

--
-- Indices de la tabla `Pertenecer`
--
ALTER TABLE `Pertenecer`
 ADD PRIMARY KEY (`GeneroID`,`CancionID`), ADD KEY `CancionID` (`CancionID`), ADD KEY `GeneroID` (`GeneroID`);

--
-- Indices de la tabla `PertenecerDel`
--
ALTER TABLE `PertenecerDel`
 ADD PRIMARY KEY (`idDelegacion/Municipio`,`idDireccion`), ADD KEY `fk_PertenecerDel_2_idx` (`idDireccion`);

--
-- Indices de la tabla `PertenecerEstado`
--
ALTER TABLE `PertenecerEstado`
 ADD PRIMARY KEY (`idDelegacion/Municipio`,`idEstado`), ADD KEY `fk_PertenecerEstado_2_idx` (`idEstado`);

--
-- Indices de la tabla `Poseer`
--
ALTER TABLE `Poseer`
 ADD PRIMARY KEY (`idCalificacion`,`idViaje`), ADD KEY `fk_Poseer_2_idx` (`idViaje`);

--
-- Indices de la tabla `Solicitar`
--
ALTER TABLE `Solicitar`
 ADD PRIMARY KEY (`CorreoID`,`idCall_Center`), ADD KEY `fk_Solicitar_2_idx` (`idCall_Center`);

--
-- Indices de la tabla `Taxi`
--
ALTER TABLE `Taxi`
 ADD PRIMARY KEY (`Placa`);

--
-- Indices de la tabla `Trabajador`
--
ALTER TABLE `Trabajador`
 ADD PRIMARY KEY (`Curp`);

--
-- Indices de la tabla `TrabajadorTelefono`
--
ALTER TABLE `TrabajadorTelefono`
 ADD PRIMARY KEY (`Curp`,`Telefono`);

--
-- Indices de la tabla `Ubicar`
--
ALTER TABLE `Ubicar`
 ADD PRIMARY KEY (`idDireccion`,`idCall_Center`);

--
-- Indices de la tabla `Viajar`
--
ALTER TABLE `Viajar`
 ADD PRIMARY KEY (`idViaje`), ADD KEY `fk_Viajar_2_idx` (`CorreoID`);

--
-- Indices de la tabla `Viaje`
--
ALTER TABLE `Viaje`
 ADD PRIMARY KEY (`idViaje`);

--
-- Indices de la tabla `Vivir`
--
ALTER TABLE `Vivir`
 ADD PRIMARY KEY (`Curp`,`idDireccion`), ADD KEY `fk_Vivir_1_idx` (`idDireccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Artista`
--
ALTER TABLE `Artista`
MODIFY `ArtistaID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Call_Center`
--
ALTER TABLE `Call_Center`
MODIFY `idCall_Center` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Cancion`
--
ALTER TABLE `Cancion`
MODIFY `CancionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Genero`
--
ALTER TABLE `Genero`
MODIFY `GeneroID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Viaje`
--
ALTER TABLE `Viaje`
MODIFY `idViaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Asignar`
--
ALTER TABLE `Asignar`
ADD CONSTRAINT `fk_Asignar_1` FOREIGN KEY (`idViaje`) REFERENCES `Viaje` (`idViaje`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Asignar_2` FOREIGN KEY (`idCall_Center`) REFERENCES `Call_Center` (`idCall_Center`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Atender`
--
ALTER TABLE `Atender`
ADD CONSTRAINT `fk_Atender_1` FOREIGN KEY (`idCall_Center`) REFERENCES `Call_Center` (`idCall_Center`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Atender_2` FOREIGN KEY (`idUsuario`) REFERENCES `Operador` (`Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ClienteTelefono`
--
ALTER TABLE `ClienteTelefono`
ADD CONSTRAINT `fk_ClienteTelefono_1` FOREIGN KEY (`CorreoID`) REFERENCES `Cliente` (`CorreoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Contactar`
--
ALTER TABLE `Contactar`
ADD CONSTRAINT `fk_Contactar_1` FOREIGN KEY (`idCall_Center`) REFERENCES `Call_Center` (`idCall_Center`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Contactar_2` FOREIGN KEY (`Curp`) REFERENCES `Trabajador` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Destino`
--
ALTER TABLE `Destino`
ADD CONSTRAINT `fk_Destino_1` FOREIGN KEY (`idDireccion`) REFERENCES `Direccion` (`idDireccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Dueno`
--
ALTER TABLE `Dueno`
ADD CONSTRAINT `fk_Dueno_1` FOREIGN KEY (`Curp`) REFERENCES `Trabajador` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Dueno_2` FOREIGN KEY (`Placa`) REFERENCES `Taxi` (`Placa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Fabrica`
--
ALTER TABLE `Fabrica`
ADD CONSTRAINT `fk_Fabrica_1` FOREIGN KEY (`Placa`) REFERENCES `Taxi` (`Placa`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Fabrica_2` FOREIGN KEY (`idMarca`) REFERENCES `Marca` (`idMarca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Favorito`
--
ALTER TABLE `Favorito`
ADD CONSTRAINT `fk_Favorito_1` FOREIGN KEY (`idDireccion`) REFERENCES `Direccion` (`idDireccion`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Favorito_2` FOREIGN KEY (`CorreoID`) REFERENCES `Cliente` (`CorreoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Foto_Taxi`
--
ALTER TABLE `Foto_Taxi`
ADD CONSTRAINT `fk_Foto_Taxi_1` FOREIGN KEY (`Placa`) REFERENCES `Taxi` (`Placa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Interpretar`
--
ALTER TABLE `Interpretar`
ADD CONSTRAINT `fk_Interpretar_1` FOREIGN KEY (`ArtistaID`) REFERENCES `Artista` (`ArtistaID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Interpretar_2` FOREIGN KEY (`CancionID`) REFERENCES `Cancion` (`CancionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Manejar`
--
ALTER TABLE `Manejar`
ADD CONSTRAINT `fk_Manejar_1` FOREIGN KEY (`Curp`) REFERENCES `Trabajador` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Operar`
--
ALTER TABLE `Operar`
ADD CONSTRAINT `fk_Operar_1` FOREIGN KEY (`Placa`) REFERENCES `Taxi` (`Placa`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Operar_2` FOREIGN KEY (`Curp`) REFERENCES `Trabajador` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Origen`
--
ALTER TABLE `Origen`
ADD CONSTRAINT `fk_Origen_1` FOREIGN KEY (`idDireccion`) REFERENCES `Direccion` (`idDireccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Pertenecer`
--
ALTER TABLE `Pertenecer`
ADD CONSTRAINT `fk_Pertenecer_1` FOREIGN KEY (`CancionID`) REFERENCES `Cancion` (`CancionID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Pertenecer_2` FOREIGN KEY (`GeneroID`) REFERENCES `Genero` (`GeneroID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `PertenecerDel`
--
ALTER TABLE `PertenecerDel`
ADD CONSTRAINT `fk_PertenecerDel_1` FOREIGN KEY (`idDelegacion/Municipio`) REFERENCES `Delegacion/Municipio` (`idDelegacion/Municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_PertenecerDel_2` FOREIGN KEY (`idDireccion`) REFERENCES `Direccion` (`idDireccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `PertenecerEstado`
--
ALTER TABLE `PertenecerEstado`
ADD CONSTRAINT `fk_PertenecerEstado_1` FOREIGN KEY (`idDelegacion/Municipio`) REFERENCES `Delegacion/Municipio` (`idDelegacion/Municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_PertenecerEstado_2` FOREIGN KEY (`idEstado`) REFERENCES `Estado` (`idEstado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Poseer`
--
ALTER TABLE `Poseer`
ADD CONSTRAINT `fk_Poseer_1` FOREIGN KEY (`idCalificacion`) REFERENCES `Calificacion` (`idCalificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Poseer_2` FOREIGN KEY (`idViaje`) REFERENCES `Viaje` (`idViaje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Solicitar`
--
ALTER TABLE `Solicitar`
ADD CONSTRAINT `fk_Solicitar_1` FOREIGN KEY (`CorreoID`) REFERENCES `Cliente` (`CorreoID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Solicitar_2` FOREIGN KEY (`idCall_Center`) REFERENCES `Call_Center` (`idCall_Center`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TrabajadorTelefono`
--
ALTER TABLE `TrabajadorTelefono`
ADD CONSTRAINT `fk_TrabajadorTelefono_1` FOREIGN KEY (`Curp`) REFERENCES `Trabajador` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Viajar`
--
ALTER TABLE `Viajar`
ADD CONSTRAINT `fk_Viajar_1` FOREIGN KEY (`idViaje`) REFERENCES `Viaje` (`idViaje`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Viajar_2` FOREIGN KEY (`CorreoID`) REFERENCES `Cliente` (`CorreoID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Vivir`
--
ALTER TABLE `Vivir`
ADD CONSTRAINT `fk_Vivir_1` FOREIGN KEY (`idDireccion`) REFERENCES `Direccion` (`idDireccion`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Vivir_2` FOREIGN KEY (`Curp`) REFERENCES `Trabajador` (`Curp`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
