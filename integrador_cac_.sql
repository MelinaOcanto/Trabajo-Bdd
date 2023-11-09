-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 13:09:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac_`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Marcelo', 'Gutierrez', 'mar@hotmail.com', 'java', '2023-11-09 08:51:05'),
(2, 'Juan', 'Perez', 'jr@hotmail.com', 'java', '2023-11-09 08:52:55'),
(3, 'Carolina', 'Muñoz', 'Car@gmail.com', 'React', '2023-11-09 08:54:23'),
(4, 'Marta', 'Martinez', 'mm@gmail.com', 'JavaScript', '2023-11-09 08:57:35'),
(5, 'Cristina', 'Menendez', 'cris@gmail.com', 'NodeJs', '2023-11-09 08:58:51'),
(6, 'Roberto', 'Juarez', 'roju@gmail.com', 'NodeJs y JavaScript', '2023-11-09 09:00:38'),
(7, 'Manuel', 'Pereyra', 'manu@gmail.com', 'html, css y JavaScript', '2023-11-09 09:02:08'),
(8, 'Luisina', 'Lopez', 'lulo@gmail.com', 'css', '2023-11-09 09:03:00'),
(9, 'Macarena', 'Fernandez', 'fer@gmail.com', 'JavaScript y React', '2023-11-09 09:05:03'),
(10, 'Jose', 'Gomez', 'jose@gmail.com', 'mysql', '2023-11-09 09:06:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
