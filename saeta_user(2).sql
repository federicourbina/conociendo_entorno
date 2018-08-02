-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2018 a las 01:42:03
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `saeta_user`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componente`
--

CREATE TABLE `componente` (
  `idcomponente` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `componente`
--

INSERT INTO `componente` (`idcomponente`, `nombre`, `descripcion`) VALUES
(1, 'Recursos ', NULL),
(2, 'Actividades', NULL),
(3, 'Para saber más', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuatrimestre`
--

CREATE TABLE `cuatrimestre` (
  `idcuatrimestre` int(11) NOT NULL,
  `serie` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuatrimestre`
--

INSERT INTO `cuatrimestre` (`idcuatrimestre`, `serie`) VALUES
(1, '1ER CUATRIMESTRE'),
(2, '2DO CUATRIMESTRE'),
(3, '3ER CUATRIMESTRE'),
(4, '6TO CUATRIMESTRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuatrimestre_modulo`
--

CREATE TABLE `cuatrimestre_modulo` (
  `idcuatrimestre_modulo` int(11) NOT NULL,
  `idcuatrimestre_periodo` int(11) DEFAULT NULL,
  `idmodulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuatrimestre_modulo`
--

INSERT INTO `cuatrimestre_modulo` (`idcuatrimestre_modulo`, `idcuatrimestre_periodo`, `idmodulo`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(6, 3, 6),
(8, 3, 1),
(9, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuatrimestre_periodo`
--

CREATE TABLE `cuatrimestre_periodo` (
  `idcuatrimestre_periodo` int(11) NOT NULL,
  `idcuatrimestre` int(11) NOT NULL,
  `idperiodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuatrimestre_periodo`
--

INSERT INTO `cuatrimestre_periodo` (`idcuatrimestre_periodo`, `idcuatrimestre`, `idperiodo`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_alumno`
--

CREATE TABLE `h_alumno` (
  `idalumno` int(11) NOT NULL,
  `iddireccion` int(11) NOT NULL,
  `idprocedencia` int(11) NOT NULL,
  `no_control` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ap_paterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ap_materno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `sexo` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `edo_nacimiento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `mpio_nacimiento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `loc_nacimiento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `curp` varchar(18) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `constancia_estud` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `edo_civil` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `ciclo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `cuatrimestre` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `h_alumno`
--

INSERT INTO `h_alumno` (`idalumno`, `iddireccion`, `idprocedencia`, `no_control`, `nombre`, `ap_paterno`, `ap_materno`, `sexo`, `edo_nacimiento`, `mpio_nacimiento`, `loc_nacimiento`, `curp`, `fecha_nac`, `email`, `constancia_estud`, `edo_civil`, `ciclo`, `cuatrimestre`) VALUES
(1, 1, 1, '5949580211', 'JHONATAN OMAR', 'GALINDO', 'AGUILAR', 'H', 'MEXICO', 'TEPEXPAN', 'TEPEXPAN', 'ABCJ920218HMCLGA01', '1992-02-18', 'jgalindo@outlook.com', 'TITULO', 'CASADO', '2018-1', 1),
(2, 2, 2, '5949580212', 'KARLA IVONNE', 'GALINDO', 'AGUILAR', 'M', 'MEXICO', 'ECATEPEC', 'ECATEPEC', 'DEFJ920218HMCLGB02', '1992-02-19', 'ab@hotmail.com', 'TITULO', 'SOLTERO', '2018-1', 2),
(3, 3, 3, '5949580213', 'PEDRO', 'PEREZ', 'MENDEZ', 'H', 'MEXICO', 'TEXCOCO', 'ECATEPEC', 'GHIJ920218HMCLGC03', '1992-02-20', 'cd@hotmail.com', 'TITULO', 'SOLTERO', '2018-1', 3),
(4, 4, 4, '5949580214', 'ANTHONY', 'HERNANDEZ', 'RANGEL', 'H', 'MEXICO', 'SAN ANGEL', 'CDMX', 'ABCJ920218HMCLGA02', '1992-02-21', 'de@hotmail.com', 'TITULO', 'SOLTERO', '2018-1', 4),
(5, 5, 5, '5949580215', 'ESTHER', 'VELAZCO', 'CORONA', 'M', 'MEXICO', 'PUERTA', 'CDMX', 'DEFJ920218HMCLGB03', '1992-02-22', 'fg@hotmail.com', 'TITULO', 'SOLTERO', '2018-1', 5),
(6, 6, 6, '5949580216', 'MARIA VERONICA', 'RAMOS', 'PEREZ', 'M', 'MEXICO', 'ECATEPEC', 'CDMX', 'GHIJ920218HMCLGC04', '1992-02-23', 'hi@hotmail.com', 'TITULO', 'SOLTERO', '2018-1', 6),
(7, 7, 7, '5949580217', 'ALMA', 'NEGRETE', 'CARMONA', 'M', 'MEXICO', 'ECATEPEC', 'CDMX', 'ABCJ920218HMCLGA03', '1992-02-24', 'jk@hotmail.com', 'TITULO', 'SOLTERO', '2018-1', 7),
(8, 8, 8, '5949580218', 'ALICIA', 'HERNANDEZ', 'ROSAS', 'M', 'MEXICO', 'ECATEPEC', 'HERMOSILLO', 'DEFJ920218HMCLGB04', '1992-02-25', 'lm@hotmail.com', 'TITULO', 'SOLTERO', '2018-1', 8),
(9, 9, 9, '5949580219', 'MARTHA', 'AGUIRRE', 'SANCHEZ', 'M', 'MEXICO', 'ECATEPEC', 'HERMOSILLO', 'GHIJ920218HMCLGC05', '1992-02-26', 'no@hotmail.com', 'TITULO', 'SOLTERO', '2018-1', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_direccion`
--

CREATE TABLE `h_direccion` (
  `iddireccion` int(11) NOT NULL,
  `cp` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `colonia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `calle_num` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `edo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `municipio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `localidad` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `h_direccion`
--

INSERT INTO `h_direccion` (`iddireccion`, `cp`, `colonia`, `calle_num`, `edo`, `municipio`, `localidad`) VALUES
(1, '55895', 'SAN MIGUEL', 'AV. PROGRESO #9', 'MEXICO', 'MEXICO', 'XOMETLA'),
(2, '55762', 'ACOLMAN', 'SONA ROSA', 'MEXICO', 'MEXICO', 'SONA ROSA'),
(3, '55629', 'PUSTLA', 'TULANTONGO', 'MEXICO', 'MEXICO', 'TULANTONGO'),
(4, '55496', 'ECATEPEC', 'TABASCO', 'MEXICO', 'MEXICO', 'TABASCO'),
(5, '55363', 'REVOLUCION', 'DE AYENDE ', 'MEXICO', 'MEXICO', 'DE AYENDE '),
(6, '55230', 'TECAMAC', 'SANTA ROSA', 'MEXICO', 'MEXICO', 'SANTA ROSA'),
(7, '55097', '100MTRS', 'TEPEXPAN', 'MEXICO', 'MEXICO', 'TEPEXPAN'),
(8, '54964', 'AMERICAS', 'MORELOS', 'MEXICO', 'MEXICO', 'MORELOS'),
(9, '54831', 'PUEBLA', 'SAN MIGUEL DE AYENDE', 'MEXICO', 'MEXICO', 'SAN MIGUEL DE AYENDE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_procedencia`
--

CREATE TABLE `h_procedencia` (
  `idprocedencia` int(11) NOT NULL,
  `ep_edo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ep_municipio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ep_modalidad` varchar(14) COLLATE utf8_spanish_ci NOT NULL,
  `ep_regimen` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `h_procedencia`
--

INSERT INTO `h_procedencia` (`idprocedencia`, `ep_edo`, `ep_municipio`, `ep_modalidad`, `ep_regimen`) VALUES
(1, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA'),
(2, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA'),
(3, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA'),
(4, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA'),
(5, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA'),
(6, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA'),
(7, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA'),
(8, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA'),
(9, 'MEXICO', 'TECAMAC', 'TECNOLOGICA', 'ACADEMINA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `idmatricula` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `usuarioJoomla` int(11) DEFAULT NULL,
  `idcuatrimestre_periodo` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`idmatricula`, `idalumno`, `usuarioJoomla`, `idcuatrimestre_periodo`) VALUES
(1, 1, 904, 1),
(2, 2, 909, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(450) DEFAULT NULL,
  `MDP` int(11) DEFAULT NULL,
  `MDV` int(11) DEFAULT NULL,
  `I` int(11) DEFAULT NULL,
  `semana` int(11) DEFAULT NULL,
  `activador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `nombre`, `descripcion`, `MDP`, `MDV`, `I`, `semana`, `activador`) VALUES
(1, 'MODULO 1', 'Expresiones argumentadas en la comunicación oral y escrita', 2, 2, 10, 4, 1),
(2, 'MODULO 2', 'El lenguaje algebraico y la naturaleza de la quimica', 2, 2, 10, 4, 1),
(3, 'MODULO 3', 'La moral del uso de las tecnologías\r\nde la información y comunicación ', 2, 2, 9, 3, 1),
(4, 'MODULO 4', 'Geometría, Trigonométrica y Física I', 2, 2, 10, 6, 1),
(5, 'MODULO 11', 'Promueve el desarrollo sustentable', 4, 3, 12, 6, 1),
(6, 'MODULO 5', 'Química II y Biología ', 2, 2, 10, 6, 1),
(7, 'MODULO 12', 'Emplea técnicas agrícolas para la producción', 4, 10, 16, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_recursos`
--

CREATE TABLE `modulo_recursos` (
  `idmodulo_recursos` int(11) NOT NULL,
  `idmodulo` int(11) DEFAULT NULL,
  `idrecursos` int(11) DEFAULT NULL,
  `semana` int(11) DEFAULT NULL,
  `idcomponente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo_recursos`
--

INSERT INTO `modulo_recursos` (`idmodulo_recursos`, `idmodulo`, `idrecursos`, `semana`, `idcomponente`) VALUES
(6, 1, 1, 2, 1),
(10, 1, 1, 1, 2),
(11, 1, 3, 1, 3),
(12, 1, 4, 3, 2),
(13, 1, 2, 1, 1),
(14, 1, 5, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `idperiodo` int(11) NOT NULL,
  `anio` year(4) DEFAULT NULL,
  `ide` varchar(2) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`idperiodo`, `anio`, `ide`, `activo`) VALUES
(1, 2018, '1', 1),
(2, 2018, '2', 0),
(3, 2018, '3', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `idrecursos` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(450) DEFAULT NULL,
  `idtiporecurso` int(11) DEFAULT NULL,
  `referencia` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`idrecursos`, `nombre`, `descripcion`, `idtiporecurso`, `referencia`) VALUES
(1, 'Nombre del Recurso Word', 'Nombre del Recurso en word', 1, 'recurso.txt'),
(2, 'Nombre del Recurso PDF', 'Nombre del Recurso PDF', 2, 'recurso.txt'),
(3, 'Nombre del Recurso EXCEL', 'Nombre del Recurso EXCEL', 3, 'recurso.txt'),
(4, 'Nombre del Recurso video', 'Nombre del Recurso video', 4, 'recurso.txt'),
(5, 'Nombre Recurso wdr', 'un archivo', 1, 'DATOS ANEXOS DECLARACIÓN PATRIMONIAL.docx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiporecurso`
--

CREATE TABLE `tiporecurso` (
  `idtiporecurso` int(11) NOT NULL,
  `descripcion` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiporecurso`
--

INSERT INTO `tiporecurso` (`idtiporecurso`, `descripcion`) VALUES
(1, 'Word'),
(2, 'PDF'),
(3, 'Excel'),
(4, 'Video'),
(5, 'Pág. Web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visualizacion`
--

CREATE TABLE `visualizacion` (
  `idvisualizacion` int(11) NOT NULL,
  `usuarioJoomla` int(11) DEFAULT NULL,
  `idrecurso` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `no_vistas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `componente`
--
ALTER TABLE `componente`
  ADD PRIMARY KEY (`idcomponente`);

--
-- Indices de la tabla `cuatrimestre`
--
ALTER TABLE `cuatrimestre`
  ADD PRIMARY KEY (`idcuatrimestre`);

--
-- Indices de la tabla `cuatrimestre_modulo`
--
ALTER TABLE `cuatrimestre_modulo`
  ADD PRIMARY KEY (`idcuatrimestre_modulo`),
  ADD KEY `re2_idx` (`idcuatrimestre_periodo`),
  ADD KEY `re3_idx` (`idmodulo`);

--
-- Indices de la tabla `cuatrimestre_periodo`
--
ALTER TABLE `cuatrimestre_periodo`
  ADD PRIMARY KEY (`idcuatrimestre_periodo`),
  ADD KEY `idcuatrimestre` (`idcuatrimestre`),
  ADD KEY `idperiodo` (`idperiodo`);

--
-- Indices de la tabla `h_alumno`
--
ALTER TABLE `h_alumno`
  ADD PRIMARY KEY (`idalumno`),
  ADD KEY `iddireccion` (`iddireccion`),
  ADD KEY `idprocedencia` (`idprocedencia`);

--
-- Indices de la tabla `h_direccion`
--
ALTER TABLE `h_direccion`
  ADD PRIMARY KEY (`iddireccion`);

--
-- Indices de la tabla `h_procedencia`
--
ALTER TABLE `h_procedencia`
  ADD PRIMARY KEY (`idprocedencia`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`idmatricula`),
  ADD KEY `idcuatrimestre_periodo` (`idcuatrimestre_periodo`),
  ADD KEY `idalumno` (`idalumno`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `modulo_recursos`
--
ALTER TABLE `modulo_recursos`
  ADD PRIMARY KEY (`idmodulo_recursos`),
  ADD KEY `re4_idx` (`idmodulo`),
  ADD KEY `re5_idx` (`idrecursos`),
  ADD KEY `re7_idx` (`idcomponente`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`idperiodo`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`idrecursos`),
  ADD KEY `re6_idx` (`idtiporecurso`);

--
-- Indices de la tabla `tiporecurso`
--
ALTER TABLE `tiporecurso`
  ADD PRIMARY KEY (`idtiporecurso`);

--
-- Indices de la tabla `visualizacion`
--
ALTER TABLE `visualizacion`
  ADD PRIMARY KEY (`idvisualizacion`),
  ADD KEY `re8_idx` (`idrecurso`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuatrimestre_modulo`
--
ALTER TABLE `cuatrimestre_modulo`
  ADD CONSTRAINT `re2` FOREIGN KEY (`idcuatrimestre_periodo`) REFERENCES `cuatrimestre_periodo` (`idcuatrimestre_periodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `re3` FOREIGN KEY (`idmodulo`) REFERENCES `modulo` (`idmodulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuatrimestre_periodo`
--
ALTER TABLE `cuatrimestre_periodo`
  ADD CONSTRAINT `cuatrimestre_periodo_ibfk_1` FOREIGN KEY (`idcuatrimestre`) REFERENCES `cuatrimestre` (`idcuatrimestre`),
  ADD CONSTRAINT `cuatrimestre_periodo_ibfk_2` FOREIGN KEY (`idperiodo`) REFERENCES `periodo` (`idperiodo`);

--
-- Filtros para la tabla `h_alumno`
--
ALTER TABLE `h_alumno`
  ADD CONSTRAINT `h_alumno_ibfk_1` FOREIGN KEY (`iddireccion`) REFERENCES `h_direccion` (`iddireccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h_alumno_ibfk_2` FOREIGN KEY (`idprocedencia`) REFERENCES `h_procedencia` (`idprocedencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`idcuatrimestre_periodo`) REFERENCES `cuatrimestre_periodo` (`idcuatrimestre_periodo`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`idalumno`) REFERENCES `h_alumno` (`idalumno`);

--
-- Filtros para la tabla `modulo_recursos`
--
ALTER TABLE `modulo_recursos`
  ADD CONSTRAINT `r10` FOREIGN KEY (`idcomponente`) REFERENCES `componente` (`idcomponente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `re4` FOREIGN KEY (`idmodulo`) REFERENCES `modulo` (`idmodulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `re5` FOREIGN KEY (`idrecursos`) REFERENCES `recursos` (`idrecursos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD CONSTRAINT `re6` FOREIGN KEY (`idtiporecurso`) REFERENCES `tiporecurso` (`idtiporecurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `visualizacion`
--
ALTER TABLE `visualizacion`
  ADD CONSTRAINT `re8` FOREIGN KEY (`idrecurso`) REFERENCES `recursos` (`idrecursos`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
