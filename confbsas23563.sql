-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2023 a las 23:01:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `confbsas23563`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `etiquetas` varchar(50) DEFAULT NULL,
  `temas` varchar(200) DEFAULT NULL,
  `fotoPerfil` varchar(300) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `etiquetasDos` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id`, `nombre`, `apellido`, `etiquetas`, `temas`, `fotoPerfil`, `dni`, `tel`, `email`, `etiquetasDos`) VALUES
(1, 'Steve', 'Jobs', 'Java Script', 'Inicios de Apple, tecnologías utilizadas en las Mac. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'https://imgdb.net/storage/uploads/80eee944aad1ca133afd5f64e95069ef411ea60d845497dbc9f5bf2916524ad8.png', 35468465, NULL, 'sjobs@gmail.com', 'React'),
(2, 'Bill', 'Gates', 'Microsoft', 'Historia de windows', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 23556486, NULL, 'bgates@gmail.com', 'Windows'),
(3, 'Ada', 'Lovelace', 'Negocios', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'https://imgdb.net/storage/uploads/f443e2b224b2574ee557f5fc5663e8bc0957c5db3d6b0a8ee85b08630557737b.jpeg', 35466846, NULL, 'alovelace@gmail.com', 'Startups'),
(4, 'Steve', 'Wozniak', 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'https://imgdb.net/storage/uploads/f9cf44c1a8877fbf6d5f2e8d70ba38b32549e52da122d8680f2968e34f8acdc1.jpg', 36589788, NULL, 'swozniak@gmail.com', 'Tecnologia'),
(5, 'Elon', 'Musk', 'C#', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'https://imgdb.net/storage/uploads/0b1302c12d8ed355c5b8891ccc7c484f48f5a2e18f96e1b55b7ab5fc0d8f6e9f.jpg', 45655489, NULL, 'emusk@gmail.com', 'Java'),
(6, 'Michelle', 'Obama', 'Java Script', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'https://imgdb.net/storage/uploads/cfa0481eabb062e57d8feed2206accbee04a77dec57feb0aa6cfe92699968138.jpg', 32298753, NULL, 'mobama@gmail.com', 'Python'),
(7, 'Greta', 'Thunberg', 'Naturaleza', 'Naturaleza y medioambiente', 'https://imgdb.net/storage/uploads/82ff37a80c9c8b434822fa86bae6fdc2d4e9a05d831990ecdf48e8dee2efab4c.jpg', 65458975, NULL, 'gthunberg@gmail.com', 'Medioambiente'),
(61, 'Lionel', 'Messi', 'Deportes', 'Historia de Messi en el futbol', 'https://imgdb.net/storage/uploads/08c14952b03b3364b59ab68fc9b665ee7e8df814c42e2eefb6a0d1d649cf69e1.jpg', NULL, NULL, 'lmessi@gmail.com', 'Futbol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `fotoPerfil` varchar(200) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `fotoPerfil`, `nombre`, `apellido`, `rol`) VALUES
(1, 'alovelace@gmail.com', '1234', 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png', 'Ada', 'Lovelace', 'orador'),
(2, 'bgates@gmail.com', '1234', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 'Bill', 'Gates', 'orador'),
(3, 'sjobs@gmail.com', '1234', 'https://imgdb.net/storage/uploads/80eee944aad1ca133afd5f64e95069ef411ea60d845497dbc9f5bf2916524ad8.png', 'Steve', 'Jobs', 'orador'),
(4, 'swozniak@gmail.com', '1234', 'https://imgdb.net/storage/uploads/f9cf44c1a8877fbf6d5f2e8d70ba38b32549e52da122d8680f2968e34f8acdc1.jpg', 'Steve', 'Wozniak', 'orador'),
(5, 'emusk@gmail.com', '1234', 'https://imgdb.net/storage/uploads/0b1302c12d8ed355c5b8891ccc7c484f48f5a2e18f96e1b55b7ab5fc0d8f6e9f.jpg', 'Elon', 'Musk', 'orador'),
(6, 'mobama@gmail.com', '1234', 'https://imgdb.net/storage/uploads/cfa0481eabb062e57d8feed2206accbee04a77dec57feb0aa6cfe92699968138.jpg', 'Michelle', 'Obama', 'orador'),
(7, 'gthunberg@gmail.com', '1234', 'https://imgdb.net/storage/uploads/82ff37a80c9c8b434822fa86bae6fdc2d4e9a05d831990ecdf48e8dee2efab4c.jpg', 'Greta', 'Thunberg', 'orador'),
(8, 'lmessi@gmail.com', '1234', 'https://imgdb.net/storage/uploads/08c14952b03b3364b59ab68fc9b665ee7e8df814c42e2eefb6a0d1d649cf69e1.jpg', 'Lionel', 'Messi', 'orador'),
(9, 'bantunez@gmail.com', '1234', 'https://imgdb.net/storage/uploads/76b447f22a016f2ef4ba209880f3908b3204a0d96f4431d9fd6876fa2a2b76b3.jpg', 'Belen', 'Antunez', 'espectador'),
(10, 'jperez@gmail.com', '1234', 'https://imgdb.net/storage/uploads/9c95847209d3361202cfa6b30ac31145a8cfe91277c46dc88bc262a68323a82f.png', 'Juan', 'Perez', 'espectador'),
(13, 'admin@gmail.com', 'admin', 'https://imgdb.net/storage/uploads/76b447f22a016f2ef4ba209880f3908b3204a0d96f4431d9fd6876fa2a2b76b3.jpg', 'Admin', 'Uno', 'admin'),
(14, 'admin2@gmail.com', 'admin', 'https://imgdb.net/storage/uploads/76b447f22a016f2ef4ba209880f3908b3204a0d96f4431d9fd6876fa2a2b76b3.jpg', 'Admin', 'Dos', 'admin'),
(49, 'mjagger@codoacodo.edu.ar', 'aA234567', 'https://imgdb.net/storage/uploads/d82697ee07b10d5e4aec13a8512a2922961404a0725f3708aca934c69a67282a.jpg', 'Mick', 'Jagger', 'orador (pendiente de aprobación)');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_dni` (`dni`),
  ADD KEY `idx_ap` (`apellido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
