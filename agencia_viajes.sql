-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-08-2025 a las 20:19:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agencia_viajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL,
  `fecha_compra` datetime DEFAULT current_timestamp(),
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `fecha`) VALUES
(1, 'Ignacio Barotto', 'ninobarotto28@gmail.com', 'hola', '2025-06-23 15:13:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `origen` varchar(100) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`, `origen`, `destino`, `fecha_salida`) VALUES
(1, 'Paquete París 7 noches', 'Incluye vuelo ida y vuelta, hotel 4 estrellas y excursiones.', 'paris.jpg', 1800.00, 'Buenos Aires', 'París', '2025-08-01'),
(2, 'Escapada a Nueva York', 'Disfrutá de la Gran Manzana con hotel y city tour.', 'nuevayork.jpg', 2000.00, 'Buenos Aires', 'Nueva York', '2025-09-15'),
(3, 'Tour Tokio y Kyoto', 'Viaje a Japón con guía, hotel y actividades.', 'tokio.jpg', 2500.00, 'Buenos Aires', 'Tokio', '2025-10-10'),
(4, 'Aventura en Cancún', 'Disfrutá de playas paradisíacas, hotel all-inclusive y excursiones.', 'cancun.jpg', 1500.00, 'Buenos Aires', 'Cancún', '2025-07-05'),
(5, 'Safari en Kenia', 'Experiencia única de safari con guía experto y alojamiento en lodges.', 'kenia.jpg', 3200.00, 'Buenos Aires', 'Nairobi', '2025-11-20'),
(6, 'Escapada a Barcelona', 'Visita la ciudad condal con tours culturales y alojamiento céntrico.', 'barcelona.jpg', 1700.00, 'Buenos Aires', 'Barcelona', '2025-08-25'),
(7, 'Viaje a Río de Janeiro', 'Carnaval, playas y montañas con hotel y city tour incluidos.', 'rio.jpg', 1400.00, 'Buenos Aires', 'Río de Janeiro', '2025-02-10'),
(8, 'Tour por la Patagonia', 'Explora paisajes increíbles con guías y alojamiento en cabañas.', 'patagonia.jpg', 2300.00, 'Buenos Aires', 'Patagonia', '2025-12-01'),
(9, 'Descubre Roma', 'Recorré la historia de la antigua Roma con guía y hotel 4 estrellas.', 'roma.jpg', 1900.00, 'Buenos Aires', 'Roma', '2025-09-05'),
(10, 'Crucero por el Mediterráneo', 'Viaje en crucero con todas las comodidades y excursiones en cada puerto.', 'mediterraneo.jpg', 3500.00, 'Buenos Aires', 'Mediterráneo', '2025-06-15'),
(11, 'Explora Cancillería Suiza', 'Visita ciudades suizas, naturaleza y cultura en un solo paquete.', 'suiza.jpg', 2800.00, 'Buenos Aires', 'Suiza', '2025-10-25'),
(12, 'Tour Grecia Clásica', 'Atenas, Santorini y Mykonos con guía, hotel y traslados.', 'grecia.jpg', 2200.00, 'Buenos Aires', 'Grecia', '2025-07-20'),
(13, 'Experiencia en Islandia', 'Naturaleza única, auroras boreales y alojamiento confortable.', 'islandia.jpg', 3300.00, 'Buenos Aires', 'Islandia', '2025-11-10'),
(14, 'Vacaciones en Bali', 'Playas, templos y cultura con todo incluido.', 'bali.jpg', 2100.00, 'Buenos Aires', 'Bali', '2025-09-30'),
(15, 'Escapada a Miami', 'Sol, compras y vida nocturna con hotel céntrico.', 'miami.jpg', 1600.00, 'Buenos Aires', 'Miami', '2025-08-10'),
(16, 'Tour por Egipto', 'Pirámides, río Nilo y mucho más con guía y alojamiento.', 'egipto.jpg', 2900.00, 'Buenos Aires', 'El Cairo', '2025-10-05'),
(17, 'Aventura en Australia', 'Sydney, la Gran Barrera de Coral y naturaleza australiana.', 'australia.jpg', 3700.00, 'Buenos Aires', 'Sídney', '2025-12-15'),
(18, 'Viaje a Dubái', 'Lujo, compras y arquitectura futurista con hotel 5 estrellas.', 'dubai.jpg', 2600.00, 'Buenos Aires', 'Dubái', '2025-09-18'),
(19, 'Descubre Londres', 'Tour cultural y vida moderna con alojamiento céntrico.', 'londres.jpg', 1800.00, 'Buenos Aires', 'Londres', '2025-08-30'),
(20, 'Vacaciones en Cancún', 'Playas, deportes acuáticos y descanso garantizado.', 'cancun2.jpg', 1550.00, 'Buenos Aires', 'Cancún', '2025-07-15'),
(21, 'Escapada a Montreal', 'Ciudad bilingüe, cultura y naturaleza cercana.', 'montreal.jpg', 2000.00, 'Buenos Aires', 'Montreal', '2025-10-20'),
(22, 'Tour por Buenos Aires', 'Conocé la ciudad con guías expertos y tours temáticos.', 'buenosaires.jpg', 500.00, 'Buenos Aires', 'Buenos Aires', '2025-06-01'),
(23, 'Viaje a Ciudad del Cabo', 'Naturaleza, playas y cultura africana con alojamiento incluido.', 'ciudaddelcabo.jpg', 2700.00, 'Buenos Aires', 'Ciudad del Cabo', '2025-11-30'),
(24, 'Escapada a Fuentealbilla', 'Descubre la belleza rural, gastronomía local y paisajes únicos.', 'fuentealbilla.jpg', 1200.00, 'Buenos Aires', 'Fuentealbilla', '2025-09-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_orden`
--

CREATE TABLE `detalle_orden` (
  `id` int(11) NOT NULL,
  `id_orden` int(11) DEFAULT NULL,
  `id_destino` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE `opiniones` (
  `id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `estrellas` int(11) NOT NULL CHECK (`estrellas` between 1 and 5),
  `comentario` text DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `opiniones`
--

INSERT INTO `opiniones` (`id`, `destino_id`, `usuario`, `estrellas`, `comentario`, `fecha`) VALUES
(1, 2, 'ninobarotto28@gmail.com', 5, 'hola', '2025-06-21 19:24:31'),
(2, 1, 'ninobarotto28@gmail.com', 2, 'mesi', '2025-06-21 20:47:49'),
(4, 24, 'ninobarotto28@gmail.com', 5, 'aqui eh venido un monton de veces y muy bonita la playa!', '2025-06-22 23:30:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `clave`, `foto`) VALUES
(1, 'Juan Pérez', 'usuario@example.com', '$2y$10$MzBkkl0IMKBBZaQfDPDPrObK5YXYDkrdqlRzt0iNquD8xlAE6xU8O', NULL),
(2, 'Ignacio Barotto', 'ignaciobarotto28@gmail.com', '$2y$10$9bh3AijMkYnyQVTv7KpF5et.lfxEZ/eAI.6aBK/rS0rSb.LZaxe.C', 'https://lh3.googleusercontent.com/a/ACg8ocK_pe-9ZA0vsyo9ADBRLO4J6f6Y6AVsEbEhAcyF41zgz64G4ak=s96-c'),
(3, 'Nino Barotto', 'ninobarotto28@gmail.com', '$2y$10$lYgC6Qs0OfhsUJ5wW6yGOeN89SSPFnSEqxW.xREB.AScnZx.msMvG', 'https://lh3.googleusercontent.com/a/ACg8ocKpWXgeUVkQtLNMijT_-STOksabthu1p738VH-BKzqsTiXV16zK=s96-c'),
(4, 'Michael Lopez', 'pollomichael2017@gmail.com', '$2y$10$gfGF9x1OsWEz20PN4DSfNuF5UqsLgyp3lBUet5QfGO0fHWNV9InDu', 'https://lh3.googleusercontent.com/a/ACg8ocICZXuXycB1yiwlmVuzxTnfHGsc3LVVyft6eqq2he6N2CiCgOP2=s96-c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistas`
--

CREATE TABLE `vistas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL,
  `fecha_vista` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vistas`
--

INSERT INTO `vistas` (`id`, `usuario_id`, `destino_id`, `fecha_vista`) VALUES
(1, 3, 2, '2025-06-23 12:02:59'),
(6, 3, 3, '2025-06-22 23:18:54'),
(9, 3, 1, '2025-06-22 03:26:39'),
(13, 2, 2, '2025-06-22 14:31:45'),
(14, 2, 1, '2025-06-22 14:31:54'),
(15, 2, 3, '2025-06-22 14:31:56'),
(17, 3, 24, '2025-06-23 11:04:30'),
(19, 3, 10, '2025-06-23 12:04:10'),
(33, 2, 24, '2025-06-22 23:35:09'),
(38, 3, 20, '2025-06-23 11:17:04'),
(44, 3, 22, '2025-06-23 11:16:53'),
(50, 3, 7, '2025-06-23 11:17:00'),
(58, 3, 17, '2025-06-23 12:08:13'),
(61, 3, 5, '2025-06-23 11:48:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `destino_id` (`destino_id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_orden` (`id_orden`),
  ADD KEY `id_destino` (`id_destino`);

--
-- Indices de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_opinion_usuario_destino` (`destino_id`,`usuario`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `vistas`
--
ALTER TABLE `vistas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_destino` (`usuario_id`,`destino_id`),
  ADD KEY `destino_id` (`destino_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `vistas`
--
ALTER TABLE `vistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD CONSTRAINT `detalle_orden_ibfk_1` FOREIGN KEY (`id_orden`) REFERENCES `ordenes` (`id`),
  ADD CONSTRAINT `detalle_orden_ibfk_2` FOREIGN KEY (`id_destino`) REFERENCES `destinos` (`id`);

--
-- Filtros para la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD CONSTRAINT `opiniones_ibfk_1` FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`id`);

--
-- Filtros para la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `vistas`
--
ALTER TABLE `vistas`
  ADD CONSTRAINT `vistas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `vistas_ibfk_2` FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
