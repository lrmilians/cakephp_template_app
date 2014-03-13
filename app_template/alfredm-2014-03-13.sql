-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2014 a las 13:49:12
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `alfredm`
--
CREATE DATABASE IF NOT EXISTS `alfredm`;
USE `alfredm`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=227 ;

--
-- Volcado de datos para la tabla `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 450),
(2, 1, NULL, NULL, 'Funcionalidads', 2, 19),
(3, 2, NULL, NULL, 'index', 3, 4),
(4, 2, NULL, NULL, 'edit', 5, 6),
(5, 2, NULL, NULL, 'add', 7, 8),
(6, 2, NULL, NULL, 'del', 9, 10),
(7, 2, NULL, NULL, 'checkSession', 11, 12),
(8, 2, NULL, NULL, 'rollAdministrador', 13, 14),
(9, 2, NULL, NULL, 'convertCase', 15, 16),
(10, 1, NULL, NULL, 'Groups', 20, 37),
(11, 10, NULL, NULL, 'index', 21, 22),
(12, 10, NULL, NULL, 'add', 23, 24),
(13, 10, NULL, NULL, 'checkSession', 25, 26),
(14, 10, NULL, NULL, 'rollAdministrador', 27, 28),
(15, 10, NULL, NULL, 'convertCase', 29, 30),
(16, 1, NULL, NULL, 'Pages', 38, 47),
(17, 16, NULL, NULL, 'display', 39, 40),
(18, 16, NULL, NULL, 'checkSession', 41, 42),
(19, 16, NULL, NULL, 'rollAdministrador', 43, 44),
(20, 16, NULL, NULL, 'convertCase', 45, 46),
(21, 1, NULL, NULL, 'Rols', 48, 65),
(22, 21, NULL, NULL, 'index', 49, 50),
(23, 21, NULL, NULL, 'retrieveAll', 51, 52),
(24, 21, NULL, NULL, 'add', 53, 54),
(25, 21, NULL, NULL, 'del', 55, 56),
(26, 21, NULL, NULL, 'edit', 57, 58),
(27, 21, NULL, NULL, 'checkSession', 59, 60),
(28, 21, NULL, NULL, 'rollAdministrador', 61, 62),
(29, 21, NULL, NULL, 'convertCase', 63, 64),
(30, 1, NULL, NULL, 'Tiposfuncionalidads', 66, 81),
(31, 30, NULL, NULL, 'index', 67, 68),
(32, 30, NULL, NULL, 'edit', 69, 70),
(33, 30, NULL, NULL, 'add', 71, 72),
(34, 30, NULL, NULL, 'del', 73, 74),
(35, 30, NULL, NULL, 'checkSession', 75, 76),
(36, 30, NULL, NULL, 'rollAdministrador', 77, 78),
(37, 30, NULL, NULL, 'convertCase', 79, 80),
(38, 1, NULL, NULL, 'Users', 82, 115),
(39, 38, NULL, NULL, 'index', 83, 84),
(40, 38, NULL, NULL, 'view', 85, 86),
(41, 38, NULL, NULL, 'add', 87, 88),
(42, 38, NULL, NULL, 'edit', 89, 90),
(43, 38, NULL, NULL, 'delete', 91, 92),
(44, 38, NULL, NULL, 'login', 93, 94),
(45, 38, NULL, NULL, 'logout', 95, 96),
(46, 38, NULL, NULL, 'checkSession', 97, 98),
(47, 38, NULL, NULL, 'rollAdministrador', 99, 100),
(48, 38, NULL, NULL, 'convertCase', 101, 102),
(49, 1, NULL, NULL, 'Usuarios', 116, 161),
(50, 49, NULL, NULL, 'index', 117, 118),
(51, 49, NULL, NULL, 'bienvenido', 119, 120),
(52, 49, NULL, NULL, 'retrieveAll', 121, 122),
(53, 49, NULL, NULL, 'add', 123, 124),
(54, 49, NULL, NULL, 'delete', 125, 126),
(55, 49, NULL, NULL, 'ActivarDesactivarUser', 127, 128),
(56, 49, NULL, NULL, 'edit', 129, 130),
(57, 49, NULL, NULL, 'login', 131, 132),
(58, 49, NULL, NULL, 'funcionalidadesDadoRol', 133, 134),
(59, 49, NULL, NULL, 'logout', 135, 136),
(60, 49, NULL, NULL, 'cambiarpassword', 137, 138),
(61, 49, NULL, NULL, 'definirvariables', 139, 140),
(62, 49, NULL, NULL, 'Connect', 141, 142),
(63, 49, NULL, NULL, 'ldapLogin', 143, 144),
(64, 49, NULL, NULL, 'search_user', 145, 146),
(65, 49, NULL, NULL, 'id_area', 147, 148),
(66, 49, NULL, NULL, 'ObtenerAreaDadoIdArea', 149, 150),
(67, 49, NULL, NULL, 'todasAreas', 151, 152),
(68, 49, NULL, NULL, 'conexion', 153, 154),
(69, 49, NULL, NULL, 'checkSession', 155, 156),
(70, 49, NULL, NULL, 'rollAdministrador', 157, 158),
(71, 49, NULL, NULL, 'convertCase', 159, 160),
(72, 1, NULL, NULL, 'AclExtras', 162, 163),
(73, 1, NULL, NULL, 'DebugKit', 164, 177),
(74, 73, NULL, NULL, 'ToolbarAccess', 165, 176),
(75, 74, NULL, NULL, 'history_state', 166, 167),
(76, 74, NULL, NULL, 'sql_explain', 168, 169),
(77, 74, NULL, NULL, 'checkSession', 170, 171),
(78, 74, NULL, NULL, 'rollAdministrador', 172, 173),
(79, 74, NULL, NULL, 'convertCase', 174, 175),
(80, 38, NULL, NULL, 'initDB', 103, 104),
(81, 38, NULL, NULL, 'bienvenido', 105, 106),
(82, 1, NULL, NULL, 'Widgets', 178, 189),
(83, 82, NULL, NULL, 'index', 179, 180),
(84, 82, NULL, NULL, 'add', 181, 182),
(85, 82, NULL, NULL, 'checkSession', 183, 184),
(86, 82, NULL, NULL, 'rollAdministrador', 185, 186),
(87, 82, NULL, NULL, 'convertCase', 187, 188),
(88, 38, NULL, NULL, 'funcionalidadesDadoIdGroup', 107, 108),
(89, 2, NULL, NULL, 'view', 17, 18),
(90, 10, NULL, NULL, 'edit', 31, 32),
(91, 10, NULL, NULL, 'view', 33, 34),
(93, 10, NULL, NULL, 'delete', 35, 36),
(94, 38, NULL, NULL, 'ActivarDesactivarUser', 109, 110),
(95, 1, NULL, NULL, 'Empresas', 190, 217),
(96, 95, NULL, NULL, 'index', 191, 192),
(97, 95, NULL, NULL, 'view', 193, 194),
(98, 95, NULL, NULL, 'add', 195, 196),
(99, 95, NULL, NULL, 'edit', 197, 198),
(100, 95, NULL, NULL, 'delete', 199, 200),
(101, 95, NULL, NULL, 'admin_index', 201, 202),
(102, 95, NULL, NULL, 'admin_view', 203, 204),
(103, 95, NULL, NULL, 'admin_add', 205, 206),
(104, 95, NULL, NULL, 'admin_edit', 207, 208),
(105, 95, NULL, NULL, 'admin_delete', 209, 210),
(106, 95, NULL, NULL, 'checkSession', 211, 212),
(107, 95, NULL, NULL, 'rollAdministrador', 213, 214),
(108, 95, NULL, NULL, 'convertCase', 215, 216),
(109, 1, NULL, NULL, 'Personas', 218, 245),
(110, 109, NULL, NULL, 'index', 219, 220),
(111, 109, NULL, NULL, 'view', 221, 222),
(112, 109, NULL, NULL, 'add', 223, 224),
(113, 109, NULL, NULL, 'edit', 225, 226),
(114, 109, NULL, NULL, 'delete', 227, 228),
(115, 109, NULL, NULL, 'admin_index', 229, 230),
(116, 109, NULL, NULL, 'admin_view', 231, 232),
(117, 109, NULL, NULL, 'admin_add', 233, 234),
(118, 109, NULL, NULL, 'admin_edit', 235, 236),
(119, 109, NULL, NULL, 'admin_delete', 237, 238),
(120, 109, NULL, NULL, 'checkSession', 239, 240),
(121, 109, NULL, NULL, 'rollAdministrador', 241, 242),
(122, 109, NULL, NULL, 'convertCase', 243, 244),
(123, 1, NULL, NULL, 'Proveedors', 246, 273),
(124, 123, NULL, NULL, 'index', 247, 248),
(125, 123, NULL, NULL, 'view', 249, 250),
(126, 123, NULL, NULL, 'add', 251, 252),
(127, 123, NULL, NULL, 'edit', 253, 254),
(128, 123, NULL, NULL, 'delete', 255, 256),
(129, 123, NULL, NULL, 'admin_index', 257, 258),
(130, 123, NULL, NULL, 'admin_view', 259, 260),
(131, 123, NULL, NULL, 'admin_add', 261, 262),
(132, 123, NULL, NULL, 'admin_edit', 263, 264),
(133, 123, NULL, NULL, 'admin_delete', 265, 266),
(134, 123, NULL, NULL, 'checkSession', 267, 268),
(135, 123, NULL, NULL, 'rollAdministrador', 269, 270),
(136, 123, NULL, NULL, 'convertCase', 271, 272),
(137, 1, NULL, NULL, 'Provinces', 274, 291),
(138, 137, NULL, NULL, 'index', 275, 276),
(139, 137, NULL, NULL, 'view', 277, 278),
(140, 137, NULL, NULL, 'add', 279, 280),
(141, 137, NULL, NULL, 'edit', 281, 282),
(142, 137, NULL, NULL, 'delete', 283, 284),
(143, 137, NULL, NULL, 'checkSession', 285, 286),
(144, 137, NULL, NULL, 'rollAdministrador', 287, 288),
(145, 137, NULL, NULL, 'convertCase', 289, 290),
(146, 1, NULL, NULL, 'Reportes', 292, 309),
(147, 146, NULL, NULL, 'index', 293, 294),
(148, 146, NULL, NULL, 'view', 295, 296),
(149, 146, NULL, NULL, 'add', 297, 298),
(150, 146, NULL, NULL, 'edit', 299, 300),
(151, 146, NULL, NULL, 'delete', 301, 302),
(152, 146, NULL, NULL, 'checkSession', 303, 304),
(153, 146, NULL, NULL, 'rollAdministrador', 305, 306),
(154, 146, NULL, NULL, 'convertCase', 307, 308),
(155, 1, NULL, NULL, 'Tiporeclamos', 310, 337),
(156, 155, NULL, NULL, 'index', 311, 312),
(157, 155, NULL, NULL, 'view', 313, 314),
(158, 155, NULL, NULL, 'add', 315, 316),
(159, 155, NULL, NULL, 'edit', 317, 318),
(160, 155, NULL, NULL, 'delete', 319, 320),
(161, 155, NULL, NULL, 'admin_index', 321, 322),
(162, 155, NULL, NULL, 'admin_view', 323, 324),
(163, 155, NULL, NULL, 'admin_add', 325, 326),
(164, 155, NULL, NULL, 'admin_edit', 327, 328),
(165, 155, NULL, NULL, 'admin_delete', 329, 330),
(166, 155, NULL, NULL, 'checkSession', 331, 332),
(167, 155, NULL, NULL, 'rollAdministrador', 333, 334),
(168, 155, NULL, NULL, 'convertCase', 335, 336),
(169, 1, NULL, NULL, 'Tiporequerimientos', 338, 365),
(170, 169, NULL, NULL, 'index', 339, 340),
(171, 169, NULL, NULL, 'view', 341, 342),
(172, 169, NULL, NULL, 'add', 343, 344),
(173, 169, NULL, NULL, 'edit', 345, 346),
(174, 169, NULL, NULL, 'delete', 347, 348),
(175, 169, NULL, NULL, 'admin_index', 349, 350),
(176, 169, NULL, NULL, 'admin_view', 351, 352),
(177, 169, NULL, NULL, 'admin_add', 353, 354),
(178, 169, NULL, NULL, 'admin_edit', 355, 356),
(179, 169, NULL, NULL, 'admin_delete', 357, 358),
(180, 169, NULL, NULL, 'checkSession', 359, 360),
(181, 169, NULL, NULL, 'rollAdministrador', 361, 362),
(182, 169, NULL, NULL, 'convertCase', 363, 364),
(183, 1, NULL, NULL, 'Tiposervicios', 366, 393),
(184, 183, NULL, NULL, 'index', 367, 368),
(185, 183, NULL, NULL, 'view', 369, 370),
(186, 183, NULL, NULL, 'add', 371, 372),
(187, 183, NULL, NULL, 'edit', 373, 374),
(188, 183, NULL, NULL, 'delete', 375, 376),
(189, 183, NULL, NULL, 'admin_index', 377, 378),
(190, 183, NULL, NULL, 'admin_view', 379, 380),
(191, 183, NULL, NULL, 'admin_add', 381, 382),
(192, 183, NULL, NULL, 'admin_edit', 383, 384),
(193, 183, NULL, NULL, 'admin_delete', 385, 386),
(194, 183, NULL, NULL, 'checkSession', 387, 388),
(195, 183, NULL, NULL, 'rollAdministrador', 389, 390),
(196, 183, NULL, NULL, 'convertCase', 391, 392),
(197, 38, NULL, NULL, 'pass', 111, 112),
(198, 38, NULL, NULL, 'checkCurrentPassword', 113, 114),
(199, 1, NULL, NULL, 'Analistas', 394, 421),
(200, 199, NULL, NULL, 'index', 395, 396),
(201, 199, NULL, NULL, 'view', 397, 398),
(202, 199, NULL, NULL, 'add', 399, 400),
(203, 199, NULL, NULL, 'edit', 401, 402),
(204, 199, NULL, NULL, 'delete', 403, 404),
(205, 199, NULL, NULL, 'admin_index', 405, 406),
(206, 199, NULL, NULL, 'admin_view', 407, 408),
(207, 199, NULL, NULL, 'admin_add', 409, 410),
(208, 199, NULL, NULL, 'admin_edit', 411, 412),
(209, 199, NULL, NULL, 'admin_delete', 413, 414),
(210, 199, NULL, NULL, 'checkSession', 415, 416),
(211, 199, NULL, NULL, 'rollAdministrador', 417, 418),
(212, 199, NULL, NULL, 'convertCase', 419, 420),
(213, 1, NULL, NULL, 'Clientes', 422, 449),
(214, 213, NULL, NULL, 'index', 423, 424),
(215, 213, NULL, NULL, 'view', 425, 426),
(216, 213, NULL, NULL, 'add', 427, 428),
(217, 213, NULL, NULL, 'edit', 429, 430),
(218, 213, NULL, NULL, 'delete', 431, 432),
(219, 213, NULL, NULL, 'admin_index', 433, 434),
(220, 213, NULL, NULL, 'admin_view', 435, 436),
(221, 213, NULL, NULL, 'admin_add', 437, 438),
(222, 213, NULL, NULL, 'admin_edit', 439, 440),
(223, 213, NULL, NULL, 'admin_delete', 441, 442),
(224, 213, NULL, NULL, 'checkSession', 443, 444),
(225, 213, NULL, NULL, 'rollAdministrador', 445, 446),
(226, 213, NULL, NULL, 'convertCase', 447, 448);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, '', 1, 2),
(2, NULL, 'Group', 2, '', 3, 4),
(3, NULL, 'Group', 3, '', 5, 6),
(4, NULL, 'User', 1, '', 7, 8),
(5, NULL, 'User', 2, '', 9, 10),
(6, NULL, 'Group', 4, '', 11, 12),
(7, NULL, 'Group', 5, '', 13, 14),
(8, NULL, 'Group', 6, '', 15, 24),
(9, NULL, 'Group', 7, '', 25, 30),
(10, 8, 'User', 3, '', 16, 17),
(11, 9, 'User', 4, '', 26, 27),
(22, 8, 'User', 5, '', 18, 19),
(23, 9, 'User', 6, '', 28, 29),
(24, 8, 'User', 7, '', 20, 21),
(25, 8, 'User', 8, '', 22, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_aros_acos_aros1_idx` (`aro_id`),
  KEY `fk_aros_acos_acos1_idx` (`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 8, 1, '1', '1', '1', '1'),
(3, 9, 1, '-1', '-1', '-1', '-1'),
(4, 9, 146, '1', '1', '1', '1'),
(5, 9, 109, '1', '1', '1', '1'),
(6, 9, 213, '1', '1', '1', '1'),
(7, 9, 95, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `province_id` int(2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `cities_fk` (`province_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `province_id`, `created`, `modified`) VALUES
(1, 'Azuay', 1, '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(2, 'Guaranda', 2, '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(3, 'Azogues', 3, '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(4, 'Tulcán', 4, '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(5, 'Riobamba', 5, '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(6, 'Latacunga', 6, '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(7, 'Machala', 7, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(8, 'Ciudad Esmeraldas', 8, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(9, 'Puerto Baquerizo Moreno', 9, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(10, 'Guayaquil', 10, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(11, 'Ibarra', 11, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(12, 'Loja', 12, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(13, 'Babahoyo', 13, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(14, 'Portoviejo', 14, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(15, 'Macas', 15, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(16, 'Tena', 16, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(17, 'Francisco de Orellana', 17, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(18, 'Puyo', 18, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(19, 'Quito', 19, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(20, 'Santa Elena', 20, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(21, 'Santo Domingo', 21, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(22, 'Nueva Loja', 22, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(23, 'Ambato', 23, '2013-10-21 16:27:33', '2013-10-21 16:27:33'),
(24, 'Zamora', 24, '2013-10-21 16:27:33', '2013-10-21 16:27:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created`, `modified`) VALUES
(6, 'Administradores', 'Grupo de administradores', '2013-10-17 23:29:14', '2014-02-07 11:53:18'),
(7, 'Usuarios', 'Grupo de usuarios', '2013-10-17 23:29:28', '2013-10-25 09:55:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Azuay', '2013-10-21 16:27:31', '2013-10-21 16:27:31'),
(2, 'Bolivar', '2013-10-21 16:27:31', '2013-10-21 16:27:31'),
(3, 'Cañar', '2013-10-21 16:27:31', '2013-10-21 16:27:31'),
(4, 'Carchi', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(5, 'Chimborazo', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(6, 'Cotopaxi', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(7, 'El Oro', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(8, 'Esmeraldas', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(9, 'Galápagos', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(10, 'Guayas', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(11, 'Imbabura', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(12, 'Loja', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(13, 'Los Rios', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(14, 'Manabí', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(15, 'Morona Santiago', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(16, 'Napo', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(17, 'Orellana', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(18, 'Pastaza', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(19, 'Pichincha ', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(20, 'Santa Elena', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(21, 'Santo Domingo de los Tsác', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(22, 'Sucumbíos', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(23, 'Tungurahua ', '2013-10-21 16:27:32', '2013-10-21 16:27:32'),
(24, 'Zamora Chinchipe ', '2013-10-21 16:27:32', '2013-10-21 16:27:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_dusuario`
--

CREATE TABLE IF NOT EXISTS `tb_dusuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_apellidos_usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass_usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `es_activo_usuario` tinyint(1) NOT NULL,
  `email_usuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `id_rol` int(11) NOT NULL,
  `es_local_usuario` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  KEY `tb_dusuario_fk` (`id_rol`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `tb_dusuario`
--

INSERT INTO `tb_dusuario` (`id_usuario`, `nombre_usuario`, `nombre_apellidos_usuario`, `pass_usuario`, `es_activo_usuario`, `email_usuario`, `created`, `modified`, `id_rol`, `es_local_usuario`) VALUES
(1, 'admin', 'Administrador del sistema', '21232f297a57a5a743894a0e4a801fc3', 1, 'lmilians@mail.pr.bpa.cu', '2011-10-25 09:55:38', '2012-05-19 20:20:23', 1, 1),
(3, 'lmilians', 'lazaro', 'c483190589205a9341f158d2bf4c9bb9', 1, '', '2012-05-20 18:07:48', '2012-05-20 18:07:48', 4, 0),
(9, 'olguita', 'Olga Lidia Fernández Rivero', '5e42402cce9e09fad39a0578a79c7b7e', 1, '', '2012-05-23 12:12:16', '2012-05-23 12:12:16', 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_nfuncionalidad`
--

CREATE TABLE IF NOT EXISTS `tb_nfuncionalidad` (
  `id_funcionalidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_funcionalidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `es_activo_funcionalidad` tinyint(1) NOT NULL,
  `localizacion_funcionalidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_funcionalidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parametros` tinyint(1) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `id_tipo_funcionalidad` int(11) NOT NULL,
  PRIMARY KEY (`id_funcionalidad`),
  KEY `tb_nfuncionalidad_fk` (`id_tipo_funcionalidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `tb_nfuncionalidad`
--

INSERT INTO `tb_nfuncionalidad` (`id_funcionalidad`, `nombre_funcionalidad`, `es_activo_funcionalidad`, `localizacion_funcionalidad`, `descripcion_funcionalidad`, `parametros`, `created`, `modified`, `id_tipo_funcionalidad`) VALUES
(1, '● Funcionalidades', 1, '/Funcionalidads', 'Gestión de funcionalidades', 0, '2011-10-25 13:53:30', '2013-11-15 10:38:08', 1),
(2, '● Grupos', 1, '/groups', 'Gestión de grupos', 0, '2011-10-25 09:52:18', '2013-11-15 10:38:25', 1),
(3, '● Usuarios', 1, '/users', 'Gestion de usuarios', 0, '2011-10-25 09:51:57', '2013-11-15 10:38:59', 1),
(4, '● Tipos Funcionalidad', 1, '/tiposfuncionalidads', 'Gestión de tipos de funcionalidad', 0, '2011-10-25 13:56:34', '2013-11-15 10:38:42', 1),
(13, '● Clientes', 1, '/clientes', 'Gestión de Clientes', NULL, '2013-10-22 13:48:15', '2013-11-15 10:37:33', 5),
(15, '● Tarifas', 1, '/tarifas/', 'Gestión de Tarifas', NULL, '2013-11-01 17:33:31', '2013-11-15 10:37:46', 4),
(16, '● Total del minutos', 1, '/cdrs/consumo/1', 'Reporte del Total de minutos.', NULL, '2013-11-07 10:55:55', '2013-11-15 10:34:08', 6),
(17, '● Recibidas - Local', 1, '/cdrs/consumo/2', 'Llamadas recibidas desde CNT - Local', NULL, '2013-11-07 10:59:54', '2013-11-15 10:34:24', 6),
(18, '● Recibidas - Nacional', 1, '/cdrs/consumo/3', 'Llamadas recibidas desde CNT - Fuera de Quito (Nacional)', NULL, '2013-11-07 11:02:34', '2013-11-15 10:36:31', 6),
(19, '● Realizadas - Local', 1, '/cdrs/consumo/4', 'Llamadas realizadas a la CNT - Local', NULL, '2013-11-07 11:03:22', '2013-11-15 10:36:08', 6),
(20, '● Realizadas - Nacional', 1, '/cdrs/consumo/5', 'Llamadas realizadas a la CNT - Fuera de Quito (Nacional)', NULL, '2013-11-07 11:04:31', '2013-11-15 10:34:39', 6),
(21, '● Internacionales', 1, '/cdrs/consumo/6', 'Llamadas internacionales realizadas a la CNT', NULL, '2013-11-07 11:08:00', '2013-11-15 10:35:49', 6),
(22, '● Llamadas Coripar', 1, '/cdrs/consumo/7', 'Llamadas dentro de la red Coripar', NULL, '2013-11-07 11:12:37', '2013-11-15 10:35:34', 6),
(23, '● Buzón de voz', 1, '/cdrs/consumo/8', 'Llamadas buzón de voz', NULL, '2013-11-07 11:13:11', '2013-11-15 10:35:19', 6),
(24, '● Recibidas - Virtuales', 1, '/cdrs/consumo/9', 'Llamadas recibidas números virtuales', NULL, '2013-11-07 11:14:12', '2013-11-15 10:37:05', 6),
(25, '● Realizadas - Especiales', 1, '/cdrs/consumo/10', 'Llamadas realizadas a servicios especiales.', NULL, '2013-11-07 11:15:36', '2013-11-15 10:35:00', 6),
(26, '● Resumen', 1, '/cdrs/consumo/0', 'Resumen de las llamadas dado rango de fechas', NULL, '2013-11-07 15:22:02', '2013-11-15 10:36:47', 6),
(27, '● Conmutación', 1, '/conmutacions/', 'Gestión de Conmutación', NULL, '2013-11-12 08:31:50', '2013-11-15 10:33:46', 7),
(28, '● Transmisión', 1, '/transmisions', 'Gestión de Transmisión', NULL, '2013-11-12 12:30:57', '2013-11-15 10:33:31', 7),
(29, '● Planta Externa', 1, '/plantaexternas', 'Gestión de Planta Externa', NULL, '2013-11-13 10:19:20', '2013-11-15 10:33:13', 7),
(30, '● Acceso Inalámbrico*', 1, '/inalambricos', 'Gestión de Acceso Inalámbrico', NULL, '2013-11-13 11:36:29', '2013-11-15 10:32:50', 7),
(31, '● Líneas principales', 1, '/lineasprincipals', 'Gestión de Líneas principales', NULL, '2013-11-14 10:57:23', '2013-11-15 10:32:28', 7),
(32, '● ID Relación cliente*', 1, '/relaclientes/', 'Gestión de Relación con el cliente', NULL, '2013-11-14 12:18:12', '2013-11-15 10:46:17', 7),
(33, '● ID Porcentaje Reclamos procedentes', 1, '/reclamoproces/', 'Gestión de porcentaje de reclamos generales procedentes.', NULL, '2013-11-14 13:07:39', '2013-11-15 14:23:57', 7),
(34, '● ID TPromedio Reclamos*', 1, '/tpromedioreclamos', 'Gestión de Tiempo promedio de resolución de reclamos generales', NULL, '2013-11-15 12:39:12', '2013-11-15 12:39:12', 7),
(35, '● ID Porcentaje Reclamos Facturación', 1, '/reclamofacts', 'Gestión de Porcentaje de reclamos de facturación.', NULL, '2013-11-15 14:21:25', '2013-11-15 14:21:25', 7),
(36, '● ID Oportunidad Facturación', 1, '/oportunidadfacts/', 'Gestión de Oportunidad de facturación.', NULL, '2013-11-18 10:38:26', '2013-11-18 10:38:26', 7),
(37, '● Factura CNT', 1, '/clientes/facturacnt', 'Emitir la factura de CNT', NULL, '2013-11-21 14:49:59', '2013-11-21 14:49:59', 5),
(38, '● Archivos de respaldo', 1, '/archivosrespaldos/', 'Gestión de Archivos de respaldo', NULL, '2014-02-07 11:53:03', '2014-02-07 11:53:03', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_nrol`
--

CREATE TABLE IF NOT EXISTS `tb_nrol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_rol` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `id_rol` (`id_rol`),
  UNIQUE KEY `nombre_rol` (`nombre_rol`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tb_nrol`
--

INSERT INTO `tb_nrol` (`id_rol`, `nombre_rol`, `descripcion_rol`, `created`, `modified`) VALUES
(1, 'Administrador', 'Administrador del sistema', '2011-10-25 15:45:45', '2012-09-26 13:10:55'),
(3, 'Visor', 'Visor', '2011-10-25 10:50:27', '2012-09-26 13:39:35'),
(4, 'Operador', 'Operador del sistema', '2012-05-20 18:07:21', '2012-09-26 09:52:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ntipo_funcionalidad`
--

CREATE TABLE IF NOT EXISTS `tb_ntipo_funcionalidad` (
  `id_tipo_funcionalidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_funcionalidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_tipo_funcionalidad` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id_tipo_funcionalidad`),
  UNIQUE KEY `nombre_tipo_funcionalidad` (`nombre_tipo_funcionalidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tb_ntipo_funcionalidad`
--

INSERT INTO `tb_ntipo_funcionalidad` (`id_tipo_funcionalidad`, `nombre_tipo_funcionalidad`, `descripcion_tipo_funcionalidad`, `created`, `modified`) VALUES
(1, 'Administración', 'Administración', '2011-10-25 13:58:46', '2013-10-18 12:28:02'),
(2, 'Reportes', 'Reportes', '2011-10-25 14:04:03', '2011-10-25 14:04:03'),
(3, 'Operaciones', 'Operaciones', '2012-05-20 18:14:23', '2012-05-20 18:14:23'),
(4, 'Nomencladores', 'Agrupación de las funcionalidades que tienen que ver con los nomencladores', '2012-09-26 11:30:10', '2012-09-26 11:30:10'),
(5, 'Facturación', 'Facturación', '2013-11-07 10:53:08', '2013-11-07 10:53:08'),
(6, 'Consumo Total', 'Consumo Total', '2013-11-07 10:55:00', '2013-11-07 10:55:00'),
(7, 'SAAD (Admin)', 'Sistema Automatizado de Adquisición de Datos (Administración)', '2013-11-12 08:31:05', '2013-11-12 08:31:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rrol_funcionalidad`
--

CREATE TABLE IF NOT EXISTS `tb_rrol_funcionalidad` (
  `id_rol_funcionalidad` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `id_funcionalidad` int(11) NOT NULL,
  PRIMARY KEY (`id_rol_funcionalidad`),
  KEY `tb_rrol_funcionalidad_fk` (`id`),
  KEY `tb_rrol_funcionalidad_fk1` (`id_funcionalidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=624 ;

--
-- Volcado de datos para la tabla `tb_rrol_funcionalidad`
--

INSERT INTO `tb_rrol_funcionalidad` (`id_rol_funcionalidad`, `id`, `id_funcionalidad`) VALUES
(254, 7, 13),
(595, 6, 30),
(596, 6, 38),
(597, 6, 23),
(598, 6, 13),
(599, 6, 27),
(600, 6, 37),
(601, 6, 1),
(602, 6, 2),
(603, 6, 36),
(604, 6, 35),
(605, 6, 33),
(606, 6, 32),
(607, 6, 34),
(608, 6, 21),
(609, 6, 31),
(610, 6, 22),
(611, 6, 29),
(612, 6, 25),
(613, 6, 19),
(614, 6, 20),
(615, 6, 17),
(616, 6, 18),
(617, 6, 24),
(618, 6, 26),
(619, 6, 15),
(620, 6, 4),
(621, 6, 16),
(622, 6, 28),
(623, 6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `nombre_apellidos` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` char(40) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `fk_users_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `nombre_apellidos`, `password`, `activo`, `group_id`, `created`, `modified`) VALUES
(4, 'lmilians', 'Lázaro Raisel Milians Alvarez de la Campa', '55d3dc26b1b2c2114a0f9d81c3eeaec58666f120', 1, 7, '2013-10-17 23:31:37', '2013-10-25 09:51:43'),
(5, 'ana', 'Ana Maria', 'ec164087163e151074a6a8b8edfad17465522779', 1, 6, '2013-10-21 12:57:02', '2013-10-29 14:32:10'),
(6, 'pepe', 'pepe', '8bfe52693d26702c50d2437ee6d6e9a31835f592', 0, 7, '2013-10-21 12:59:22', '2013-10-21 12:59:22'),
(7, 'admin', 'Administrador del Sistema', 'efa37ea42da27487c38040402d2515d460ff0116', 1, 6, '2013-10-21 13:56:02', '2013-10-29 14:33:13'),
(8, 'lrmilians', 'Lázaro Raisel Milians Alvarez', 'a55ff3f373eeca563a3543b4c784513d20a97b6b', 1, 6, '2013-10-25 09:52:45', '2013-10-29 14:12:15');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD CONSTRAINT `fk_aros_acos_acos1` FOREIGN KEY (`aco_id`) REFERENCES `acos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aros_acos_aros1` FOREIGN KEY (`aro_id`) REFERENCES `aros` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_fk` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_dusuario`
--
ALTER TABLE `tb_dusuario`
  ADD CONSTRAINT `tb_dusuario_fk` FOREIGN KEY (`id_rol`) REFERENCES `tb_nrol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_nfuncionalidad`
--
ALTER TABLE `tb_nfuncionalidad`
  ADD CONSTRAINT `tb_nfuncionalidad_fk` FOREIGN KEY (`id_tipo_funcionalidad`) REFERENCES `tb_ntipo_funcionalidad` (`id_tipo_funcionalidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_rrol_funcionalidad`
--
ALTER TABLE `tb_rrol_funcionalidad`
  ADD CONSTRAINT `tb_rrol_funcionalidad_fk1` FOREIGN KEY (`id_funcionalidad`) REFERENCES `tb_nfuncionalidad` (`id_funcionalidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rrol_funcionalidad_ibfk_1` FOREIGN KEY (`id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
