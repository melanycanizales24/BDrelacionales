-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 17:21:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lucy reding`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(900) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 7, 3, 'omg que lindo :3', '2026-04-16 16:57:09'),
(2, 4, 4, 'que lindosss', '2026-04-16 16:57:38'),
(3, 5, 5, 'me encantaa', '2026-04-16 16:59:22'),
(4, 8, 3, 'necesitas ayuda?', '2026-04-16 17:00:10'),
(5, 3, 5, 'omg!!! tmb me gusta lyna', '2026-04-16 17:00:35'),
(6, 2, 2, 'guapooo', '2026-04-16 17:04:12'),
(7, 2, 4, 'hola tine vrainrot siponible?', '2026-04-16 17:05:37'),
(8, 7, 5, 'borra eso', '2026-04-16 17:06:27'),
(9, 8, 4, 'STREAM BTS ARIRANG', '2026-04-16 17:06:49'),
(10, 3, 3, 'decadencia', '2026-04-16 17:07:09'),
(11, 8, 1, 'fuerza tilinas', '2026-04-16 17:07:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtags_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtags_id`, `etiqueta`, `creado_en`) VALUES
(1, 'lentejas', '2020-04-16'),
(2, 'ponmeenparati', '2021-04-07'),
(3, 'lifeisgood', '2021-06-07'),
(4, 'jukilop', '2020-04-03'),
(5, 'kpop', '2026-06-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(2, 3, 'hola', 'https://www.google.com/imgres?q=rabanito%20cantante&imgurl=https%3A%2F%2Fi.scdn.co%2Fimage%2Fab67616100005174a03c2cccb16ae7335620b0db&imgrefurl=https%3A%2F%2Fopen.spotify.com%2Fintl-es%2Fartist%2F4VPLEp6rYxqpf6n0QEkS5z&docid=GBFM7Lx-w3Aq8M&tbnid=NIMhe5Am2', '2026-04-16 16:34:14', 78),
(3, 5, 'Lyna! mi yutuver faborrita te amo lyna', 'https://www.google.com/imgres?q=roblox%20lyna%20&imgurl=https%3A%2F%2Fimages.cults3d.com%2FQe-75iulyZC_TZ7de0xlhz25lyc%3D%2F516x516%2Ffilters%3Ano_upscale()%2Fhttps%3A%2F%2Ffbi.cults3d.com%2Fuploaders%2F43808456%2Fillustration-file%2F60976ad1-d819-4659-8a', '2026-04-16 16:36:29', 2),
(4, 1, 'mi niña linda <3\r\namo tu trabajo ', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFRUXFxUYGBcYGBcYFxgXHRgXGBUYGBcYHSggGBolHRcYITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQFy0dHR8tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0rLf/AABEIAPsAyQMBIgACEQEDEQH/', '2017-03-15 17:34:06', 10000),
(5, 4, 'te amo tayun', 'https://www.google.com/imgres?q=bts%20&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BYzU5NjA3Y2YtY2UwZi00ZDMwLWE5NjAtOTljNTA4NTI4ZjYyXkEyXkFqcGc%40._V1_FMjpg_UX1000_.jpg&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Fes-es%2Fname%2Fnm7808003%2Fbio%2F', '2023-04-19 15:27:25', 67000),
(7, 2, 'les comparto un pequeño recuerdo de cuando era pequeño', 'https://www.google.com/imgres?q=ni%C3%B1o%20de%20la%20limonada&imgurl=https%3A%2F%2Flarepublica.cronosmedia.glr.pe%2Fmigration%2Fimages%2FNKGJAIPECZB4TKYCQTENTXWF24.jpg&imgrefurl=https%3A%2F%2Flarepublica.pe%2Ftendencias%2F2020%2F04%2F24%2Fyoutube-viral-r', '2026-04-16 16:44:45', 9),
(8, 5, 'i jate evri one', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROjO62UtUdFjknpv8kPVqUNTGCBB1gc90ZYw&s', '2026-04-16 16:47:42', 70000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_hashtags`
--

INSERT INTO `pub_hashtags` (`pub_id`, `hashtag_id`) VALUES
(2, 5),
(8, 2),
(7, 5),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_likes` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`pub_id`, `usuario_id`, `fecha_likes`) VALUES
(8, 2, '2026-04-16 16:53:23'),
(2, 4, '2026-04-16 16:53:49'),
(7, 1, '2026-04-16 16:54:06'),
(4, 3, '2026-04-16 16:54:12'),
(3, 5, '2026-04-16 16:54:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `fecha_follow`) VALUES
(5, 4, '2023-04-12'),
(3, 2, '2018-04-05'),
(1, 4, '2024-04-18'),
(4, 5, '2022-04-16'),
(3, 5, '2020-04-02'),
(5, 1, '2022-04-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'luisguillermo_67', 'guillermoorpinela@gmail.com', 'De abajo, pero con la mente en la cima', '2018-04-20'),
(2, 'kenneth_cardenas', 'kenneth2345@hotmail.com', 'Menos miedo, más alucine \"\"Corridos, marcas y pura lealtad ', '2019-08-09'),
(3, 'emmanuelramos67', 'rabanitoshop@gmail.com', 'compren plebada', '2019-05-16'),
(4, 'melyjeaaan', 'lisamiflaca@gmail.com', 'ife goes on ⋆ like an arrow  in the blue sky ', '2021-06-17'),
(5, 'andrea_8a', 'andreaochoa@hotmail.com', '\"Persiguiendo la luz de la luna y pensamientos nocturnos. \"\"Mi color favorito es la noche.\"', '2020-04-23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtags_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `hashtag_id` (`hashtag_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidor_id` (`seguidor_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtags_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtags_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
