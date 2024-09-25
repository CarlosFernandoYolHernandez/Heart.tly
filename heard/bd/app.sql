-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2024 a las 05:56:03
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
-- Base de datos: `app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `Id_Cita` int(11) NOT NULL,
  `Codigo_CitaP` int(11) NOT NULL,
  `FECHA_C` date NOT NULL,
  `Horario_C` int(11) NOT NULL,
  `Codigo_CitaL` int(11) NOT NULL,
  `Lugar` varchar(255) NOT NULL,
  `Localizacion` varchar(255) DEFAULT NULL,
  `Id_TUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`Id_Cita`, `Codigo_CitaP`, `FECHA_C`, `Horario_C`, `Codigo_CitaL`, `Lugar`, `Localizacion`, `Id_TUsuario`) VALUES
(1, 221870, '2024-10-14', 14, 234567, 'San Rafael Chamapa', 'Naucalpan de Juarez', 1),
(2, 221870, '2024-09-24', 16, 234567, 'Col. Las Canteras', 'Huixquilucan', 1),
(3, 221870, '2024-09-26', 18, 234567, 'Calz de Guadalupe', 'Naucalpan de Juarez', 1),
(4, 221870, '2024-11-04', 12, 234567, 'Los Robles', 'Coacalco', 1),
(5, 221870, '2024-10-12', 17, 234567, 'Col. Independencia', 'Naucalpan de Juarez', 1),
(6, 221870, '2024-10-23', 11, 234567, 'San Rafael Chamapa', 'Naucalpan de Juarez', 2),
(7, 221870, '2024-09-24', 10, 234567, 'Col. Las Canteras', 'Huixquilucan', 2),
(8, 221870, '2024-09-26', 18, 234567, 'Plan de Ayala', 'Naucalpan de Juarez', 2),
(9, 221870, '2024-08-25', 12, 234567, 'Los Pinos', 'Coacalco', 2),
(10, 221870, '2024-10-12', 17, 234567, 'Col. Independencia', 'Naucalpan de Juarez', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnostico`
--

CREATE TABLE `diagnostico` (
  `Id_Diagnostico` int(11) NOT NULL,
  `Fecha_D` date NOT NULL,
  `Id_Test` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diagnostico`
--

INSERT INTO `diagnostico` (`Id_Diagnostico`, `Fecha_D`, `Id_Test`) VALUES
(1, '2024-09-24', 1),
(2, '2024-10-23', 2),
(3, '2024-09-10', 3),
(4, '2024-09-03', 3),
(5, '2024-10-01', 4),
(6, '2024-09-11', 5),
(7, '2024-09-17', 6),
(8, '2024-10-10', 7),
(9, '2024-11-06', 8),
(10, '2024-09-04', 9),
(11, '2024-10-18', 10),
(12, '2024-10-14', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expediente`
--

CREATE TABLE `expediente` (
  `Id_Expediente` int(11) NOT NULL,
  `Numero_E` int(11) NOT NULL,
  `Id_Test` int(11) NOT NULL,
  `Id_Diagnostico` int(11) NOT NULL,
  `Id_TUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `Id_Seguimiento` int(11) NOT NULL,
  `Numero_S` int(11) NOT NULL,
  `Fecha_S` date NOT NULL,
  `Id_TUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `Id_Test` int(11) NOT NULL,
  `FECHA_T` date NOT NULL,
  `Id_Tratamiento` int(11) NOT NULL,
  `Resultado_T` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`Id_Test`, `FECHA_T`, `Id_Tratamiento`, `Resultado_T`) VALUES
(1, '2024-09-24', 1, 'Ansiedad'),
(2, '2024-10-23', 1, 'Transtorno mental'),
(3, '2024-09-10', 1, 'Ansiedad y Depresion'),
(4, '2024-09-03', 1, 'Ansiedad'),
(5, '2024-10-01', 1, 'Ansiedad'),
(6, '2024-09-11', 1, 'Depresion'),
(7, '2024-09-17', 1, 'Depresion'),
(8, '2024-10-10', 1, 'Depresion'),
(9, '2024-11-06', 2, 'Esquizofrenia'),
(10, '2024-09-04', 1, 'Ansiedad'),
(11, '2024-10-18', 1, 'Depresion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_expediente`
--

CREATE TABLE `tipo_expediente` (
  `Id_TipoE` int(11) NOT NULL,
  `Id_TUsuario` int(11) NOT NULL,
  `Nombre_Te` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_expediente`
--

INSERT INTO `tipo_expediente` (`Id_TipoE`, `Id_TUsuario`, `Nombre_Te`) VALUES
(1, 1, 'Presencial'),
(2, 2, 'En linea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `Id_TUsuario` int(11) NOT NULL,
  `Nombre_TUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`Id_TUsuario`, `Nombre_TUser`) VALUES
(1, 'Especialista'),
(2, 'Paciente'),
(3, 'Tutor'),
(4, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `Id_Tratamiento` int(11) NOT NULL,
  `Numero_T` int(11) NOT NULL,
  `Fecha_Trat` date NOT NULL,
  `Id_TUsuario` int(11) NOT NULL,
  `Id_Diagnostico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`Id_Tratamiento`, `Numero_T`, `Fecha_Trat`, `Id_TUsuario`, `Id_Diagnostico`) VALUES
(1, 1, '2024-09-30', 1, 1),
(2, 2, '2024-09-30', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(55) NOT NULL,
  `AP_Usuario` varchar(55) DEFAULT NULL,
  `AM_Usuario` varchar(55) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Id_TUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nombre_Usuario`, `AP_Usuario`, `AM_Usuario`, `Telefono`, `Email`, `Password`, `Id_TUsuario`) VALUES
(5, 'Karen', 'Vela', 'Gutierrez', '5532742458', 'avela2322@conalepmex.edu.mx', '21c92447940353b7985328320ed92da4', 4),
(6, 'Jorge', 'Martinez', 'Ramos', '5528181774', 'jmramos1122@conalepmex.edu.mx', '792a3b6662a6a97b1ca7dd25a53dd98c', 4),
(7, 'Angelica', 'Hernandez', 'Morales', '5528105526', 'ahmorales1822@conalepmex.edu.mx', 'db297bb39319cddb32c76e2312a6e49e', 4),
(8, 'Jazmin', 'Martinez', 'Martinez', '5531276821', 'jmmartinez0622@conalepmex.edu.mx', 'dcade24b3099d981944b73d586ad9644', 4),
(9, 'Irving', 'Mejia', 'Ponce', '5671506917', 'imejia2022@conalepmex.edu.mx', 'bb84440c9ac6ad12121c148edb64818e', 4),
(10, 'Karol de Jesus', 'Castro', 'Correa', '5634281608', 'kcastro1422@conalepmex.edu.mx', 'aaf00af597a3af8b67378f929b8f8340', 4),
(11, 'Edgar Adrian', 'Cande', 'Gomez', '5614307100', 'ecande2522@conalepmex.edu.mx', 'c5dcb129d2744755ef8ffc1e2a3796e4', 4),
(12, 'Jose Luis', 'Chavez', 'Gomez', '5581546200', 'luis.chavez_183d@conalepmex.edu.mx', 'aaf524d0579b62866512e6fce1ccb157', 1),
(13, 'Nancy Belen', 'Ramon', 'Ramon', '5611730072', 'nramonr@conalepmex.edu.mx', '034b0835e4e0d1484c514e91872438ab', 1),
(14, 'America Fernanda', 'Bautista', 'Vega', '5549259295', 'abautista2622@conalepmex.edu.mx', '4af941391ce26324b4d9072b316bb0c2', 2),
(15, 'Andrea Yamile', 'Mendoza', 'Cruz', '5510037293', 'amendoza3022@conalepmex.edu.mx', 'f48001e35767d1f510ab4a776e692c2e', 2),
(16, 'Zabdi Berenice', 'Barragan', 'Garcia', '5519740277', 'zbarragan3022@conalepmex.edu.mx', 'c8aa71a88c7d4bfc3ba0b4d4b25436a4\r\n', 2),
(17, 'Brenda Anahi', 'Balanzar', 'Lopez', '5519740277', 'bbalanzar1322@conalepmex.edu.mx', 'ee47266e1cca35d04047b53fdf926c8a', 2),
(18, 'Alan', 'Fajardo', 'Loeza', '5549881668', 'afajardo2022@conalepmex.edu.mx', '47d9557f0f33a34742aa7ee2ea59fb71', 2),
(19, 'Jessica Sofia', 'Bartolo', 'Atanasio', '5517586231', 'jbartolo2222@conalepmex.edu.mx', '454a5353c169a2d7e7b224686413cb41', 2),
(20, 'Christian Alberto', 'Cruz', 'Solis', '5551988299', 'ccruz1022@conalepmex.edu.mx', 'ccb39db7ceb41aba7794a56b593aaa14', 2),
(21, 'Angel Leonardo', 'Guzman', 'Cortes', '5579515886', 'aguzman3022@conalepmex.edu.mx', '1afca793f98cfa22c9eebfe08f0de066', 2),
(22, 'Alfredo', 'Gutierrez', 'Cervantes', '5536043674', 'agutierrez1822@conalepmex.edu.mx', '62d574ac4d68caa49eceb8bbe2632b41', 2),
(23, 'Deyvid Jonathan', 'Cardoso', 'Garcia', '5548141780', 'dcardoso2122@conalepmex.edu.mx', '4bebacfbebd2dfc20020ce921b44af0f', 2),
(24, 'Alejandra', 'Valdez', 'Alonso', '5538442842', 'avaldez0322@conalepmex.edu.mx', 'c5bbd28c0ad247ed12139955ef9b94ba', 2),
(25, 'Esmeralda', 'Juarez', 'Moreno', '5636136130', 'ejuarez1222@conalepmex.edu.mx', 'ce09e81dcf67a493cb20ebdad23dfb07', 2),
(26, 'Carlos Fernando', 'Yol', 'Hernandez', '5524033443', 'cyol2422@conalepmex.edu.mx', '71f1ae84fb4ac7d14a217e26914d47e1', 4),
(27, 'Marco Alberto', 'Malagon', 'Ramirez', '5619427749', 'mmalagon1122@conalepmex.edu.mx', '335b37b237ed34c116bbf8919b55e1f3', 2),
(28, 'Gustavo', 'Sanchez', 'Ruiz', '5572955903', 'gsanchezr1822@conalepmex.edu.mx', '7dab546b8595fc8275b097cb2d8f7147', 2),
(29, 'Marvin Gael', 'Soria', 'Torres', '5272955625', 'msoria1922@conalepmex.edu.mx', '54da488c9e2a7a4946f6ee048401e3f6', 4),
(30, 'Orli Minerva', 'Martinez', 'Quiroz', '5582520464', 'omartinez1721@conalepmex.edu.mx', 'fbd32ae747bada6a5dfb7439c02c601a', 2),
(31, 'Irving Alexis', 'Morales', 'Ibañez', '5583500808', 'imorales0822@conalepmex.edu.mx', 'a4d0bfd9136075cc57ccf85615e03137', 2),
(32, 'David', 'Ortiz', 'Gonzales', '5641110120', 'dortiz0922@conalepmex.edu.mx', '19ca3a091fbbf36f781550764ec24458', 2),
(38, 'Greys Alondra', 'Rosas', 'de Jesus', '5542254733', 'grosas1422@conalepmex.edu.mx', 'd7b83a311da47765ef2989bc0df24cab', 2),
(39, 'Amaris', 'Teran', 'Martinez', '5610602418', 'ateran1822@conalepmex.edu.mx', '01a5c47a25bb3b3d3e0e7e0b30bb39af', 2),
(40, 'Delany', 'Trejo', 'Armenta', '5586868004', 'dtrejo0522@conalepmex.edu.mx', '6f663f8f3799e8248f7837ae8befb16b', 2),
(41, 'Angel Gabriel', 'Moreno', 'Hernandez', '5510249952', 'amoreno2022@conalepmex.edu.mx', '0f45aa3e45fa0f170aae0e8bd9c551ae', 2),
(42, 'Giovanni', 'Romero', 'de Paz', '5655131636', 'gromero0322@conalepmex.edu.mx', '34fcb6b30bf2a19ad20183081a734f58', 2),
(43, 'Sofia Valeria', 'Meza', 'Garcia', '5520212056', 'smeza0222@conalepmex.edu.mx', '8f1eac14920f32e133c63dfadc5c1db2', 2),
(44, 'Julian', 'Luna', 'Ayala', '5523387951', 'jluna0522@conalepmex.edu.mx', '04178d32dbbb915dc9cd4b17013e086e', 2),
(45, 'Genedit Itzel', 'Hernandez', 'Moreno', '5510171707', 'ghernandez29220@conalepmex.edu.mx', '88fdcb9cd8d3b547bad14f779bfc146f', 2),
(46, 'Julian', 'Chavez', 'Secundino', '5518820266', 'jchavez27220@conalepmex.edu.mx', '4f3e700b35491cd0f9032377c2175643', 2),
(47, 'Jose Manuel', 'Sierra', 'Garcia', '5575263667', 'jsierra2222@conalepmex.edu.mx', 'f53be7d8fa337aeca9f4cad932a65de2', 2),
(48, 'Kevin Alexis', 'Alvarado', 'Osorio', '5519879425', 'kalvarado1922@conalepmex.edu.mx', 'fbd6e44328a71a3a8ce51f79799271e9', 2),
(49, 'Sofia Mayte', 'Flores', 'Hernandez', '5510801798', 'sflorez2622@conalepmex.edu.mx', 'de04723c96ee907d434eb27dbff7ab73', 2),
(50, 'Axel Kalid', 'Lopez', 'Miguel', '5574751674', 'almiguel0122@conalepmex.edu.mx', 'f4bd7a23d55263a72b775cca300c060f', 2),
(51, 'Maria del Carmen', 'Sambrano', 'Castañeda', '5621097004', 'msambrano2822@conalepmex.edu.mx', 'd2d639c385412bb414b89b07bfd8432c', 2),
(52, 'Adrian Oswaldo', 'Torres', 'Diaz', '5584669159', 'atorres2721@conalepmex.edu.mx', '797a92dbb02d7526783cd7a2f4014ed9', 2),
(53, 'Ariana', 'Romero', 'Barron', '5536531851', 'aromero1022@conalepmex.edu.mx', 'a3b69bb7ef45ec7d82c725a532228f72', 2),
(54, 'Maricruz', 'Trejo', 'Luqui', '5517809749', 'mtrejo221@conalepmex.edu.mx', '35c4250a2fd3b104d5058c68693319a1', 2),
(55, 'Aurora Guadalupe', 'Ruiz', 'Romani', '5535128563', 'aruiz7822@conalepmex.edu.mx', '09adc0a49227a931cd377ef72921dae9', 2),
(56, 'Hannia Sarai', 'Napoles', 'Silva', '5552101652', 'hnapoles0222@conalepmex.edu.mx', 'd626e62137358b55e5c9dd00675a8986', 2),
(57, 'Emily Renata', 'Miranda', 'Franco', '5611769200', 'emiranda1522@conalepmex.edu.mx', '51c0b7b584ef7a3de48aaed35502bcfc', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`Id_Cita`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`);

--
-- Indices de la tabla `diagnostico`
--
ALTER TABLE `diagnostico`
  ADD PRIMARY KEY (`Id_Diagnostico`),
  ADD KEY `Id_Test` (`Id_Test`);

--
-- Indices de la tabla `expediente`
--
ALTER TABLE `expediente`
  ADD PRIMARY KEY (`Id_Expediente`),
  ADD KEY `Id_Test` (`Id_Test`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`),
  ADD KEY `Id_Diagnostico` (`Id_Diagnostico`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`Id_Seguimiento`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`);

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`Id_Test`);

--
-- Indices de la tabla `tipo_expediente`
--
ALTER TABLE `tipo_expediente`
  ADD PRIMARY KEY (`Id_TipoE`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`Id_TUsuario`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`Id_Tratamiento`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`),
  ADD KEY `Id_Diagnostico` (`Id_Diagnostico`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `Id_Cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `diagnostico`
--
ALTER TABLE `diagnostico`
  MODIFY `Id_Diagnostico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `expediente`
--
ALTER TABLE `expediente`
  MODIFY `Id_Expediente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `Id_Seguimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `test`
--
ALTER TABLE `test`
  MODIFY `Id_Test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipo_expediente`
--
ALTER TABLE `tipo_expediente`
  MODIFY `Id_TipoE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `Id_TUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `Id_Tratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tipo_usuario` (`Id_TUsuario`);

--
-- Filtros para la tabla `diagnostico`
--
ALTER TABLE `diagnostico`
  ADD CONSTRAINT `diagnostico_ibfk_1` FOREIGN KEY (`Id_Test`) REFERENCES `test` (`Id_Test`);

--
-- Filtros para la tabla `expediente`
--
ALTER TABLE `expediente`
  ADD CONSTRAINT `expediente_ibfk_1` FOREIGN KEY (`Id_Test`) REFERENCES `test` (`Id_Test`),
  ADD CONSTRAINT `expediente_ibfk_2` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tipo_usuario` (`Id_TUsuario`),
  ADD CONSTRAINT `expediente_ibfk_3` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tipo_usuario` (`Id_TUsuario`),
  ADD CONSTRAINT `expediente_ibfk_4` FOREIGN KEY (`Id_Diagnostico`) REFERENCES `diagnostico` (`Id_Diagnostico`);

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `seguimiento_ibfk_1` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tipo_usuario` (`Id_TUsuario`);

--
-- Filtros para la tabla `tipo_expediente`
--
ALTER TABLE `tipo_expediente`
  ADD CONSTRAINT `tipo_expediente_ibfk_1` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tipo_usuario` (`Id_TUsuario`);

--
-- Filtros para la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD CONSTRAINT `tratamiento_ibfk_1` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tipo_usuario` (`Id_TUsuario`),
  ADD CONSTRAINT `tratamiento_ibfk_2` FOREIGN KEY (`Id_Diagnostico`) REFERENCES `diagnostico` (`Id_Diagnostico`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tipo_usuario` (`Id_TUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
