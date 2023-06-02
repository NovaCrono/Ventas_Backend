-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 02-06-2023 a las 03:18:28
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `Nombre`) VALUES
(1, 'Formal'),
(2, 'Deportiva'),
(3, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `Producto_Nombre` varchar(90) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descuento` int(11) NOT NULL,
  `Costo` double NOT NULL,
  `Fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`id`, `Producto_Nombre`, `Cantidad`, `Descuento`, `Costo`, `Fecha`) VALUES
(54, 'Pantalón Jean, Azúl, Talla: 34', 22, 15, 355113, '30/5/2023'),
(55, 'Camiseta Gris, Talla: L', 12, 26, 119880, '30/5/2023'),
(56, 'Pantalón Jean, Azúl, Talla: 34', 14, 2, 260542.8, '30/5/2023'),
(57, 'Camiseta Gris, Talla: L', 42, 74, 147420, '30/5/2023'),
(58, 'Pantalón Jean, Azúl, Talla: 34', 8, 10, 136728, '30/5/2023'),
(59, 'Medias Negras, Talla: 12', 32, 45, 158224, '30/5/2023'),
(60, 'Pantalón Jean, Azúl, Talla: 34', 14, 9, 265860, '30/5/2023'),
(61, 'Medias Negras, Talla: 12', 7, 15, 62930, '30/5/2023'),
(62, 'Pantalón Jean, Azúl, Talla: 34', 3, 0, 56970, '30/5/2023'),
(63, 'Medias Negras, Talla: 12', 16, 83, 24452.800000000003, '30/5/2023'),
(64, 'Camisa Blanca, Talla L, Cuello V', 42, 92, 1385580, '30/5/2023');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(90) NOT NULL,
  `Detalle` text NOT NULL,
  `Precio` double NOT NULL,
  `Categoria_Nombre` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `Nombre`, `Detalle`, `Precio`, `Categoria_Nombre`) VALUES
(1, 'Camisa', 'Blanca, Talla L, Cuello V', 32990, 'Formal'),
(2, 'Pantalón', 'Jean, Azúl, Talla: 34', 18990, 'Normal'),
(3, 'Camiseta', 'Gris, Talla: L', 13500, 'Deportiva'),
(4, 'Medias', 'Negras, Talla: 12', 8990, 'Deportiva');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
