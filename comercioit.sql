-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2016 a las 04:04:57
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comercioit`
--
CREATE DATABASE IF NOT EXISTS `comercioit` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `comercioit`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Hijo_de` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `Nombre`, `Hijo_de`) VALUES
(1,'Computadoras',0),
(2,'Smartphone',0),
(3,'Tablets',0),
(4,'Accesorios',2),
(5,'Cargadores',2),
(6,'Monitores',0),
(7,'Fundas',3),
(8,'Aire acondicionado',0),
(9,'Camaras digitales',0),
(10,'Notebooks',1),
(11,'Estufas',0),
(12,'Home Theater',0),
(13,'Impresoras',0),
(14,'Lavarropas',0),
(15,'Radio',0),
(16,'Telefonia Fija',0),
(17,'Televisores',0),
(18,'Video camaras',0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `idMarca` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`idMarca`, `Nombre`) VALUES
(1,'Apple'),
(2,'Samsung'),
(3,'Huawei'),
(4,'LG'),
(5,'Motorola'),
(6,'Google'),
(7,'Asus'),
(8,'ZTE'),
(9,'Nokia'),
(10,'Lenovo'),
(11,'PlayStation'),
(12,'Ninendo'),
(13,'Microsoft'),
(14,'TCL'),
(15,'Admiral'),
(16,'Compaq Presario'),
(17,'Epson'),
(18,'Gafa'),
(19,'Hewlett Packard'),
(20,'Hitachi'),
(21,'Ken Brown'),
(22,'Kodak'),
(23,'X-View'),
(24,'Noblex'),
(25,'Philco'),
(26,'Sanyo'),
(27,'Sigma'),
(28,'Sony'),
(29,'Westinghouse'),
(30,'Philips');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Precio` double NOT NULL,
  `Marca` int(11) NOT NULL,
  `Categoria` int(11) NOT NULL,
  `Presentacion` varchar(30) NOT NULL,
  `Stock` int(6) NOT NULL,
  `Imagen` tinytext,
  `Destacado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idProducto`),
  KEY `Marca` (`Marca`),
  KEY `Rubro` (`Categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `Nombre`, `Precio`, `Marca`, `Categoria`, `Presentacion`, `Stock`, `Imagen`, `Destacado`) VALUES
