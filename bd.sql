-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 25-03-2018 a las 04:34:04
-- Versión del servidor: 5.6.35
-- Versión de PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `SistemaPOS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CAJA`
--

CREATE TABLE `CAJA` (
  `ID` int(11) NOT NULL,
  `MONTO` decimal(12,2) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `CAJA`
--

INSERT INTO `CAJA` (`ID`, `MONTO`, `Fecha`) VALUES
(1, '1.00', '2018-01-14'),
(2, '5000.00', '2018-01-17'),
(3, '7000.00', '2018-01-20'),
(4, '5.00', '2018-01-21'),
(5, '2000.00', '2018-02-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID`, `NOMBRE`) VALUES
(1, 'BLUSA'),
(2, 'PANTALON'),
(3, 'BLUSAOF'),
(4, 'SACO'),
(5, 'SHORT'),
(6, 'MALLON'),
(7, 'TRAJE DE BAÑO'),
(8, 'VESTIDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CORTE`
--

CREATE TABLE `CORTE` (
  `ID` int(11) NOT NULL,
  `ID_CAJA` int(12) NOT NULL,
  `ID_GASTOS` int(12) NOT NULL,
  `ID_FECHA` int(12) NOT NULL,
  `VENTA_TOTAL` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLEVENTAS`
--

CREATE TABLE `DETALLEVENTAS` (
  `ID` int(11) NOT NULL,
  `PRECIO_VENTA` decimal(12,2) UNSIGNED NOT NULL,
  `DESCUENTO` decimal(12,2) UNSIGNED NOT NULL,
  `CANTIDAD` int(10) UNSIGNED NOT NULL,
  `ID_VENTA` int(11) NOT NULL,
  `ID_INVENTARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `DETALLEVENTAS`
--

INSERT INTO `DETALLEVENTAS` (`ID`, `PRECIO_VENTA`, `DESCUENTO`, `CANTIDAD`, `ID_VENTA`, `ID_INVENTARIO`) VALUES
(13, '12.00', '0.00', 2, 16, 33),
(14, '12.00', '0.00', 2, 17, 33),
(15, '50.00', '0.00', 1, 17, 13),
(16, '12.00', '0.00', 2, 18, 33),
(17, '50.00', '0.00', 1, 18, 12),
(18, '12.00', '0.00', 2, 19, 33),
(19, '50.00', '0.00', 1, 19, 13),
(20, '12.00', '0.00', 2, 20, 33),
(21, '50.00', '0.00', 1, 20, 13),
(22, '12.00', '0.00', 2, 21, 33),
(23, '50.00', '0.00', 1, 21, 13),
(24, '12.00', '0.00', 2, 21, 33),
(25, '50.00', '0.00', 1, 21, 13),
(26, '21.00', '0.00', 2, 21, 22),
(27, '12.00', '0.00', 2, 22, 33),
(28, '21.00', '0.00', 2, 22, 22),
(29, '12.00', '0.00', 2, 23, 33),
(30, '21.00', '0.00', 1, 23, 22),
(31, '21.00', '0.00', 3, 24, 22),
(32, '12.00', '0.00', 2, 25, 33),
(33, '21.00', '0.00', 1, 25, 22),
(34, '12.00', '0.00', 1, 26, 33),
(35, '12.00', '0.00', 3, 27, 33),
(36, '12.00', '0.00', 1, 28, 33),
(37, '12.00', '0.00', 2, 29, 33),
(38, '12.00', '0.00', 1, 30, 33),
(39, '45.00', '0.00', 1, 31, 34),
(40, '589.00', '0.00', 1, 34, 8),
(41, '50.00', '0.00', 1, 35, 13),
(42, '50.00', '0.00', 1, 36, 13),
(43, '589.00', '0.00', 1, 37, 8),
(44, '50.00', '0.00', 1, 38, 13),
(45, '89.00', '0.00', 1, 39, 3),
(46, '25.00', '0.00', 1, 40, 5),
(47, '50.00', '0.00', 1, 41, 13),
(48, '25.00', '0.00', 1, 42, 14),
(49, '50.00', '0.00', 1, 43, 12),
(50, '50.00', '0.00', 1, 44, 12),
(51, '25.00', '0.00', 1, 45, 14),
(52, '89.00', '0.00', 1, 46, 3),
(53, '25.00', '0.00', 2, 46, 14),
(54, '89.00', '0.00', 1, 47, 3),
(55, '25.00', '0.00', 1, 48, 14),
(56, '50.00', '0.00', 1, 49, 12),
(57, '50.00', '0.00', 1, 50, 13),
(58, '12.00', '0.00', 1, 51, 30),
(59, '50.00', '0.00', 1, 52, 13),
(60, '50.00', '0.00', 1, 53, 13),
(61, '12.00', '0.00', 2, 54, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FECHA`
--

CREATE TABLE `FECHA` (
  `ID` int(11) NOT NULL,
  `FECHA_DIARIA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GASTOS`
--

CREATE TABLE `GASTOS` (
  `ID` int(11) NOT NULL,
  `MONTO` decimal(12,2) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `tipo_gasto` varchar(250) NOT NULL,
  `desc_gasto` varchar(250) NOT NULL,
  `establecimiento` varchar(52) NOT NULL,
  `gasto_det` varchar(112) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `GASTOS`
--

INSERT INTO `GASTOS` (`ID`, `MONTO`, `FECHA`, `tipo_gasto`, `desc_gasto`, `establecimiento`, `gasto_det`) VALUES
(1, '1.00', '2018-01-14', '1', '1', '1', '1'),
(2, '2.00', '2018-01-14', 'prueba', 'x', '1', '1'),
(3, '2.00', '2018-01-14', 'a', 'a', 'a', 'a'),
(4, '20.00', '2018-01-17', 'papel de baño', 'charmin', 'walmart', 'pa el culito que mas quiero palfun'),
(5, '5500.00', '2018-02-05', 'luz', 'pago de luz', 'cfe', 'x');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `ID` int(11) NOT NULL,
  `CLAVE_PROD` varchar(200) NOT NULL,
  `PRECIO` decimal(12,2) UNSIGNED NOT NULL,
  `NUM_PIEZAS` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(200) NOT NULL,
  `DESCRIPCION` varchar(200) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`ID`, `CLAVE_PROD`, `PRECIO`, `NUM_PIEZAS`, `NOMBRE`, `DESCRIPCION`, `ID_CATEGORIA`) VALUES
(3, 'BLOF89', '89.00', 48, 'BLUSAS DE OFERTA', 'VARIAS MARCAS', 1),
(4, 'SC329', '329.00', 39, 'SACO', 'SACOS DE VARIAS TEMPORADAS', 4),
(5, '7501065628145', '25.00', 11, 'POMADA DE LA CAMPANA', 'DR. BELL MEDICINE CO. INC.', 5),
(8, 'VS589', '589.00', 23, 'VESTIDOS', 'CASUALES Y DE NOCHE', 8),
(12, '75047337', '50.00', 7, 'Benson', 'cigarros', 1),
(13, '75044916', '50.00', 2, 'Malboro clavo', 'cigarros', 1),
(14, '7501000112326', '25.00', 18, 'Panque', 'Panque BIMBO NUEZ', 1),
(17, '7501310010503', '12.00', 12, 'TOP', 'PEGAMENTO', 1),
(19, '75055561', '50.00', 10, 'Cigarros Lucky Strike', 'Cigarros 20', 1),
(22, '7501031322718', '21.00', 3, 'SEVEN UP', 'SODA DE DOS LITROS Y MEDIO', 1),
(23, '12345', '1.00', 1, 'quesopanela', '123', 1),
(30, '021136010541', '12.00', 27, 'TopoChico chica', 'Agua Mineral', 1),
(31, '097339000054', '25.00', 10, 'Valentina', 'Salsa valentina', 1),
(33, '7503009126427', '12.00', 8, 'Citrus Max ', 'Repelente de Insectos', 1),
(34, '7506306233249', '45.00', 2, 'Sedal Keratina', 'Crema para peinar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(9) NOT NULL,
  `nombre` varchar(52) NOT NULL,
  `clave` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `nombre`, `clave`) VALUES
(1, 'ADMINISTRADOR', 1),
(2, 'VENDEDOR', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `clave_usuario` varchar(32) NOT NULL,
  `nombre_usuario` varchar(32) NOT NULL,
  `pass_usuario` varchar(32) NOT NULL,
  `tipo_usuario` int(1) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `clave_usuario`, `nombre_usuario`, `pass_usuario`, `tipo_usuario`) VALUES
(1, 'asortega', 'ARELI SARAI ORTEGA FIERRO', '123', 2),
(3, 'admin', 'admin', 'admin', 1),
(4, 'prueba1', 'prueba1', '123', 1),
(5, 'a', 'a', '123', 2),
(14, 'b', 'b', 'b', 2),
(15, 'lchavez', 'luis chaves', '123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID` int(11) NOT NULL,
  `FOLIO` int(9) UNSIGNED NOT NULL,
  `FECHA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID`, `FOLIO`, `FECHA`) VALUES
(1, 1, '2017-08-01 00:00:00'),
(2, 2, '2017-08-01 00:00:00'),
(3, 3, '2017-10-22 00:00:00'),
(4, 4, '2017-10-22 00:00:00'),
(5, 5, '2017-10-22 00:00:00'),
(6, 6, '2017-10-22 00:00:00'),
(7, 7, '2017-10-22 00:00:00'),
(8, 8, '2017-10-22 00:00:00'),
(9, 9, '2017-10-22 00:00:00'),
(10, 10, '2017-10-22 00:00:00'),
(11, 11, '2017-10-22 00:00:00'),
(12, 12, '2017-10-22 00:00:00'),
(13, 13, '2017-10-22 00:00:00'),
(14, 14, '2017-10-22 00:00:00'),
(15, 15, '2017-10-22 00:00:00'),
(16, 16, '2017-10-22 00:00:00'),
(17, 17, '2017-10-22 00:00:00'),
(18, 18, '2017-10-22 00:00:00'),
(19, 19, '2017-10-22 00:00:00'),
(20, 20, '2017-10-22 00:00:00'),
(21, 21, '2017-10-22 00:00:00'),
(22, 22, '2017-10-22 00:00:00'),
(23, 23, '2017-10-22 00:00:00'),
(24, 24, '2017-10-22 00:00:00'),
(25, 25, '2017-10-22 00:00:00'),
(26, 26, '2017-10-22 00:00:00'),
(27, 27, '2017-10-22 00:00:00'),
(28, 28, '2017-10-22 00:00:00'),
(29, 29, '2017-10-22 00:00:00'),
(30, 30, '2017-10-22 00:00:00'),
(31, 31, '2017-10-27 00:00:00'),
(32, 32, '2017-12-24 00:00:00'),
(33, 33, '2017-12-24 00:00:00'),
(34, 34, '2017-12-24 00:00:00'),
(35, 35, '2017-12-31 00:00:00'),
(36, 36, '2017-12-31 00:00:00'),
(37, 37, '2017-12-31 00:00:00'),
(38, 38, '2017-12-31 00:00:00'),
(39, 39, '2017-12-31 00:00:00'),
(40, 40, '2017-12-31 00:00:00'),
(41, 41, '2017-12-31 00:00:00'),
(42, 42, '2017-12-31 00:00:00'),
(43, 43, '2017-12-31 00:00:00'),
(44, 44, '2017-12-31 00:00:00'),
(45, 45, '2017-12-31 00:00:00'),
(46, 46, '2017-12-31 00:00:00'),
(47, 47, '2018-01-14 00:00:00'),
(48, 48, '2018-01-14 00:00:00'),
(49, 49, '2018-01-14 00:00:00'),
(50, 50, '2018-01-17 00:00:00'),
(51, 51, '2018-02-05 00:00:00'),
(52, 52, '2018-02-05 00:00:00'),
(53, 53, '2018-02-05 00:00:00'),
(54, 54, '2018-02-05 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CAJA`
--
ALTER TABLE `CAJA`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `CORTE`
--
ALTER TABLE `CORTE`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `DETALLEVENTAS`
--
ALTER TABLE `DETALLEVENTAS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DETALLEVENTAS` (`ID_VENTA`),
  ADD KEY `FK_DETALLEINVENTARIO` (`ID_INVENTARIO`);

--
-- Indices de la tabla `FECHA`
--
ALTER TABLE `FECHA`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `GASTOS`
--
ALTER TABLE `GASTOS`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_INVENTARIOS_CATEGORIAS` (`ID_CATEGORIA`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pk_unique` (`clave_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CAJA`
--
ALTER TABLE `CAJA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `CORTE`
--
ALTER TABLE `CORTE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `DETALLEVENTAS`
--
ALTER TABLE `DETALLEVENTAS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `FECHA`
--
ALTER TABLE `FECHA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `GASTOS`
--
ALTER TABLE `GASTOS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `DETALLEVENTAS`
--
ALTER TABLE `DETALLEVENTAS`
  ADD CONSTRAINT `FK_DETALLEINVENTARIO` FOREIGN KEY (`ID_INVENTARIO`) REFERENCES `inventarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DETALLEVENTAS` FOREIGN KEY (`ID_VENTA`) REFERENCES `ventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `FK_INVENTARIOS_CATEGORIAS` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categorias` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
