-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:18:27
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(1, 'Crema hidratante', 538, 'CETAPHIL', 'Crema Hidratante 1 pz 453 g Restablece la Barrera Natural de la Piel en 1 Semana Recomendada por Dermatólogos para Piel Sensible', 453),
(2, 'serum exfoliante', 615, 'AVENE', ' Cleanance Sérum Exfoliante AHA, Anti-imperfecciones, Piel Grasa y Sensible, con Ácido Láctico y Succínico, 30ml', 30),
(3, 'Barra Solar', 278, 'TOCOBO', ' Barra solar suave de algodón SPF50+ PA+++ 0.67 onzas / 0.67 oz | Ingredientes naturales, antisebo, sensación mate suave | EWG Green + sin PEG, barra solar vegana coreana para la cara', 1),
(4, 'Gel Limpiador', 389, 'LA ROCHE-POSAY', ' Gel Limpiador Facial Purificante para Piel Grasa y Sensible, Anti-imperfecciones y Anti-brillo, con Agua Termal y Zinc, 400 ml\r\nVisita la tienda de La Roche-Posay', 400),
(5, 'Jabon en barra Clenance', 157, 'AVENE', 'Cleanance Barra Dermatológica, Limpiadora Facial con Ácido Salicílico, 100g', 100),
(6, 'Balsamo multireparador', 201, 'LA ROCHE-POSAY', 'Bálsamo Multireparador La Roche Posay Cicaplast Baume B5 Calma y Protege Piel Irritada 40ml', 40),
(7, 'Parches Mighty Patch', 260, 'HERO', 'Parches para Acné Mighty Patch Invisible+, Caja con 36 piezas. Delgados para Uso de Día. Absorben Gentilmente las Impurezas en 6 a 8 Horas. No Contienen Medicamento. Probados Dermatológicamente', 36),
(8, 'Aceite de ducha', 291, 'EUCERIN', 'Eucerin Ph5 Aceite De Ducha Para Piel Sensible O Seca, 200 Ml', 200),
(9, 'Fotoprotector fushion water', 538, 'ISDIN', 'Fotoprotector Fusion Water Magic SPF 50, Protector Solar Facial OIL CONTROL, de fase acuosa para uso diario, Textura ultra ligera, 50 ml', 50),
(10, 'Protector Solar', 635, 'EUCERIN', 'Protector solar facial efecto mate toque seco Oil Control 50 ml, matificante control brillo 12h con antioxidantes', 50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