(1, 'iPhone 6', 499.99, 1, 2, '16GB', 500, 'P001.jpg', 1),
(2, 'iPad Pro', 599.99, 1, 3, '32GB', 300, 'P002.jpg', 1),
(3, 'Nexus 7', 299.99, 6, 3, '32GB', 300, 'P003.jpg', 1),
(4, 'Galaxy S7', 459.9, 2, 2, '64GB', 650, 'P004.jpg', 0),
(5, 'Moto G', 489.99, 5, 2, '8GB', 750, 'P005.jpg', 0),
(6, 'L40', 199.69, 4, 2, '24GB', 350, 'P006.jpg', 1),
(7, 'TV LCD Modelo PFL3403', 2199, 30, 17, '19', 40, '1025188741.jpg', 0),
(8, 'TV LCD Modelo LN22A450', 2399, 2, 17, '22', 30, '1011652567.jpg', 0),
(9, 'TV LCD Modelo LC813H', 2999, 24, 17, '32', 25, 'noblex-24ld839ft-led-plana-24-pulgadas_300x300-PU63169_1.jpg', 1),
(10, 'TV LCD Modelo 26LG30R', 2999, 4, 17, '26', 25, '1025188570.jpg', 0),
(11, 'TV LCD Modelo CDH-L26S02', 3099, 20, 17, '26', 20, 'hitachi-cdh-l26s02-lcd-plana-26-pulgadas_300x300-PU369ff_1.jpg', 0),
(12, 'TV LCD Modelo PL3219', 3399, 25, 17, '32', 20, 'philco-plh3210-lcd-plana-32-pulgadas_300x300-PU439ec_1.jpg', 1),
(13, 'CPU LE1250DVD2GB160VS', 2199, 15, 1, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(14, 'CPU A64X246DV2G160VBOF', 2499, 15, 1, 'Sin detalle', 8, 'sin-foto.jpg', 0),
(15, 'CPU E5200DVDR2GB320VB', 2699, 15, 1, 'Sin detalle', 5, 'sin-foto.jpg', 0),
(16, 'CPU SG3308LA', 3099, 16, 1, 'Sin detalle', 5, 'sin-foto.jpg', 0),
(17, 'Impresora T23', 219, 17, 13, 'Sin detalle', 18, 'sin-foto.jpg', 0),
(18, 'Impresora DJ-6940', 349, 19, 13, 'Sin detalle', 20, 'sin-foto.jpg', 0),
(19, 'Impresora T33', 399, 17, 13, 'Sin detalle', 12, 'sin-foto.jpg', 0),
(20, 'Impresora K5400 ', 499, 19, 13, 'Sin detalle', 8, 'sin-foto.jpg', 0),
(21, 'Home Cinema SPH70', 319, 25, 12, 'Sin detalle', 0, 'sin-foto.jpg', 0),
(22, 'Home Cinema AMX115', 419, 24, 12, 'Sin detalle', 0, 'sin-foto.jpg', 0),
(23, 'Home Cinema HT E 860', 599, 23, 12, 'Sin detalle', 0, 'sin-foto.jpg', 0),
(24, 'Home Cinema DC-T990', 759, 26, 12, 'Sin detalle', 5, 'sin-foto.jpg', 0),
(25, 'Home Cinema HT-1105U', 829, 24, 12, 'Sin detalle', 18, 'sin-foto.jpg', 0),
(26, 'Home Cinema HT304SL-A2', 949, 4, 12, 'Sin detalle', 6, 'sin-foto.jpg', 0),
(27, 'Home Cinema HT-Z110', 999, 2, 12, 'Sin detalle', 22, 'sin-foto.jpg', 0),
(28, 'Home Cinema HTS3011/55', 1099, 30, 12, 'Sin detalle', 18, 'sin-foto.jpg', 0),
(29, 'Home Cinema HT503SH', 1299, 4, 12, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(30, 'Home Cinema HT503SH-AM', 1299, 4, 12, 'Sin detalle', 12, 'sin-foto.jpg', 0),
(31, 'Home Cinema HT-IS10', 1499, 28, 12, 'Sin detalle', 7, 'sin-foto.jpg', 0),
(32, 'Home Cinema HTS3365/55', 1599, 30, 12, 'Sin detalle', 5, 'sin-foto.jpg', 0),
(33, 'Radio Port RP 299', 49, 24, 15, 'Sin detalle', 5, 'sin-foto.jpg', 0),
(34, 'Radio DX-365', 79, 21, 15, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(35, 'Radio ICF-S10MK2/SCE', 79, 28, 15, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(36, 'Radio ICF-18 ', 99, 28, 15, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(37, 'Radio ICF-303/304 AM-FM', 129, 28, 15, 'Sin detalle', 8, 'sin-foto.jpg', 0),
(38, 'Radio SRF-59/SC E', 129, 28, 15, 'Sin detalle', 10, 'sin-foto.jpg', 0),
(39, 'Notebook C2D2VB250WC14', 3699, 15, 10, 'Sin detalle', 12, 'sin-foto.jpg', 0),
(40, 'Notebook CQ40-300', 2999, 16, 10, 'Sin detalle', 9, 'sin-foto.jpg', 0),
(41, 'Notebook DV2-1010', 3999, 19, 10, 'Sin detalle', 7, 'sin-foto.jpg', 0),
(42, 'Notebook DV4-1212', 4199, 19, 10, 'Sin detalle', 9, 'sin-foto.jpg', 0),
(43, 'Notebook DV5-1310', 4999, 19, 10, 'Sin detalle', 10, 'sin-foto.jpg', 0),
(44, 'Telefono DECT1221S', 169, 30, 16, 'Inalambrico', 15, 'sin-foto.jpg', 0),
(45, 'Telefono CD1401B', 169, 30, 16, 'Inalambrico', 8, 'sin-foto.jpg', 0),
(46, 'Telefono CD2401S', 239, 30, 16, 'Inalambrico', 8, 'sin-foto.jpg', 0),
(47, 'Telefono CD1302S', 249, 30, 16, 'Inalambrico', 8, 'sin-foto.jpg', 0),
(48, 'Telefono HNS-3300', 69, 26, 16, 'Sin detalle', 10, 'sin-foto.jpg', 0),
(49, 'Lavarropa 7000', 1679, 18, 14, '7kg', 7, 'sin-foto.jpg', 0),
(50, 'Lavarropa 7500 T750', 1839, 18, 14, '7,5kg', 4, 'sin-foto.jpg', 0),
(51, 'Lavarropa ACQ7500 GRAFT750', 1939, 18, 14, '7,5kg', 12, 'sin-foto.jpg', 0),
(52, 'Lavarropa WF-T1202TP', 2449, 4, 14, '12kg', 10, 'sin-foto.jpg', 0),
(53, 'Lavarropa WF-T1205TP Titanium', 2499, 4, 14, '12kg', 10, 'sin-foto.jpg', 0),
(54, 'Camara Digital C813', 549, 22, 9, 'Sin detalle', 10, 'sin-foto.jpg', 0),
(55, 'Camara Digital VPCS-870EX', 579, 26, 9, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(56, 'Camara Digital C913', 599, 22, 9, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(57, 'Camara Digital 760', 649, 2, 9, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(58, 'Camara Digital ES10', 749, 2, 9, 'Sin detalle', 20, 'sin-foto.jpg', 0),
(59, 'Camara Digital ES15', 799, 2, 9, 'Sin detalle', 40, 'sin-foto.jpg', 0),
(60, 'Camara Video DCR-DVD650', 2749, 28, 18, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(61, 'Camara Video DCR-DVD810', 2999, 28, 18, 'Sin detalle', 10, 'sin-foto.jpg', 0),
(62, 'Calefactor TB 2400 GN', 459, 27, 11, 'Sin detalle', 12, 'sin-foto.jpg', 0),
(63, 'Calefactor TB 3000 GN', 699, 27, 11, 'Sin detalle', 12, 'sin-foto.jpg', 0),
(64, 'Calefactor TB 5000 GN', 1999, 27, 11, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(65, 'Aire Acondicionador SP TS-C096', 1999, 4, 8, 'Sin detalle', 15, 'sin-foto.jpg', 0),
(66, 'Aire Acondicionador SP TS-C096', 1999, 4, 8, 'Sin detalle', 10, 'sin-foto.jpg', 0),
(67, 'Aire Acondicionador SP TS-C126', 2249, 4, 8, 'Sin detalle', 10, 'sin-foto.jpg', 0),
(68, 'Aire Acondicionador SP TS-C186', 3049, 4, 8, 'Sin detalle', 20, 'sin-foto.jpg', 0),
(69, 'Aire Acondicionador SP LS-C186', 3349, 4, 8, 'Sin detalle', 20, 'sin-foto.jpg', 0),
(70, 'Aire Acondicionador SP WSX09CG', 1599, 29, 8, 'Sin detalle', 15, 'sin-foto.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Pass` text NOT NULL,
  `Activacion` text NOT NULL,
  `Estado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `Nombre`, `Apellido`, `Email`, `Pass`, `Activacion`, `Estado`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '$2y$10$zYH5CY5M17DYsC0zPCABu.acQphxUEZFBkss/RjUhOu4j8EFlIRV.', '0d3ccb5cb418d3d648bfbc768fabd1b1', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `Marca` (`Marca`),
  ADD KEY `Rubro` (`Categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Marca`) REFERENCES `marcas` (`idMarca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`Categoria`) REFERENCES `categorias` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
