-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-03-2022 a las 16:33:03
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Comedia'),
(2, 'Terror'),
(3, 'Romance'),
(4, 'Drama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `autor` varchar(150) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`, `categoria`) VALUES
(1, 'Subidón', 'Joaquín Reyes', 1),
(2, 'Vive como un mendigo, baila como un rey', 'Ignatius Farray', 1),
(3, 'Besos prohibidos', 'Noelia Amarillo', 1),
(4, 'Reír es la única salida: El mejor libro de humor de Buenafuente 2020', 'Andreu Buenafuente', 1),
(5, '¡A la mierda el príncipe azul! Yo quiero un lobo que me coma mejor', 'Anabel Garcia', 1),
(6, 'Guía del club de lectura para matar vampiros', 'Grady Hendrix', 2),
(7, 'Los sonámbulos', 'Chuck Wendig', 2),
(8, 'The Book of Accidents', 'Chuck Wendig', 2),
(9, 'Whisper Down the Lane', 'Clay McLeod Chapman', 2),
(10, 'What Big Teeth', 'Rose Szabo', 2),
(11, 'Antes de diciembre', 'Grady Hendrix', 3),
(12, '¿Un último baile, milady?', 'Megan Maxwell', 3),
(13, 'Te espero en el fin del mundo', 'Andrea Longarela', 3),
(14, 'Hay momentos que deberían ser eternos', 'Megan Maxwell', 3),
(15, 'Solo Un Amor de Verano', 'Alexandra Roma', 3),
(16, 'El instinto', 'Ashley Audrain', 4),
(17, 'Ojalá ésta fuera nuestra historia de amor', 'Andrea Longarela', 4),
(18, 'El silencio de nuestras palabras: Premio DeA Planeta Italia 2019', 'Simona Sparaco', 4),
(19, 'Drama', 'Raina Telgemeier', 4),
(20, 'Dramas históricos', 'William Shakespeare', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `contraseña` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contraseña`) VALUES
(1, 'admin', 'admin'),
(2, 'alum1', 'alum1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
