-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2022 a las 22:39:42
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sap22`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admpartes`
--

CREATE TABLE `admpartes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `persona_id` bigint(20) UNSIGNED NOT NULL,
  `situacion` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admpartes`
--

INSERT INTO `admpartes` (`id`, `fecha`, `persona_id`, `situacion`, `created_at`, `updated_at`) VALUES
(1, '2022-05-11', 61, 7, '2022-05-11 18:57:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(1, 'vacacion_licenicia', 'vacacions', 'save_edit', NULL, NULL, NULL, NULL, 'Vacacion_licenicia', NULL, NULL, NULL, NULL, 'post', 'a:12:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:10:\"persona_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:13:\"años_trabajo\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:13:\"dias_vacacion\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:9:\"colectiva\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:11:\"f_solicitud\";s:4:\"type\";s:4:\"date\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:16:\"dias_solicitados\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:17:\"horas_solicitadas\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:7:\"f_desde\";s:4:\"type\";s:4:\"date\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:9;a:5:{s:4:\"name\";s:7:\"f_hasta\";s:4:\"type\";s:4:\"date\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:10;a:5:{s:4:\"name\";s:14:\"dias_restantes\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:11;a:5:{s:4:\"name\";s:15:\"horas_restantes\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:12:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:10:\"persona_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:13:\"años_trabajo\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:13:\"dias_vacacion\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:9:\"colectiva\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:11:\"f_solicitud\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:16:\"dias_solicitados\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:17:\"horas_solicitadas\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:7:\"f_desde\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:7:\"f_hasta\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:14:\"dias_restantes\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:15:\"horas_restantes\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-03-21 18:13:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-11 22:21:01', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 35 at CENTRAL', '', 1, '2022-04-11 22:49:37', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/delete/12', 'Delete data 35 at CENTRAL', '', 1, '2022-04-11 22:49:50', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 35 at CENTRAL', '', 1, '2022-04-11 22:50:45', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/AddOficiales/add-save', 'Add New Data  at OFICIALES', '', 1, '2022-04-11 23:48:52', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/AddOficiales/add-save', 'Add New Data  at OFICIALES', '', 1, '2022-04-11 23:50:29', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/AddOficiales/add-save', 'Add New Data  at OFICIALES', '', 1, '2022-04-11 23:52:06', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-12 17:05:18', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/AddOficiales/add-save', 'Add New Data  at OFICIALES', '', 1, '2022-04-12 18:06:11', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/AddOficiales/add-save', 'Add New Data  at OFICIALES', '', 1, '2022-04-12 18:10:21', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/AddSofsgto/add-save', 'Add New Data  at SOF. SGTO.', '', 1, '2022-04-12 18:21:55', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/AddSofsgto/add-save', 'Add New Data  at SOF. SGTO.', '', 1, '2022-04-12 18:23:38', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/AddSofsgto/add-save', 'Add New Data  at SOF. SGTO.', '', 1, '2022-04-12 18:25:31', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/AddSofsgto/add-save', 'Add New Data  at SOF. SGTO.', '', 1, '2022-04-12 18:27:51', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 2 at CENTRAL', '', 1, '2022-04-12 18:32:30', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 1 at CENTRAL', '', 1, '2022-04-12 18:33:17', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 7 at CENTRAL', '', 1, '2022-04-12 18:40:24', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 6 at CENTRAL', '', 1, '2022-04-12 18:40:53', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/add-save', 'Add New Data 5 at DESTINOS IGM', '', 1, '2022-04-12 18:50:15', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/add-save', 'Add New Data 3 at DESTINOS IGM', '', 1, '2022-04-12 18:50:50', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 1 at GESTIONES ANTERIORES', '', 1, '2022-04-12 19:05:43', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 7 at GESTIONES ANTERIORES', '', 1, '2022-04-12 19:06:23', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 1 at GESTIONES ANTERIORES', '', 1, '2022-04-12 19:07:39', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 1 at GESTIONES ANTERIORES', '', 1, '2022-04-12 19:10:14', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 8 at CENTRAL', '', 1, '2022-04-12 19:17:36', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data GRADOS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-tags</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-04-12 19:28:59', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/delete/1', 'Delete data  at VACACIONES Y PERMISOS', '', 1, '2022-04-12 19:33:56', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-12 19:34:30', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-12 19:35:05', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-13 16:28:46', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/edit-save/10', 'Update data 1 at GESTIONES ANTERIORES', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>gestion</td><td>2020</td><td>2018</td></tr><tr><td>departamento</td><td></td><td></td></tr></tbody></table>', 1, '2022-04-13 16:32:15', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-14 16:35:01', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/25', 'Delete data RELACION NOMINAL GENERAL at Module Generator', '', 1, '2022-04-14 17:22:07', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-14 17:24:52', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-14 17:25:59', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-14 17:26:28', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/delete/5', 'Delete data  at VACACIONES Y PERMISOS', '', 1, '2022-04-14 17:29:18', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-14 17:31:02', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-14 17:31:29', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-14 17:31:59', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-04-14 17:32:26', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/delete/4', 'Delete data ESTADÍSTCAS at Statistic Builder', '', 1, '2022-04-14 17:35:00', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/delete/4', 'Delete data  at Statistic Builder', '', 1, '2022-04-14 17:35:02', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data ESTADISTICAS at Statistic Builder', '', 1, '2022-04-14 17:35:16', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/27', 'Delete data COMISIONES at Module Generator', '', 1, '2022-04-14 19:11:50', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tlicencias/add-save', 'Add New Data  at ADM_LICENCIAS', '', 1, '2022-04-14 19:16:09', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tlicencias/add-save', 'Add New Data  at ADM_LICENCIAS', '', 1, '2022-04-14 19:20:58', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tlicencias/edit-save/1', 'Update data  at ADM_LICENCIAS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>dias</td><td>10</td><td>8</td></tr></tbody></table>', 1, '2022-04-14 19:21:16', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tlicencias/add-save', 'Add New Data  at ADM_LICENCIAS', '', 1, '2022-04-14 19:22:37', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tlicencias/add-save', 'Add New Data  at ADM_LICENCIAS', '', 1, '2022-04-14 19:24:07', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tlicencias/add-save', 'Add New Data  at ADM_LICENCIAS', '', 1, '2022-04-14 19:24:36', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-18 17:21:46', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 8 at GESTIONES ANTERIORES', '', 1, '2022-04-18 17:31:01', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 6 at GESTIONES ANTERIORES', '', 1, '2022-04-18 17:44:27', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 6 at GESTIONES ANTERIORES', '', 1, '2022-04-18 17:44:54', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-19 16:32:51', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-20 18:50:32', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-28 18:58:12', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-28 18:58:15', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/add-save', 'Add New Data 5 at LICENCIAS', '', 1, '2022-04-28 19:02:28', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/AddComisiones/add-save', 'Add New Data 1 at COMISIONES', '', 1, '2022-04-28 19:21:32', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/delete/2', 'Delete data 1 at LICENCIAS', '', 1, '2022-04-28 19:43:42', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/AddComisiones/add-save', 'Add New Data 5 at COMISIONES', '', 1, '2022-04-28 20:47:21', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/add-save', 'Add New Data 2 at LICENCIAS', '', 1, '2022-04-28 21:11:00', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/add-save', 'Add New Data 8 at LICENCIAS', '', 1, '2022-04-28 21:53:30', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/add-save', 'Add New Data 9 at LICENCIAS', '', 1, '2022-04-28 21:55:41', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/delete/4', 'Delete data 2 at LICENCIAS', '', 1, '2022-04-28 21:59:35', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/delete/1', 'Delete data 5 at LICENCIAS', '', 1, '2022-04-28 21:59:40', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data LICENCIAS Y COMISIONES at Menu Management', '', 1, '2022-04-28 23:41:16', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data COMISIONES Y LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>LICENCIAS Y COMISIONES</td><td>COMISIONES Y LICENCIAS</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-04-28 23:43:38', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data COMISIONES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-briefcase</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr></tbody></table>', 1, '2022-04-28 23:44:08', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-check-square-o</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr></tbody></table>', 1, '2022-04-28 23:44:45', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-check-square-o</td><td>fa fa-clock-o</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr></tbody></table>', 1, '2022-04-28 23:45:11', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/22', 'Update data ADM_LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-check-square-o</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-04-28 23:45:29', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-29 18:11:38', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-29 23:21:24', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-04-30 20:13:01', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 7 at CENTRAL', '', 1, '2022-04-30 20:20:39', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 15 at CENTRAL', '', 1, '2022-04-30 20:22:06', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 7 at CENTRAL', '', 1, '2022-04-30 20:23:46', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 15 at CENTRAL', '', 1, '2022-04-30 20:24:04', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 13 at CENTRAL', '', 1, '2022-04-30 20:24:29', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 25 at CENTRAL', '', 1, '2022-04-30 20:25:20', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 34 at CENTRAL', '', 1, '2022-04-30 20:25:51', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 33 at CENTRAL', '', 1, '2022-04-30 20:26:13', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 38 at CENTRAL', '', 1, '2022-04-30 20:26:56', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 28 at CENTRAL', '', 1, '2022-04-30 20:27:47', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 62 at CENTRAL', '', 1, '2022-04-30 20:28:09', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 422 at CENTRAL', '', 1, '2022-04-30 20:40:19', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/edit-save/9', 'Update data 62 at CENTRAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>departamento</td><td>DPTO. VII - PLANIF.</td><td>DPTO. VI - CIA. Y TEC.</td></tr></tbody></table>', 1, '2022-04-30 20:40:50', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 433 at CENTRAL', '', 1, '2022-04-30 20:41:27', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 447 at CENTRAL', '', 1, '2022-04-30 20:42:10', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 367 at CENTRAL', '', 1, '2022-04-30 20:43:16', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 471 at CENTRAL', '', 1, '2022-04-30 20:44:00', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 511 at CENTRAL', '', 1, '2022-04-30 20:44:42', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 526 at CENTRAL', '', 1, '2022-04-30 20:46:30', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 298 at CENTRAL', '', 1, '2022-04-30 20:46:53', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 426 at CENTRAL', '', 1, '2022-04-30 20:47:13', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 421 at CENTRAL', '', 1, '2022-04-30 20:47:33', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 542 at CENTRAL', '', 1, '2022-04-30 20:48:59', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 375 at CENTRAL', '', 1, '2022-04-30 20:50:30', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-01 00:15:56', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinoscentral/add-save', 'Add New Data 623 at CENTRAL', '', 1, '2022-05-01 00:16:47', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/add-save', 'Add New Data 61 at DESTINOS IGM', '', 1, '2022-05-01 00:37:51', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/add-save', 'Add New Data 336 at DESTINOS IGM', '', 1, '2022-05-01 00:38:35', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/add-save', 'Add New Data 445 at DESTINOS IGM', '', 1, '2022-05-01 00:39:01', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/add-save', 'Add New Data 48 at DESTINOS IGM', '', 1, '2022-05-01 00:40:29', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/add-save', 'Add New Data 137 at DESTINOS IGM', '', 1, '2022-05-01 00:40:56', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 422 at GESTIONES ANTERIORES', '', 1, '2022-05-01 00:54:39', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 422 at GESTIONES ANTERIORES', '', 1, '2022-05-01 00:55:03', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 422 at GESTIONES ANTERIORES', '', 1, '2022-05-01 00:55:26', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Add New Data 422 at GESTIONES ANTERIORES', '', 1, '2022-05-01 00:55:56', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/t_vacacions/add-save', 'Add New Data  at VACACION - PERMISO', '', 1, '2022-05-01 01:40:33', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/t_vacacions/add-save', 'Add New Data  at VACACION - PERMISO', '', 1, '2022-05-01 01:41:13', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/t_vacacions/add-save', 'Add New Data  at VACACION - PERMISO', '', 1, '2022-05-01 01:41:32', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/t_vacacions/add-save', 'Add New Data  at VACACION - PERMISO', '', 1, '2022-05-01 01:41:51', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/t_vacacions/add-save', 'Add New Data  at VACACION - PERMISO', '', 1, '2022-05-01 01:42:10', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data ADM_VACACION - PERMISO at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>VACACION - PERMISO</td><td>ADM_VACACION - PERMISO</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:43:57', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/22', 'Update data ADM_LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-check-square-o</td><td>fa fa-clock-o</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:44:25', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-clock-o</td><td>fa fa-check-square-o</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:44:43', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data COMISIONES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-briefcase</td><td>fa fa-check-square-o</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:45:00', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data REGISTRO DE VACACIONES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>VACACIONES</td><td>REGISTRO DE VACACIONES</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:45:19', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data REGISTRO DE LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>LICENCIAS</td><td>REGISTRO DE LICENCIAS</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:45:33', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data REGISTRO DE COMISIONES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>COMISIONES</td><td>REGISTRO DE COMISIONES</td></tr><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:45:54', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data REGISTRO DE COMISIONES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:46:16', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data REGISTRO DE VACACIONES Y PERMISOS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>REGISTRO DE VACACIONES</td><td>REGISTRO DE VACACIONES Y PERMISOS</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:46:36', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data REGISTRO at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>REGISTRO DE VACACIONES Y PERMISOS</td><td>REGISTRO</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-01 01:47:16', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-05-01 01:48:32', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-05-01 01:49:28', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/vacaciones/add-save', 'Add New Data  at VACACIONES Y PERMISOS', '', 1, '2022-05-01 01:49:59', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 16:35:15', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-05-03 18:57:03', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 19:18:45', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-05-03 19:20:18', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 19:31:22', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-05-03 19:33:07', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 19:34:46', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-05-03 20:42:19', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 20:44:01', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete/2', 'Delete data Dependiente La Paz at Users Management', '', 1, '2022-05-03 20:44:26', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete/3', 'Delete data Dependiente Central at Users Management', '', 1, '2022-05-03 20:44:32', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Auxiliar at Users Management', '', 1, '2022-05-03 20:47:59', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/4', 'Update data Auxiliar DPTOI at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Auxiliar</td><td>Auxiliar DPTOI</td></tr><tr><td>password</td><td>$2y$10$agxJY4mFdgYfWhbdc0./zuPZzCBJb1xQLwfkTZo1YHrak9220XMUC</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-05-03 20:48:15', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Distrito Santa Cruz at Users Management', '', 1, '2022-05-03 20:52:09', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/3', 'Update data Distrito Santa Cruz at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$rCWK5AGmgtlNY0fUtlM0V.dX4zmhHdNytrtdPFUUmUg31B5yd0VDy</td><td>$2y$10$dvzW8WfpS1YqkqzZy3cYpOjEyu6R7DA4bu7ewoBb3rxyQliNuHDlO</td></tr><tr><td>id_cms_privileges</td><td>2</td><td>3</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-05-03 21:00:08', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'santacruz@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-05-03 21:00:31', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management', 'Try view the data :name at Menu Management', '', 3, '2022-05-03 21:01:01', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com logout', '', 3, '2022-05-03 21:01:12', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 21:01:25', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data PERSONAL at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-05-03 21:01:56', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data OFICIALES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:02:17', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data SOF. SGTO. at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:02:30', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data SOF. SGTO. at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:02:43', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data EMPLEADOS CIVILES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:02:55', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data CONTRATADOS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:03:07', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data SGM at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:03:20', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-05-03 21:03:33', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'auxiliarp1@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-05-03 21:03:47', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'auxiliarp1@gmail.com logout', '', 2, '2022-05-03 21:07:33', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2022-05-03 21:07:34', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2022-05-03 21:07:37', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'santacruz@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-05-03 21:07:54', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com logout', '', 3, '2022-05-03 21:08:21', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 21:08:38', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data CENTRAL at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>15</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:08:59', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data DISTRITOS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>15</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:09:17', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data GESTIONES ANTERIORES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>15</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:09:34', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data PERMISOS Y VACACIONES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>vacaciones</td><td>vacacionesGral</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:10:33', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data REGISTRO at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:10:55', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data COMISIONES Y LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:11:14', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data REGISTRO DE LICENCIAS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:11:32', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data REGISTRO DE COMISIONES at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>23</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:11:50', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-05-03 21:12:01', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'santacruz@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-05-03 21:12:14', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com logout', '', 3, '2022-05-03 21:12:49', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 21:13:04', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data DESTINOS Y CARGOS at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-05-03 21:13:42', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-05-03 21:14:07', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'santacruz@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-05-03 21:14:23', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com logout', '', 3, '2022-05-03 21:17:13', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'auxiliarp1@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-05-03 21:20:30', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral', 'Try view the data :name at VACACIONES PERSONAL', '', 2, '2022-05-03 21:21:00', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral', 'Try view the data :name at VACACIONES PERSONAL', '', 2, '2022-05-03 21:26:50', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'auxiliarp1@gmail.com logout', '', 2, '2022-05-03 21:26:56', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-05-03 21:27:08', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-05-03 21:28:41', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'santacruz@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-05-03 21:28:53', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com se desconectó', '', 3, '2022-05-03 21:42:32', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-03 23:45:54', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/add-save', 'Añadir nueva información 422 en LICENCIAS', '', 1, '2022-05-03 17:55:53', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-04 17:57:55', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-05 13:21:34', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/delete/5', 'Eliminar información ESTADISTICAS en Statistic Builder', '', 1, '2022-05-05 16:40:17', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/delete/5', 'Eliminar información  en Statistic Builder', '', 1, '2022-05-05 16:40:20', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Añadir nueva información PARTE PERSONAL en Statistic Builder', '', 1, '2022-05-05 16:42:21', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/edit-save/6', 'Actualizar información PARTE PERSONAL en Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>parte-personal</td><td></td></tr></tbody></table>', 1, '2022-05-05 16:42:34', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Escritorio en Menu Management', '', 1, '2022-05-05 17:30:55', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Actualizar información Escritorio en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-05-05 17:31:58', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/AddComisiones/add-save', 'Añadir nueva información 422 en COMISIONES', '', 1, '2022-05-05 17:33:25', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-06 14:21:02', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/add-save', 'Añadir nueva información 422 en GESTIONES ANTERIORES', '', 1, '2022-05-06 14:31:52', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/delete/32', 'Eliminar información 422 en GESTIONES ANTERIORES', '', 1, '2022-05-06 14:32:01', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/delete/31', 'Eliminar información 422 en GESTIONES ANTERIORES', '', 1, '2022-05-06 14:32:05', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/edit-save/28', 'Actualizar información 422 en GESTIONES ANTERIORES', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>departamento</td><td></td><td>DPTO. V - ADM.</td></tr><tr><td>cargo</td><td></td><td>AUXILIAR</td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-05-06 16:26:45', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/edit-save/29', 'Actualizar información 422 en GESTIONES ANTERIORES', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>departamento</td><td></td><td>DPTO. V - ADM.</td></tr><tr><td>cargo</td><td></td><td>AUXILIAR</td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-05-06 16:27:06', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/edit-save/30', 'Actualizar información 422 en GESTIONES ANTERIORES', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>departamento</td><td></td><td>DPTO. V - ADM.</td></tr><tr><td>cargo</td><td></td><td>AUXILIAR</td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-05-06 16:28:40', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-09 14:00:26', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-05-09 14:29:37', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de auxiliarp1@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2022-05-10 13:25:00', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'auxiliarp1@gmail.com se desconectó', '', 2, '2022-05-10 13:27:14', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-10 13:27:28', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Actualizar información Escritorio en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-05-10 13:28:40', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-05-10 13:28:57', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de auxiliarp1@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2022-05-10 13:29:02', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'auxiliarp1@gmail.com se desconectó', '', 2, '2022-05-10 13:36:57', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-10 13:37:15', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-10 16:47:27', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-11 12:33:11', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-11 18:01:32', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/admpartes/add-save', 'Añadir nueva información 61 en Generar parte', '', 1, '2022-05-11 18:57:09', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-12 14:54:16', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/partes/add-save', 'Añadir nueva información  en PARTESSSS', '', 1, '2022-05-12 16:49:04', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-16 12:38:03', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información ejemplo en Menu Management', '', 1, '2022-05-16 14:04:04', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información ejemplo2 en Menu Management', '', 1, '2022-05-16 14:05:29', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-16 17:26:13', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-16 18:15:53', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Añadir nueva información PARTE DIARIO en Statistic Builder', '', 1, '2022-05-16 19:13:07', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-18 19:37:30', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/add-save', 'Añadir nueva información 61 en LICENCIAS', '', 1, '2022-05-18 19:42:44', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/edit-save/3', 'Actualizar información 61 en LICENCIAS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tiempolicenciacomision</td><td>8</td><td>1</td></tr><tr><td>f_desde</td><td>2022-05-09</td><td>2022-05-05</td></tr></tbody></table>', 1, '2022-05-18 19:43:31', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/edit-save/3', 'Actualizar información 61 en LICENCIAS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-05-18 19:43:57', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/edit-save/3', 'Actualizar información 61 en LICENCIAS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-05-18 19:47:15', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/add-save', 'Añadir nueva información 61 en LICENCIAS', '', 1, '2022-05-18 19:50:21', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-23 13:14:01', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-05-25 17:10:54', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/29', 'Eliminar información ejemplo2 en Menu Management', '', 1, '2022-05-25 17:12:02', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/28', 'Eliminar información ejemplo en Menu Management', '', 1, '2022-05-25 17:12:08', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Actualizar información Generar parte en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-05-25 17:12:30', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Actualizar información REGISTRO VACACIONES en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-05-25 17:12:46', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/27', 'Actualizar información PARTESSSS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2022-05-25 17:13:04', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 12:28:28', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 12:28:46', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/31', 'Eliminar información Generar parte en Module Generator', '', 1, '2022-06-03 12:58:00', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/32', 'Eliminar información PARTESSSS en Module Generator', '', 1, '2022-06-03 12:58:08', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/30', 'Eliminar información REGISTRO VACACIONES en Module Generator', '', 1, '2022-06-03 12:58:19', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/26', 'Actualizar información 48 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>ACHACACHI</td><td>IGM-ACHACACHI</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 13:14:28', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/27', 'Actualizar información 137 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>ACHACACHI</td><td>IGM-ACHACACHI</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 13:14:47', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/23', 'Actualizar información 61 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>CARANAVI</td><td>IGM-CARANAVI</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 13:15:00', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/24', 'Actualizar información 336 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>TUPIZA</td><td>IGM-TUPIZA</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 13:15:12', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/25', 'Actualizar información 445 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>TUPIZA</td><td>IGM-TUPIZA</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 13:15:23', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/33', 'Eliminar información ACHACACHI en Module Generator', '', 1, '2022-06-03 13:18:44', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/3', 'Actualizar información SANTA CRUZ en Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Distrito Santa Cruz</td><td>SANTA CRUZ</td></tr><tr><td>password</td><td>$2y$10$dvzW8WfpS1YqkqzZy3cYpOjEyu6R7DA4bu7ewoBb3rxyQliNuHDlO</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 13:36:13', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 13:47:28', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de santacruz@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-06-03 13:47:43', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com se desconectó', '', 3, '2022-06-03 13:48:56', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 13:49:10', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/add-save', 'Añadir nueva información 552 en DISTRITOS', '', 1, '2022-06-03 13:50:48', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 13:51:19', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de santacruz@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-06-03 13:52:04', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com se desconectó', '', 3, '2022-06-03 14:00:04', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 14:00:16', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/edit-save/28', 'Actualizar información 422 en GESTIONES ANTERIORES', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-CENTRAL</td><td>CENTRAL</td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:06:50', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/edit-save/29', 'Actualizar información 422 en GESTIONES ANTERIORES', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-CENTRAL</td><td>CENTRAL</td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:06:59', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosanteriores/edit-save/30', 'Actualizar información 422 en GESTIONES ANTERIORES', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-CENTRAL</td><td>CENTRAL</td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:07:08', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/26', 'Actualizar información 48 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-ACHACACHI</td><td>ACHACACHI</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:08:27', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/27', 'Actualizar información 137 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-ACHACACHI</td><td>ACHACACHI</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:08:42', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/23', 'Actualizar información 61 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-CARANAVI</td><td>CARANAVI</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:09:00', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/33', 'Actualizar información 552 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-SANTA CRUZ</td><td>SANTA CRUZ</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:09:12', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/24', 'Actualizar información 336 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-TUPIZA</td><td>TUPIZA</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:09:26', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinos/edit-save/25', 'Actualizar información 445 en DISTRITOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>distrito</td><td>IGM-TUPIZA</td><td>TUPIZA</td></tr><tr><td>departamento</td><td></td><td></td></tr><tr><td>especializacion</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 14:09:49', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 14:10:18', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de santacruz@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-06-03 14:10:35', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com se desconectó', '', 3, '2022-06-03 14:27:34', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 14:28:11', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información ACHACACHI en Users Management', '', 1, '2022-06-03 14:34:36', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 14:34:46', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-03 14:35:01', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-03 14:35:47', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 14:36:07', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:02:26', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:04:35', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/6', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:05:13', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:06:12', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/7', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:06:40', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/5', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:06:44', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/4', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:06:50', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:07:07', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:07:29', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/8', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:08:49', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/9', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:08:53', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:09:03', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/10', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:12:21', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:12:45', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:13:01', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:14:57', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/13', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:15:16', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 15:15:39', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Actualizar información DISTRITOS IGM en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-search</td><td>fa fa-users</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:23:58', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información CENTRAL en Users Management', '', 1, '2022-06-03 15:25:59', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 15:26:09', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de central@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-06-03 15:26:24', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosditritos', 'Intentar ver :name en DISTRITOS IGM', '', 7, '2022-06-03 15:26:28', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'central@gmail.com se desconectó', '', 7, '2022-06-03 15:26:38', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 15:26:52', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Actualizar información PERSONAL DESTINADO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>DISTRITOS IGM</td><td>PERSONAL DESTINADO</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:28:43', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 15:28:50', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de central@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-06-03 15:29:02', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'central@gmail.com se desconectó', '', 7, '2022-06-03 15:29:37', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 15:29:51', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Actualizar información DISTRITOS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-sitemap</td><td>fa fa-users</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:31:58', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Actualizar información PERSONAL DESTINADO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>DISTRITOS</td><td>PERSONAL DESTINADO</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:32:37', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Actualizar información DISTRITOS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>PERSONAL DESTINADO</td><td>DISTRITOS</td></tr><tr><td>icon</td><td>fa fa-users</td><td>fa fa-sitemap</td></tr><tr><td>parent_id</td><td>15</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:33:06', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 15:33:36', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-03 15:33:46', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-03 15:34:26', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 15:34:38', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Actualizar información PERSONAL DESTINADO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:40:34', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Actualizar información PERSONAL en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:42:18', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 15:42:34', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de santacruz@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-06-03 15:42:53', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosditritos', 'Intentar ver :name en DISTRITOS IGM', '', 3, '2022-06-03 15:43:01', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com se desconectó', '', 3, '2022-06-03 15:43:24', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 15:43:59', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Actualizar información DESTINOS Y CARGOS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:45:36', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Actualizar información CENTRAL en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>15</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:45:49', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Actualizar información DISTRITOS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>15</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:46:03', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Actualizar información GESTIONES ANTERIORES en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>15</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-06-03 15:46:19', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 16:50:39', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información CARANAVI en Users Management', '', 1, '2022-06-03 16:51:40', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 16:51:50', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de caranavi@gmail.com desde la Dirección IP 127.0.0.1', '', 8, '2022-06-03 16:52:00', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'caranavi@gmail.com se desconectó', '', 8, '2022-06-03 18:00:12', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 18:00:24', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Actualizar información AUXILIAR DEPARTAMENTO I en Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Auxiliar DPTOI</td><td>AUXILIAR DEPARTAMENTO I</td></tr><tr><td>password</td><td>$2y$10$agxJY4mFdgYfWhbdc0./zuPZzCBJb1xQLwfkTZo1YHrak9220XMUC</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 18:05:59', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información LA PAZ en Users Management', '', 1, '2022-06-03 18:10:19', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información COCHABAMBA en Users Management', '', 1, '2022-06-03 18:11:15', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información ORURO en Users Management', '', 1, '2022-06-03 18:11:49', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información TARIJA en Users Management', '', 1, '2022-06-03 18:12:27', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información POTOSI en Users Management', '', 1, '2022-06-03 18:13:11', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información SUCRE en Users Management', '', 1, '2022-06-03 18:13:44', NULL),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información TRINIDAD en Users Management', '', 1, '2022-06-03 18:14:30', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información COBIJA en Users Management', '', 1, '2022-06-03 18:15:02', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información YACUIBA en Users Management', '', 1, '2022-06-03 18:15:47', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información TUPIZA en Users Management', '', 1, '2022-06-03 18:16:23', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información CAMIRI en Users Management', '', 1, '2022-06-03 18:16:51', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información RIBERALTA en Users Management', '', 1, '2022-06-03 18:17:22', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información PUERTO SUAREZ en Users Management', '', 1, '2022-06-03 18:17:59', NULL),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información CHULUMANI en Users Management', '', 1, '2022-06-03 18:18:34', NULL),
(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Eliminar la imagen de AUXILIAR DEPARTAMENTO I en Users Management', '', 1, '2022-06-03 18:22:42', NULL),
(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Actualizar información AUXILIAR DEPARTAMENTO I en Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2022-06/logo.png</td></tr><tr><td>email</td><td>auxiliarp1@gmail.com</td><td>auxiliar@gmail.com</td></tr><tr><td>password</td><td>$2y$10$agxJY4mFdgYfWhbdc0./zuPZzCBJb1xQLwfkTZo1YHrak9220XMUC</td><td>$2y$10$RjjxSL7EoqOHCr4xUkTET.MhzsyGm3.n4oIIN7jucuggvefI4HQYy</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-03 18:23:10', NULL),
(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 18:23:40', NULL),
(353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de lapaz@gmail.com desde la Dirección IP 127.0.0.1', '', 9, '2022-06-03 18:23:51', NULL),
(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'lapaz@gmail.com se desconectó', '', 9, '2022-06-03 18:24:19', NULL),
(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 18:24:35', NULL),
(356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 18:27:04', NULL),
(357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de santacruz@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-06-03 18:27:17', NULL),
(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'santacruz@gmail.com se desconectó', '', 3, '2022-06-03 18:27:38', NULL),
(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 18:27:53', NULL),
(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 18:31:49', NULL),
(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de central@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-06-03 18:32:05', NULL),
(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'central@gmail.com se desconectó', '', 7, '2022-06-03 18:43:23', NULL),
(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 18:43:38', NULL),
(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 18:50:10', NULL),
(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 18:50:11', NULL),
(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 18:50:54', NULL),
(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/delete/18', 'Eliminar información  en VACACIONES PERSONAL', '', 1, '2022-06-03 18:51:27', NULL),
(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 19:10:13', NULL),
(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 19:11:06', NULL),
(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 19:18:35', NULL),
(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 19:37:03', NULL),
(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de lapaz@gmail.com desde la Dirección IP 127.0.0.1', '', 9, '2022-06-03 19:37:16', NULL),
(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'lapaz@gmail.com se desconectó', '', 9, '2022-06-03 19:38:06', NULL),
(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 19:38:25', NULL),
(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Actualizar información Escritorio en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-dashboard</td><td>fa fa-tablet</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2022-06-03 19:43:52', NULL),
(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 19:43:58', NULL),
(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de auxiliar@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2022-06-03 19:44:42', NULL),
(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosditritos', 'Intentar ver :name en DISTRITOS IGM', '', 2, '2022-06-03 19:45:15', NULL),
(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosditritos', 'Intentar ver :name en DISTRITOS IGM', '', 2, '2022-06-03 19:45:27', NULL),
(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosditritos', 'Intentar ver :name en DISTRITOS IGM', '', 2, '2022-06-03 19:45:42', NULL),
(381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/destinosditritos', 'Intentar ver :name en DISTRITOS IGM', '', 2, '2022-06-03 19:46:21', NULL),
(382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'auxiliar@gmail.com se desconectó', '', 2, '2022-06-03 19:46:33', NULL),
(383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 19:46:46', NULL),
(384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-03 19:48:44', NULL),
(385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de auxiliar@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2022-06-03 19:48:51', NULL),
(386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'auxiliar@gmail.com se desconectó', '', 2, '2022-06-03 19:52:25', NULL),
(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 19:52:37', NULL),
(388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Actualizar información Escritorio en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>statistic_builder/show/parte-personal</td><td>statistic_builder/show/parte-diario</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2022-06-03 19:56:16', NULL),
(389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 20:25:00', NULL),
(390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Actualizar información Escritorio en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>statistic_builder/show/parte-diario</td><td>statistic_builder/show/parte-personal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2022-06-03 20:26:52', NULL),
(391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-03 20:34:46', NULL),
(392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de lapaz@gmail.com desde la Dirección IP 127.0.0.1', '', 9, '2022-06-06 12:40:56', NULL),
(393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'lapaz@gmail.com se desconectó', '', 9, '2022-06-06 12:43:59', NULL),
(394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-06 12:45:39', NULL),
(395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-06 12:51:30', NULL),
(396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-06 12:56:54', NULL),
(397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de lapaz@gmail.com desde la Dirección IP 127.0.0.1', '', 9, '2022-06-06 12:57:06', NULL),
(398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'lapaz@gmail.com se desconectó', '', 9, '2022-06-06 13:00:30', NULL),
(399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-06 13:00:48', NULL),
(400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-07 13:38:44', NULL),
(401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/Controlfaltaatrasos/add-save', 'Añadir nueva información 61 en FALTAS', '', 1, '2022-06-07 18:42:01', NULL),
(402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-08 14:19:22', NULL),
(403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/36', 'Eliminar información PERMISOS en Module Generator', '', 1, '2022-06-08 15:02:38', NULL),
(404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Actualizar información VACACIONES en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>REGISTRO</td><td>VACACIONES</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-06-08 15:10:31', NULL),
(405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/34', 'Actualizar información PERMISOS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-folder</td><td>fa fa-clock-o</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-06-08 15:11:16', NULL),
(406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'http://127.0.0.1:8000/admin/Permisos/add-save', 'Añadir nueva información  en PERMISOS', '', 1, '2022-06-08 15:12:02', NULL),
(407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-15 13:58:24', NULL),
(408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-20 13:47:05', NULL),
(409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Guardias/add-save', 'Añadir nueva información 433 en GUARDIA', '', 1, '2022-06-20 14:09:10', NULL),
(410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Guardias/add-save', 'Añadir nueva información 623 en GUARDIA', '', 1, '2022-06-20 15:22:41', NULL),
(411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-06-20 18:51:28', NULL),
(412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Controlfaltaatrasos/add-save', 'Añadir nueva información 298 en FALTAS', '', 1, '2022-06-20 18:58:50', NULL),
(413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Permisos/add-save', 'Añadir nueva información  en PERMISOS', '', 1, '2022-06-20 19:27:28', NULL),
(414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Admlicencia/add-save', 'Añadir nueva información 28 en LICENCIAS', '', 1, '2022-06-20 19:37:38', NULL),
(415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/AddComisiones/add-save', 'Añadir nueva información 426 en COMISIONES', '', 1, '2022-06-20 19:46:13', NULL),
(416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-22 14:59:40', NULL),
(417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Controlfaltaatrasos/add-save', 'Añadir nueva información 422 en FALTAS', '', 1, '2022-06-22 15:00:44', NULL),
(418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-22 15:04:45', NULL),
(419, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-22 15:04:58', NULL),
(420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-24 13:30:34', NULL),
(421, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 6, '2022-06-24 13:31:23', NULL),
(422, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Permisos', 'Intentar ver :name en PERMISOS', '', 6, '2022-06-24 14:12:17', NULL),
(423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Permisos', 'Intentar ver :name en PERMISOS', '', 6, '2022-06-24 14:17:05', NULL),
(424, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Permisos', 'Intentar ver :name en PERMISOS', '', 6, '2022-06-24 14:31:03', NULL),
(425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-27 15:12:59', NULL),
(426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-27 15:14:19', NULL),
(427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de caranavi@gmail.com desde la Dirección IP 127.0.0.1', '', 8, '2022-06-27 15:14:34', NULL),
(428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'caranavi@gmail.com se desconectó', '', 8, '2022-06-27 15:17:19', NULL),
(429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-27 15:17:34', NULL),
(430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-27 17:25:11', NULL),
(431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' se desconectó', '', NULL, '2022-06-27 17:25:12', NULL),
(432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de central@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-06-27 17:25:28', NULL),
(433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-28 12:20:03', NULL),
(434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Añadir nueva información PARTE ACHACACHI en Statistic Builder', '', 1, '2022-06-28 13:23:25', NULL),
(435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información partessssss en Menu Management', '', 1, '2022-06-28 16:18:17', NULL),
(436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Actualizar información partessssss en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-28 16:18:44', NULL),
(437, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-28 16:21:07', NULL),
(438, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-28 16:21:26', NULL),
(439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-28 16:21:48', NULL),
(440, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-28 16:22:00', NULL),
(441, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Actualizar información partessssss en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-06-28 16:30:23', NULL),
(442, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Actualizar información Escritorio en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>15</td><td></td></tr></tbody></table>', 1, '2022-06-28 16:30:57', NULL),
(443, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Actualizar información partessssss en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-06-28 16:32:10', NULL),
(444, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información GENERAR PARTE en Menu Management', '', 1, '2022-06-28 16:33:40', NULL),
(445, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/37', 'Actualizar información GENERAR PARTE en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2022-06-28 16:34:19', NULL),
(446, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-28 16:34:55', NULL),
(447, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-28 16:35:15', NULL),
(448, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-28 16:35:32', NULL),
(449, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-28 16:35:48', NULL),
(450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Actualizar información partessssss en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2022-06-28 16:37:15', NULL),
(451, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/37', 'Actualizar información GENERAR PARTE en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-06-28 16:37:50', NULL),
(452, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/edit-save/7', 'Actualizar información PARTE DIARIO en Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>parte-diario</td><td></td></tr></tbody></table>', 1, '2022-06-28 16:38:30', NULL),
(453, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-28 16:54:33', NULL),
(454, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-28 16:56:46', NULL),
(455, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información iiiiiiiiiiiiiiiiiiiiiiiiiii en Menu Management', '', 1, '2022-06-28 17:00:01', NULL),
(456, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/38', 'Actualizar información iiiiiiiiiiiiiiiiiiiiiiiiiii en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-28 17:00:26', NULL),
(457, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-28 17:22:32', NULL),
(458, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-28 17:22:50', NULL),
(459, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-28 17:30:49', NULL),
(460, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-28 17:31:21', NULL),
(461, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-28 17:31:30', NULL),
(462, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-28 17:31:48', NULL),
(463, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-28 17:52:05', NULL),
(464, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-28 17:52:39', NULL),
(465, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/38', 'Actualizar información iiiiiiiiiiiiiiiiiiiiiiiiiii en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-28 17:54:11', NULL),
(466, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/38', 'Actualizar información iiiiiiiiiiiiiiiiiiiiiiiiiii en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-28 17:54:35', NULL),
(467, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/38', 'Eliminar información iiiiiiiiiiiiiiiiiiiiiiiiiii en Menu Management', '', 1, '2022-06-28 18:28:16', NULL),
(468, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/38', 'Eliminar información  en Menu Management', '', 1, '2022-06-28 18:28:17', NULL),
(469, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/36', 'Eliminar información partessssss en Menu Management', '', 1, '2022-06-28 18:28:23', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(470, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/37', 'Eliminar información GENERAR PARTE en Menu Management', '', 1, '2022-06-28 18:28:35', NULL),
(471, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información PARTE DIARIO en Menu Management', '', 1, '2022-06-28 18:29:31', NULL),
(472, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/39', 'Actualizar información PARTE DIARIO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-28 18:29:50', NULL),
(473, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/39', 'Actualizar información PARTE DIARIO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-28 18:35:49', NULL),
(474, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/39', 'Actualizar información PARTE DIARIO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2022-06-28 18:36:46', NULL),
(475, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/39', 'Actualizar información PARTE DIARIO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Statistic</td><td>Module</td></tr><tr><td>path</td><td>statistic_builder/show/</td><td></td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2022-06-28 18:38:36', NULL),
(476, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/39', 'Actualizar información PARTE DIARIO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Module</td><td>Statistic</td></tr><tr><td>path</td><td></td><td>statistic_builder/show/</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2022-06-28 18:39:13', NULL),
(477, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información PARTE ACHACACHI en Menu Management', '', 1, '2022-06-28 18:40:05', NULL),
(478, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/39', 'Eliminar información PARTE DIARIO en Menu Management', '', 1, '2022-06-28 18:40:28', NULL),
(479, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/40', 'Eliminar información PARTE ACHACACHI en Menu Management', '', 1, '2022-06-28 18:49:50', NULL),
(480, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 12:19:21', NULL),
(481, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información GENERAR en Menu Management', '', 1, '2022-06-29 12:34:30', NULL),
(482, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/32', 'Actualizar información FALTAS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminControlfaltaatrasosControllerGetIndex</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-06-29 12:36:09', NULL),
(483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 12:37:54', NULL),
(484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 12:38:09', NULL),
(485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 12:42:57', NULL),
(486, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-29 12:43:15', NULL),
(487, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-29 12:43:56', NULL),
(488, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 12:44:22', NULL),
(489, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 12:44:51', NULL),
(490, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 12:46:51', NULL),
(491, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/32', 'Actualizar información FALTAS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td></td><td>Controlfaltaatrasos</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-06-29 12:50:18', NULL),
(492, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información PARTE DIARIO en Menu Management', '', 1, '2022-06-29 12:51:19', NULL),
(493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 14:48:30', NULL),
(494, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de caranavi@gmail.com desde la Dirección IP 127.0.0.1', '', 8, '2022-06-29 14:48:41', NULL),
(495, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'caranavi@gmail.com se desconectó', '', 8, '2022-06-29 14:52:37', NULL),
(496, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-29 14:52:52', NULL),
(497, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-29 14:54:56', NULL),
(498, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 14:55:08', NULL),
(499, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de yacuiba@gmail.com desde la Dirección IP 127.0.0.1', '', 17, '2022-06-29 16:18:38', NULL),
(500, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'yacuiba@gmail.com se desconectó', '', 17, '2022-06-29 16:19:56', NULL),
(501, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 16:20:09', NULL),
(502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 16:25:22', NULL),
(503, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 16:25:57', NULL),
(504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 16:38:14', NULL),
(505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de central@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-06-29 16:38:37', NULL),
(506, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Controlfaltaatrasos', 'Intentar ver :name en FALTAS', '', 7, '2022-06-29 16:38:42', NULL),
(507, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'central@gmail.com se desconectó', '', 7, '2022-06-29 16:39:25', NULL),
(508, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de auxiliar@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2022-06-29 16:40:21', NULL),
(509, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'auxiliar@gmail.com se desconectó', '', 2, '2022-06-29 16:45:55', NULL),
(510, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 16:54:30', NULL),
(511, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información dptoI en Users Management', '', 1, '2022-06-29 17:58:08', NULL),
(512, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 17:58:23', NULL),
(513, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de dptoI@gmail.com desde la Dirección IP 127.0.0.1', '', 23, '2022-06-29 17:58:56', NULL),
(514, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dptoI@gmail.com se desconectó', '', 23, '2022-06-29 18:00:30', NULL),
(515, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 18:00:46', NULL),
(516, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/23', 'Actualizar información DPTO I en Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>dptoI</td><td>DPTO I</td></tr><tr><td>password</td><td>$2y$10$0ijcB1iL9XoyoWfcWjRyOOejjdCsweBZ7ZuLDxBgnfhJmmt0lgE1q</td><td>$2y$10$N7nRpvQ7csm2qmJzeqZWF.5qYAqVJY4zx3jbTsJ8zS7zXbHeHcZBa</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-06-29 18:03:02', NULL),
(517, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 18:04:33', NULL),
(518, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de dptoI@gmail.com desde la Dirección IP 127.0.0.1', '', 23, '2022-06-29 18:04:45', NULL),
(519, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dptoI@gmail.com se desconectó', '', 23, '2022-06-29 18:22:38', NULL),
(520, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-29 18:23:03', NULL),
(521, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-29 18:28:20', NULL),
(522, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de dptoI@gmail.com desde la Dirección IP 127.0.0.1', '', 23, '2022-06-29 18:28:32', NULL),
(523, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dptoI@gmail.com se desconectó', '', 23, '2022-06-29 18:31:39', NULL),
(524, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 18:32:03', NULL),
(525, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información CENTRAL DPTO V en Users Management', '', 1, '2022-06-29 18:33:40', NULL),
(526, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-06-29 18:33:50', NULL),
(527, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de dptoV@gmail.com desde la Dirección IP 127.0.0.1', '', 24, '2022-06-29 18:34:05', NULL),
(528, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dptoV@gmail.com se desconectó', '', 24, '2022-06-29 19:28:31', NULL),
(529, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' se desconectó', '', NULL, '2022-06-29 19:28:33', NULL),
(530, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de dptoI@gmail.com desde la Dirección IP 127.0.0.1', '', 23, '2022-06-29 19:29:10', NULL),
(531, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dptoI@gmail.com se desconectó', '', 23, '2022-06-29 19:39:34', NULL),
(532, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de dptoV@gmail.com desde la Dirección IP 127.0.0.1', '', 24, '2022-06-29 19:39:47', NULL),
(533, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'dptoV@gmail.com se desconectó', '', 24, '2022-06-29 19:46:09', NULL),
(534, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-06-29 19:46:27', NULL),
(535, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-06-29 19:51:54', NULL),
(536, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de central@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-06-29 19:52:06', NULL),
(537, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-01 13:38:36', NULL),
(538, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/edit-save/8', 'Actualizar información PARTE en Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>PARTE ACHACACHI</td><td>PARTE</td></tr><tr><td>slug</td><td>parte-achacachi</td><td></td></tr></tbody></table>', 1, '2022-07-01 13:47:08', NULL),
(539, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/35', 'Actualizar información GUARDIA en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2022-07-01 14:29:59', NULL),
(540, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-07-01 14:33:12', NULL),
(541, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-07-01 14:33:39', NULL),
(542, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Guardias', 'Intentar ver :name en GUARDIA', '', 6, '2022-07-01 14:33:48', NULL),
(543, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-07-01 14:34:25', NULL),
(544, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-01 14:34:36', NULL),
(545, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información GENERAR PARTE en Menu Management', '', 1, '2022-07-01 14:38:41', NULL),
(546, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/43', 'Actualizar información GENERAR PARTE en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-07-01 14:39:39', NULL),
(547, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-07-01 14:40:37', NULL),
(548, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de yacuiba@gmail.com desde la Dirección IP 127.0.0.1', '', 17, '2022-07-01 14:40:52', NULL),
(549, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'yacuiba@gmail.com se desconectó', '', 17, '2022-07-01 14:41:09', NULL),
(550, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-01 14:41:25', NULL),
(551, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/43', 'Actualizar información GENERAR PARTE en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>green</td><td>aqua</td></tr></tbody></table>', 1, '2022-07-01 14:42:05', NULL),
(552, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-07-01 14:42:22', NULL),
(553, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-07-01 14:42:36', NULL),
(554, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-07-01 14:42:48', NULL),
(555, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-01 14:43:14', NULL),
(556, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Añadir nueva información GENERAR PARTE en Statistic Builder', '', 1, '2022-07-01 14:44:57', NULL),
(557, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/43', 'Actualizar información GENERAR PARTE en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Module</td><td>Statistic</td></tr><tr><td>path</td><td></td><td>statistic_builder/show/</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-07-01 14:45:27', NULL),
(558, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-07-01 14:54:30', NULL),
(559, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-07-01 14:54:45', NULL),
(560, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Permisos', 'Intentar ver :name en PERMISOS', '', 6, '2022-07-01 14:55:38', NULL),
(561, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Guardias', 'Intentar ver :name en GUARDIA', '', 6, '2022-07-01 14:56:34', NULL),
(562, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-07-01 14:56:48', NULL),
(563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-01 14:57:06', NULL),
(564, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-07-01 15:01:45', NULL),
(565, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de achacachi@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2022-07-01 15:01:59', NULL),
(566, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'achacachi@gmail.com se desconectó', '', 6, '2022-07-01 15:05:42', NULL),
(567, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-01 15:05:52', NULL),
(568, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Guardias/add-save', 'Añadir nueva información 439 en GUARDIA', '', 1, '2022-07-01 19:17:56', NULL),
(569, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-07-01 19:19:02', NULL),
(570, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de central@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-07-01 19:19:34', NULL),
(571, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Guardias', 'Intentar ver :name en GUARDIA', '', 7, '2022-07-01 19:19:48', NULL),
(572, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Controlfaltaatrasos/add-save', 'Añadir nueva información 298 en FALTAS', '', 7, '2022-07-01 19:20:13', NULL),
(573, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'central@gmail.com se desconectó', '', 7, '2022-07-01 19:20:28', NULL),
(574, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-01 19:20:45', NULL),
(575, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/Guardias/add-save', 'Añadir nueva información 623 en GUARDIA', '', 1, '2022-07-01 19:21:33', NULL),
(576, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/vacacionesGral/add-save', 'Añadir nueva información  en VACACIONES PERSONAL', '', 1, '2022-07-01 19:23:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'SOF. SGTO.', 'Route', 'AdminPersonasControllerGetIndex', 'normal', 'fa fa-user', 6, 1, 0, 1, 3, '2022-03-21 19:41:48', '2022-05-03 21:02:42'),
(2, 'VACACIONES', 'Route', 'AdminVacacionesControllerGetIndex', 'normal', 'fa fa-check-square-o', 12, 1, 0, 1, 2, '2022-03-22 21:19:39', '2022-06-08 15:10:30'),
(4, 'ADM_VACACION - PERMISO', 'Route', 'AdminTVacacionsControllerGetIndex', 'normal', 'fa fa-clock-o', 12, 1, 0, 1, 1, '2022-03-24 22:28:30', '2022-05-01 01:43:56'),
(5, 'PERSONAL DESTINADO', 'Route', 'AdminDestinosControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 5, '2022-03-28 19:08:55', '2022-06-03 15:40:33'),
(6, 'PERSONAL', 'Module', 'users', 'normal', 'fa fa-users', 0, 1, 0, 1, 1, '2022-03-29 21:50:27', '2022-06-03 15:42:17'),
(9, 'OFICIALES', 'Route', 'AdminPersonas1ControllerGetIndex', 'normal', 'fa fa-user', 6, 1, 0, 1, 2, '2022-03-29 22:17:30', '2022-05-03 21:02:16'),
(10, 'EMPLEADOS CIVILES', 'Route', 'AdminAddEECCControllerGetIndex', 'normal', 'fa fa-user', 6, 1, 0, 1, 4, '2022-03-29 23:21:30', '2022-05-03 21:02:54'),
(11, 'CONTRATADOS', 'Route', 'AdminAddContratadoControllerGetIndex', 'normal', 'fa fa-user', 6, 1, 0, 1, 5, '2022-03-29 23:24:32', '2022-05-03 21:03:06'),
(12, 'PERMISOS Y VACACIONES', 'Module', 'vacacionesGral', 'normal', 'fa fa-plane', 0, 1, 0, 1, 3, '2022-03-31 16:34:03', '2022-05-03 21:10:32'),
(13, 'GRADOS', 'Route', 'AdminGradosControllerGetIndex', 'normal', 'fa fa-tags', 6, 1, 0, 1, 1, '2022-03-31 17:32:19', '2022-04-12 19:28:59'),
(14, 'CENTRAL', 'Route', 'AdminDestinoscentralControllerGetIndex', 'normal', 'fa fa-map-marker', 15, 1, 0, 1, 1, '2022-03-31 22:44:45', '2022-06-03 15:45:49'),
(15, 'DESTINOS Y CARGOS', 'Module', 'destinoscentral', 'normal', 'fa fa-map-marker', 0, 1, 0, 1, 2, '2022-03-31 22:58:32', '2022-06-03 15:45:35'),
(16, 'SGM', 'Route', 'AdminAddsgmControllerGetIndex', 'normal', 'fa fa-user', 6, 1, 0, 1, 6, '2022-03-31 23:23:29', '2022-05-03 21:03:19'),
(17, 'GESTIONES ANTERIORES', 'Route', 'AdminDestinosanterioresControllerGetIndex', 'normal', 'fa fa-folder', 15, 1, 0, 1, 3, '2022-04-11 23:07:51', '2022-06-03 15:46:18'),
(19, 'REGISTRO DE LICENCIAS', 'Route', 'AdminAdmlicenciaControllerGetIndex', 'normal', 'fa fa-check-square-o', 23, 1, 0, 1, 2, '2022-04-14 19:02:30', '2022-05-03 21:11:31'),
(21, 'REGISTRO DE COMISIONES', 'Route', 'AdminAddComisionesControllerGetIndex', 'normal', 'fa fa-check-square-o', 23, 1, 0, 1, 3, '2022-04-14 19:12:25', '2022-05-03 21:11:50'),
(22, 'ADM_LICENCIAS', 'Route', 'AdminTlicenciasControllerGetIndex', 'normal', 'fa fa-clock-o', 23, 1, 0, 1, 1, '2022-04-14 19:15:02', '2022-05-01 01:44:24'),
(23, 'COMISIONES Y LICENCIAS', 'Module', 'tlicencias', 'normal', 'fa fa-briefcase', 0, 1, 0, 1, 4, '2022-04-28 23:41:16', '2022-05-03 21:11:13'),
(25, 'Escritorio', 'Statistic', 'statistic_builder/show/parte-personal', 'normal', 'fa fa-tablet', 15, 0, 1, 1, 1, '2022-05-05 17:30:55', '2022-06-28 16:30:56'),
(31, 'DISTRITOS', 'Route', 'AdminDestinosditritosControllerGetIndex', 'normal', 'fa fa-sitemap', 15, 1, 0, 1, 2, '2022-06-03 14:39:55', '2022-06-03 15:46:02'),
(32, 'FALTAS', 'Module', 'Controlfaltaatrasos', 'normal', 'fa fa-battery-2', 0, 1, 0, 1, 6, '2022-06-07 18:36:49', '2022-06-29 12:50:17'),
(34, 'PERMISOS', 'Route', 'AdminPermisosControllerGetIndex', 'normal', 'fa fa-clock-o', 12, 1, 0, 1, 3, '2022-06-08 15:03:26', '2022-06-08 15:11:15'),
(35, 'GUARDIA', 'Route', 'AdminGuardiasControllerGetIndex', 'normal', 'fa fa-star', 0, 1, 0, 1, 7, '2022-06-20 14:03:26', '2022-07-01 14:29:58'),
(42, 'PARTE DIARIO', 'Statistic', 'statistic_builder/show/parte-achacachi', 'normal', 'fa fa-music', 0, 1, 1, 1, NULL, '2022-06-29 12:51:18', NULL),
(43, 'GENERAR PARTE', 'Statistic', 'statistic_builder/show/generar-parte', 'aqua', 'fa fa-edit', 0, 1, 0, 1, NULL, '2022-07-01 14:38:41', '2022-07-01 14:45:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(19, 3, 2),
(20, 3, 1),
(22, 7, 1),
(23, 8, 1),
(59, 13, 1),
(60, 18, 1),
(62, 20, 1),
(71, 4, 1),
(72, 22, 1),
(87, 9, 2),
(88, 9, 3),
(89, 9, 1),
(93, 1, 2),
(94, 1, 3),
(95, 1, 1),
(96, 10, 2),
(97, 10, 3),
(98, 10, 1),
(99, 11, 2),
(100, 11, 3),
(101, 11, 1),
(102, 16, 2),
(103, 16, 3),
(104, 16, 1),
(112, 12, 2),
(113, 12, 3),
(114, 12, 1),
(118, 23, 2),
(119, 23, 3),
(120, 23, 1),
(121, 19, 2),
(122, 19, 3),
(123, 19, 1),
(124, 21, 2),
(125, 21, 3),
(126, 21, 1),
(137, 28, 1),
(138, 29, 1),
(139, 26, 1),
(140, 24, 1),
(141, 27, 1),
(142, 30, 1),
(156, 5, 3),
(157, 5, 1),
(158, 6, 2),
(159, 6, 1),
(160, 15, 2),
(161, 15, 1),
(162, 14, 2),
(163, 14, 1),
(164, 31, 2),
(165, 31, 1),
(166, 17, 2),
(167, 17, 1),
(175, 33, 1),
(177, 2, 3),
(178, 2, 2),
(179, 2, 1),
(180, 34, 3),
(181, 34, 2),
(182, 34, 1),
(189, 25, 2),
(190, 25, 1),
(196, 36, 3),
(197, 36, 1),
(198, 37, 3),
(199, 37, 1),
(205, 38, 3),
(206, 38, 2),
(207, 38, 1),
(213, 39, 1),
(214, 40, 1),
(215, 41, 1),
(219, 32, 3),
(220, 32, 2),
(221, 32, 1),
(222, 42, 1),
(223, 35, 3),
(224, 35, 2),
(225, 35, 1),
(232, 43, 3),
(233, 43, 2),
(234, 43, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-03-21 18:13:46', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-03-21 18:13:46', NULL, NULL),
(12, 'SOF. SGTO.', 'fa fa-cog', 'AddSofsgto', 'personas', 'AdminPersonasController', 0, 0, '2022-03-21 19:41:48', NULL, NULL),
(13, 'VACACIONES PERSONAL', 'fa fa-times', 'vacacionesGral', 'vacacions', 'AdminVacacionesController', 0, 0, '2022-03-22 21:19:38', NULL, NULL),
(14, 'VACACION - PERMISO', 'fa fa-times', 't_vacacions', 't_vacacions', 'AdminTVacacionsController', 0, 0, '2022-03-24 22:28:29', NULL, NULL),
(15, 'PERSONAL', 'fa fa-users', 'destinos', 'destinos', 'AdminDestinosController', 0, 0, '2022-03-28 19:08:54', NULL, NULL),
(16, 'OFICIALES', 'fa fa-user', 'personas16', 'personas', 'AdminPersonas16Controller', 0, 0, '2022-03-29 22:04:29', NULL, '2022-03-29 22:07:19'),
(17, 'OFICIALES', 'fa fa-user', 'AddOficiales', 'personas', 'AdminAddOficialesController', 0, 0, '2022-03-29 22:04:47', NULL, '2022-03-29 22:14:45'),
(18, 'OFICIALES', 'fa fa-user', 'AddOficiales', 'personas', 'AdminPersonas1Controller', 0, 0, '2022-03-29 22:17:29', NULL, NULL),
(19, 'EMPLEADOS CIVILES', 'fa fa-user', 'AddEECC', 'personas', 'AdminAddEECCController', 0, 0, '2022-03-29 23:21:30', NULL, NULL),
(20, 'CONTRATADOS', 'fa fa-user-secret', 'AddContratado', 'personas', 'AdminAddContratadoController', 0, 0, '2022-03-29 23:24:31', NULL, NULL),
(21, 'GRADOS', 'fa fa-glass', 'grados', 'grados', 'AdminGradosController', 0, 0, '2022-03-31 17:32:19', NULL, NULL),
(22, 'CENTRAL', 'fa fa-glass', 'destinoscentral', 'destinos', 'AdminDestinoscentralController', 0, 0, '2022-03-31 22:44:45', NULL, NULL),
(23, 'SGM', 'fa fa-user-plus', 'Addsgm', 'personas', 'AdminAddsgmController', 0, 0, '2022-03-31 23:23:29', NULL, NULL),
(24, 'GESTIONES ANTERIORES', 'fa fa-folder', 'destinosanteriores', 'destinos', 'AdminDestinosanterioresController', 0, 0, '2022-04-11 23:07:50', NULL, NULL),
(25, 'RELACION NOMINAL GENERAL', 'fa fa-glass', 'AdmGral', 'personas', 'AdminAdmGralController', 0, 0, '2022-04-14 16:43:47', NULL, '2022-04-14 17:22:08'),
(26, 'LICENCIAS', 'fa fa-glass', 'Admlicencia', 'licencia_comisions', 'AdminAdmlicenciaController', 0, 0, '2022-04-14 19:02:29', NULL, NULL),
(27, 'COMISIONES', 'fa fa-glass', 'AddComisiones', 'licencia_comisions', 'AdminAddComisionesController', 0, 0, '2022-04-14 19:09:55', NULL, '2022-04-14 19:11:51'),
(28, 'COMISIONES', 'fa fa-glass', 'AddComisiones', 'licencia_comisions', 'AdminAddComisionesController', 0, 0, '2022-04-14 19:12:25', NULL, NULL),
(29, 'ADM_LICENCIAS', 'fa fa-glass', 'tlicencias', 'licencias', 'AdminTlicenciasController', 0, 0, '2022-04-14 19:15:01', NULL, NULL),
(30, 'REGISTRO VACACIONES', 'fa fa-glass', 'registrovacacions', 'vacacions', 'AdminRegistrovacacionsController', 0, 0, '2022-05-05 13:37:03', NULL, '2022-06-03 12:58:19'),
(31, 'Generar parte', 'fa fa-users', 'admpartes', 'admpartes', 'AdminAdmpartesController', 0, 0, '2022-05-11 18:37:45', NULL, '2022-06-03 12:58:00'),
(32, 'PARTESSSS', 'fa fa-glass', 'partes', 'partes', 'AdminPartesController', 0, 0, '2022-05-11 19:31:27', NULL, '2022-06-03 12:58:08'),
(33, 'ACHACACHI', 'fa fa-glass', 'AdminDestinosAchacachiController', 'destinos', 'AdminDestinosAchacachiControllerController', 0, 0, '2022-06-03 13:07:16', NULL, '2022-06-03 13:18:44'),
(34, 'DISTRITOS IGM', 'fa fa-search', 'destinosditritos', 'destinos', 'AdminDestinosditritosController', 0, 0, '2022-06-03 14:39:55', NULL, NULL),
(35, 'FALTAS', 'fa fa-battery-2', 'Controlfaltaatrasos', 'faltaatrasos', 'AdminControlfaltaatrasosController', 0, 0, '2022-06-07 18:36:49', NULL, NULL),
(36, 'PERMISOS', 'fa fa-folder', 'vacacions', 'vacacions', 'AdminVacacionsController', 0, 0, '2022-06-08 15:01:56', NULL, '2022-06-08 15:02:38'),
(37, 'PERMISOS', 'fa fa-folder', 'Permisos', 'vacacions', 'AdminPermisosController', 0, 0, '2022-06-08 15:03:26', NULL, NULL),
(38, 'GUARDIA', 'fa fa-star', 'Guardias', 'guardias', 'AdminGuardiasController', 0, 0, '2022-06-20 14:03:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue', '2022-03-21 18:13:50', NULL),
(2, 'DEPARTAMENTO I PERSONAL', 0, 'skin-blue', NULL, NULL),
(3, 'CENTRAL Y DISTRITOS', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(138, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(139, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(140, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(141, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(142, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(143, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(144, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(145, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(146, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(147, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(148, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(149, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(150, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(151, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(152, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(153, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(191, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(192, 1, 1, 1, 1, 1, 1, 36, NULL, NULL),
(193, 1, 1, 1, 1, 1, 1, 37, NULL, NULL),
(194, 1, 1, 1, 1, 1, 1, 38, NULL, NULL),
(195, 1, 1, 1, 0, 0, 3, 28, NULL, NULL),
(196, 1, 1, 0, 0, 0, 3, 35, NULL, NULL),
(197, 0, 1, 0, 0, 0, 3, 38, NULL, NULL),
(198, 1, 1, 1, 0, 0, 3, 26, NULL, NULL),
(199, 1, 0, 1, 0, 0, 3, 15, NULL, NULL),
(200, 1, 1, 1, 0, 0, 3, 13, NULL, NULL),
(201, 1, 1, 1, 1, 0, 2, 22, NULL, NULL),
(202, 1, 1, 1, 1, 0, 2, 28, NULL, NULL),
(203, 1, 1, 1, 1, 0, 2, 20, NULL, NULL),
(204, 1, 1, 1, 1, 0, 2, 34, NULL, NULL),
(205, 1, 1, 1, 1, 0, 2, 19, NULL, NULL),
(206, 1, 1, 1, 1, 0, 2, 35, NULL, NULL),
(207, 1, 1, 1, 1, 0, 2, 24, NULL, NULL),
(208, 1, 1, 1, 1, 0, 2, 38, NULL, NULL),
(209, 1, 1, 1, 1, 0, 2, 26, NULL, NULL),
(210, 1, 1, 1, 1, 0, 2, 18, NULL, NULL),
(211, 1, 1, 1, 1, 0, 2, 15, NULL, NULL),
(212, 1, 1, 1, 1, 0, 2, 23, NULL, NULL),
(213, 1, 1, 1, 1, 0, 2, 12, NULL, NULL),
(214, 1, 1, 1, 1, 0, 2, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-03-21 18:13:47', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-03-21 18:13:47', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2022-05/b9a9aa9c9e2824e54637a8f6440d829b.jpg', 'upload_image', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-03-21 18:13:47', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', NULL, 'text', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-03-21 18:13:47', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', NULL, 'text', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', NULL, 'text', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'SGP-IGM', 'text', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Letter', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-03-21 18:13:47', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2022-05/6a714562ca06861bde8e8e59f950a17c.png', 'upload_image', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2022-05/3f8a7c5940bffe4ed8c84de43b32c640.png', 'upload_image', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-03-21 18:13:47', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-03-21 18:13:47', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'PARTE PERSONAL', 'parte-personal', '2022-05-05 16:42:21', '2022-05-05 16:42:34'),
(7, 'PARTE DIARIO', 'parte-diario', '2022-05-16 19:13:07', '2022-06-28 16:38:30'),
(8, 'PARTE', 'parte-achacachi', '2022-06-28 13:23:25', '2022-07-01 13:47:07'),
(9, 'GENERAR PARTE', 'generar-parte', '2022-07-01 14:44:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(2, 1, 'e337de2452c8695296c84085f8d4ee02', 'smallbox', 'area1', 0, NULL, '{\"name\":\"PERSONAL\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT count(*) from personas\"}', '2022-03-22 21:27:32', NULL),
(3, 1, '52d13f741440af1974abeefe7c1412b8', 'smallbox', 'area2', 0, NULL, '{\"name\":\"OFICIALES\",\"icon\":\"star\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/AddOficiales\",\"sql\":\"SELECT count(*) from personas where escalafon like \\\"OFICIALES\\\"\"}', '2022-03-22 21:37:49', NULL),
(5, 1, '23d5bbd18d79b87322557ab64e7dbf53', 'table', 'area5', 0, NULL, '{\"name\":\"PARTE\",\"sql\":\"select column_grado,column_nombre,column_paterno,column_materno, from view_table_personas\"}', '2022-03-22 21:46:04', NULL),
(7, 3, '0398c4edd927cc6c178656073a04f8ee', 'table', 'area5', 0, NULL, '{\"name\":\"PARTE\",\"sql\":\"select (*) grado, arma, nombre, paterno, materno from personas\"}', '2022-03-23 17:01:50', NULL),
(8, 1, 'd34c4e3780ff71a9b6c7feb7a617c18e', 'smallbox', 'area2', 1, NULL, '{\"name\":\"EMPLEADOS CIVILES\",\"icon\":\"ion-bag\",\"color\":\"bg-aqua\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/AddEECC\",\"sql\":\"SELECT count(*) from personas where escalafon like \\\"EE.CC.\\\"\"}', '2022-03-30 17:46:39', NULL),
(9, 1, '2d2dfb319dcf8843338f6a1632db2e14', 'smallbox', 'area3', 0, NULL, '{\"name\":\"SUBOFICIALES Y SARGENTOS\",\"icon\":\"ion-user\",\"color\":\"bg-yellow\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/AddSofsgto\",\"sql\":\"SELECT count(*) from personas where escalafon like \\\"SOF. - SGTO.\\\"\"}', '2022-03-30 17:46:42', NULL),
(10, 1, '9cef63d273edfb33f1c0c0803acef84d', 'smallbox', 'area3', 1, NULL, '{\"name\":\"PERSONAL CONTRATADO\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/AddContratado\",\"sql\":\"SELECT count(*) from personas where escalafon like \\\"CONTRATADO\\\"\"}', '2022-03-30 17:46:48', NULL),
(11, 1, '5efd22027cdb91a0293c6ff28c695931', 'table', 'area5', 0, NULL, '{\"name\":\"RELACION NOMINAL IGM\",\"sql\":\"SELECT egreso,antiguedad,nombre_completo FROM personas ORDER BY Cnl., Tcnl, My, Sof., ,egreso, antiguedad\"}', '2022-03-30 17:52:35', NULL),
(12, 4, '5c3cc6bc4688cff56e76c07e8d1457fd', 'chartarea', NULL, 0, 'Untitled', NULL, '2022-03-31 23:45:25', NULL),
(13, 4, 'f6048dc30756f8c790d7dc06f0c1e202', 'smallbox', 'area1', 0, NULL, '{\"name\":\"PERSONAL\",\"icon\":\"star\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT count(*) from personas\"}', '2022-03-31 23:45:43', NULL),
(14, 4, 'ee0e468baa7e387fc41dc7d1e292bc0d', 'table', 'area5', 0, NULL, '{\"name\":\"RELACION NOMINAL IGM\",\"sql\":\"SELECT ROW_NUMBER() OVER(\\r\\n ORDER BY antiguedad,egreso) AS fila, \\r\\n *\\r\\nFROM personas;\"}', '2022-04-01 00:01:19', NULL),
(15, 5, 'af99c962c3c43404259f81f07d275e93', 'smallbox', 'area1', 0, NULL, '{\"name\":\"PERSONAL\",\"icon\":\"ion-bag\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"SELECT count(*) from destinos where gestion like 2022\"}', '2022-04-14 17:35:34', NULL),
(16, 5, 'aa10cf44caa835d92e69a3a69c0c08f0', 'smallbox', 'area1', 1, NULL, '{\"name\":\"OFICIALES\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/AddOficiales\",\"sql\":\"SELECT COUNT(*) FROM personas,destinos WHERE (personas.escalafon LIKE \'OFICIALES\' AND personas.id = destinos.persona_id AND destinos.gestion LIKE 2022);\"}', '2022-04-14 17:46:41', NULL),
(17, 5, '6a88d0b46eb629908ceee0b1e8a41914', 'panelarea', NULL, 0, 'Untitled', NULL, '2022-04-14 18:33:17', NULL),
(20, 5, '90869e6467f340e3d4f55e7e193d4ce9', 'table', 'area1', 3, NULL, '{\"name\":\"RELACION NOMINAL IGM\",\"sql\":\"SELECT personas.nombre_completo, destinos.distrito FROM personas,destinos WHERE ( personas.id = destinos.persona_id AND destinos.gestion LIKE 2022) nombre, destino;\"}', '2022-04-14 18:36:52', NULL),
(23, 6, 'fefacdc2f765255678ea55ede8c9696a', 'smallbox', 'area3', 0, NULL, '{\"name\":\"COMISIONES\",\"icon\":\"ion-hammer\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta and motivo like \'Com%\';\"}', '2022-05-05 16:43:09', NULL),
(24, 6, 'e67067d89c02e42e021d2e36544545b5', 'smallbox', 'area4', 0, NULL, '{\"name\":\"VACACIONES\",\"icon\":\"ion-checkmark\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM vacacions WHERE now() BETWEEN f_desde and f_hasta;\"}', '2022-05-05 17:44:15', NULL),
(25, 6, 'e0872bd08f2223b5e8380d5b128247e0', 'table', 'area5', 0, NULL, '{\"name\":\"RELACION NOMINAL IGM\",\"sql\":\"select  personas.nombre_completo from destinos, personas where personas.id like destinos.persona_id and destinos.gestion like \'2022\' and destinos.distrito like \'CENTRAL\' orderby personas.egreso acs\"}', '2022-05-05 17:46:32', NULL),
(26, 6, '705e58207a5e06be23cb2bf9de5a36c5', 'smallbox', 'area2', 0, NULL, '{\"name\":\"LICENCIAS\",\"icon\":\"ion-clipboard\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND motivo != \'Com%\';\"}', '2022-05-05 18:16:20', NULL),
(27, 6, '9ccf798b922ffa3a8653a1c4bf5b2380', 'chartarea', NULL, 0, 'Untitled', NULL, '2022-05-05 18:16:38', NULL),
(28, 6, '2e34f8bf1cecf45e303ff9f613fded0e', 'chartarea', NULL, 0, 'Untitled', NULL, '2022-05-05 18:16:44', NULL),
(29, 6, 'fdf473f795cb91c2c39e235da671d7cd', 'chartarea', NULL, 0, 'Untitled', NULL, '2022-05-05 18:16:48', NULL),
(30, 6, '93ebff754b83a857b4e667f48755458d', 'chartarea', NULL, 0, 'Untitled', NULL, '2022-05-05 18:16:53', NULL),
(32, 6, '353a6888b11b2e22bf841e36a54a8fd7', 'smallbox', 'area1', 0, NULL, '{\"name\":\"EFECTIVO\",\"icon\":\"ion-man\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM destinos WHERE gestion = date(\'Y\');\"}', '2022-05-05 18:27:32', NULL),
(33, 6, 'b881ed0369893fd839c54ad85dbc1b85', 'table', 'area4', 4, NULL, '{\"name\":\"DEMOSTRACI\\u00d3N\",\"sql\":\"SELECT nombre_completo FROM personas JOIN(select motivo FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND motivo != \'Com%\';)\"}', '2022-05-11 12:57:28', NULL),
(40, 6, '46d3358aaac0a8060ddac322aab5b342', 'smallbox', NULL, 0, 'Untitled', NULL, '2022-05-11 13:03:58', NULL),
(43, 6, '557798796e31329c133212c61d7a17d1', 'smallbox', 'area2', 1, NULL, '{\"name\":\"NO DISPONIBLES\",\"icon\":\"ion-close\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select (select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND motivo != \'Com%\')+(select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta and motivo like \'Com%\')+(select COUNT(*) FROM vacacions WHERE now() BETWEEN f_desde and f_hasta)\"}', '2022-05-16 18:17:26', NULL),
(44, 6, '796e0bad748d93ceffb33f8e48a4194d', 'smallbox', 'area3', 2, NULL, '{\"name\":\"DISPONIBLES\",\"icon\":\"ion-checkmark\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select (select COUNT(*) FROM destinos WHERE distrito LIKE \'CENTRAL\' AND gestion = date(\'Y\')) - (select (select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND motivo != \'Com%\')+(select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta and motivo like \'Com%\')+(select COUNT(*) FROM vacacions WHERE now() BETWEEN f_desde and f_hasta));\"}', '2022-05-16 18:23:07', NULL),
(45, 6, 'a5a7effb8417ff43096cc1dc5a71d3b7', 'table', 'area2', 2, NULL, '{\"name\":\"DEMOSTRACI\\u00d3N\",\"sql\":\"SELECT personas.nombre_completo FROM personas, destinos WHERE (destino.distrito LIKE \'CENTRAL\' AND destino.gestion = date(\'Y\'))\"}', '2022-05-16 19:03:13', NULL),
(46, 7, '335cacfdd8feddfabc64edb86f2fd2b8', 'smallbox', 'area1', 0, NULL, '{\"name\":\"EFECTIVO\",\"icon\":\"ion-man\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM destinos WHERE distrito LIKE \'CENTRAL\' AND gestion = date(\'Y\');\"}', '2022-05-16 19:13:22', NULL),
(47, 7, '7d7bd2446f5ef5a01d17bdeb76d2cff0', 'smallbox', 'area3', 0, NULL, '{\"name\":\"LICENCIAS\",\"icon\":\"ion-clipboard\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND motivo != \'Com%\';\"}', '2022-05-16 19:14:32', NULL),
(48, 7, 'b68b13724cc9949e374cebd3d6e636b3', 'smallbox', 'area1', 1, NULL, '{\"name\":\"COMISIONES\",\"icon\":\"ion-hammer\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta and motivo like \'Com%\';\"}', '2022-05-16 19:14:35', NULL),
(49, 7, '0fb08cbbf37f3c8a4cc15f3b124b148e', 'smallbox', 'area2', 2, NULL, '{\"name\":\"VACACIONES\",\"icon\":\"ion-checkmark\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM vacacions WHERE now() BETWEEN f_desde and f_hasta;\"}', '2022-05-16 19:14:38', NULL),
(50, 7, 'b9ae1a118685e7459233fd37ab8087a5', 'smallbox', 'area2', 1, NULL, '{\"name\":\"NO DISPONIBLES\",\"icon\":\"ion-close\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select (select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND motivo != \'Com%\')+(select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta and motivo like \'Com%\')+(select COUNT(*) FROM vacacions WHERE now() BETWEEN f_desde and f_hasta);\"}', '2022-05-16 19:14:44', NULL),
(51, 7, '7aacb79a569177e21c8a4e3a0a0db8d4', 'smallbox', 'area3', 1, NULL, '{\"name\":\"DISPONIBLES\",\"icon\":\"ion-checkmark\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select (select COUNT(*) FROM destinos WHERE distrito LIKE \'CENTRAL\' AND gestion = date(\'Y\')) - (select (select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND motivo != \'Com%\')+(select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta and motivo like \'Com%\')+(select COUNT(*) FROM vacacions WHERE now() BETWEEN f_desde and f_hasta));\"}', '2022-05-16 19:14:46', NULL),
(52, 7, '4668718b2d9e41935aa24aeecb465428', 'table', 'area5', 0, NULL, '{\"name\":\"DEMOSTRACI\\u00d3N\",\"sql\":\"SELECT nombre_completo FROM personas AS [Grado, Nombres y Apellidos]\"}', '2022-05-16 19:45:45', NULL),
(53, 7, '24517258059f825b717abf2822ee2597', 'table', 'area5', 0, NULL, '{\"name\":\"DEMOSTRACI\\u00d3N\",\"sql\":\"select nombre_completo FROM personas, destinos where personas.id = destinos.persona_id and destinos.gestion = YEAR(NOW());\"}', '2022-05-16 20:04:12', NULL),
(54, 6, '0654793d2a430692ca05637ff6479d50', 'table', 'area5', 0, NULL, '{\"name\":\"DEMOSTRACI\\u00d3N\",\"sql\":\"select personas.nombre_completo FROM personas, licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND motivo != \'Com%\' AND licencia_comisions.persona_id = peronas.id\"}', '2022-05-18 19:39:48', NULL),
(55, 7, '251774d128b45047197d3af33398663c', 'smallbox', 'area4', 0, NULL, '{\"name\":\"TOTAL\",\"icon\":\"ion-checkmark\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM destinos WHERE distrito LIKE \'CENTRAL\' AND gestion = date(\'Y\');\"}', '2022-06-03 19:59:08', NULL),
(56, 7, '3eeb3254d0b2ea2057e401639ba10e94', 'smallbox', 'area4', 1, NULL, '{\"name\":\"BAJA MEDICA\",\"icon\":\"add-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta and motivo like \'Com%\';\"}', '2022-06-03 19:59:15', NULL),
(57, 8, 'e2096e00df2f825ea98dd9520ae267ab', 'smallbox', 'area1', 0, NULL, '{\"name\":\"EFECTIVO\",\"icon\":\"ion-man\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM destinos WHERE gestion = date(\'Y\') AND distrito = \'ACHACACHI\';\"}', '2022-06-28 13:24:07', NULL),
(58, 8, '22c015068c97e588a07dd3c7db6107c8', 'smallbox', 'area2', 0, NULL, '{\"name\":\"VACACIONES Y PERMISOS\",\"icon\":\"ion-checkmark\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM vacacions WHERE now() BETWEEN f_desde and f_hasta AND distrito = \'ACHACACHI\';\"}', '2022-06-28 13:25:16', NULL),
(59, 8, 'd4e9e803e52b4d71551971a77392b640', 'smallbox', 'area3', 0, NULL, '{\"name\":\"COMISIONES Y LICENCIAS\",\"icon\":\"ion-hammer\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM licencia_comisions WHERE now() BETWEEN f_desde and f_hasta AND distrito = \'ACHACACHI\'\"}', '2022-06-28 13:27:05', NULL),
(61, 8, '28e006f857f08e3d4c083d8888c12300', 'table', 'area5', 0, NULL, '{\"name\":\"DEMOSTRACI\\u00d3N\",\"sql\":\"select personas.nombre_completo AS \'GRADO, NOMBRE Y APELLIDOS\', vacacions.situacion AS \'SITUACION\' FROM vacacions, personas WHERE now() BETWEEN vacacions.f_desde and vacacions.f_hasta AND vacacions.distrito = \'ACHACACHI\' AND vacacions.persona_id=personas.id \\r\\nUNION\\r\\nselect personas.nombre_completo AS \'GRADO, NOMBRE Y APELLIDOS\', licencia_comisions.motivo AS \'SITUACION\' FROM licencia_comisions, personas WHERE now() BETWEEN licencia_comisions.f_desde and licencia_comisions.f_hasta AND licencia_comisions.distrito = \'ACHACACHI\' AND licencia_comisions.persona_id=personas.id \\r\\nUNION\\r\\nselect personas.nombre_completo AS \'GRADO, NOMBRE Y APELLIDOS\', faltaatrasos.observacion AS \'SITUACION\' FROM faltaatrasos, personas WHERE faltaatrasos.fecha = now() AND faltaatrasos.persona_id=personas.id;\"}', '2022-06-28 14:29:50', NULL),
(63, 8, 'bec7cd0a52cd51875f949a846e2cc115', 'smallbox', 'area4', 0, NULL, '{\"name\":\"FALTAS Y ATRASOS\",\"icon\":\"ion-checkmark\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"select COUNT(*) FROM faltaatrasos, personas WHERE faltaatrasos.fecha = now() AND faltaatrasos.persona_id=personas.id;\"}', '2022-06-28 15:15:51', NULL),
(67, 9, 'fe9998ddbcd1737644454f631f32ad92', 'table', 'area5', 0, NULL, '{\"name\":\"NOVEDADES\",\"sql\":\"select personas.nombre_completo AS \'GRADO, NOMBRE Y APELLIDOS\', vacacions.situacion AS \'SITUACION\' FROM vacacions, personas WHERE now() BETWEEN vacacions.f_desde and vacacions.f_hasta AND vacacions.persona_id=personas.id \\r\\nUNION\\r\\nselect personas.nombre_completo AS \'GRADO, NOMBRE Y APELLIDOS\', licencia_comisions.motivo AS \'SITUACION\' FROM licencia_comisions, personas WHERE now() BETWEEN licencia_comisions.f_desde and licencia_comisions.f_hasta AND licencia_comisions.persona_id=personas.id \\r\\nUNION\\r\\nselect personas.nombre_completo AS \'GRADO, NOMBRE Y APELLIDOS\', faltaatrasos.observacion AS \'SITUACION\' FROM faltaatrasos, personas WHERE faltaatrasos.fecha = now() AND faltaatrasos.persona_id=personas.id\\r\\nUNION\\r\\nselect personas.nombre_completo AS \'GRADO, NOMBRE Y APELLIDOS\', guardias.funcion AS \'SITUACION\' FROM guardias, personas WHERE guardias.fecha = now() AND guardias.persona_id = personas.id;\"}', '2022-07-01 19:13:49', NULL),
(68, 9, '746be17960f222380b87c7905c1b6833', 'panelarea', NULL, 0, 'Untitled', NULL, '2022-07-01 19:13:58', NULL),
(69, 9, '32c83fc917d54206819a888861802d77', 'panelarea', 'area1', 0, NULL, '{\"name\":\"VERIFIQUE LAS NOVEDADES\",\"content\":\"SI TIENES NOVEDADES MODIFIQUE ... ANTES DE GENERAR EL PARTE\"}', '2022-07-01 19:14:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2022-03/logo.png', 'admin@crudbooster.com', '$2y$10$kdw8AaNW/0mkAJotTaMDf.MaFx6v0oyTQzOebISBc8xdVZbzm2YAa', 1, '2022-03-21 18:13:46', '2022-03-29 23:15:40', 'Active'),
(2, 'AUXILIAR DEPARTAMENTO I', 'uploads/1/2022-06/logo.png', 'auxiliar@gmail.com', '$2y$10$RjjxSL7EoqOHCr4xUkTET.MhzsyGm3.n4oIIN7jucuggvefI4HQYy', 2, '2022-05-03 20:47:59', '2022-06-03 18:23:10', NULL),
(3, 'SANTA CRUZ', 'uploads/1/2022-05/santa_cruz.jpg', 'santacruz@gmail.com', '$2y$10$dvzW8WfpS1YqkqzZy3cYpOjEyu6R7DA4bu7ewoBb3rxyQliNuHDlO', 3, '2022-05-03 20:52:09', '2022-06-03 13:36:13', NULL),
(6, 'ACHACACHI', 'uploads/1/2022-06/logo.png', 'achacachi@gmail.com', '$2y$10$i/pK40gpM13c1BS9cbbHRuJMRFY2SEyOXjNenrYV63UmWGe75K9CO', 3, '2022-06-03 14:34:36', NULL, NULL),
(7, 'CENTRAL', 'uploads/1/2022-06/logo.png', 'central@gmail.com', '$2y$10$nipd2HdWxiNNwlH/3/hVN.kZqmv7hQ2NoO4PnLDxVVwv/SZpFWWO.', 3, '2022-06-03 15:25:59', NULL, NULL),
(8, 'CARANAVI', 'uploads/1/2022-06/logo.png', 'caranavi@gmail.com', '$2y$10$oCQcWhRMhGZwPOFY3KZnguxw9xbOwkxOIYzYoH2mxVGP.9AVW.QNa', 3, '2022-06-03 16:51:40', NULL, NULL),
(9, 'LA PAZ', 'uploads/1/2022-06/logo.png', 'lapaz@gmail.com', '$2y$10$0Ra4.3yI9jiYzZNNQSb/0.wFQEk0zrUHB.YbSo2.BURZRSnE7vFoi', 3, '2022-06-03 18:10:19', NULL, NULL),
(10, 'COCHABAMBA', 'uploads/1/2022-06/logo.png', 'cochabamba@gmail.com', '$2y$10$C.1VK3NfVCdV05UH42L4Su2KCMkl0EZBNh38KPdupF4lYRStyloya', 3, '2022-06-03 18:11:15', NULL, NULL),
(11, 'ORURO', 'uploads/1/2022-06/logo.png', 'oruro@gmail.com', '$2y$10$/.DdkJb28qOms6lLpwpHgO2Sp/CR5MYcp.ZKPuV.FpsTckk5zCTsa', 3, '2022-06-03 18:11:49', NULL, NULL),
(12, 'TARIJA', 'uploads/1/2022-06/logo.png', 'tarija@gmail.com', '$2y$10$Ghw6Sx9.EnPEYoSpiT7emuOiAWk98qIZKfj4J7OfY8DFYZ9xDgaKm', 3, '2022-06-03 18:12:27', NULL, NULL),
(13, 'POTOSI', 'uploads/1/2022-06/logo.png', 'potosi@gmail.com', '$2y$10$0jX.ncTQWrQnm6sAHDHh/.h0WrYcQOzT21BRCy34VSTldvm4vf8ie', 3, '2022-06-03 18:13:11', NULL, NULL),
(14, 'SUCRE', 'uploads/1/2022-06/logo.png', 'sucre@gmail.com', '$2y$10$qPNJSDXOnS9DUTget6d3GOhXWjNaS2bF822C3oQsVfCDucB6Onqmy', 3, '2022-06-03 18:13:44', NULL, NULL),
(15, 'TRINIDAD', 'uploads/1/2022-06/logo.png', 'trinidad@gmail.com', '$2y$10$MxOsZtHDUH6HDeHNFvemJOuzxrUwL18kd6PERiMNNCv08FF4AD2Z2', 3, '2022-06-03 18:14:30', NULL, NULL),
(16, 'COBIJA', 'uploads/1/2022-06/logo.png', 'cobija@gmail.com', '$2y$10$DHYDQIrSlTyQDFJZdJQjQeeZ7m0p6idJsdNi9q73Ftsj.27zbvRSu', 3, '2022-06-03 18:15:02', NULL, NULL),
(17, 'YACUIBA', 'uploads/1/2022-06/logo.png', 'yacuiba@gmail.com', '$2y$10$JY364vXm63crGXEiMcZzYeNvRm9Vw.sl8Mgp.IC8kn.8qftIJz3F2', 3, '2022-06-03 18:15:47', NULL, NULL),
(18, 'TUPIZA', 'uploads/1/2022-06/logo.png', 'tupiza@gmail.com', '$2y$10$5D4UG576i6WW69s9TK4hd.zyhIbmrcPKf8X0PIffhEF.r4p3YXjCe', 3, '2022-06-03 18:16:23', NULL, NULL),
(19, 'CAMIRI', 'uploads/1/2022-06/logo.png', 'camiri@gmail.com', '$2y$10$GjB9BT579Z.mJLscYSOhEey6JowOjHXhv/OCelngstDaQjRTZZPlO', 3, '2022-06-03 18:16:51', NULL, NULL),
(20, 'RIBERALTA', 'uploads/1/2022-06/logo.png', 'riberalta@gmail.com', '$2y$10$LEFYl5S5OAU71E8FnKnymOta25SpiNlLtwgmgALQSYHYHgB9p94g.', 3, '2022-06-03 18:17:21', NULL, NULL),
(21, 'PUERTO SUAREZ', 'uploads/1/2022-06/logo.png', 'puertosuarez@gmail.com', '$2y$10$WlZWdpaWB8GB.Asr.Fr.VeRE8PTmV5gPOIr7r/cMrvkP12NXNoU5q', 3, '2022-06-03 18:17:59', NULL, NULL),
(22, 'CHULUMANI', 'uploads/1/2022-06/logo.png', 'chulumani@gmail.com', '$2y$10$RqrsnJ703/eugifkQkJt0uly6MoGWpMt5gVLTrtDulpcbYgRozwpC', 3, '2022-06-03 18:18:34', NULL, NULL),
(23, 'DPTO I', 'uploads/1/2022-06/logo.png', 'dptoI@gmail.com', '$2y$10$N7nRpvQ7csm2qmJzeqZWF.5qYAqVJY4zx3jbTsJ8zS7zXbHeHcZBa', 3, '2022-06-29 17:58:08', '2022-06-29 18:03:02', NULL),
(24, 'CENTRAL DPTO V', 'uploads/1/2022-06/logo.png', 'dptoV@gmail.com', '$2y$10$7fR3rQtUQmEbT.1UYUk9bu3aa7ZfJ17e.PNW8N8btqQotxiTXXmJC', 3, '2022-06-29 18:33:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `persona_id` bigint(20) UNSIGNED NOT NULL,
  `gestion` int(11) NOT NULL,
  `distrito` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especializacion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `persona_id`, `gestion`, `distrito`, `departamento`, `cargo`, `especializacion`, `created_at`, `updated_at`) VALUES
(1, 7, 2022, 'CENTRAL', 'CMDO.', 'COMANDANTE', NULL, '2022-04-30 20:23:46', NULL),
(2, 15, 2022, 'CENTRAL', '2DO. CMDO.', '2DO. COMANDANTE', NULL, '2022-04-30 20:24:04', NULL),
(3, 13, 2022, 'CENTRAL DPTO V', 'DPTO. V - ADM.', 'JEFE DE DEPARTAMENTO', NULL, '2022-04-30 20:24:29', NULL),
(4, 25, 2022, 'CENTRAL', 'DPTO. IV - LOG.', 'JEFE DE DEPARTAMENTO', NULL, '2022-04-30 20:25:20', NULL),
(5, 34, 2022, 'CENTRAL', 'DPTO. II - COMERC.', 'JEFE DE DEPARTAMENTO', NULL, '2022-04-30 20:25:51', NULL),
(6, 33, 2022, 'CENTRAL', 'DPTO I', 'JEFE DE DEPARTAMENTO', NULL, '2022-04-30 20:26:13', NULL),
(7, 38, 2022, 'CENTRAL', 'DPTO. VII - PLANIF.', 'JEFE DE DEPARTAMENTO', NULL, '2022-04-30 20:26:56', NULL),
(8, 28, 2022, 'CENTRAL', 'DPTO. VI - CIA. Y TEC.', 'JEFE DE DEPARTAMENTO', NULL, '2022-04-30 20:27:47', NULL),
(9, 62, 2022, 'CENTRAL', 'DPTO. VI - CIA. Y TEC.', 'OPERADOR', NULL, '2022-04-30 20:28:09', '2022-04-30 20:40:49'),
(10, 422, 2022, 'CENTRAL', 'DPTO. VI - CIA. Y TEC.', 'OPERADOR', NULL, '2022-04-30 20:40:19', NULL),
(11, 433, 2022, 'CENTRAL', 'DPTO. V - ADM.', 'OPERADOR', NULL, '2022-04-30 20:41:26', NULL),
(12, 447, 2022, 'CENTRAL', 'DPTO. III - OPS.', 'OPERADOR', NULL, '2022-04-30 20:42:10', NULL),
(13, 367, 2022, 'CENTRAL', 'DPTO. III - OPS.', 'OPERADOR', NULL, '2022-04-30 20:43:16', NULL),
(14, 471, 2022, 'CENTRAL', 'DPTO. III - OPS.', 'OPERADOR', NULL, '2022-04-30 20:43:59', NULL),
(15, 511, 2022, 'CENTRAL', 'DPTO. III - OPS.', 'OPERADOR', NULL, '2022-04-30 20:44:42', NULL),
(16, 526, 2022, 'CENTRAL', 'DPTO. V - ADM.', 'OPERADOR', NULL, '2022-04-30 20:46:30', NULL),
(17, 298, 2022, 'CENTRAL', 'DPTO. II - COMERC.', 'AUXILIAR', NULL, '2022-04-30 20:46:53', NULL),
(18, 426, 2022, 'CENTRAL', 'DPTO. II - COMERC.', 'AUXILIAR', NULL, '2022-04-30 20:47:13', NULL),
(19, 421, 2022, 'CENTRAL', 'DPTO. II - COMERC.', 'AUXILIAR', NULL, '2022-04-30 20:47:33', NULL),
(20, 542, 2022, 'CENTRAL', 'DPTO. V - ADM.', 'OPERADOR', NULL, '2022-04-30 20:48:59', NULL),
(21, 375, 2022, 'CENTRAL', 'DPTO. IV - LOG.', 'AUXILIAR', NULL, '2022-04-30 20:50:30', NULL),
(22, 623, 2022, 'CENTRAL', 'DPTO. III - OPS.', 'OPERADOR', NULL, '2022-05-01 00:16:47', NULL),
(23, 61, 2022, 'CARANAVI', NULL, 'JEFE DE DISTRITO', NULL, '2022-05-01 00:37:51', '2022-06-03 14:09:00'),
(24, 336, 2022, 'TUPIZA', NULL, 'CAJERO', NULL, '2022-05-01 00:38:35', '2022-06-03 14:09:26'),
(25, 445, 2022, 'TUPIZA', NULL, 'OPERADOR', NULL, '2022-05-01 00:39:01', '2022-06-03 14:09:49'),
(26, 48, 2022, 'ACHACACHI', NULL, 'JEFE DE DISTRITO', NULL, '2022-05-01 00:40:29', '2022-06-03 14:08:27'),
(27, 137, 2022, 'ACHACACHI', NULL, 'OPERADOR', NULL, '2022-05-01 00:40:56', '2022-06-03 14:08:42'),
(28, 422, 2021, 'CENTRAL', 'DPTO. V - ADM.', 'AUXILIAR', NULL, '2022-05-01 00:54:39', '2022-06-03 14:06:50'),
(29, 422, 2020, 'CENTRAL', 'DPTO. V - ADM.', 'AUXILIAR', NULL, '2022-05-01 00:55:03', '2022-06-03 14:06:59'),
(30, 422, 2019, 'CENTRAL', 'DPTO. V - ADM.', 'AUXILIAR', NULL, '2022-05-01 00:55:26', '2022-06-03 14:07:07'),
(33, 552, 2022, 'SANTA CRUZ', NULL, 'OPERADOR', NULL, '2022-06-03 13:50:47', '2022-06-03 14:09:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltaatrasos`
--

CREATE TABLE `faltaatrasos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `persona_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `faltaatrasos`
--

INSERT INTO `faltaatrasos` (`id`, `persona_id`, `fecha`, `observacion`, `created_at`, `updated_at`) VALUES
(1, 61, '2022-06-07', NULL, '2022-06-07 18:42:01', NULL),
(2, 298, '2022-06-20', 'Falta sin justificación.', '2022-06-20 18:58:50', NULL),
(3, 422, '2022-06-22', 'Falta sin justificación.', '2022-06-22 15:00:44', NULL),
(4, 298, '2022-07-01', 'Falta sin justificación.', '2022-07-01 19:20:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechapartes`
--

CREATE TABLE `fechapartes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fechaparte` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomgrado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id`, `nomgrado`, `created_at`, `updated_at`) VALUES
(1, 'Gral. Brig.', '2022-03-31 17:35:13', NULL),
(2, 'Cnl.', '2022-03-31 17:36:07', NULL),
(3, 'Tcnl.', '2022-03-31 17:36:15', NULL),
(4, 'My.', '2022-03-31 17:36:20', NULL),
(5, 'Cap.', '2022-03-31 17:36:25', NULL),
(6, 'Tte.', '2022-03-31 17:36:30', NULL),
(7, 'Sbtte.', '2022-03-31 17:36:36', NULL),
(8, 'Sof. Mtre.', '2022-03-31 17:36:48', NULL),
(9, 'Sof. My.', '2022-03-31 17:36:55', NULL),
(10, 'Sof. 1ro.', '2022-03-31 17:37:06', NULL),
(11, 'Sof. 2do.', '2022-03-31 17:37:14', NULL),
(12, 'Sof. Incl.', '2022-03-31 17:37:44', NULL),
(13, 'Sgto. 1ro.', '2022-03-31 17:37:54', NULL),
(14, 'Sgto. 2do.', '2022-03-31 17:38:00', NULL),
(15, 'Sgto. Incl.', '2022-03-31 17:38:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guardias`
--

CREATE TABLE `guardias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `persona_id` bigint(20) UNSIGNED NOT NULL,
  `funcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `guardias`
--

INSERT INTO `guardias` (`id`, `persona_id`, `funcion`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 433, 'CAPITAN DE SERVICIO', '2022-06-20', '2022-06-20 14:09:10', NULL),
(2, 623, 'COMANDANTE DE GUARDIA', '2022-06-20', '2022-06-20 15:22:41', NULL),
(3, 439, 'CAPITAN DE SERVICIO', '2022-07-01', '2022-07-01 19:17:56', NULL),
(4, 623, 'COMANDANTE DE GUARDIA', '2022-07-01', '2022-07-01 19:21:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencias`
--

CREATE TABLE `licencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gestion` int(4) NOT NULL,
  `distrito` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dias` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia_comisions`
--

CREATE TABLE `licencia_comisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gestion` int(4) NOT NULL,
  `distrito` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persona_id` bigint(20) UNSIGNED NOT NULL,
  `f_solicitud` date DEFAULT NULL,
  `tiempolicenciacomision` int(11) NOT NULL DEFAULT 0,
  `f_desde` date DEFAULT NULL,
  `f_hasta` date DEFAULT NULL,
  `motivo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `licencia_comisions`
--

INSERT INTO `licencia_comisions` (`id`, `gestion`, `distrito`, `persona_id`, `f_solicitud`, `tiempolicenciacomision`, `f_desde`, `f_hasta`, `motivo`, `created_at`, `updated_at`) VALUES
(1, 2022, 'CENTRAL', 422, '2022-05-03', 8, '2022-05-09', '2022-05-18', 'Permiso Matrimonio', '2022-05-03 17:55:53', NULL),
(2, 0, '', 422, '2022-05-02', 5, '2022-05-02', '2022-05-06', 'Comisión Tupiza', '2022-05-05 17:33:25', NULL),
(3, 0, '', 61, '2022-05-18', 1, '2022-05-05', '2022-05-16', '1', '2022-05-18 19:42:44', '2022-05-18 19:47:15'),
(4, 0, '', 61, '2022-05-18', 1, '2022-05-01', '2022-05-10', '3', '2022-05-18 19:50:21', NULL),
(5, 2022, 'CENTRAL', 28, '2022-06-20', 0, '2022-06-20', '2022-06-20', 'Tolerancia entrenamiento físico 2 hrs.', '2022-06-20 19:37:37', NULL),
(6, 2022, 'CENTRAL', 426, '2022-06-20', 20, '2022-06-10', '2022-06-30', 'Comisión Catastro Mariposas - Operador', '2022-06-20 19:46:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_08_07_145904_add_table_cms_apicustom', 2),
(6, '2016_08_07_150834_add_table_cms_dashboard', 2),
(7, '2016_08_07_151210_add_table_cms_logs', 2),
(8, '2016_08_07_151211_add_details_cms_logs', 2),
(9, '2016_08_07_152014_add_table_cms_privileges', 2),
(10, '2016_08_07_152214_add_table_cms_privileges_roles', 2),
(11, '2016_08_07_152320_add_table_cms_settings', 2),
(12, '2016_08_07_152421_add_table_cms_users', 2),
(13, '2016_08_07_154624_add_table_cms_menus_privileges', 2),
(14, '2016_08_07_154624_add_table_cms_moduls', 2),
(15, '2016_08_17_225409_add_status_cms_users', 2),
(16, '2016_08_20_125418_add_table_cms_notifications', 2),
(17, '2016_09_04_033706_add_table_cms_email_queues', 2),
(18, '2016_09_16_035347_add_group_setting', 2),
(19, '2016_09_16_045425_add_label_setting', 2),
(20, '2016_09_17_104728_create_nullable_cms_apicustom', 2),
(21, '2016_10_01_141740_add_method_type_apicustom', 2),
(22, '2016_10_01_141846_add_parameters_apicustom', 2),
(23, '2016_10_01_141934_add_responses_apicustom', 2),
(24, '2016_10_01_144826_add_table_apikey', 2),
(25, '2016_11_14_141657_create_cms_menus', 2),
(26, '2016_11_15_132350_create_cms_email_templates', 2),
(27, '2016_11_15_190410_create_cms_statistics', 2),
(28, '2016_11_17_102740_create_cms_statistic_components', 2),
(29, '2017_06_06_164501_add_deleted_at_cms_moduls', 2),
(30, '2022_03_21_142219_create_personas_table', 3),
(34, '2022_03_22_145552_create_vacacions_table', 4),
(35, '2022_03_23_125612_create_situacions_table', 5),
(36, '2022_03_23_155707_create_destinos_table', 6),
(37, '2022_03_24_182601_create_t_vacacions_table', 7),
(38, '2022_03_28_155707_create_destinos_table', 8),
(39, '2022_03_31_132945_create_grados_table', 9),
(40, '2022_04_14_144649_create_licencias_table', 10),
(41, '2022_04_14_145440_create_licencia_comisions_table', 11),
(42, '2022_05_11_094744_create_admpartes_table', 12),
(43, '2022_05_11_142632_create_partes_table', 13),
(44, '2022_05_12_110349_create_fechapartes_table', 14),
(45, '2022_06_07_135418_create_guardias_table', 15),
(46, '2022_06_07_135936_create_faltaatrasos_table', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partes`
--

CREATE TABLE `partes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `detalle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oo` int(11) DEFAULT NULL,
  `sofs` int(11) DEFAULT NULL,
  `sgtos` int(11) DEFAULT NULL,
  `eecc` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `partes`
--

INSERT INTO `partes` (`id`, `fecha`, `detalle`, `oo`, `sofs`, `sgtos`, `eecc`, `total`, `created_at`, `updated_at`) VALUES
(1, '2022-05-11', '2', 3, 4, 0, 0, 4, '2022-05-12 16:49:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `escalafon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arma` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especialidad` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paterno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `materno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` int(11) NOT NULL,
  `extension` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `egreso` int(4) NOT NULL,
  `antiguedad` int(11) NOT NULL,
  `sexo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estdo_civil` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `domicilio` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` int(11) NOT NULL,
  `celular2` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_completo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `escalafon`, `grado`, `arma`, `especialidad`, `paterno`, `materno`, `nombre`, `ci`, `extension`, `egreso`, `antiguedad`, `sexo`, `estdo_civil`, `fecha_nacimiento`, `domicilio`, `celular`, `celular2`, `email`, `foto`, `nombre_completo`, `created_at`, `updated_at`) VALUES
(1, 'OFICIALES', 'Cnl. ', 'INF.', 'DAEN. ', 'Ramirez', 'Tardio', 'Franz Luis', 1110787, 'CH', 1991, 48, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 64110331, 75080632, 'ramireztardio@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Franz Luis Ramirez Tardio', NULL, NULL),
(2, 'OFICIALES', 'Cnl. ', 'Cab. ', 'DAEN. ', 'Salguero', 'Sempertegui', 'Edwin', 3428183, 'LP', 1991, 51, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 62906355, 73743650, 'salguerosempertegui@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Edwin Salguero Sempertegui', NULL, NULL),
(3, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Calle', 'Pomares', 'Juan Luis', 3346440, 'LP', 1991, 18, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 6', 70934738, 77316677, 'callepomares@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Juan Luis Calle Pomares', NULL, NULL),
(4, 'OFICIALES', 'Cnl. ', 'Cab. ', 'DAEN. ', 'Cordero', 'Vargas', 'Ruben', 2443802, 'LP', 1991, 6, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 319', 77967701, 65840214, 'corderovargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Ruben Cordero Vargas', NULL, NULL),
(5, 'OFICIALES', 'Cnl. ', 'INF.', 'DAEN. ', 'Fernandez', 'Rodriguez', 'Carlos Miguel', 3391135, 'LP', 1991, 50, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 7', 76595735, 69096549, 'fernandezrodriguez@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Carlos Miguel Fernandez Rodriguez', NULL, NULL),
(6, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Echalar', 'Rivera', 'Arturo Marcial', 3618201, 'LP', 1991, 22, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4244', 77451789, 76483321, 'echalarrivera@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Arturo Marcial Echalar Rivera', NULL, NULL),
(7, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Espejo', 'Bobarin', 'Willy Gonzalo', 3369887, 'LP', 1991, 24, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 64831522, 67552988, 'espejobobarin@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Willy Gonzalo Espejo Bobarin', NULL, NULL),
(8, 'OFICIALES', 'Cnl. ', 'INF.', 'DAEN. ', 'Aguilar', 'Perez', 'Julio David', 3609745, 'CB', 1992, 53, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 13', 79719018, 63527067, 'aguilarperez@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Julio David Aguilar Perez', NULL, NULL),
(9, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Fuentes', 'Flores', 'Jason Socrates', 3731019, 'CB', 1992, 52, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 12', 62507703, 67910636, 'fuentesflores@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Jason Socrates Fuentes Flores', NULL, NULL),
(10, 'OFICIALES', 'Tcnl.  ', 'INF.', 'DIM. ', 'Tamayo', 'Orihuela', 'Alberto Ariel', 3397123, 'LP', 1992, 200, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 319', 63451626, 75832982, 'tamayoorihuela@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Alberto Ariel Tamayo Orihuela', NULL, NULL),
(11, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Patzi', 'Mejia', 'Juan Carlos', 3450846, 'LP', 1992, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 7', 62051296, 64649362, 'patzimejia@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Juan Carlos Patzi Mejia', NULL, NULL),
(12, 'OFICIALES', 'Cnl. ', 'Cab. ', 'DAEN. ', 'Jauregui', 'Montero', 'Rafael Leopoldo', 2346716, 'LP', 1993, 40, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1629', 74735042, 61535661, 'jaureguimontero@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Rafael Leopoldo Jauregui Montero', NULL, NULL),
(13, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Mercado', 'Aquise', 'Gary Renso', 3444355, 'LP', 1993, 47, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4494', 61958388, 77427328, 'mercadoaquise@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Gary Renso Mercado Aquise', NULL, NULL),
(14, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Contreras', 'Cabana', 'Juan Jose', 3449608, 'LP', 1993, 29, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5010', 71244323, 64199071, 'contrerascabana@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Juan Jose Contreras Cabana', NULL, NULL),
(15, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Yucra', 'Gutierrez', 'Johony Ernesto', 3710295, 'PT', 1993, 45, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 74717186, 64678616, 'yucragutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Johony Ernesto Yucra Gutierrez', NULL, NULL),
(16, 'OFICIALES', 'Cnl. ', 'INF.', 'DAEN. ', 'Rios', 'Oliver', 'Saul Omar Yuval', 2878557, 'CB', 1994, 67, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 28', 65114659, 73314764, 'riosoliver@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Saul Omar Yuval Rios Oliver', NULL, NULL),
(17, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Soria', 'Toranzos', 'Jorge Ernesto', 3612625, 'CB', 1994, 90, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 14', 75957816, 71059761, 'soriatoranzos@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Jorge Ernesto Soria Toranzos', NULL, NULL),
(18, 'OFICIALES', 'Cnl. ', 'Art. ', 'DAEN. ', 'Vargas', 'Hanssen', 'Angel Martin', 3327148, 'LP', 1994, 69, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 322', 67725989, 70392712, 'vargashanssen@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Angel Martin Vargas Hanssen', NULL, NULL),
(19, 'OFICIALES', 'Cnl. ', 'INF.', 'DAEN. ', 'Rivera', 'Gomez', 'Darwing Roman', 3501056, 'OR', 1994, 68, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 70636381, 72070233, 'riveragomez@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Darwing Roman Rivera Gomez', NULL, NULL),
(20, 'OFICIALES', 'Cnl. ', 'INF.', 'DAEN. ', 'Penaranda', 'Asturizaga', 'Edson Omar', 3455532, 'LP', 1995, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 186', 66545755, 78753635, 'penarandaasturizaga@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Edson Omar Penaranda Asturizaga', NULL, NULL),
(21, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Torrez', 'Monrroy', 'David Juan', 3467879, 'LP', 1995, 52, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11114', 72590906, 66245800, 'torrezmonrroy@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. David Juan Torrez Monrroy', NULL, NULL),
(22, 'OFICIALES', 'Cnl. ', 'Art. ', 'DAEN. ', 'Sandoval', 'Nava', 'Mario Raul', 3058708, 'OR', 1995, 27, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 74309006, 66775233, 'sandovalnava@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Mario Raul Sandoval Nava', NULL, NULL),
(23, 'OFICIALES', 'Cnl. ', 'Ing. ', 'DAEN. ', 'Sandy', 'Romero', 'Hector German', 3483776, 'LP', 1995, 4, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4502', 75576963, 64754145, 'sandyromero@gmail.com', 'uploads/1/2022-04/logo.png', 'Cnl. DAEN. Hector German Sandy Romero', NULL, NULL),
(24, 'OFICIALES', 'Tcnl.  ', 'Cab. ', 'DAEN. ', 'Paz Soldan', 'Pinto', 'Jaime Rodrigo', 2204601, 'LP', 1997, 41, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 20', 76304842, 74235645, 'paz soldanpinto@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DAEN. Jaime Rodrigo Paz Soldan Pinto', NULL, NULL),
(25, 'OFICIALES', 'Tcnl.  ', 'Com. ', 'DAEN. ', 'Arce', 'Conde', 'Dorian Ariel', 4364647, 'LP', 1998, 42, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 14', 79990459, 78776460, 'arceconde@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DAEN. Dorian Ariel Arce Conde', NULL, NULL),
(26, 'OFICIALES', 'Tcnl.  ', 'Cab. ', 'DAEN. ', 'Molina', 'Patino', 'Juan Manuel', 4336467, 'LP', 1998, 24, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 310', 65245375, 70819088, 'molinapatino@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DAEN. Juan Manuel Molina Patino', NULL, NULL),
(27, 'OFICIALES', 'Tcnl.  ', 'Ing. ', 'DIM. ', 'Vargas', 'Villa', 'Ruben Nicolas', 2532711, 'LP', 1998, 40, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 13', 66633117, 69705172, 'vargasvilla@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Ruben Nicolas Vargas Villa', NULL, NULL),
(28, 'OFICIALES', 'Tcnl.  ', 'INF.', 'DIM. ', 'Zacarias', 'Mancilla', 'Mirko Critzen', 3654904, 'CH', 1999, 35, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 70219670, 74225267, 'zacariasmancilla@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Mirko Critzen Zacarias Mancilla', NULL, NULL),
(29, 'OFICIALES', 'Tcnl.  ', 'Art. ', 'DIM. ', 'Castro', 'Revollo', 'Daniel Arturo', 4274605, 'LP', 1999, 53, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 14', 72882280, 61508781, 'castrorevollo@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Daniel Arturo Castro Revollo', NULL, NULL),
(30, 'OFICIALES', 'Tcnl.  ', 'Art. ', 'DIM. ', 'Guzman', 'Jimenez', 'Iber Nelson', 4369197, 'LP', 1999, 17, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 15', 64417093, 64570956, 'guzmanjimenez@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Iber Nelson Guzman Jimenez', NULL, NULL),
(31, 'OFICIALES', 'Tcnl.  ', 'Art. ', 'DIM. ', 'Chulver', 'Enriquez', 'Pablo Vladimir', 4314548, 'LP', 1999, 64, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 249', 79801219, 70528669, 'chulverenriquez@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Pablo Vladimir Chulver Enriquez', NULL, NULL),
(32, 'OFICIALES', 'Tcnl.  ', 'Com. ', 'DIM. ', 'Velarde', 'Camacho', 'Jimmy Wilderh', 4493640, 'CB', 2000, 54, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 189', 66382214, 68691729, 'velardecamacho@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Jimmy Wilderh Velarde Camacho', NULL, NULL),
(33, 'OFICIALES', 'Tcnl.  ', 'INF.', 'DIM. ', 'Ventura', 'Gutierrez', 'Juan Marcelo', 3376419, 'LP', 2000, 61, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 12', 68404646, 72853215, 'venturagutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Juan Marcelo Ventura Gutierrez', NULL, NULL),
(34, 'OFICIALES', 'Tcnl.  ', 'Art. ', 'DIM. ', 'Mendoza', 'Adrian', 'Humberto', 3112157, 'OR', 2000, 55, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 320', 72715797, 77346769, 'mendozaadrian@gmail.com', 'uploads/1/2022-04/logo.png', 'Tcnl.  DIM. Humberto Mendoza Adrian', NULL, NULL),
(35, 'OFICIALES', 'My. ', 'Art. ', 'DIM. ', 'Echalar', 'Olmos', 'Carlos Oliver', 3620416, 'CB', 2002, 41, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4494', 78245343, 78485548, 'echalarolmos@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Carlos Oliver Echalar Olmos', NULL, NULL),
(36, 'OFICIALES', 'My. ', 'INF.', 'DIM. ', 'Pardo', 'Uriarte', 'Edwin', 4325579, 'LP', 2002, 47, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 65480375, 68742821, 'pardouriarte@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Edwin Pardo Uriarte', NULL, NULL),
(37, 'OFICIALES', 'My. ', 'INF.', 'DIM. ', 'Cuestas', 'Salguero', 'Weimar Victor', 4771735, 'LP', 2002, 43, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 66440764, 79952568, 'cuestassalguero@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Weimar Victor Cuestas Salguero', NULL, NULL),
(38, 'OFICIALES', 'My. ', 'Cab. ', 'DIM. ', 'Rocha', 'Luna', 'Marco Antonio', 3447102, 'LP', 2003, 18, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4494', 79768758, 79276832, 'rochaluna@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Marco Antonio Rocha Luna', NULL, NULL),
(39, 'OFICIALES', 'My. ', 'INF.', 'DIM. ', 'Valverde', 'Aliaga', 'Percy Ariel', 4809618, 'LP', 2003, 51, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 305', 62716620, 67972109, 'valverdealiaga@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Percy Ariel Valverde Aliaga', NULL, NULL),
(40, 'OFICIALES', 'My. ', 'Ing. ', 'DIM. ', 'Salinas', 'Figueroa', 'Edson', 5129313, 'PT', 2003, 55, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 306', 63772938, 75081929, 'salinasfigueroa@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Edson Salinas Figueroa', NULL, NULL),
(41, 'OFICIALES', 'My. ', 'Cab. ', 'DIM. ', 'Rocabado', 'Villegas', 'Christian Omar', 4845159, 'LP', 2004, 75, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 28', 61305413, 77681100, 'rocabadovillegas@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Christian Omar Rocabado Villegas', NULL, NULL),
(42, 'OFICIALES', 'My. ', 'Ing. ', 'DIM. ', 'Mayta', 'Arancibia', 'Ignacio Santiago', 4812362, 'LP', 2004, 64, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 62159219, 75874978, 'maytaarancibia@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Ignacio Santiago Mayta Arancibia', NULL, NULL),
(43, 'OFICIALES', 'My. ', 'Ing. ', 'DIM. ', 'Piza', 'Flores', 'Victor Eduardo', 4877520, 'LP', 2004, 79, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 13', 67664511, 73686210, 'pizaflores@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Victor Eduardo Piza Flores', NULL, NULL),
(44, 'OFICIALES', 'My. ', 'INF.', 'DIM. ', 'Arano', 'Velarde', 'David Erlan', 4061636, 'OR', 2005, 106, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 8', 69049291, 65999388, 'aranovelarde@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. David Erlan Arano Velarde', NULL, NULL),
(45, 'OFICIALES', 'My. ', 'Cab. ', 'DIM. ', 'Alcon', 'Bustos', 'Yerzyd David', 3392102, 'LP', 2006, 101, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 305', 69556067, 68230932, 'alconbustos@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Yerzyd David Alcon Bustos', NULL, NULL),
(46, 'OFICIALES', 'My. ', 'Cab. ', 'DIM. ', 'Bacarreza', 'Arzabe', 'Hugo Gabriel', 4830366, 'LP', 2006, 95, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 14', 71921164, 64977472, 'bacarrezaarzabe@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Hugo Gabriel Bacarreza Arzabe', NULL, NULL),
(47, 'OFICIALES', 'My. ', 'INF.', 'DIM. ', 'Argandona', 'Gamez', 'Milton Carlos', 4918422, 'LP', 2006, 89, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 187', 76696803, 79590144, 'argandonagamez@gmail.com', 'uploads/1/2022-04/logo.png', 'My. DIM. Milton Carlos Argandona Gamez', NULL, NULL),
(48, 'OFICIALES', 'Cap. ', 'INF.', 'DIM. ', 'Mantilla', 'Zapata', 'Danny Cesar', 4760330, 'LP', 2007, 100, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 77167528, 62322785, 'mantillazapata@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Danny Cesar Mantilla Zapata', NULL, NULL),
(49, 'OFICIALES', 'Cap. ', 'Ing. ', 'DIM. ', 'Huanapaco', 'Alcon', 'Rigoberto', 3412847, 'LP', 2007, 98, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 14', 75991924, 75001711, 'huanapacoalcon@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Rigoberto Huanapaco Alcon', NULL, NULL),
(50, 'OFICIALES', 'Cap. ', 'INF.', 'DIM. ', 'Iporre', 'Garcia', 'Paola Eliana', 5810884, 'TJ', 2007, 104, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 28', 74934096, 61514332, 'iporregarcia@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Paola Eliana Iporre Garcia', NULL, NULL),
(51, 'OFICIALES', 'Cap. ', 'Cab. ', 'DIM. ', 'Mariscal', 'Terceros', 'Guido', 6444912, 'CB', 2008, 124, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 77183582, 70831959, 'mariscalterceros@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Guido Mariscal Terceros', NULL, NULL),
(52, 'OFICIALES', 'Cap. ', 'Cab. ', 'DIM. ', 'Cespedes', 'Hernandez', 'Gary Jaime', 6149857, 'LP', 2008, 62, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 61150962, 72887328, 'cespedeshernandez@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Gary Jaime Cespedes Hernandez', NULL, NULL),
(53, 'OFICIALES', 'Cap. ', 'INF.', 'DIM. ', 'Carrillo', 'Laura', 'Carlos', 5960031, 'LP', 2009, 95, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 7', 70609516, 69212036, 'carrillolaura@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Carlos Carrillo Laura', NULL, NULL),
(54, 'OFICIALES', 'Cap. ', 'Ing. ', 'DIM. ', 'Coronado', 'Tito', 'Arnold Osmar De Jesu', 6731876, 'LP', 2009, 78, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 63602287, 61940782, 'coronadotito@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Arnold Osmar De Jesu Coronado Tito', NULL, NULL),
(55, 'OFICIALES', 'Cap. ', 'Ing. ', 'DIM. ', 'Valdez', 'Guisbert', 'Varinia Gabriela', 6122499, 'LP', 2009, 85, 'Femenino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1625', 76689129, 74147753, 'valdezguisbert@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Varinia Gabriela Valdez Guisbert', NULL, NULL),
(56, 'OFICIALES', 'Cap. ', 'Log. ', 'DIM. ', 'Sirpa', 'Vallejos', 'Reynaldo Vidal', 6765489, 'LP', 2009, 88, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 6', 71995562, 61171518, 'sirpavallejos@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Reynaldo Vidal Sirpa Vallejos', NULL, NULL),
(57, 'OFICIALES', 'Cap. ', 'INF.', 'DIM. ', 'Guerra', 'Trigo', 'Hernan Jose', 6805612, 'LP', 2010, 145, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 319', 78957738, 70023255, 'guerratrigo@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Hernan Jose Guerra Trigo', NULL, NULL),
(58, 'OFICIALES', 'Cap. ', 'Cab. ', 'DIM. ', 'Lobaton', 'Bustillos', 'Jose Roman', 6792521, 'LP', 2010, 132, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5010', 64996771, 73636392, 'lobatonbustillos@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Jose Roman Lobaton Bustillos', NULL, NULL),
(59, 'OFICIALES', 'Cap. ', 'Com. ', 'DIM. ', 'De La Cruz', 'Choque', 'Maria Eugenia', 6867466, 'LP', 2011, 184, 'Femenino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 12', 75044488, 77825561, 'de la cruzchoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Maria Eugenia De La Cruz Choque', NULL, NULL),
(60, 'OFICIALES', 'Cap. ', 'Art. ', 'DIM. ', 'Reyes', 'Fuentes', 'Daniel Alejandro', 5278612, 'LP', 2011, 150, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4244', 79409188, 76291544, 'reyesfuentes@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Daniel Alejandro Reyes Fuentes', NULL, NULL),
(61, 'OFICIALES', 'Cap. ', 'Ing. ', 'DIM. ', 'Baldivieso', 'Torrez', 'Alvaro Diego', 6860819, 'LP', 2011, 181, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 186', 74238869, 63860208, 'baldiviesotorrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Cap. DIM. Alvaro Diego Baldivieso Torrez', NULL, NULL),
(62, 'OFICIALES', 'Tte. ', 'Cab. ', 'DIM. ', 'Terrazas', 'Coaquira', 'Juan Jose', 6178259, 'LP', 2012, 59, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 68581607, 62918108, 'terrazascoaquira@gmail.com', 'uploads/1/2022-04/logo.png', 'Tte. DIM. Juan Jose Terrazas Coaquira', NULL, NULL),
(63, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'TICONA', 'SOTO', 'BASILIO', 3623956, 'CB', 1992, 12, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 70636381, 72070233, 'ticonasoto@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Basilio Ticona Soto', NULL, NULL),
(64, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'UNZUETA', 'BUSTAMANTE', 'RIONI', 3620685, 'CB', 1992, 22, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 28', 65114659, 73314764, 'unzuetabustamante@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Rioni Unzueta Bustamante', NULL, NULL),
(65, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'ASTULLA', 'ROJAS', 'VICTOR', 3723409, 'CB', 1992, 51, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 14', 75957816, 71059761, 'astullarojas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Victor Astulla Rojas', NULL, NULL),
(66, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MORALES', 'ARZE', 'HUGO REMBERTO', 3562695, 'CB', 1992, 61, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 62906355, 73743650, 'moralesarze@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Hugo Remberto Morales Arze', NULL, NULL),
(67, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'GUARDIA', 'RODRIGUEZ', 'NELSON', 4381706, 'CB', 1992, 45, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4494', 79768758, 79276832, 'guardiarodriguez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Nelson Guardia Rodriguez', NULL, NULL),
(68, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'REYES', 'PARRA', 'JORGE RICHARD', 3755569, 'CB', 1992, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5010', 64996771, 73636392, 'reyesparra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jorge Richard Reyes Parra', NULL, NULL),
(69, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'GALEAN', 'TELLEZ', 'RENE', 1118737, 'LP', 1992, 21, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 74717186, 64678616, 'galeantellez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Rene Galean Tellez', NULL, NULL),
(70, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'HUANAPACO', 'GUTIERREZ', 'PEDRO PABLO', 3345414, 'LP', 1992, 68, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 13', 79719018, 63527067, 'huanapacogutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Pedro Pablo Huanapaco Gutierrez', NULL, NULL),
(71, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'SANCHEZ', 'APAZA', 'MARCO ANTONIO', 3474031, 'LP', 1992, 32, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 7', 76595735, 69096549, 'sanchezapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Marco Antonio Sanchez Apaza', NULL, NULL),
(72, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CAMACHO', 'LEDEZMA', 'JUAN CARLOS', 3751900, 'LP', 1992, 33, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 64110331, 75080632, 'camacholedezma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Juan Carlos Camacho Ledezma', NULL, NULL),
(73, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MARCA', 'NINA', 'CLEOMEDES', 3118353, 'LP', 1992, 58, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 6', 70934738, 77316677, 'marcanina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Cleomedes Marca Nina', NULL, NULL),
(74, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'PATAN', 'ARCOS', 'CLEMENTE SIRO', 2159553, 'LP', 1992, 76, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4494', 78245343, 78485548, 'patanarcos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Clemente Siro Patan Arcos', NULL, NULL),
(75, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUE', 'ACHA', 'HENRY', 3111146, 'OR', 1992, 59, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 305', 63533437, 73003772, 'choqueacha@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Henry Choque Acha', NULL, NULL),
(76, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'HUAYTA', 'PINAYA', 'HECTOR FERNANDO', 3119269, 'OR', 1992, 14, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11114', 78046872, 66728441, 'huaytapinaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Hector Fernando Huayta Pinaya', NULL, NULL),
(77, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'BARCAYA', 'QUISPIA', 'RAUL', 3119366, 'OR', 1992, 23, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1625', 78235885, 67771192, 'barcayaquispia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Raul Barcaya Quispia', NULL, NULL),
(78, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'COCA', 'RIOS', 'BORIS EDDY', 3118416, 'OR', 1992, 38, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 13', 62167191, 65209256, 'cocarios@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Boris Eddy Coca Rios', NULL, NULL),
(79, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'RAMIREZ', 'UZIN', 'WILSON', 3710392, 'PT', 1992, 70, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 186', 77918541, 73056992, 'ramirezuzin@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Wilson Ramirez Uzin', NULL, NULL),
(80, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'FERNANDEZ', 'CHOQUE', 'DAUVER RAMIRO', 3710520, 'PT', 1992, 29, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 65996783, 70153147, 'fernandezchoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Dauver Ramiro Fernandez Choque', NULL, NULL),
(81, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'DERAMO', 'BETANCOURT', 'EDWIN', 4173726, 'BE', 1993, 83, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 14', 79990459, 78776460, 'deramobetancourt@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Edwin Deramo Betancourt', NULL, NULL),
(82, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CLAURE', 'SANCHEZ', 'FREDY  ALAIN', 3771681, 'CB', 1993, 86, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 305', 62716620, 67972109, 'clauresanchez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Fredy  Alain Claure Sanchez', NULL, NULL),
(83, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'GONZALES', 'SANCHEZ', 'JAIME ALFREDO', 3591214, 'CB', 1993, 69, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4244', 79409188, 76291544, 'gonzalessanchez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jaime Alfredo Gonzales Sanchez', NULL, NULL),
(84, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'GOMEZ', 'QUISBERT', 'JOAQUIN WILFREDO', 3400406, 'LP', 1993, 30, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4494', 61958388, 77427328, 'gomezquisbert@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Joaquin Wilfredo Gomez Quisbert', NULL, NULL),
(85, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'PADILLA', 'SANCHEZ', 'ANGEL', 4339258, 'LP', 1993, 42, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 319', 77967701, 65840214, 'padillasanchez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Angel Padilla Sanchez', NULL, NULL),
(86, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'TRONCOSO', 'SORIA', 'MARIO', 3118255, 'LP', 1993, 27, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4244', 77451789, 76483321, 'troncososoria@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Mario Troncoso Soria', NULL, NULL),
(87, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'HUANSBER', 'VEDIA', 'GUIDO IVAR', 3444646, 'LP', 1993, 44, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 64831522, 67552988, 'huansbervedia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Guido Ivar Huansber Vedia', NULL, NULL),
(88, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'BARTHA', 'VILLALTA', 'FREDDY WILSONT', 4339261, 'LP', 1993, 41, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 28', 61305413, 77681100, 'barthavillalta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Freddy Wilsont Bartha Villalta', NULL, NULL),
(89, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'OJEDA', 'CHAVEZ', 'EDGAR', 4339272, 'LP', 1993, 92, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 62159219, 75874978, 'ojedachavez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Edgar Ojeda Chavez', NULL, NULL),
(90, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MENDOZA', 'ALCON', 'JUAN JOSE', 3457860, 'LP', 1993, 46, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 13', 67664511, 73686210, 'mendozaalcon@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Juan Jose Mendoza Alcon', NULL, NULL),
(91, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'ZAPATA', 'COSSIO', 'GONZALO FEDERICO', 4339260, 'LP', 1993, 90, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 68581607, 62918108, 'zapatacossio@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Gonzalo Federico Zapata Cossio', NULL, NULL),
(92, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'HUANCA', 'VARGAS', 'LITOP ARMANDO', 4339262, 'LP', 1993, 80, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 12', 75044488, 77825561, 'huancavargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Litop Armando Huanca Vargas', NULL, NULL),
(93, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CABRERA', 'ARIAS', 'JONNER PABLO', 4339252, 'LP', 1993, 82, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1625', 76689129, 74147753, 'cabreraarias@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jonner Pablo Cabrera Arias', NULL, NULL),
(94, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'APAZA', 'QUISPE', 'JESUS FELIX', 3453316, 'LP', 1993, 93, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 6', 71995562, 61171518, 'apazaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jesus Felix Apaza Quispe', NULL, NULL),
(95, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'POBLETTY', 'SORIA', 'JUAN GONZALO', 4339274, 'LP', 1993, 84, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 6', 70703850, 65406515, 'poblettysoria@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Juan Gonzalo Pobletty Soria', NULL, NULL),
(96, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'VEIZAGA', 'VARGAS', 'JOHNY', 3107995, 'OR', 1993, 37, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 77307119, 72134321, 'veizagavargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Johny Veizaga Vargas', NULL, NULL),
(97, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'VASQUEZ', 'CHAMBI', 'HERNAN FARIAS', 3118225, 'OR', 1993, 48, 'Masculino', 'Divorsiado', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 62487760, 61938030, 'vasquezchambi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Hernan Farias Vasquez Chambi', NULL, NULL),
(98, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CAICHOCA', 'CALLE', 'OSCAR ROLANDO', 4339263, 'OR', 1993, 43, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 62369563, 67301451, 'caichocacalle@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Oscar Rolando Caichoca Calle', NULL, NULL),
(99, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'BEJARANO', 'CALLE', 'ROLANDO', 3118696, 'OR', 1993, 72, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11114', 65841990, 76741987, 'bejaranocalle@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Rolando Bejarano Calle', NULL, NULL),
(100, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'LOPEZ', 'CALLE', 'EBER JULIAN', 1393129, 'PT', 1993, 91, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 6', 71683777, 70158904, 'lopezcalle@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Eber Julian Lopez Calle', NULL, NULL),
(101, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MEGUILLANES', 'FRIAS', 'JAIME HOMERO', 3447126, 'LP', 1994, 200, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5010', 70224368, 77405220, 'meguillanesfrias@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jaime Homero Meguillanes Frias', NULL, NULL),
(102, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'ROJAS', 'MAMANI', 'ALEX PAZ', 3792350, 'CB', 1994, 201, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 305', 69556067, 68230932, 'rojasmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Alex Paz Rojas Mamani', NULL, NULL),
(103, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MUNOZ', 'ARAPA', 'ALEX SANDRO', 3792222, 'CB', 1994, 39, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 14', 71921164, 64977472, 'munozarapa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Alex Sandro Munoz Arapa', NULL, NULL),
(104, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'LLUSCO', 'SANTA CRUZ', 'EDWIN ZACARIAS', 3359539, 'LP', 1994, 29, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5010', 71244323, 64199071, 'lluscosanta cruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Edwin Zacarias Llusco Santa Cruz', NULL, NULL),
(105, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'LOPEZ', 'ARINEZ', 'GROVER SANTOS', 3474652, 'LP', 1994, 26, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 12', 62507703, 67910636, 'lopezarinez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Grover Santos Lopez Arinez', NULL, NULL),
(106, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'ZARZURI', 'QUIJO', 'DIEGO', 3491740, 'LP', 1994, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 28', 74934096, 61514332, 'zarzuriquijo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Diego Zarzuri Quijo', NULL, NULL),
(107, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'AROA', 'CLAVEL', 'JUAN RUBEN', 2631580, 'LP', 1994, 47, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 65480375, 68742821, 'aroaclavel@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Juan Ruben Aroa Clavel', NULL, NULL),
(108, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'RIVAS', 'ZENOBIO', 2448338, 'LP', 1994, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 79688104, 69796740, 'mamanirivas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Zenobio Mamani Rivas', NULL, NULL),
(109, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MONTOYA', 'MAMANI', 'RUBEN', 4260318, 'LP', 1994, 40, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1625', 63552336, 75835942, 'montoyamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Ruben Montoya Mamani', NULL, NULL),
(110, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'TORREZ', 'RAMIREZ', 'PAZ FELICIANO', 4251720, 'LP', 1994, 37, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4494', 63740216, 74008821, 'torrezramirez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Paz Feliciano Torrez Ramirez', NULL, NULL),
(111, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'SIRPA', 'MAMANI', 'SEVERO', 3479331, 'LP', 1994, 31, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 74130445, 68930122, 'sirpamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Severo Sirpa Mamani', NULL, NULL),
(112, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'ZACARIAS', 'REMBERTO IVAN', 4284879, 'LP', 1994, 46, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 12', 64990773, 71135270, 'quispezacarias@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Remberto Ivan Quispe Zacarias', NULL, NULL),
(113, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'PUSARICO', 'HUANAPACO', 'WILFREDO', 4243562, 'LP', 1994, 25, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 319', 64289605, 64911598, 'pusaricohuanapaco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Wilfredo Pusarico Huanapaco', NULL, NULL),
(114, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'QUINTEROS', 'MORALES', 'JUAN FEDERICO', 4285713, 'LP', 1994, 62, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 7', 74266566, 68517383, 'quinterosmorales@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Juan Federico Quinteros Morales', NULL, NULL),
(115, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'LIMA', 'HUARACHI', 'NESTOR', 3112351, 'OR', 1994, 45, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5010', 70634376, 78931578, 'limahuarachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Nestor Lima Huarachi', NULL, NULL),
(116, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'BALDERRAMA', 'TOLA', 'CARLOS WILFREDO', 3510463, 'OR', 1994, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 305', 77270836, 73546084, 'balderramatola@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Carlos Wilfredo Balderrama Tola', NULL, NULL),
(117, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'GUTIERREZ', 'MOLINA', 'XAVIER', 3113047, 'OR', 1994, 18, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4244', 69611189, 65201389, 'gutierrezmolina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Xavier Gutierrez Molina', NULL, NULL),
(118, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MAYTA', 'BAUTISTA', 'JUAN CARLOS', 3472533, 'LP', 1995, 301, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11114', 72590906, 66245800, 'maytabautista@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Carlos Mayta Bautista', NULL, NULL),
(119, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHIPANA', 'VALLEJOS', 'ROBIN ELVIO', 3483216, 'LP', 1995, 302, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 74587977, 71592851, 'chipanavallejos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Robin Elvio Chipana Vallejos', NULL, NULL),
(120, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'DEPSS. ', 'CONTRERAS', 'VALENCIA', 'JUAN DAVID', 3497329, 'LP', 1995, 303, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 319', 78957738, 70023255, 'contrerasvalencia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. DEPSS. Juan David Contreras Valencia', NULL, NULL),
(121, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'TERAN', 'RIOJA', 'VICTORIO RONNIE', 3769309, 'CB', 1995, 53, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 14', 72882280, 61508781, 'teranrioja@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Victorio Ronnie Teran Rioja', NULL, NULL),
(122, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CARDONA', 'ALIPAZ', 'ROLANDO CESAR', 3011369, 'CB', 1995, 54, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 187', 76696803, 79590144, 'cardonaalipaz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Rolando Cesar Cardona Alipaz', NULL, NULL),
(123, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CHURA', 'LOZA', 'ELIAS', 3496725, 'LP', 1995, 60, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 7', 70609516, 69212036, 'churaloza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Elias Chura Loza', NULL, NULL),
(124, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CHIPANA', 'SILVA', 'MIGUEL GUALBERTO', 3457730, 'LP', 1995, 42, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 63602287, 61940782, 'chipanasilva@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Miguel Gualberto Chipana Silva', NULL, NULL),
(125, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'MATTA', 'WALDO', 4278093, 'LP', 1995, 39, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 77183582, 70831959, 'quispematta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Waldo Quispe Matta', NULL, NULL),
(126, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CHIPANA', 'QUISPE', 'MARTIN', 4243299, 'LP', 1995, 20, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 61150962, 72887328, 'chipanaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Martin Chipana Quispe', NULL, NULL),
(127, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'CUSI', 'TIBNE MOISES', 4307517, 'LP', 1995, 40, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 12', 68404646, 72853215, 'quispecusi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Tibne Moises Quispe Cusi', NULL, NULL),
(128, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'VILLCA', 'CONDORI', 'JOSE CARLOS', 4285283, 'LP', 1995, 35, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 186', 66545755, 78753635, 'villcacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jose Carlos Villca Condori', NULL, NULL),
(129, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUE', 'BELZU', 'VICTOR HUGO', 2692862, 'LP', 1995, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 319', 63451626, 75832982, 'choquebelzu@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Victor Hugo Choque Belzu', NULL, NULL),
(130, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'VALDEZ', 'TORREZ', 'MIGUEL GINO', 4311853, 'LP', 1995, 46, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 7', 62051296, 64649362, 'valdeztorrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Miguel Gino Valdez Torrez', NULL, NULL),
(131, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'APAZA', 'YANA', 'JUAN HUMBERTO', 3478706, 'LP', 1995, 7, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 66184210, 77033530, 'apazayana@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Juan Humberto Apaza Yana', NULL, NULL),
(132, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'RODRIGUEZ', 'COARITE', 'ALFREDO', 4285055, 'LP', 1995, 56, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 77164476, 64018890, 'rodriguezcoarite@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Alfredo Rodriguez Coarite', NULL, NULL),
(133, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'ESPINOZA', 'CONDORI', 'JUAN DANIEL', 4283832, 'LP', 1995, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 13', 72306306, 62219680, 'espinozacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Juan Daniel Espinoza Condori', NULL, NULL),
(134, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CAPRILES', 'VARGAS', 'JOSE LUIS', 4258538, 'LP', 1995, 25, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 69615459, 77720979, 'caprilesvargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jose Luis Capriles Vargas', NULL, NULL),
(135, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'TOLA', 'MAMANI', 'LEONCIO', 4299090, 'LP', 1995, 23, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 72664428, 65608657, 'tolamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Leoncio Tola Mamani', NULL, NULL),
(136, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'QUISBERT', 'CHAMBI', 'CESAR ANTONIO', 2684597, 'LP', 1995, 27, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 7', 79004503, 65571575, 'quisbertchambi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Cesar Antonio Quisbert Chambi', NULL, NULL),
(137, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'ARUQUIPA', 'ARUQUIPA', 'GONZALO', 3432129, 'LP', 1995, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 15', 73057056, 64309522, 'aruquipaaruquipa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Gonzalo Aruquipa Aruquipa', NULL, NULL),
(138, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CLAROS', 'QUISPE', 'JOSE LUIS', 4311476, 'LP', 1995, 10, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 13', 77088336, 75762298, 'clarosquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jose Luis Claros Quispe', NULL, NULL),
(139, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUANAPACO', 'QUISPE', 'ROGELIO', 4740988, 'LP', 1996, 400, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 7', 70153968, 67439127, 'huanapacoquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Rogelio Huanapaco Quispe', NULL, NULL),
(140, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MENDOZA', 'QUISPE', 'OSCAR BERNARDO', 3308163, 'LP', 1996, 30, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 66440764, 79952568, 'mendozaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Oscar Bernardo Mendoza Quispe', NULL, NULL),
(141, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MIRANDA', 'CANAVIRI', 'MIGUEL ANGEL', 3376143, 'LP', 1996, 18, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 28', 69036957, 78795723, 'mirandacanaviri@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Miguel Angel Miranda Canaviri', NULL, NULL),
(142, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'RAMOS', 'RAMOS', 'RICHARD GIL', 4796512, 'LP', 1996, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 62809869, 73443028, 'ramosramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Richard Gil Ramos Ramos', NULL, NULL),
(143, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CALLE', 'MAMANI', 'BERNARDO', 4743475, 'LP', 1996, 29, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 14', 76214760, 74077453, 'callemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Bernardo Calle Mamani', NULL, NULL),
(144, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'MENECES', 'QUINTEROS', 'SANTOS NELSON', 4414960, 'LP', 1996, 24, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 186', 71465616, 68613321, 'menecesquinteros@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Santos Nelson Meneces Quinteros', NULL, NULL),
(145, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'HUANAPACO', 'GUTIERREZ', 'FRANKLIN MARIO', 3443447, 'LP', 1996, 52, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11114', 75855790, 76849367, 'huanapacogutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Franklin Mario Huanapaco Gutierrez', NULL, NULL),
(146, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'CAHUAYA', 'RICHAR FELIX', 4300678, 'LP', 1996, 11, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1625', 69025069, 77645215, 'quispecahuaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Richar Felix Quispe Cahuaya', NULL, NULL),
(147, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'ARACAYO', 'VALENCIA', 'JULIAN', 4309300, 'LP', 1996, 32, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4244', 68657051, 65067333, 'aracayovalencia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Julian Aracayo Valencia', NULL, NULL),
(148, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'ARIAS', 'ALANOCA', 'ELIAS', 4796516, 'LP', 1996, 23, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 78144145, 61343055, 'ariasalanoca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Elias Arias Alanoca', NULL, NULL),
(149, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'SANCHEZ', 'HUANCA', 'GREGORIO', 2527208, 'LP', 1996, 48, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 306', 68200591, 78222154, 'sanchezhuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Gregorio Sanchez Huanca', NULL, NULL),
(150, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'CANAZA', 'CHAVEZ', 'JOSE LUIS', 3353051, 'LP', 1996, 46, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 78414541, 67457317, 'canazachavez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jose Luis Canaza Chavez', NULL, NULL),
(151, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'PATAN', 'ARCOS', 'JOSE LUIS', 2603460, 'LP', 1996, 57, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1626', 70338432, 65768627, 'patanarcos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Jose Luis Patan Arcos', NULL, NULL),
(152, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'VISCARRA', 'HIDALGO', 'NELSON IVAN', 3451344, 'LP', 1996, 54, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 63838974, 74649742, 'viscarrahidalgo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Nelson Ivan Viscarra Hidalgo', NULL, NULL);
INSERT INTO `personas` (`id`, `escalafon`, `grado`, `arma`, `especialidad`, `paterno`, `materno`, `nombre`, `ci`, `extension`, `egreso`, `antiguedad`, `sexo`, `estdo_civil`, `fecha_nacimiento`, `domicilio`, `celular`, `celular2`, `email`, `foto`, `nombre_completo`, `created_at`, `updated_at`) VALUES
(153, 'SOF. - SGTO.', 'Sof. My. ', 'Tgrafo. ', 'DEPSS. ', 'PATON', 'CHUQUIMIA', 'GONZALO', 4339937, 'LP', 1996, 44, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 187', 69921233, 79589040, 'patonchuquimia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. My. DEPSS. Gonzalo Paton Chuquimia', NULL, NULL),
(154, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'URENA', 'PINTO', 'LIMBERTH', 3791994, 'CB', 1997, 23, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 8', 69049291, 65999388, 'urenapinto@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Limberth Urena Pinto', NULL, NULL),
(155, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'LIMACHI', 'CHOQUE', 'JUAN EDGAR', 4452489, 'CB', 1997, 13, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 306', 63772938, 75081929, 'limachichoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Edgar Limachi Choque', NULL, NULL),
(156, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ACHO', 'TICONA', 'JOHNNY', 3400435, 'LP', 1997, 38, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 186', 74238869, 63860208, 'achoticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Johnny Acho Ticona', NULL, NULL),
(157, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ALIAGA', 'VARGAS', 'LAZARO ERNAN', 3364793, 'LP', 1997, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 65608974, 74105773, 'aliagavargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Lazaro Ernan Aliaga Vargas', NULL, NULL),
(158, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ARUQUIPA', 'UTURUNCU', 'EDGAR', 4742003, 'LP', 1997, 8, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4495', 70795378, 63583445, 'aruquipauturuncu@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Edgar Aruquipa Uturuncu', NULL, NULL),
(159, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUITO', 'MAMANI', 'JUAN PEDRO', 4745447, 'LP', 1997, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5011', 76403361, 65631591, 'huitomamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Pedro Huito Mamani', NULL, NULL),
(160, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'BARRA', 'VARGAS', 'JAIME', 4315821, 'LP', 1997, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 320', 71318459, 68374468, 'barravargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jaime Barra Vargas', NULL, NULL),
(161, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'QUINTEROS', 'MORALES', 'RUBEN H.', 4772341, 'LP', 1997, 31, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 63144874, 76013479, 'quinterosmorales@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Ruben H. Quinteros Morales', NULL, NULL),
(162, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUANSBER', 'VEDIA', 'FRANKLIN HENRY', 3444647, 'LP', 1997, 29, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 29', 70583788, 72783507, 'huansbervedia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Franklin Henry Huansber Vedia', NULL, NULL),
(163, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'GARCIA', 'SANABRIA', 'OSCAR ROBERTO', 4754915, 'LP', 1997, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5011', 62253847, 72500678, 'garciasanabria@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Oscar Roberto Garcia Sanabria', NULL, NULL),
(164, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CALSINAS', 'MACHACA', 'ROGELIO', 4360434, 'LP', 1997, 22, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 73182068, 75007037, 'calsinasmachaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Rogelio Calsinas Machaca', NULL, NULL),
(165, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CHUVI', 'LLUSCO', 'JAVIER', 4374891, 'LP', 1997, 47, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 15', 72020347, 68041816, 'chuvillusco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Javier Chuvi Llusco', NULL, NULL),
(166, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'OROPEZA', 'JUAREZ', 'JOSE LUIS', 3456556, 'LP', 1997, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 246', 66213728, 62417257, 'oropezajuarez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jose Luis Oropeza Juarez', NULL, NULL),
(167, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CHURA', 'GUTIERREZ', 'RODOLFO LUIS', 4375466, 'LP', 1997, 25, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11115', 68780469, 67968644, 'churagutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Rodolfo Luis Chura Gutierrez', NULL, NULL),
(168, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MARCA', 'NINA', 'RUDY', 3528814, 'OR', 1997, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 72482275, 78702514, 'marcanina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Rudy Marca Nina', NULL, NULL),
(169, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MALLEA', 'BALDERRAMA', 'CARLOS LINO', 3504026, 'OR', 1997, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11115', 67745959, 69662770, 'malleabalderrama@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Carlos Lino Mallea Balderrama', NULL, NULL),
(170, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'NACHO', 'VENTURA', 'NILAN ANTONIO', 3341724, 'OR', 1997, 36, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 246', 76883856, 78159294, 'nachoventura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Nilan Antonio Nacho Ventura', NULL, NULL),
(171, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MATTA', 'GUTIERREZ', 'FRANKLIN', 4741068, 'LP', 1998, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 78744247, 66004138, 'mattagutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Franklin Matta Gutierrez', NULL, NULL),
(172, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUALLPARA', 'QUISPE', 'HECTOR BERNARDO', 2687783, 'LP', 1998, 47, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 62462256, 70862054, 'huallparaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Hector Bernardo Huallpara Quispe', NULL, NULL),
(173, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'RAMOS', 'ESTEBAN MARIO', 4771978, 'LP', 1998, 57, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4245', 65010740, 77040189, 'quisperamos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Esteban Mario Quispe Ramos', NULL, NULL),
(174, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ALEJO', 'ARUQUIPA', 'GUERY RUDY', 4266163, 'LP', 1998, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 71321412, 69220749, 'alejoaruquipa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Guery Rudy Alejo Aruquipa', NULL, NULL),
(175, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'PAREDES', 'JOVE', 'GROVER', 4801968, 'LP', 1998, 41, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 14', 78087808, 68116015, 'paredesjove@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Grover Paredes Jove', NULL, NULL),
(176, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'COARITE', 'APAZA', 'JOSE LUIS', 3377425, 'LP', 1998, 1, 'Masculino', 'Divorsiado', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 13', 74510072, 67531487, 'coariteapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jose Luis Coarite Apaza', NULL, NULL),
(177, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'GUTIERREZ', 'CATACORA', 'MANUEL', 4779076, 'LP', 1998, 18, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 320', 65875299, 71191553, 'gutierrezcatacora@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Manuel Gutierrez Catacora', NULL, NULL),
(178, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'BAUTISTA', 'CALLATA', 'ROGELIO', 4363233, 'LP', 1998, 45, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 8', 64782799, 68934041, 'bautistacallata@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Rogelio Bautista Callata', NULL, NULL),
(179, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'YUJRA', 'CERTAN', 'GERMAN', 3316222, 'LP', 1998, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1626', 77129184, 70830088, 'yujracertan@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. German Yujra Certan', NULL, NULL),
(180, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CHURA', 'CHOQUEVILLCA', 'JAVIER SEBASTIAN', 4744848, 'LP', 1998, 37, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4245', 72480751, 79223714, 'churachoquevillca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Javier Sebastian Chura Choquevillca', NULL, NULL),
(181, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'RIVERA', 'APAZA', 'GERMAN EUGENIO', 4296304, 'LP', 1998, 59, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5011', 74450324, 67414346, 'riveraapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. German Eugenio Rivera Apaza', NULL, NULL),
(182, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUANCA', 'CLARES', 'JAVIER', 4763378, 'LP', 1998, 63, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 70452634, 73842922, 'huancaclares@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Javier Huanca Clares', NULL, NULL),
(183, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ILLATARCO', 'TUMBANI', 'LUIS FERNANDO', 2705915, 'LP', 1998, 60, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 70342208, 76871679, 'illatarcotumbani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Luis Fernando Illatarco Tumbani', NULL, NULL),
(184, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'GUAMAN', 'HUALLPA', 'HECTOR', 4772964, 'LP', 1998, 13, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 8', 78800860, 78520634, 'guamanhuallpa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Hector Guaman Huallpa', NULL, NULL),
(185, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CALLE', 'ROSAS', 'CARLOS EDWIN', 4324920, 'LP', 1998, 35, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1626', 77274441, 76952788, 'callerosas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Carlos Edwin Calle Rosas', NULL, NULL),
(186, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ALTAMIRANO', 'SANTOS', 'ADOLFO', 4761746, 'LP', 1998, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 77284328, 69768558, 'altamiranosantos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Adolfo Altamirano Santos', NULL, NULL),
(187, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CONTRERAS', 'VALENCIA', 'KENNY YECID', 4808867, 'LP', 1998, 34, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 306', 79272257, 78359924, 'contrerasvalencia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Kenny Yecid Contreras Valencia', NULL, NULL),
(188, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ALVAREZ', 'TORRICO', 'ROLANDO ADRIAN', 4805199, 'LP', 1998, 21, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 15', 63756600, 65508446, 'alvareztorrico@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Rolando Adrian Alvarez Torrico', NULL, NULL),
(189, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'GUTIERREZ', 'GUARACHI', 'RODNER VICTOR', 4770825, 'LP', 1998, 50, 'Masculino', 'Divorsiado', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 13', 73855576, 71512048, 'gutierrezguarachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Rodner Victor Gutierrez Guarachi', NULL, NULL),
(190, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'OLIVERA', 'ESCOBAR', 'NELSON MARIO', 3536614, 'OR', 1998, 27, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 77247488, 66677286, 'oliveraescobar@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Nelson Mario Olivera Escobar', NULL, NULL),
(191, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CHAMBI', 'HUACANI', 'FRANKLIN', 4283398, 'LP', 1999, 51, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 29', 70955154, 79701999, 'chambihuacani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Franklin Chambi Huacani', NULL, NULL),
(192, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ACARAPI', 'MAMANI', 'JUAN CARLOS', 4774381, 'LP', 1999, 32, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 7', 70107615, 67441886, 'acarapimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Carlos Acarapi Mamani', NULL, NULL),
(193, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'PINTO', 'MENCIAS', 'MARCO ANTONIO', 3460710, 'LP', 1999, 23, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4495', 66212159, 64483501, 'pintomencias@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Marco Antonio Pinto Mencias', NULL, NULL),
(194, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'GUTIERREZ', 'PAZ', 'BRUCE MIGUEL', 3465394, 'LP', 1999, 49, 'Masculino', 'Divorsiado', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 14', 77285007, 61590812, 'gutierrezpaz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Bruce Miguel Gutierrez Paz', NULL, NULL),
(195, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'MENDOZA', 'JOSE LUIS', 4838158, 'LP', 1999, 20, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 13', 77465034, 64476262, 'quispemendoza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jose Luis Quispe Mendoza', NULL, NULL),
(196, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'LOZA', 'CHURA', 'ELIO HENRY', 4948574, 'LP', 1999, 30, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4245', 72513888, 79131445, 'lozachura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Elio Henry Loza Chura', NULL, NULL),
(197, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CORDOVA', 'CONDORI', 'JUAN CARLOS', 4330508, 'LP', 1999, 52, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 7', 67965464, 63445870, 'cordovacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Carlos Cordova Condori', NULL, NULL),
(198, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'DE LA CRUZ', 'QUISPE', 'RUBEN MAXIMO', 4755015, 'LP', 1999, 38, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4495', 67348981, 74944831, 'de la cruzquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Ruben Maximo De La Cruz Quispe', NULL, NULL),
(199, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HERRERA', 'ENCINAS', 'MARCELO', 4960328, 'LP', 1999, 107, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 187', 75916852, 63750724, 'herreraencinas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Marcelo Herrera Encinas', NULL, NULL),
(200, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'SARDON', 'FRANCISCO FELIX', 4784727, 'LP', 1999, 50, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 246', 68760359, 74599536, 'mamanisardon@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Francisco Felix Mamani Sardon', NULL, NULL),
(201, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ALVAREZ', 'CHOQUE', 'WALTER', 4790546, 'LP', 1999, 35, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4245', 65565959, 79096651, 'alvarezchoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Walter Alvarez Choque', NULL, NULL),
(202, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'LOZA', 'DE LA CRUZ', 'OVIDIO', 4942161, 'LP', 1999, 53, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 14', 73763447, 75211669, 'lozade la cruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Ovidio Loza De La Cruz', NULL, NULL),
(203, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'LLUSCO', 'JOSE LUIS', 4838309, 'LP', 1999, 8, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 61377647, 65222744, 'quispellusco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jose Luis Quispe Llusco', NULL, NULL),
(204, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'TROCHE', 'APAZA', 'DAVID', 4366576, 'LP', 1999, 200, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4495', 63011135, 68927347, 'trocheapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. David Troche Apaza', NULL, NULL),
(205, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MORALES', 'TERRAZAS', 'FERNANDO CARLOS', 4336443, 'LP', 1999, 201, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 29', 70193265, 68305409, 'moralesterrazas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Fernando Carlos Morales Terrazas', NULL, NULL),
(206, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALAVI', 'TORREZ', 'ALFONZO', 4880655, 'LP', 2000, 202, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 70755018, 66517447, 'alavitorrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Alfonzo Alavi Torrez', NULL, NULL),
(207, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'TICONA', 'SOTO', 'FIDEL', 4503847, 'CB', 2000, 15, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 320', 72715797, 77346769, 'ticonasoto@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Fidel Ticona Soto', NULL, NULL),
(208, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CABRERA', 'LOPEZ', 'JOSE LUIS', 4298909, 'LP', 2000, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 61875537, 61552464, 'cabreralopez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jose Luis Cabrera Lopez', NULL, NULL),
(209, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'VELASQUEZ', 'LIMACHI', 'EDGAR LUCIO', 4888149, 'LP', 2000, 74, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11115', 72265334, 66956290, 'velasquezlimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Edgar Lucio Velasquez Limachi', NULL, NULL),
(210, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'AIZA', 'FELIPE JOSE', 3992842, 'LP', 2000, 64, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 68853365, 67406926, 'mamaniaiza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Felipe Jose Mamani Aiza', NULL, NULL),
(211, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'DE LA CRUZ', 'QUISPE', 'PEDRO', 4942877, 'LP', 2000, 65, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 306', 71427601, 76442260, 'de la cruzquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Pedro De La Cruz Quispe', NULL, NULL),
(212, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'TINTAYA', 'MEJIA', 'JHONNY MARTIN', 4773495, 'LP', 2000, 26, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 246', 68004768, 66667698, 'tintayamejia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jhonny Martin Tintaya Mejia', NULL, NULL),
(213, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HILARION', 'MONZON', 'JUAN JOSE', 4791792, 'LP', 2000, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 8', 62717208, 71995359, 'hilarionmonzon@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Jose Hilarion Monzon', NULL, NULL),
(214, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MASCO', 'AGUILAR', 'WALTER RUBEN', 4962004, 'LP', 2000, 55, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 76707039, 62538341, 'mascoaguilar@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Walter Ruben Masco Aguilar', NULL, NULL),
(215, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'PACO', 'ALONZO', 'JORGE', 3448183, 'LP', 2000, 66, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 74499079, 72739670, 'pacoalonzo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Jorge Paco Alonzo', NULL, NULL),
(216, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'COLQUEHUANCA', 'GUTIERREZ', 'OSCAR', 4841288, 'LP', 2000, 58, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5012', 68461029, 65015734, 'colquehuancagutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Oscar Colquehuanca Gutierrez', NULL, NULL),
(217, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'CHOQUE', 'SANTOS LUIS', 4977569, 'LP', 2000, 97, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 74129498, 63343485, 'quispechoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Santos Luis Quispe Choque', NULL, NULL),
(218, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CHIPANA', 'CHOQUE', 'OSCAR', 4835811, 'LP', 2000, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 72809788, 78491253, 'chipanachoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Oscar Chipana Choque', NULL, NULL),
(219, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CORNEJO', 'RAMIREZ', 'JUAN CARLOS', 4880050, 'LP', 2000, 68, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 188', 78543888, 71775750, 'cornejoramirez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Carlos Cornejo Ramirez', NULL, NULL),
(220, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ROJAS', ' ', 'LUIS FERNANDO', 4888133, 'LP', 2000, 4, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 65525791, 76962871, 'rojas @gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Luis Fernando Rojas  ', NULL, NULL),
(221, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CARRASCO', 'RIVERA', 'FREDDY YASMANI', 3423323, 'LP', 2000, 72, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 15', 76775853, 73799168, 'carrascorivera@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Freddy Yasmani Carrasco Rivera', NULL, NULL),
(222, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUE', 'CAPIA', 'IRINEO', 4978992, 'LP', 2000, 92, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 16', 68721823, 68243524, 'choquecapia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Irineo Choque Capia', NULL, NULL),
(223, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'RIVERO', 'CANAZA', 'WILFREDO', 4884469, 'LP', 2000, 34, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 69551759, 68926262, 'riverocanaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Wilfredo Rivero Canaza', NULL, NULL),
(224, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUANCA', 'QUISPE', 'GONZALO', 4842365, 'LP', 2000, 63, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 9', 65971438, 74759655, 'huancaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Gonzalo Huanca Quispe', NULL, NULL),
(225, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CONDORI', 'MOLLERICONA', 'SERGIO MARTIN', 4877628, 'LP', 2000, 84, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1627', 79863928, 75972790, 'condorimollericona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Sergio Martin Condori Mollericona', NULL, NULL),
(226, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUANAPACO', 'ALCON', 'ALFREDO', 2701427, 'LP', 2000, 40, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 76217500, 62557297, 'huanapacoalcon@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Alfredo Huanapaco Alcon', NULL, NULL),
(227, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CONDORI', 'ASTACA', 'HENRY RONALD', 4879054, 'LP', 2000, 41, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 188', 64370905, 76977444, 'condoriastaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Henry Ronald Condori Astaca', NULL, NULL),
(228, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUE', 'GUTIERREZ', 'EDDY JHONNY', 4879446, 'LP', 2000, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 8', 62280017, 67231858, 'choquegutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Eddy Jhonny Choque Gutierrez', NULL, NULL),
(229, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'RIVERO', 'QUISPE', 'CHANIEL LIYSON', 4691923, 'SC', 2000, 90, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 64644376, 73639870, 'riveroquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Chaniel Liyson Rivero Quispe', NULL, NULL),
(230, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'GOMEZ', 'MAMANI', 'EDDY VICTOR', 4980746, 'LP', 2000, 86, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 307', 79661477, 73354424, 'gomezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Eddy Victor Gomez Mamani', NULL, NULL),
(231, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ADUVIRI', 'CUELLAR', 'SANTOS MARIO', 4846481, 'LP', 2001, 3, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 73213016, 69085314, 'aduviricuellar@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Santos Mario Aduviri Cuellar', NULL, NULL),
(232, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUANCA', 'MAMANI', 'RAMIRO', 4327748, 'LP', 2001, 15, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 29', 64515813, 63547212, 'huancamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Ramiro Huanca Mamani', NULL, NULL),
(233, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'PAREDES', 'CHURAHUANCA', 'JUAN', 4992878, 'LP', 2001, 25, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 14', 74326269, 76085174, 'paredeschurahuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Paredes Churahuanca', NULL, NULL),
(234, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'PAYE', 'QUISPE', 'WILFREDO ANDRES', 3447136, 'LP', 2001, 66, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 320', 74975630, 68226028, 'payequispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Wilfredo Andres Paye Quispe', NULL, NULL),
(235, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MAQUERA', 'ACHO', 'EDGAR ALEJANDRO', 4963134, 'LP', 2001, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 69441790, 79948100, 'maqueraacho@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Edgar Alejandro Maquera Acho', NULL, NULL),
(236, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CALLE', 'CONDORI', 'SAMUEL', 4905318, 'LP', 2001, 75, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 30', 77730834, 70991739, 'callecondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Samuel Calle Condori', NULL, NULL),
(237, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUE', 'OLANO', 'ENRIQUE HAROLD', 3450839, 'LP', 2001, 28, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4496', 69690193, 72005358, 'choqueolano@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Enrique Harold Choque Olano', NULL, NULL),
(238, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'LAURA', 'CHAMBI', 'EDGAR', 4748478, 'LP', 2001, 18, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 9', 76846624, 78670967, 'laurachambi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Edgar Laura Chambi', NULL, NULL),
(239, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CALDERON', 'CUSI', 'JUAN DOROTEO', 4967033, 'LP', 2001, 8, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1627', 73741108, 69443115, 'calderoncusi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Doroteo Calderon Cusi', NULL, NULL),
(240, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'MEJIA', 'VENEGAS', 'JAVIER', 4839515, 'LP', 2001, 29, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4246', 78587935, 61030593, 'mejiavenegas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Javier Mejia Venegas', NULL, NULL),
(241, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'SUMY', 'GUARACHI', 'FERNANDO', 4882205, 'LP', 2001, 64, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 8', 77393567, 62828731, 'sumyguarachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Fernando Sumy Guarachi', NULL, NULL),
(242, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'ARACAYO', 'VALENCIA', 'FELIX', 4796176, 'LP', 2001, 80, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 72165805, 71664807, 'aracayovalencia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Felix Aracayo Valencia', NULL, NULL),
(243, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CALLISAYA', 'QUISPE', 'JUAN JOSE', 4835757, 'LP', 2001, 48, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 30', 78393858, 75737707, 'callisayaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Jose Callisaya Quispe', NULL, NULL),
(244, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'SUCAPUCA', 'VALENCIA', 'JUAN', 4326978, 'LP', 2001, 39, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4496', 64740246, 67392031, 'sucapucavalencia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Juan Sucapuca Valencia', NULL, NULL),
(245, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'CORI', 'MENDOZA', 'EDWIN', 4959248, 'LP', 2001, 31, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 307', 77003256, 64719617, 'corimendoza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Edwin Cori Mendoza', NULL, NULL),
(246, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUCHANI', 'BARRETO', 'MARCOS FRANCISCO', 4783954, 'LP', 2001, 13, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5012', 61713671, 75179787, 'huchanibarreto@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Marcos Francisco Huchani Barreto', NULL, NULL),
(247, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'TROCHE', 'QUISPE', 'VLADIMIR', 4918185, 'LP', 2001, 51, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 14', 79226250, 73240104, 'trochequispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Vladimir Troche Quispe', NULL, NULL),
(248, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUANCA', 'ARCOS', 'DAVID ELIOT', 4999685, 'LP', 2001, 54, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4246', 77620739, 66664273, 'huancaarcos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. David Eliot Huanca Arcos', NULL, NULL),
(249, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'GUTIERREZ', 'GROVER', 4993441, 'LP', 2001, 4, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 321', 77294087, 63840860, 'quispegutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Grover Quispe Gutierrez', NULL, NULL),
(250, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'DELGADO', 'GUTIERREZ', 'WILBER', 4996806, 'LP', 2001, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 307', 73318189, 75717316, 'delgadogutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Wilber Delgado Gutierrez', NULL, NULL),
(251, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'PINTO', 'RAMOS', 'ROBERTO', 5076877, 'LP', 2001, 69, 'Masculino', 'Divorsiado', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 15', 73542001, 74782927, 'pintoramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Roberto Pinto Ramos', NULL, NULL),
(252, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'DURAN', 'BUSTENCIO', 'WILLY WILFREDO', 4921538, 'LP', 2001, 59, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 14', 65302508, 65086270, 'duranbustencio@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Willy Wilfredo Duran Bustencio', NULL, NULL),
(253, 'SOF. - SGTO.', 'Sof. 1ro. ', 'Tgrafo. ', 'DEPSS. ', 'HUANAPACO', 'GUTIERREZ', 'ROBERTO', 4920539, 'LP', 2001, 10, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 9', 62688897, 61108578, 'huanapacogutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 1ro. DEPSS. Roberto Huanapaco Gutierrez', NULL, NULL),
(254, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CUSI', 'CHOQUE', 'JONY FRANKLIN', 4817418, 'LP', 2001, 71, 'Masculino', 'Divorsiado', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 63568699, 64177699, 'cusichoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Jony Franklin Cusi Choque', NULL, NULL),
(255, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'FUENTES', 'GALEAN', 'YAMIL RICARDO', 4083305, 'LP', 2001, 86, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1626', 72247773, 61945674, 'fuentesgalean@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Yamil Ricardo Fuentes Galean', NULL, NULL),
(256, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CAHUAYA', 'ULO', 'LEONEL FRANZ', 4878670, 'LP', 2001, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 63546146, 61985102, 'cahuayaulo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Leonel Franz Cahuaya Ulo', NULL, NULL),
(257, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'VELEZ', 'RAMOS', 'HEVER HORACIO', 4037766, 'LP', 2001, 1, 'Masculino', 'Divorsiado', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 16', 73888410, 71886787, 'velezramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Hever Horacio Velez Ramos', NULL, NULL),
(258, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'BLANCO', 'WILA', 'EDWIN', 4871021, 'LP', 2001, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 321', 61702978, 68447935, 'blancowila@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Edwin Blanco Wila', NULL, NULL),
(259, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'VELASCO', 'GUANCA', 'VICTOR HUGO', 4999059, 'LP', 2001, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11116', 72759614, 64196999, 'velascoguanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Victor Hugo Velasco Guanca', NULL, NULL),
(260, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'TENORIO', 'GARCIA', 'DAVID ANGEL', 4979196, 'LP', 2001, 3, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 30', 62124871, 63734380, 'tenoriogarcia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. David Angel Tenorio Garcia', NULL, NULL),
(261, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'FLORES', 'GUILLERMO', 3447781, 'LP', 2001, 3, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 247', 69465550, 66609518, 'mamaniflores@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Guillermo Mamani Flores', NULL, NULL),
(262, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'LAURA', 'WINSOR MANETH', 3455190, 'LP', 2001, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1627', 69425885, 71191184, 'mamanilaura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Winsor Maneth Mamani Laura', NULL, NULL),
(263, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUE', 'ARISPE', 'ERICK WILSON', 6195072, 'LP', 2002, 47, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 15', 63996476, 71663092, 'choquearispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Erick Wilson Choque Arispe', NULL, NULL),
(264, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'ROJAS', 'LOVERA', 'SAMUEL ANTONIO', 4801703, 'LP', 2002, 46, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 187', 79537699, 64098979, 'rojaslovera@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Samuel Antonio Rojas Lovera', NULL, NULL),
(265, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CORI', 'CHOQUE', 'JULIO CESAR', 4835529, 'LP', 2002, 40, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 8', 79788418, 79423745, 'corichoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Julio Cesar Cori Choque', NULL, NULL),
(266, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'QUITIHUARI', 'FLORELVI', 3449378, 'LP', 2002, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11116', 71933379, 74650204, 'quispequitihuari@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Florelvi Quispe Quitihuari', NULL, NULL),
(267, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'ESPEJO', 'VILA', 'YASMANI OSBAL', 4885136, 'LP', 2002, 24, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 70354252, 71103385, 'espejovila@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Yasmani Osbal Espejo Vila', NULL, NULL),
(268, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CONTRERAS', 'CAMEO', 'ALAN RAMON', 4825644, 'LP', 2002, 29, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 65161337, 67656537, 'contrerascameo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Alan Ramon Contreras Cameo', NULL, NULL),
(269, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CAHUAYA', 'QUISPE', 'EDWIN PERCY', 4969550, 'LP', 2002, 69, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5012', 68989249, 74796167, 'cahuayaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Edwin Percy Cahuaya Quispe', NULL, NULL),
(270, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'QUITIHUARI', 'ELSNER', 3449367, 'LP', 2002, 70, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 30', 76517954, 62269390, 'quispequitihuari@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Elsner Quispe Quitihuari', NULL, NULL),
(271, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MENDOZA', 'FARFAN', 'REYNALDO HERMINIO', 4896366, 'LP', 2002, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4496', 74490316, 78998007, 'mendozafarfan@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Reynaldo Herminio Mendoza Farfan', NULL, NULL),
(272, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MACHACA', 'MAMANI', 'OSCAR', 4925764, 'LP', 2002, 61, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 68606958, 79543767, 'machacamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Oscar Machaca Mamani', NULL, NULL),
(273, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHURATA', 'ARUNI', 'FRANZ', 4924442, 'LP', 2002, 51, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1627', 64178488, 64277165, 'churataaruni@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Franz Churata Aruni', NULL, NULL),
(274, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'HILARI', 'NINA', 'EDGAR FREDDY', 4816052, 'LP', 2002, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 77159955, 70317975, 'hilarinina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Edgar Freddy Hilari Nina', NULL, NULL),
(275, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'DIAZ', 'LOZA', 'ROBERTO', 5984708, 'LP', 2002, 44, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 9', 72714684, 79045585, 'diazloza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Roberto Diaz Loza', NULL, NULL),
(276, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'RAMOS', 'MAMANI', 'EDWIN VICTOR', 4331732, 'LP', 2002, 30, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 17', 79220287, 64276236, 'ramosmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Edwin Victor Ramos Mamani', NULL, NULL),
(277, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUEHUANCA', 'QUISPE', 'JHONNY', 4246170, 'LP', 2002, 23, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 70342740, 61829829, 'choquehuancaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Jhonny Choquehuanca Quispe', NULL, NULL),
(278, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'HUANCA', 'QUISPE', 'RENE', 4890716, 'LP', 2002, 21, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5019', 68479225, 61508846, 'huancaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Rene Huanca Quispe', NULL, NULL),
(279, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'GUARACHI', 'CONDORI', 'MARIO ADALID', 4270312, 'LP', 2002, 67, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 22', 77374307, 64338080, 'guarachicondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Mario Adalid Guarachi Condori', NULL, NULL),
(280, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MACHICADO', 'RAMOS', 'EFRAIN G.', 4909718, 'LP', 2002, 45, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 77695089, 67570887, 'machicadoramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Efrain G. Machicado Ramos', NULL, NULL),
(281, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CAHUAYA', 'CHARCA', 'OSCAR', 4839310, 'LP', 2002, 6, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 14', 63967069, 72031696, 'cahuayacharca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Oscar Cahuaya Charca', NULL, NULL),
(282, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'UCHASARA', 'CANDIA', 'MARCO', 4895150, 'LP', 2003, 57, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 307', 61167030, 74530652, 'uchasaracandia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Marco Uchasara Candia', NULL, NULL),
(283, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'GUTIERREZ', 'AGUILAR', 'HERNAN JOHN', 4911856, 'LP', 2003, 51, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 247', 64954186, 79020417, 'gutierrezaguilar@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Hernan John Gutierrez Aguilar', NULL, NULL),
(284, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'HUANCA', 'FREDDY RUBEN', 4916356, 'LP', 2003, 81, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 63770451, 66195685, 'quispehuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Freddy Ruben Quispe Huanca', NULL, NULL),
(285, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'VARGAS', 'CALLISAYA', 'RICHARD', 5978698, 'LP', 2003, 67, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 9', 73996051, 74223653, 'vargascallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Richard Vargas Callisaya', NULL, NULL),
(286, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'ROJAS', 'YASMANI PEDRO', 5976096, 'LP', 2003, 88, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4246', 67477568, 61645683, 'quisperojas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Yasmani Pedro Quispe Rojas', NULL, NULL),
(287, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'FLORES', 'LAIMEZ OSCAR', 5480987, 'LP', 2003, 68, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 188', 73120306, 75288382, 'mamaniflores@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Laimez Oscar Mamani Flores', NULL, NULL),
(288, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHAMBI', 'LAYME', 'HECTOR', 4896877, 'LP', 2003, 32, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11116', 70466109, 70382050, 'chambilayme@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Hector Chambi Layme', NULL, NULL),
(289, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MACHICADO', 'SANTANDER', 'EDWIN', 6017718, 'LP', 2003, 56, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 74240275, 74070925, 'machicadosantander@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Edwin Machicado Santander', NULL, NULL),
(290, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'SILVA', 'LUNA', 'SAUL IVER', 5961162, 'LP', 2003, 60, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5013', 73361125, 79086284, 'silvaluna@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Saul Iver Silva Luna', NULL, NULL),
(291, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHAMBI', 'RODRIGUEZ', 'WILMER RAMIRO', 6002338, 'LP', 2003, 74, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 79532538, 78267372, 'chambirodriguez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Wilmer Ramiro Chambi Rodriguez', NULL, NULL),
(292, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'GUAMAN', 'HUALLPA', 'RUBEN', 5972990, 'LP', 2003, 16, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 15', 78269919, 67136891, 'guamanhuallpa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Ruben Guaman Huallpa', NULL, NULL),
(293, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'RAMOS', 'POMA', 'DUFFY EDWIN', 4763933, 'LP', 2003, 4, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4247', 71193442, 73430188, 'ramospoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Duffy Edwin Ramos Poma', NULL, NULL),
(294, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'COLMENA', 'MENA', 'PLATON WILLY', 4890302, 'LP', 2003, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 76453937, 71136886, 'colmenamena@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Platon Willy Colmena Mena', NULL, NULL),
(295, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'MAMANI', 'AMADO OSWALDO', 6000652, 'LP', 2003, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 61575668, 65639122, 'quispemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Amado Oswaldo Quispe Mamani', NULL, NULL),
(296, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUE', 'MAMANI', 'VICTOR HUGO', 4928249, 'LP', 2003, 70, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 70516142, 69914141, 'choquemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Victor Hugo Choque Mamani', NULL, NULL),
(297, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'SUCOJAYO', 'CHOQUE', 'RENAN', 5964205, 'LP', 2003, 69, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5013', 71483956, 68134841, 'sucojayochoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Renan Sucojayo Choque', NULL, NULL),
(298, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'MAMANI', 'ELIAS WILLY', 4939800, 'LP', 2003, 85, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 77247065, 63072155, 'mamanimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Elias Willy Mamani Mamani', NULL, NULL),
(299, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'MAMANI', 'EFRAIN', 6003772, 'LP', 2003, 59, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 9', 63824683, 65445895, 'mamanimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Efrain Mamani Mamani', NULL, NULL),
(300, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUE', 'LLUSCO', 'EDDY ARMANDO', 4041389, 'OR', 2003, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 66011318, 72661380, 'choquellusco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Eddy Armando Choque Llusco', NULL, NULL),
(301, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'RAMOS', 'RAMOS', 'JOSE LUIS', 5538530, 'PT', 2003, 62, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 15', 74058078, 65220023, 'ramosramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Jose Luis Ramos Ramos', NULL, NULL);
INSERT INTO `personas` (`id`, `escalafon`, `grado`, `arma`, `especialidad`, `paterno`, `materno`, `nombre`, `ci`, `extension`, `egreso`, `antiguedad`, `sexo`, `estdo_civil`, `fecha_nacimiento`, `domicilio`, `celular`, `celular2`, `email`, `foto`, `nombre_completo`, `created_at`, `updated_at`) VALUES
(302, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'TARQUI', 'VILLCA', 'ROGER', 6090604, 'LP', 2004, 200, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 17', 75805696, 76252383, 'tarquivillca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Roger Tarqui Villca', NULL, NULL),
(303, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MORALES', 'ARZE', 'DAVID S.', 5272108, 'CB', 2004, 41, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 189', 66382214, 68691729, 'moralesarze@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. David S. Morales Arze', NULL, NULL),
(304, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'FLORES', 'HUASCO', 'FRANKLIN', 4932867, 'LP', 2004, 77, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 188', 68884710, 73661085, 'floreshuasco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Franklin Flores Huasco', NULL, NULL),
(305, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'QUISPE', 'SERRANO', 'NOBERT BORIS', 4337168, 'LP', 2004, 67, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 321', 74545190, 62397180, 'quispeserrano@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Nobert Boris Quispe Serrano', NULL, NULL),
(306, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'GUTIERREZ', 'LOZA', 'FRANZ', 4790954, 'LP', 2004, 94, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4496', 73305894, 69514424, 'gutierrezloza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Franz Gutierrez Loza', NULL, NULL),
(307, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'PUNE', 'SEGALES', 'ERICK', 6813692, 'LP', 2004, 74, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 15', 79675698, 68645456, 'punesegales@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Erick Pune Segales', NULL, NULL),
(308, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'YUJRA', 'CHOQUE', 'JAIME IVAN', 4838448, 'LP', 2004, 92, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 70091178, 76887628, 'yujrachoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Jaime Ivan Yujra Choque', NULL, NULL),
(309, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'HUANAPACO', 'MAMANI', 'FRANKLIN', 4838329, 'LP', 2004, 82, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11116', 69810639, 79830080, 'huanapacomamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Franklin Huanapaco Mamani', NULL, NULL),
(310, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'LIMACHI', 'LIMACHI', 'CELSO', 4921782, 'LP', 2004, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 61594406, 76523518, 'limachilimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Celso Limachi Limachi', NULL, NULL),
(311, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CANAZA', 'TRUJILLO', 'ANDRES', 5983029, 'LP', 2004, 86, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5012', 79492088, 74725197, 'canazatrujillo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Andres Canaza Trujillo', NULL, NULL),
(312, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CHOQUEHUANCA', 'TARQUI', 'MILTON W.', 5475359, 'LP', 2004, 96, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 321', 62456746, 62752169, 'choquehuancatarqui@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Milton W. Choquehuanca Tarqui', NULL, NULL),
(313, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'HUANAPACO', 'CHOQUEHUANCA', 'HAROLD H.', 5477177, 'LP', 2004, 76, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 247', 78554647, 67990442, 'huanapacochoquehuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Harold H. Huanapaco Choquehuanca', NULL, NULL),
(314, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CALLISAYA', 'CRUZ', 'GERMAN', 6003426, 'LP', 2004, 83, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4246', 71593626, 68028189, 'callisayacruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. German Callisaya Cruz', NULL, NULL),
(315, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'SUXO', 'VLADIMIR', 3447341, 'LP', 2004, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4497', 73822905, 68521543, 'mamanisuxo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Vladimir Mamani Suxo', NULL, NULL),
(316, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'JULIAN', 'GROVER ADOLFO', 4837991, 'LP', 2004, 67, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 308', 74822509, 65147929, 'mamanijulian@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Grover Adolfo Mamani Julian', NULL, NULL),
(317, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'PATZI', 'CALLATA', 'GUIDO ARIEL', 6016768, 'LP', 2004, 54, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 16', 78543698, 74048925, 'patzicallata@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Guido Ariel Patzi Callata', NULL, NULL),
(318, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CONDORI', 'MATTA', 'WILSON', 6089298, 'LP', 2004, 64, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 189', 70805169, 68352172, 'condorimatta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Wilson Condori Matta', NULL, NULL),
(319, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CORTEZ', 'VILLARREAL', 'RUDDY', 4882191, 'LP', 2004, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11117', 69875180, 69030663, 'cortezvillarreal@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Ruddy Cortez Villarreal', NULL, NULL),
(320, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CONDORI', 'APAZA', 'JUAN ALEX', 6003285, 'LP', 2004, 40, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 78508629, 71996168, 'condoriapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Juan Alex Condori Apaza', NULL, NULL),
(321, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'LIMACHI', 'HUANCA', 'CAMILO', 4364010, 'LP', 2004, 23, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 16', 69822021, 66716589, 'limachihuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Camilo Limachi Huanca', NULL, NULL),
(322, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'MAMANI', 'HUISA', 'WILFREDO', 6103751, 'LP', 2004, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11117', 64430603, 75582232, 'mamanihuisa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Wilfredo Mamani Huisa', NULL, NULL),
(323, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'CONDORI', 'CRUZ', 'EVER', 4268301, 'LP', 2004, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 322', 72787775, 78136379, 'condoricruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Ever Condori Cruz', NULL, NULL),
(324, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'PATZI', 'ACHU', 'ROLY MARIO', 6090098, 'LP', 2004, 66, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 10', 61276868, 61189690, 'patziachu@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Roly Mario Patzi Achu', NULL, NULL),
(325, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'DURAN', 'LOPEZ', 'PETER FERNANDO', 6104379, 'LP', 2004, 88, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 248', 77316096, 67139326, 'duranlopez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Peter Fernando Duran Lopez', NULL, NULL),
(326, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'FLORES', 'TITO', 'ARSENIO', 3447778, 'LP', 2004, 81, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4497', 61494397, 79747258, 'florestito@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Arsenio Flores Tito', NULL, NULL),
(327, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'TADEO', 'HUAYLLA', 'REDDY H.', 3452929, 'LP', 2004, 42, 'Masculino', 'Divorsiado', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 322', 67790021, 77402887, 'tadeohuaylla@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Reddy H. Tadeo Huaylla', NULL, NULL),
(328, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'FLORES', 'CANAVIRI', 'MANY HAROLD', 6138648, 'LP', 2004, 65, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 10', 74228257, 78790667, 'florescanaviri@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Many Harold Flores Canaviri', NULL, NULL),
(329, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'NINA', 'CHAMBI', 'JUAN SANTOS', 6134551, 'LP', 2004, 117, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 62617483, 65522713, 'ninachambi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Juan Santos Nina Chambi', NULL, NULL),
(330, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHURA', 'APAZA', 'JESUS REYNALDO', 4833806, 'LP', 2004, 105, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 78025766, 70350856, 'churaapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jesus Reynaldo Chura Apaza', NULL, NULL),
(331, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'YUPANQUI', 'ESTEBAN', 6002034, 'LP', 2004, 112, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4497', 61389049, 74866895, 'condoriyupanqui@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Esteban Condori Yupanqui', NULL, NULL),
(332, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'MARTINEZ', 'ADRIAN GROVER', 4752705, 'LP', 2004, 3, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 17', 75831163, 61068196, 'mamanimartinez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Adrian Grover Mamani Martinez', NULL, NULL),
(333, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'YUJRA', 'MAMANI', 'EDWIN PEDRO', 4978892, 'LP', 2004, 32, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 248', 79061140, 66890599, 'yujramamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Edwin Pedro Yujra Mamani', NULL, NULL),
(334, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'DEPSS. ', 'FLORES', 'MERCADO', 'ERNESTO VICTOR', 4756339, 'LP', 2005, 121, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 15', 74317368, 62764099, 'floresmercado@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. DEPSS. Ernesto Victor Flores Mercado', NULL, NULL),
(335, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CHURA', 'GUTIERREZ', 'ROBERTO CARLOS', 6103699, 'LP', 2005, 110, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 189', 72105372, 61860540, 'churagutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Roberto Carlos Chura Gutierrez', NULL, NULL),
(336, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'MARTINEZ', 'LEANDRO RICHARD', 6135934, 'LP', 2005, 70, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 16', 78379982, 65523864, 'mamanimartinez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Leandro Richard Mamani Martinez', NULL, NULL),
(337, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'QUISPE', 'RAMIRO', 4938943, 'LP', 2005, 62, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 70199116, 75449678, 'huancaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Ramiro Huanca Quispe', NULL, NULL),
(338, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'FERNANDEZ', 'SIRPA', 'RICHARD', 4810281, 'LP', 2005, 45, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5011', 67468183, 62783054, 'fernandezsirpa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Richard Fernandez Sirpa', NULL, NULL),
(339, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CRUZ', 'RAMOS', 'MAYCOL FRANKLIN', 6124961, 'LP', 2005, 40, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 61997434, 69771505, 'cruzramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Maycol Franklin Cruz Ramos', NULL, NULL),
(340, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'SUXO', 'JARA', 'WILLIAM NESTOR', 4298037, 'LP', 2005, 36, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 8', 78987969, 78479282, 'suxojara@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. William Nestor Suxo Jara', NULL, NULL),
(341, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'CONDORI', 'ALFREDO GUALBERTO', 4830909, 'LP', 2005, 26, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 16', 76082186, 75975980, 'mamanicondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Alfredo Gualberto Mamani Condori', NULL, NULL),
(342, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'SANCHEZ', 'CONDORI', 'JORGE ADALID', 4994478, 'LP', 2005, 46, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 31', 71267526, 76593068, 'sanchezcondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jorge Adalid Sanchez Condori', NULL, NULL),
(343, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'SANCHEZ', 'SULLCA', 'ALEXANDER', 5473825, 'LP', 2005, 24, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 77209354, 73375903, 'sanchezsullca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Alexander Sanchez Sullca', NULL, NULL),
(344, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CARITA', 'SANTALLA', 'RICARDO FELIX', 4924373, 'LP', 2005, 34, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 75962545, 73921847, 'caritasantalla@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Ricardo Felix Carita Santalla', NULL, NULL),
(345, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CUTILI', 'GROVER', 5964951, 'LP', 2005, 37, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1628', 72377944, 70084046, 'quispecutili@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Grover Quispe Cutili', NULL, NULL),
(346, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'LIMACHI', 'RICHARD', 5973614, 'LP', 2005, 164, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 31', 63335505, 77980558, 'mamanilimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Richard Mamani Limachi', NULL, NULL),
(347, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'YANEZ', 'MACEDA', 'HECTOR', 6138950, 'LP', 2005, 6, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5013', 73885324, 62715497, 'yanezmaceda@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Hector Yanez Maceda', NULL, NULL),
(348, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'DELGADO', 'LOPEZ', 'DIONY', 5053242, 'LP', 2005, 21, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 65916013, 64301708, 'delgadolopez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Diony Delgado Lopez', NULL, NULL),
(349, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TROCHE', 'QUISPE', 'EDDY', 6135334, 'LP', 2005, 20, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 248', 68968845, 72486698, 'trochequispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Eddy Troche Quispe', NULL, NULL),
(350, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUEHUANCA', 'TARQUI', 'GROVER', 6020239, 'LP', 2005, 35, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 70260268, 78624612, 'choquehuancatarqui@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Grover Choquehuanca Tarqui', NULL, NULL),
(351, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'DE LA CRUZ', 'LUIS DIEGO', 6028958, 'LP', 2005, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 63121463, 64797965, 'quispede la cruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Luis Diego Quispe De La Cruz', NULL, NULL),
(352, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'POMA', 'HEBER', 6016281, 'LP', 2005, 9, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1628', 74750048, 75182216, 'quispepoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Heber Quispe Poma', NULL, NULL),
(353, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'QUISPE', 'JERSY', 6147010, 'LP', 2005, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4247', 61144637, 77220872, 'condoriquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jersy Condori Quispe', NULL, NULL),
(354, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'YUPANQUI', 'ISSAC DAMIAN', 3458951, 'LP', 2005, 27, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 31', 69709001, 72009535, 'condoriyupanqui@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Issac Damian Condori Yupanqui', NULL, NULL),
(355, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUE', 'MAMANI', 'GROVER', 4928251, 'LP', 2005, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11117', 76113717, 72288354, 'choquemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Grover Choque Mamani', NULL, NULL),
(356, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CASTANETA', 'YUJRA', 'HENRY ARIEL', 4982717, 'LP', 2005, 39, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 10', 72983575, 68617860, 'castanetayujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Henry Ariel Castaneta Yujra', NULL, NULL),
(357, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PALLI', 'BLANCO', 'HUGO ORLANDINI', 4936895, 'LP', 2005, 33, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 248', 78929053, 70576168, 'palliblanco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Hugo Orlandini Palli Blanco', NULL, NULL),
(358, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'YUJRA', 'DE LA CRUZ', 'OSCAR REMBERTO', 5964449, 'LP', 2005, 41, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 10', 63705541, 61033293, 'yujrade la cruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Oscar Remberto Yujra De La Cruz', NULL, NULL),
(359, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHIPANA', 'QUISPE', 'CARLOS DARIO', 4936072, 'LP', 2005, 13, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 72794409, 70126019, 'chipanaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Carlos Dario Chipana Quispe', NULL, NULL),
(360, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'QUISPE', 'FREDDY WILLY', 6737454, 'LP', 2005, 31, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5014', 74650596, 76505028, 'mamaniquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Freddy Willy Mamani Quispe', NULL, NULL),
(361, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'APAZA', 'SANTOS SIMON', 6046520, 'LP', 2005, 19, 'Masculino', 'Divorsiado', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 16', 67377403, 64933464, 'condoriapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Santos Simon Condori Apaza', NULL, NULL),
(362, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHURATA', 'ARUNI', 'TEODORO', 6103600, 'LP', 2005, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 72634923, 68339947, 'churataaruni@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Teodoro Churata Aruni', NULL, NULL),
(363, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MARQUEZ', 'SALGUEIRO', 'JOSE LUIS', 6035206, 'LP', 2005, 29, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11118', 72066437, 74022718, 'marquezsalgueiro@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Marquez Salgueiro', NULL, NULL),
(364, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUE', 'GUTIERREZ', 'ERIC OMAR', 6029291, 'LP', 2005, 23, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 11', 79819625, 69272415, 'choquegutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Eric Omar Choque Gutierrez', NULL, NULL),
(365, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MACHACA', 'MAMANI', 'WILFREDO', 4925784, 'LP', 2006, 90, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 9', 61918075, 76261840, 'machacamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Wilfredo Machaca Mamani', NULL, NULL),
(366, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'PALACIOS', 'CAHUAYA', 'MIGUEL ANGEL', 6132503, 'LP', 2006, 94, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 17', 72268663, 70551633, 'palacioscahuaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Miguel Angel Palacios Cahuaya', NULL, NULL),
(367, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'HUISA', 'RICARDO JULIAN', 4805290, 'LP', 2006, 15, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11115', 79288663, 70708692, 'mamanihuisa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Ricardo Julian Mamani Huisa', NULL, NULL),
(368, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'CHIPANA', 'DAINOR', 4321465, 'LP', 2006, 87, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 67855571, 65534284, 'huancachipana@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Dainor Huanca Chipana', NULL, NULL),
(369, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'LIMACHI', 'CHAVEZ', 'WILLY', 4981194, 'LP', 2006, 51, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 247', 78325391, 67340946, 'limachichavez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Willy Limachi Chavez', NULL, NULL),
(370, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HILAYA', 'MACHACA', 'DANDER VALENTIN', 4931932, 'LP', 2006, 109, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 75927709, 77103797, 'hilayamachaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Dander Valentin Hilaya Machaca', NULL, NULL),
(371, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'AQUINO', 'DE LA CRUZ', 'JULIO CESAR', 6138219, 'LP', 2006, 75, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 308', 73172239, 64279283, 'aquinode la cruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Julio Cesar Aquino De La Cruz', NULL, NULL),
(372, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAVEZ', 'QUISPE', 'WLADIMIR', 4913206, 'LP', 2006, 89, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 16', 68040463, 61827640, 'chavezquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Wladimir Chavez Quispe', NULL, NULL),
(373, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MACHACA', 'MAMANI', 'VICTOR HUGO', 5956924, 'LP', 2006, 72, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11117', 65147897, 71218092, 'machacamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Victor Hugo Machaca Mamani', NULL, NULL),
(374, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'FERNANDEZ', 'AVILES', 'ALBERT', 5931022, 'LP', 2006, 47, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 72639853, 69575933, 'fernandezaviles@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Albert Fernandez Aviles', NULL, NULL),
(375, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'YUJRA', 'MARCOS EMILIO', 3446780, 'LP', 2006, 117, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 10', 74537706, 75151978, 'quispeyujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Marcos Emilio Quispe Yujra', NULL, NULL),
(376, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CATARI', 'GAVINCHA', 'JUAN CARLOS', 6087069, 'LP', 2006, 111, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1628', 72139945, 70266862, 'catarigavincha@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Juan Carlos Catari Gavincha', NULL, NULL),
(377, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CALDERON', 'QUISPE', 'ALVARO JUSTINIANO', 4887837, 'LP', 2006, 8, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4247', 69117026, 79769639, 'calderonquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Alvaro Justiniano Calderon Quispe', NULL, NULL),
(378, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HUALLPA', 'QUISPE', 'VICTOR', 6185008, 'LP', 2006, 56, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 9', 67170629, 68600889, 'huallpaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Victor Huallpa Quispe', NULL, NULL),
(379, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLE', 'ALCAZAR', 'JUAN CARLOS', 6105656, 'LP', 2006, 67, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 17', 70032617, 78189183, 'callealcazar@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Juan Carlos Calle Alcazar', NULL, NULL),
(380, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MATTA', 'QUISPE', 'JUAN CESAR', 6133657, 'LP', 2006, 21, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 62847026, 61217433, 'mattaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Juan Cesar Matta Quispe', NULL, NULL),
(381, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'LOPEZ', 'QUISPE', 'GABRIEL GUIDO', 6160982, 'LP', 2006, 90, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 308', 76158070, 71520743, 'lopezquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Gabriel Guido Lopez Quispe', NULL, NULL),
(382, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'LIMACHI', 'LIMACHI', 'SANTOS', 5963268, 'LP', 2006, 118, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 16', 77686062, 79967890, 'limachilimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Santos Limachi Limachi', NULL, NULL),
(383, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'ESCOBAR', 'ARISON RONALD', 3386537, 'LP', 2006, 74, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4247', 79231424, 64515158, 'quispeescobar@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Arison Ronald Quispe Escobar', NULL, NULL),
(384, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CONDORI', 'RUDDY', 6184193, 'LP', 2006, 120, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 309', 69479337, 62563370, 'quispecondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Ruddy Quispe Condori', NULL, NULL),
(385, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MENDOZA', 'GUTIERREZ', 'GONZALO', 6045640, 'LP', 2006, 53, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 76823945, 64081468, 'mendozagutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Gonzalo Mendoza Gutierrez', NULL, NULL),
(386, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'SEGALES', 'VILLEGAS', 'DIETER MARCELO', 4780077, 'LP', 2006, 123, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 68292815, 72536785, 'segalesvillegas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Dieter Marcelo Segales Villegas', NULL, NULL),
(387, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'TOLA', 'ERLAN', 6053992, 'LP', 2006, 104, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 17', 77481796, 62983584, 'mamanitola@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Erlan Mamani Tola', NULL, NULL),
(388, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MOLLO', 'PACHACUTE', 'DAYNOR KENTER', 6771558, 'LP', 2006, 18, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 75132028, 66732106, 'mollopachacute@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Daynor Kenter Mollo Pachacute', NULL, NULL),
(389, 'SOF. - SGTO.', 'Sof. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'TICONA', 'FELIX', 4304511, 'LP', 2006, 98, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 324', 77741656, 76253645, 'mamaniticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. 2do. Tgrafo. Felix Mamani Ticona', NULL, NULL),
(390, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'MAMANI', 'EDWIN ANGEL', 6158116, 'LP', 2006, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 72034188, 78420045, 'quispemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Edwin Angel Quispe Mamani', NULL, NULL),
(391, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'NICASIO', 'ALANOCA', 'MARCOS SERGIO', 3558585, 'OR', 2006, 61, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 76836486, 66500023, 'nicasioalanoca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Marcos Sergio Nicasio Alanoca', NULL, NULL),
(392, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PEREZ', 'MAMANI', 'FELIX', 5940992, 'LP', 2006, 4, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 16', 61054711, 67241848, 'perezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Felix Perez Mamani', NULL, NULL),
(393, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUEHUANCA', 'SIRPA', 'NELSON', 4363967, 'LP', 2006, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1628', 65774279, 71333186, 'choquehuancasirpa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Nelson Choquehuanca Sirpa', NULL, NULL),
(394, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CASAS', 'MAMANI', 'WILLIAM', 6140935, 'LP', 2007, 24, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11118', 78855522, 73912279, 'casasmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. William Casas Mamani', NULL, NULL),
(395, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MENDEZ', 'GUTIERREZ', 'REYNALDO', 5601018, 'BE', 2007, 22, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 322', 67725989, 70392712, 'mendezgutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Reynaldo Mendez Gutierrez', NULL, NULL),
(396, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'YUJRA', 'OSCAR HUMBERTO', 6081189, 'LP', 2007, 9, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 322', 63430291, 65415290, 'quispeyujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Oscar Humberto Quispe Yujra', NULL, NULL),
(397, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CRUZ', 'WILSON ESTANISLAO', 5967802, 'LP', 2007, 13, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 10', 79064451, 67181282, 'quispecruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilson Estanislao Quispe Cruz', NULL, NULL),
(398, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHIPANA', 'LIMACHI', 'ROLANDO', 4895647, 'LP', 2007, 20, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4497', 67810778, 67338305, 'chipanalimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Rolando Chipana Limachi', NULL, NULL),
(399, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALANOCA', 'ALANOCA', 'RICHARD', 6099599, 'LP', 2007, 21, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5013', 63023458, 76616619, 'alanocaalanoca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Richard Alanoca Alanoca', NULL, NULL),
(400, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'VILA', 'HUANCA', 'ROGER JHOVANNY', 6157328, 'LP', 2007, 50, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 62533773, 79634597, 'vilahuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roger Jhovanny Vila Huanca', NULL, NULL),
(401, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'RAMIREZ', 'HUANCA', 'ERLAND YHONN', 6135346, 'LP', 2007, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 189', 77687039, 79580663, 'ramirezhuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Erland Yhonn Ramirez Huanca', NULL, NULL),
(402, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'AGUIRRE', 'VEDIA', 'YAMIL GUSTAVO', 6140260, 'LP', 2007, 17, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 75345620, 65558980, 'aguirrevedia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Yamil Gustavo Aguirre Vedia', NULL, NULL),
(403, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HUAYNOCA', 'TARQUI', 'ALEX HEBERT', 6151108, 'LP', 2007, 16, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 70999046, 73933864, 'huaynocatarqui@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Alex Hebert Huaynoca Tarqui', NULL, NULL),
(404, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'MAMANI', 'EDDY OSCAR', 6725336, 'LP', 2007, 170, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11118', 76066354, 65195676, 'mamanimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Eddy Oscar Mamani Mamani', NULL, NULL),
(405, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'AYALA', 'PATZI', 'ZENOBIO', 4916285, 'LP', 2007, 30, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 11', 67461879, 63027994, 'ayalapatzi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Zenobio Ayala Patzi', NULL, NULL),
(406, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAMBI', 'CHIPANA', 'DIEGO HERNAN', 6107949, 'LP', 2007, 14, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 62776341, 64161588, 'chambichipana@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Diego Hernan Chambi Chipana', NULL, NULL),
(407, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUEHUANCA', 'QUISPE', 'ROLY', 4246172, 'LP', 2007, 117, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11118', 78426243, 62719360, 'choquehuancaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roly Choquehuanca Quispe', NULL, NULL),
(408, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CORI', 'MAMANI', 'RUBEN', 4920935, 'LP', 2007, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 11', 70833993, 63573815, 'corimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Ruben Cori Mamani', NULL, NULL),
(409, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'SALAS', 'CALLIZAYA', 'VIDAL', 6733618, 'LP', 2007, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4498', 69294262, 71646029, 'salascallizaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Vidal Salas Callizaya', NULL, NULL),
(410, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ZARATE', 'LOZA', 'GROVER DAVID', 6732659, 'LP', 2007, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5014', 69717783, 71110355, 'zarateloza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Grover David Zarate Loza', NULL, NULL),
(411, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'YUJRA', 'FRANKLIN LUIS', 6048372, 'LP', 2007, 36, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 16', 65107146, 72779943, 'quispeyujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Franklin Luis Quispe Yujra', NULL, NULL),
(412, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLISAYA', 'CORSINO', 'JIMMY OSMAR', 6155569, 'LP', 2007, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 309', 66377839, 71503207, 'callisayacorsino@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jimmy Osmar Callisaya Corsino', NULL, NULL),
(413, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'LEON', 'ESTRADA', 'MAGNO', 6765733, 'LP', 2007, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 17', 69192381, 73330105, 'leonestrada@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Magno Leon Estrada', NULL, NULL),
(414, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONCHA', 'LUCANA', 'RAUL', 6150396, 'LP', 2007, 118, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 309', 71094243, 74400876, 'conchalucana@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Raul Concha Lucana', NULL, NULL),
(415, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ACHO', 'PATZI', 'NELSON', 6727140, 'LP', 2008, 43, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 309', 75153860, 79452678, 'achopatzi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Nelson Acho Patzi', NULL, NULL),
(416, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'MAMANI', 'BETO HUMBERTO', 6732011, 'LP', 2008, 123, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 66508275, 78473731, 'quispemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Beto Humberto Quispe Mamani', NULL, NULL),
(417, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'ESCOBAR', 'BALVOA', 'ZENON', 6813655, 'LP', 2008, 160, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 71189716, 62779665, 'escobarbalvoa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Zenon Escobar Balvoa', NULL, NULL),
(418, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MORALES', 'ARZE', 'RENATO', 7758384, 'CB', 2008, 108, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 249', 79801219, 70528669, 'moralesarze@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Renato Morales Arze', NULL, NULL),
(419, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CORTEZ', 'POMA', 'ROLANDO ELVIS', 6095604, 'LP', 2008, 106, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 69828946, 64992140, 'cortezpoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Rolando Elvis Cortez Poma', NULL, NULL),
(420, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'CORTEZ', 'JOSE LUIS', 6019041, 'LP', 2008, 49, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 31', 77579801, 78910641, 'apazacortez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Apaza Cortez', NULL, NULL),
(421, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'DELGADO', 'MAMANI', 'LUIS FERNANDO', 3409677, 'LP', 2008, 70, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 76451165, 68856525, 'delgadomamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Luis Fernando Delgado Mamani', NULL, NULL),
(422, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISBERT', 'VALENZUELA', 'PABLO ENRIQUE', 6104357, 'LP', 2008, 88, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 69398949, 72966438, 'quisbertvalenzuela@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Pablo Enrique Quisbert Valenzuela', NULL, NULL),
(423, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'HERRERA', 'HECTOR', 6064671, 'LP', 2008, 73, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 15', 76773194, 74379683, 'condoriherrera@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Hector Condori Herrera', NULL, NULL),
(424, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'KANTUTA', 'PACO', 'RODOLFO', 6742190, 'LP', 2008, 25, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 77033831, 75149823, 'kantutapaco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Rodolfo Kantuta Paco', NULL, NULL),
(425, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MIRANDA', 'RAMOS', 'ROGER', 6770965, 'LP', 2008, 62, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 32', 73783676, 64386197, 'mirandaramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roger Miranda Ramos', NULL, NULL),
(426, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'CAHUAYA', 'ALEX', 6156933, 'LP', 2008, 37, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 18', 78071436, 73852097, 'mamanicahuaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Alex Mamani Cahuaya', NULL, NULL),
(427, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'NINA', 'TICONA', 'WILIAM', 6821256, 'LP', 2008, 65, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 190', 69134673, 67250812, 'ninaticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wiliam Nina Ticona', NULL, NULL),
(428, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'LIMACHI', 'RUDBY', 6746195, 'LP', 2008, 119, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 249', 69568387, 75971408, 'quispelimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Rudby Quispe Limachi', NULL, NULL),
(429, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CAHUAYA', 'HUANAPACO', 'ARIEL', 6007510, 'LP', 2008, 99, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 17', 77162350, 65210720, 'cahuayahuanapaco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Ariel Cahuaya Huanapaco', NULL, NULL),
(430, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TRIGUERO', 'ICHUTA', 'ISAAC JHONNY', 6858243, 'LP', 2008, 55, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 18', 61301499, 77598079, 'trigueroichuta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Isaac Jhonny Triguero Ichuta', NULL, NULL),
(431, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALQUEZ', 'RIVERA', 'IVAN ALEXANDER', 6150223, 'LP', 2008, 78, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 190', 62051569, 72295589, 'alquezrivera@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Ivan Alexander Alquez Rivera', NULL, NULL),
(432, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'ROJAS', 'ALVARO', 7000888, 'LP', 2008, 68, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 249', 74530394, 66940416, 'mamanirojas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Alvaro Mamani Rojas', NULL, NULL),
(433, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'COLQUE', 'MACHICADO', 'JORGE', 6732258, 'LP', 2008, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 18', 79743890, 73673665, 'colquemachicado@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jorge Colque Machicado', NULL, NULL),
(434, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TICONA', 'COLQUE', 'JAIME', 6051434, 'LP', 2008, 181, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4248', 64694381, 66221265, 'ticonacolque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jaime Ticona Colque', NULL, NULL),
(435, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'POMA', 'JUAN CARLOS', 6723683, 'LP', 2008, 50, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 10', 72964906, 63283911, 'mamanipoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Juan Carlos Mamani Poma', NULL, NULL),
(436, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ISIDRO', 'MARCA', 'RENE GONZALO', 6773919, 'LP', 2008, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 190', 75757427, 75088239, 'isidromarca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Rene Gonzalo Isidro Marca', NULL, NULL),
(437, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'VARGAS', 'CHARCAS', 'NELSON', 6764945, 'LP', 2008, 46, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 323', 72680499, 61832486, 'vargascharcas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Nelson Vargas Charcas', NULL, NULL),
(438, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'LIMACHI', 'FREDDY', 6765896, 'LP', 2008, 83, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 11', 70045563, 65870475, 'mamanilimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Freddy Mamani Limachi', NULL, NULL),
(439, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'COLQUE', 'LUIS MARCELO', 7007364, 'LP', 2008, 24, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 77041335, 67343713, 'quispecolque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Luis Marcelo Quispe Colque', NULL, NULL),
(440, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CANAZA', 'CONDORI', 'FRANZ RICHARD', 6121553, 'LP', 2008, 91, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 310', 66320916, 66634546, 'canazacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Franz Richard Canaza Condori', NULL, NULL),
(441, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAYTA', 'ARUBIEZA', 'JUAN CARLOS', 6749716, 'LP', 2008, 48, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 70949619, 71494160, 'maytaarubieza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Juan Carlos Mayta Arubieza', NULL, NULL),
(442, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CRUZ', 'RAMOS', 'OMAR', 6826361, 'LP', 2008, 98, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 18', 72356646, 67295615, 'cruzramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Omar Cruz Ramos', NULL, NULL),
(443, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'VARGAS', 'ROY ROGER', 6732548, 'LP', 2008, 111, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11119', 67478193, 79333104, 'mamanivargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roy Roger Mamani Vargas', NULL, NULL),
(444, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'MAMANI', 'VICTOR ROLANDO', 6130476, 'LP', 2008, 138, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 250', 73112329, 79447321, 'quispemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Victor Rolando Quispe Mamani', NULL, NULL),
(445, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'MARTINEZ', 'FREDDY', 6180267, 'LP', 2008, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1630', 64128225, 69702978, 'mamanimartinez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Freddy Mamani Martinez', NULL, NULL),
(446, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CUTILI', 'CHURA', 'ROGER', 6767323, 'LP', 2008, 112, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 76390994, 68341138, 'cutilichura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roger Cutili Chura', NULL, NULL),
(447, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAQUERA', 'BAUTISTA', 'DIEGO ARMANDO', 6057861, 'LP', 2008, 77, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 69017209, 73380437, 'maquerabautista@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Diego Armando Maquera Bautista', NULL, NULL),
(448, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'BOBARIN', 'ZEBALLOS', 'JESUS REYNALDO', 5551690, 'PT', 2008, 106, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 11', 63261931, 61462918, 'bobarinzeballos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jesus Reynaldo Bobarin Zeballos', NULL, NULL),
(449, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ARUQUIPA', 'MAMANI', 'JUAN CARLOS', 6061585, 'LP', 2008, 69, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4248', 73772547, 72285683, 'aruquipamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Juan Carlos Aruquipa Mamani', NULL, NULL);
INSERT INTO `personas` (`id`, `escalafon`, `grado`, `arma`, `especialidad`, `paterno`, `materno`, `nombre`, `ci`, `extension`, `egreso`, `antiguedad`, `sexo`, `estdo_civil`, `fecha_nacimiento`, `domicilio`, `celular`, `celular2`, `email`, `foto`, `nombre_completo`, `created_at`, `updated_at`) VALUES
(450, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'GUACHALLA', 'RIVEROS', 'GROVER WILFREDO', 5906886, 'CB', 2009, 25, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 15', 64417093, 64570956, 'guachallariveros@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Grover Wilfredo Guachalla Riveros', NULL, NULL),
(451, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'SOLIZ', 'CARLOS ALBERTO', 5193086, 'CB', 2009, 100, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 310', 65245375, 70819088, 'apazasoliz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Carlos Alberto Apaza Soliz', NULL, NULL),
(452, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PORTILLO', 'GUERRERO', 'DAYLER', 5658798, 'CH', 2009, 154, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1629', 74735042, 61535661, 'portilloguerrero@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Dayler Portillo Guerrero', NULL, NULL),
(453, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ROJAS', 'VALENCIA', 'GARY', 4892236, 'LP', 2009, 175, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 308', 71003341, 61106993, 'rojasvalencia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Gary Rojas Valencia', NULL, NULL),
(454, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CUTILI', 'NELSON', 6035896, 'LP', 2009, 151, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 71186754, 63652598, 'quispecutili@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Nelson Quispe Cutili', NULL, NULL),
(455, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MEJIA', 'MARCA', 'WILFREDO', 6036086, 'LP', 2009, 13, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 69379804, 69024739, 'mejiamarca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilfredo Mejia Marca', NULL, NULL),
(456, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'LIMACHI', 'ACARAPI', 'GUIDO EDWIN', 4999487, 'LP', 2009, 174, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4498', 76505148, 71445180, 'limachiacarapi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Guido Edwin Limachi Acarapi', NULL, NULL),
(457, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ACHOCALLA', 'APAZA', 'RAMIRO', 6775319, 'LP', 2009, 128, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5014', 67815927, 72047058, 'achocallaapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Ramiro Achocalla Apaza', NULL, NULL),
(458, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'LAIME', 'JOSE LUIS', 6722187, 'LP', 2009, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1629', 66465224, 63209351, 'apazalaime@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Apaza Laime', NULL, NULL),
(459, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CARRASCO', 'CALLE', 'ALEXANDER', 6046720, 'LP', 2009, 29, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4248', 69741853, 77368137, 'carrascocalle@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Alexander Carrasco Calle', NULL, NULL),
(460, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'ARRATIA', 'JAVIER', 6112242, 'LP', 2009, 158, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 32', 76448117, 64985665, 'huancaarratia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Javier Huanca Arratia', NULL, NULL),
(461, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'QUISPE', 'WALTER', 6724225, 'LP', 2009, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1629', 67634996, 75968727, 'mamaniquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Walter Mamani Quispe', NULL, NULL),
(462, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'CONDORI', 'WILDDER GUSTAVO', 6733395, 'LP', 2009, 168, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4248', 63238337, 62725975, 'huancacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wildder Gustavo Huanca Condori', NULL, NULL),
(463, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ROJAS', 'CRUZ', 'VLADIMIR', 6765683, 'LP', 2009, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 73999950, 76441267, 'rojascruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Vladimir Rojas Cruz', NULL, NULL),
(464, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ARANA', 'PATTY', 'JOSE LUIS', 6732940, 'LP', 2009, 113, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 32', 63055201, 66625047, 'aranapatty@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Arana Patty', NULL, NULL),
(465, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALEGRE', 'CHIPANA', 'EDGAR ALDOLFO', 6730356, 'LP', 2009, 77, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 190', 64028945, 63349349, 'alegrechipana@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Edgar Aldolfo Alegre Chipana', NULL, NULL),
(466, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PACORICONA', 'MULLISACA', 'JOEL DAVID', 6846627, 'LP', 2009, 115, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4498', 75083414, 68054481, 'pacoriconamullisaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Joel David Pacoricona Mullisaca', NULL, NULL),
(467, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'GUTIERREZ', 'RAMOS', 'VIDAL', 6063084, 'LP', 2009, 134, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5014', 62456630, 63009056, 'gutierrezramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Vidal Gutierrez Ramos', NULL, NULL),
(468, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALANOCA', 'ALANOCA', 'WILMER', 6733821, 'LP', 2009, 155, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1629', 79538666, 77571736, 'alanocaalanoca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilmer Alanoca Alanoca', NULL, NULL),
(469, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'LOZA', 'ELDER IVAN', 6767185, 'LP', 2009, 97, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 245', 74617099, 62229926, 'mamaniloza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Elder Ivan Mamani Loza', NULL, NULL),
(470, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'LOZA', 'LUIS FERNANDO', 6954902, 'LP', 2009, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5015', 62187804, 67471401, 'mamaniloza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Luis Fernando Mamani Loza', NULL, NULL),
(471, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TICONA', 'COLQUEHUANCA', 'EDGAR', 6763067, 'LP', 2009, 9, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 19', 70365560, 64359882, 'ticonacolquehuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Edgar Ticona Colquehuanca', NULL, NULL),
(472, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MONASTERIOS', 'POMA', 'ROBERTO EDWIN', 6051506, 'LP', 2009, 173, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 191', 62693781, 76684112, 'monasteriospoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roberto Edwin Monasterios Poma', NULL, NULL),
(473, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'OCHOA', 'VILLAFUERTE', 'RONAL FRANZ', 7024066, 'LP', 2009, 81, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4249', 67974338, 62532652, 'ochoavillafuerte@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Ronal Franz Ochoa Villafuerte', NULL, NULL),
(474, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUE', 'SIRPA', 'MIGUEL', 5999378, 'LP', 2009, 73, 'Masculino', 'Casado(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 11', 69639482, 70593588, 'choquesirpa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Miguel Choque Sirpa', NULL, NULL),
(475, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'LEQUIPE', 'GABRIEL', 7025664, 'LP', 2009, 45, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 33', 71830559, 71638150, 'quispelequipe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Gabriel Quispe Lequipe', NULL, NULL),
(476, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAVEZ', 'SANGALLI', 'VALERIO', 6880519, 'LP', 2009, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 77925947, 75165324, 'chavezsangalli@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Valerio Chavez Sangalli', NULL, NULL),
(477, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CALLISAYA', 'YHURMAN JUNIOR', 6834195, 'LP', 2009, 121, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 19', 75679046, 66824009, 'quispecallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Yhurman Junior Quispe Callisaya', NULL, NULL),
(478, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'YAULI', 'CASTANETA', 'JOSE LUIS', 6731995, 'LP', 2009, 8, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4249', 78910895, 71881233, 'yaulicastaneta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Yauli Castaneta', NULL, NULL),
(479, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'FERNANDEZ', 'GARFIAS', 'VICTOR HUGO', 6140066, 'LP', 2009, 76, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 65654981, 72793252, 'fernandezgarfias@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Victor Hugo Fernandez Garfias', NULL, NULL),
(480, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'LIMACHI', 'SILVA', 'JOSE LUIS', 5995313, 'LP', 2009, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 74669355, 69335221, 'limachisilva@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Limachi Silva', NULL, NULL),
(481, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ARENAS', 'QUENTA', 'JAVIER', 6800098, 'LP', 2009, 105, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4499', 62823814, 78083129, 'arenasquenta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Javier Arenas Quenta', NULL, NULL),
(482, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'LAURA', 'CHAMBI', 'AMERICO', 6151261, 'LP', 2009, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 73100364, 71514911, 'laurachambi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Americo Laura Chambi', NULL, NULL),
(483, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'GUTIERREZ', 'CALLIZAYA', 'CARLOS GIMBERT', 6757356, 'LP', 2009, 24, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 63171956, 63934657, 'gutierrezcallizaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Carlos Gimbert Gutierrez Callizaya', NULL, NULL),
(484, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PACO', 'HUACANI', 'EFRAIN FRANKLIN', 6728069, 'LP', 2009, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 191', 68107428, 68815403, 'pacohuacani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Efrain Franklin Paco Huacani', NULL, NULL),
(485, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'GAVINCHA', 'HUACANI', 'JULIO CESAR', 6849935, 'LP', 2009, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 324', 72508843, 78958611, 'gavinchahuacani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Julio Cesar Gavincha Huacani', NULL, NULL),
(486, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALARCON', 'RODRIGUEZ', 'NELSON', 7044254, 'LP', 2009, 41, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 11', 74986185, 66475016, 'alarconrodriguez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Nelson Alarcon Rodriguez', NULL, NULL),
(487, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CATARI', 'GAVINCHA', 'JOSE LUIS', 6988636, 'LP', 2009, 83, 'Masculino', 'Divorsiado', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5015', 72643564, 78325551, 'catarigavincha@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Catari Gavincha', NULL, NULL),
(488, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CORI', 'MAMANI', 'JHONNY RICHARD', 7009757, 'LP', 2009, 10, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 68870855, 67242232, 'corimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jhonny Richard Cori Mamani', NULL, NULL),
(489, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ULO', 'CONDORI', 'MARCO ANTONIO', 6892733, 'LP', 2009, 57, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 324', 66093241, 70654930, 'ulocondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Marco Antonio Ulo Condori', NULL, NULL),
(490, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CHURATA', 'VLADIMIR', 8460690, 'LP', 2009, 99, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 250', 75461921, 75677656, 'quispechurata@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Vladimir Quispe Churata', NULL, NULL),
(491, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'COLQUE', 'JOSE LUIS', 6889420, 'LP', 2009, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 77417420, 73224807, 'quispecolque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Quispe Colque', NULL, NULL),
(492, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'CONDORI', 'JESUS REYNALDO', 7013557, 'LP', 2009, 43, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 76489621, 79602934, 'apazacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jesus Reynaldo Apaza Condori', NULL, NULL),
(493, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ATANACIO', 'VIRACOCHEA', 'ROGER', 4074033, 'OR', 2009, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 33', 74307588, 64007539, 'atanacioviracochea@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roger Atanacio Viracochea', NULL, NULL),
(494, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CAYOJA', 'MIRANDA', 'RODRIGO IVAN', 5755818, 'OR', 2009, 78, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 77888087, 78222669, 'cayojamiranda@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Rodrigo Ivan Cayoja Miranda', NULL, NULL),
(495, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLISAYA', 'MAMANI', 'NILTON ALVARO', 6871698, 'LP', 2010, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 12', 65595083, 67300535, 'callisayamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Nilton Alvaro Callisaya Mamani', NULL, NULL),
(496, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CAMACHO', 'MACHACA', 'LUIS ANTONIO', 8016499, 'CB', 2010, 25, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 20', 76304842, 74235645, 'camachomachaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Luis Antonio Camacho Machaca', NULL, NULL),
(497, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUE', 'VENTURA', 'BILMER', 6142331, 'LP', 2010, 72, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 323', 61944988, 69087604, 'choqueventura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Bilmer Choque Ventura', NULL, NULL),
(498, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUENTA', 'MAMANI', 'NESTOR', 6785442, 'LP', 2010, 37, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 323', 79290059, 73690401, 'quentamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Nestor Quenta Mamani', NULL, NULL),
(499, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CAHUAYA', 'ROMERO', 'EDSON ARTURO', 6765972, 'LP', 2010, 55, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 75099073, 78617004, 'cahuayaromero@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Edson Arturo Cahuaya Romero', NULL, NULL),
(500, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PAUCARA', 'QUISPE', 'MANUEL OSCAR', 6122878, 'LP', 2010, 51, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 63229861, 63748843, 'paucaraquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Manuel Oscar Paucara Quispe', NULL, NULL),
(501, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'QUISPE', 'ALBARO', 7002207, 'LP', 2010, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 323', 75264079, 66269207, 'mamaniquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Albaro Mamani Quispe', NULL, NULL),
(502, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALAPA', 'CONDORI', 'WILSON EDDY', 6731922, 'LP', 2010, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 76184732, 62349737, 'alapacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilson Eddy Alapa Condori', NULL, NULL),
(503, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TICONA', 'PEREZ', 'RUDY DIONICIO', 6837671, 'LP', 2010, 44, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 18', 69540058, 78403301, 'ticonaperez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Rudy Dionicio Ticona Perez', NULL, NULL),
(504, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CARANI', 'GUTIERREZ', 'ROLY ANGEL', 6734826, 'LP', 2010, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 16', 68192801, 75567086, 'caranigutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roly Angel Carani Gutierrez', NULL, NULL),
(505, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALVAREZ', 'QUISPE', 'MARCO ANTONIO', 6768571, 'LP', 2010, 38, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4499', 65981484, 78019602, 'alvarezquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Marco Antonio Alvarez Quispe', NULL, NULL),
(506, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', ' ', 'PIZARROSO', 'GUSTAVO EFRAIN', 6821644, 'LP', 2010, 40, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 191', 76156867, 63169049, ' pizarroso@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Gustavo Efrain   Pizarroso', NULL, NULL),
(507, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAMBI', 'CHIPANA', 'CLAUDIO WILSON', 6786610, 'LP', 2010, 41, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11119', 65852825, 69602681, 'chambichipana@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Claudio Wilson Chambi Chipana', NULL, NULL),
(508, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'CONDORI', 'JHONNY', 6778555, 'LP', 2010, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 324', 63608801, 75998024, 'apazacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jhonny Apaza Condori', NULL, NULL),
(509, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLISAYA', 'SUXO', 'JULIO JIMMY', 6811979, 'LP', 2010, 52, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 250', 76126350, 74068861, 'callisayasuxo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Julio Jimmy Callisaya Suxo', NULL, NULL),
(510, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MENDOZA', 'POCOACA', 'HENRRY', 6770618, 'LP', 2010, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1630', 71170242, 79230218, 'mendozapocoaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Henrry Mendoza Pocoaca', NULL, NULL),
(511, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'FERNANDEZ', 'NINA', 'IVER', 8437050, 'LP', 2010, 91, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 33', 78455688, 69400581, 'fernandeznina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Iver Fernandez Nina', NULL, NULL),
(512, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLE', 'CUEBA', 'MILTON', 6108640, 'LP', 2010, 56, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5015', 62702223, 79233844, 'callecueba@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Milton Calle Cueba', NULL, NULL),
(513, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUE', 'HUANCA', 'RODOLFO VALENTIN', 6940154, 'LP', 2010, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 19', 71134485, 73592285, 'choquehuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Rodolfo Valentin Choque Huanca', NULL, NULL),
(514, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'PEREZ', 'ALEX ANDRES', 6825966, 'LP', 2010, 82, 'Masculino', 'Casado(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4249', 74259745, 63841570, 'mamaniperez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Alex Andres Mamani Perez', NULL, NULL),
(515, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'VARGAS', 'CRISTIAN ISRAEL', 6998116, 'LP', 2010, 90, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 19', 68288768, 71153830, 'mamanivargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Cristian Israel Mamani Vargas', NULL, NULL),
(516, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HUMIRI', 'MAITA', 'GODDY PORFIRIO', 7060481, 'LP', 2010, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 12', 63994623, 64817036, 'humirimaita@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Goddy Porfirio Humiri Maita', NULL, NULL),
(517, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHIPANA', 'QUISPE', 'MARCO ANTONIO', 6898420, 'LP', 2010, 88, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 34', 67381135, 75281900, 'chipanaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Marco Antonio Chipana Quispe', NULL, NULL),
(518, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PATZI', 'ACHU', 'WILSON', 8343362, 'LP', 2010, 30, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 20', 71511599, 68115099, 'patziachu@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilson Patzi Achu', NULL, NULL),
(519, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'HEREDIA', 'WILSON BLADIMIR', 6079651, 'LP', 2010, 59, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 18', 70399792, 77753972, 'huancaheredia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilson Bladimir Huanca Heredia', NULL, NULL),
(520, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'RODRIGUEZ', 'NINA', 'CRISTOBAL', 7023215, 'LP', 2010, 26, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4500', 72461309, 61276194, 'rodrigueznina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Cristobal Rodriguez Nina', NULL, NULL),
(521, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MENA', 'YUJRA', 'HERNAN', 7017559, 'LP', 2010, 56, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 78668931, 66868101, 'menayujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Hernan Mena Yujra', NULL, NULL),
(522, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'LAURA', 'OSCO', 'JORGE VLADIMIR', 6787351, 'LP', 2010, 71, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 20', 62275161, 64751693, 'lauraosco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jorge Vladimir Laura Osco', NULL, NULL),
(523, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'VILLARROEL', 'CALLE', 'ABIMAEL', 8369059, 'LP', 2011, 8, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 14', 75991924, 75001711, 'villarroelcalle@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Abimael Villarroel Calle', NULL, NULL),
(524, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'TICONA', 'PRIMO GREGORIO', 9227101, 'LP', 2011, 114, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 311', 72733474, 73617793, 'mamaniticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Primo Gregorio Mamani Ticona', NULL, NULL),
(525, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'PACHACUTE', 'MAMANI', 'FAVIO', 6986506, 'LP', 2011, 117, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4500', 66544121, 78056429, 'pachacutemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Favio Pachacute Mamani', NULL, NULL),
(526, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MARTINEZ', 'QUISPE', 'HUGO', 8326659, 'LP', 2011, 109, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5016', 67600101, 70076159, 'martinezquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Hugo Martinez Quispe', NULL, NULL),
(527, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'YUJRA', 'WILFREDO', 6063132, 'LP', 2011, 10, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 78219254, 61900933, 'quispeyujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Wilfredo Quispe Yujra', NULL, NULL),
(528, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'YUJRA', 'COCARICO', 'JOSE ANDRES', 7066183, 'LP', 2011, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 192', 73853249, 78261747, 'yujracocarico@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jose Andres Yujra Cocarico', NULL, NULL),
(529, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'ALEGRIA', 'ARIEL', 7090953, 'LP', 2011, 140, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 251', 79657817, 75167141, 'condorialegria@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Ariel Condori Alegria', NULL, NULL),
(530, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'RAMIREZ', 'MAMANI', 'BENJAMIN MIGUEL', 4817527, 'LP', 2011, 9, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 77185203, 76622886, 'ramirezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Benjamin Miguel Ramirez Mamani', NULL, NULL),
(531, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'COPANA', 'CONDORI', 'MARCO ANTONIO', 6081809, 'LP', 2011, 130, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4498', 79280060, 64113695, 'copanacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Marco Antonio Copana Condori', NULL, NULL),
(532, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'HEREDIA', 'JUVENAL GROVER', 6048083, 'LP', 2011, 79, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 65032390, 61866539, 'huancaheredia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Juvenal Grover Huanca Heredia', NULL, NULL),
(533, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAYTA', 'CHURA', 'MAMERTO CELSO', 6965291, 'LP', 2011, 40, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 249', 65830504, 65577243, 'maytachura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Mamerto Celso Mayta Chura', NULL, NULL),
(534, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'IBANEZ', 'MACHICADO', 'EDSON RAFAEL', 6868647, 'LP', 2011, 103, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4499', 73614302, 79289372, 'ibanezmachicado@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Edson Rafael Ibanez Machicado', NULL, NULL),
(535, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'LIMA', 'LINO GONZALO', 6199936, 'LP', 2011, 31, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 17', 67589354, 71106092, 'mamanilima@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Lino Gonzalo Mamani Lima', NULL, NULL),
(536, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'TICONA', 'SERGIO', 6751308, 'LP', 2011, 99, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 77702140, 67465389, 'apazaticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Sergio Apaza Ticona', NULL, NULL),
(537, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'YUPANQUI', 'SEGARRUNDO', 'EDGAR', 6150142, 'LP', 2011, 34, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 72740011, 72453855, 'yupanquisegarrundo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Edgar Yupanqui Segarrundo', NULL, NULL),
(538, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'LOPEZ', 'COSME', 'WILSON CASTO', 7005279, 'LP', 2011, 96, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 17', 79779668, 77974981, 'lopezcosme@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilson Casto Lopez Cosme', NULL, NULL),
(539, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PEREZ', 'MAMANI', 'JUAN CARLOS', 6876770, 'LP', 2011, 116, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 62728624, 79404209, 'perezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Juan Carlos Perez Mamani', NULL, NULL),
(540, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ARCE', 'FRANCO', 'KJENER', 6507195, 'LP', 2011, 77, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 17', 76389932, 77348021, 'arcefranco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Kjener Arce Franco', NULL, NULL),
(541, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'FLORES', 'QUISPE', 'JOSE LUIS', 7023405, 'LP', 2011, 48, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4499', 70353524, 69315847, 'floresquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jose Luis Flores Quispe', NULL, NULL),
(542, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'LIMACHI', 'JORDAN JULIO', 7050510, 'LP', 2011, 49, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 71582711, 61640739, 'apazalimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jordan Julio Apaza Limachi', NULL, NULL),
(543, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'SALGADO', 'HUAYTA', 'GUIDO ADALID', 6062854, 'LP', 2011, 115, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 191', 75713114, 69257353, 'salgadohuayta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Guido Adalid Salgado Huayta', NULL, NULL),
(544, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CASTRO', 'LOPEZ', 'JUAN AUGUSTO', 7023680, 'LP', 2011, 87, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5016', 70550431, 77826627, 'castrolopez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Juan Augusto Castro Lopez', NULL, NULL),
(545, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'SALAS', 'WILDER ANGEL', 7042765, 'LP', 2011, 16, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11120', 76986392, 63258056, 'mamanisalas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilder Angel Mamani Salas', NULL, NULL),
(546, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CAHUAYA', 'CANAZA', 'LIMBERTH ADELIO', 6948068, 'LP', 2011, 38, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 325', 70790133, 75153262, 'cahuayacanaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Limberth Adelio Cahuaya Canaza', NULL, NULL),
(547, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'ESPINOZA', 'WILSON VENANCIO', 7033838, 'LP', 2011, 97, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 251', 63969862, 63601368, 'condoriespinoza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Wilson Venancio Condori Espinoza', NULL, NULL),
(548, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ARUQUIPA', 'ARUQUIPA', 'ROLAND JHIMY', 7040843, 'LP', 2011, 20, 'Masculino', 'Casado(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 76671630, 66486999, 'aruquipaaruquipa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Roland Jhimy Aruquipa Aruquipa', NULL, NULL),
(549, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MATTA', 'CHOQUEHUANCA', 'GEMMER', 6901988, 'LP', 2011, 93, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 34', 78055854, 61962244, 'mattachoquehuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Gemmer Matta Choquehuanca', NULL, NULL),
(550, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MENDOZA', 'POMA', 'ABEL', 6980158, 'LP', 2011, 108, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 78102629, 67482020, 'mendozapoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Abel Mendoza Poma', NULL, NULL),
(551, 'SOF. - SGTO.', 'Sof. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'FLORES', 'MORALES', 'JHONY', 8324325, 'LP', 2011, 26, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11120', 69360692, 67173815, 'floresmorales@gmail.com', 'uploads/1/2022-04/logo.png', 'Sof. Incl. Tgrafo. Jhony Flores Morales', NULL, NULL),
(552, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'FLORES', 'CAPO', 'ALAN', 9192449, 'LP', 2012, 87, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 77167528, 62322785, 'florescapo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Alan Flores Capo', NULL, NULL),
(553, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'FERNANDEZ', 'ROLANDO DANIEL', 6838943, 'LP', 2012, 47, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 18', 73623173, 66839962, 'huancafernandez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rolando Daniel Huanca Fernandez', NULL, NULL),
(554, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CAHUAYA', 'MAMANI', 'VICTOR HUGO', 6978487, 'LP', 2012, 61, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11119', 74128519, 77944353, 'cahuayamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Victor Hugo Cahuaya Mamani', NULL, NULL),
(555, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'CHOQUE', 'ERICK ELIAS', 8347042, 'LP', 2012, 18, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 310', 71002811, 66647891, 'condorichoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Erick Elias Condori Choque', NULL, NULL),
(556, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ARUQUIPA', 'MAMANI', 'JUAN CARLOS', 7039987, 'LP', 2012, 28, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4500', 63110733, 70868995, 'aruquipamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Juan Carlos Aruquipa Mamani', NULL, NULL),
(557, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'GUTIERREZ', 'CALLISAYA', 'OSCAR', 6890758, 'LP', 2012, 59, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1631', 62423857, 74786392, 'gutierrezcallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Oscar Gutierrez Callisaya', NULL, NULL),
(558, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'RODRIGUEZ', 'CORNEJO', 'ALVARO', 7008134, 'LP', 2012, 63, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 311', 70570399, 77225399, 'rodriguezcornejo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Alvaro Rodriguez Cornejo', NULL, NULL),
(559, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ROMERO', 'QUISPE', 'JORGE EDUARDO', 8442561, 'LP', 2012, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 69253451, 68238861, 'romeroquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jorge Eduardo Romero Quispe', NULL, NULL),
(560, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'SINANI', 'LUIS EDUARDO', 6984961, 'LP', 2012, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 63485898, 71589265, 'quispesinani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Luis Eduardo Quispe Sinani', NULL, NULL),
(561, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ARUQUIPA', 'VILA', 'MIGUEL ANGEL', 6984111, 'LP', 2012, 48, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 326', 68640262, 71876520, 'aruquipavila@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Miguel Angel Aruquipa Vila', NULL, NULL),
(562, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'YUJRA', 'DIEGO JUNIOR', 6989721, 'LP', 2012, 79, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 71469110, 68563406, 'quispeyujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Diego Junior Quispe Yujra', NULL, NULL),
(563, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLE', 'CRUZ', 'WILLY ISRAEL', 7332446, 'OR', 2012, 60, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 18', 66772538, 77574451, 'callecruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Willy Israel Calle Cruz', NULL, NULL),
(564, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'YUJRA', 'CHARCA', 'JESUS REYNALDO', 6798919, 'LP', 2012, 36, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 61564569, 73205725, 'yujracharca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jesus Reynaldo Yujra Charca', NULL, NULL),
(565, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAYTA', 'CHURA', 'OMAR OROSCO', 8311796, 'LP', 2012, 45, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 250', 71605062, 79735583, 'maytachura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Omar Orosco Mayta Chura', NULL, NULL),
(566, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'PEREZ', 'FABIO', 6934648, 'LP', 2012, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 19', 72197759, 63088699, 'mamaniperez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Fabio Mamani Perez', NULL, NULL),
(567, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'TICONA', 'KEA', 'HENRRY', 6866049, 'LP', 2012, 5, 'Masculino', 'Casado(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 73204343, 64780085, 'ticonakea@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Henrry Ticona Kea', NULL, NULL),
(568, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'YLARI', 'ROLANDO TEODORO', 7051172, 'LP', 2012, 66, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 19', 71305416, 76740743, 'apazaylari@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rolando Teodoro Apaza Ylari', NULL, NULL),
(569, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'GUARACHI', 'AGUILAR', 'FRANZ RENE', 6993092, 'LP', 2012, 6, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 62633342, 64759631, 'guarachiaguilar@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Franz Rene Guarachi Aguilar', NULL, NULL),
(570, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CORI', 'MAMANI', 'WILLY WILFREDO', 7009746, 'LP', 2012, 34, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 325', 66028781, 67691587, 'corimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Willy Wilfredo Cori Mamani', NULL, NULL),
(571, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CAHUAYA', 'CANAZA', 'DANNY GUSTAVO', 6948399, 'LP', 2012, 89, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 13', 63492154, 79082388, 'cahuayacanaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Danny Gustavo Cahuaya Canaza', NULL, NULL),
(572, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MEDINA', 'FLORES', 'EDDY NATANAEL', 6148255, 'LP', 2012, 11, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 18', 73718131, 71785702, 'medinaflores@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Eddy Natanael Medina Flores', NULL, NULL),
(573, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'YUJRA', 'ROGER', 7078276, 'LP', 2012, 12, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11120', 63121515, 79587673, 'huancayujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Roger Huanca Yujra', NULL, NULL),
(574, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MENA', 'YUJRA', 'IVAN LUCHO', 7017569, 'LP', 2012, 84, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 251', 64160355, 64183939, 'menayujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ivan Lucho Mena Yujra', NULL, NULL),
(575, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MARCA', 'CHOQUE', 'BISMARK', 6959474, 'LP', 2012, 29, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11121', 73299735, 74898527, 'marcachoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Bismark Marca Choque', NULL, NULL),
(576, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'BUSTILLOS', 'ROSAS', 'MAURICIO EDUARDO', 6180244, 'LP', 2012, 21, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 252', 76310787, 63707541, 'bustillosrosas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Mauricio Eduardo Bustillos Rosas', NULL, NULL),
(577, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'TAMBO', 'SALGADO', 'EDDY HECTOR', 6050968, 'LP', 2012, 96, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 10', 64330149, 76439453, 'tambosalgado@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Eddy Hector Tambo Salgado', NULL, NULL),
(578, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ACHA', 'BALDERRAMA', 'ROLANDO', 6494253, 'CB', 2013, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 70219670, 74225267, 'achabalderrama@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rolando Acha Balderrama', NULL, NULL),
(579, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'VERA', 'WILBER', 6532160, 'CB', 2013, 63, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 13', 66633117, 69705172, 'huancavera@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Wilber Huanca Vera', NULL, NULL),
(580, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'PAREDES', 'EDSON RENE', 6156214, 'LP', 2013, 1, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 32', 61263510, 62684678, 'condoriparedes@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Edson Rene Condori Paredes', NULL, NULL),
(581, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'RAMIREZ', 'QUISPE', 'OLIVER RENAN', 6872581, 'LP', 2013, 19, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 12', 67309780, 65450559, 'ramirezquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Oliver Renan Ramirez Quispe', NULL, NULL),
(582, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLISAYA', 'MAMANI', 'EDWIN FERNANDO', 6902036, 'LP', 2013, 112, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 78759312, 63910058, 'callisayamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Edwin Fernando Callisaya Mamani', NULL, NULL),
(583, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'VILLCA', 'MAMANI', 'OMAR', 6196081, 'LP', 2013, 117, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5015', 66690440, 78938399, 'villcamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Omar Villca Mamani', NULL, NULL),
(584, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'CONDORI', 'ROMER', 6831186, 'LP', 2013, 80, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 12', 77992054, 78698633, 'huancacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Romer Huanca Condori', NULL, NULL),
(585, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'LEQUIPE', 'GUTIERREZ', 'EDGAR RAMIRO', 8340497, 'LP', 2013, 119, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 11', 64734680, 69902478, 'lequipegutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Edgar Ramiro Lequipe Gutierrez', NULL, NULL),
(586, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CALZADA', 'LLUSCO', 'IVAN GUIDO', 7089608, 'LP', 2013, 135, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 310', 73564391, 67625910, 'calzadallusco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ivan Guido Calzada Llusco', NULL, NULL),
(587, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'MAMANI', 'MARTIN', 6946877, 'LP', 2013, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1630', 66895439, 61104324, 'mamanimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Martin Mamani Mamani', NULL, NULL),
(588, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLE', 'QUESO', 'JHEME', 8445479, 'LP', 2013, 84, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 64403330, 64968896, 'callequeso@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jheme Calle Queso', NULL, NULL),
(589, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'OSCO', 'CALLISAYA', 'EFRAIN', 7014634, 'LP', 2013, 149, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 17', 75958981, 66296975, 'oscocallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Efrain Osco Callisaya', NULL, NULL),
(590, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'GUTIERREZ', 'MAMANI', 'JOSE IVAN', 6801471, 'LP', 2013, 39, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1630', 76757615, 78165233, 'gutierrezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jose Ivan Gutierrez Mamani', NULL, NULL),
(591, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUE', 'CHOQUE', 'ALEX ANDRES', 7024625, 'LP', 2013, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 67061154, 66771778, 'choquechoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Alex Andres Choque Choque', NULL, NULL),
(592, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'PAZ', 'QUISPE', 'EDSON ARIEL', 6849140, 'LP', 2013, 72, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4250', 71957356, 64646389, 'pazquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Edson Ariel Paz Quispe', NULL, NULL),
(593, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MASSI', 'QUEZO', 'EDWIN RUDDY', 8443489, 'LP', 2013, 51, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5016', 77125886, 73081594, 'massiquezo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Edwin Ruddy Massi Quezo', NULL, NULL),
(594, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CRUZ', 'BARRA', 'DIEGO VLADIMIR', 6038707, 'LP', 2013, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 19', 61373434, 62356323, 'cruzbarra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Diego Vladimir Cruz Barra', NULL, NULL),
(595, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'BLANCO', 'CONDORI', 'ROGER JUSTINIANO', 6984138, 'LP', 2013, 142, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 18', 79687020, 71195376, 'blancocondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Roger Justiniano Blanco Condori', NULL, NULL),
(596, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'VILLAZANTE', 'JOHNY', 6950565, 'LP', 2013, 146, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 192', 61120128, 72365125, 'apazavillazante@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Johny Apaza Villazante', NULL, NULL);
INSERT INTO `personas` (`id`, `escalafon`, `grado`, `arma`, `especialidad`, `paterno`, `materno`, `nombre`, `ci`, `extension`, `egreso`, `antiguedad`, `sexo`, `estdo_civil`, `fecha_nacimiento`, `domicilio`, `celular`, `celular2`, `email`, `foto`, `nombre_completo`, `created_at`, `updated_at`) VALUES
(597, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'FLORES', 'VICTOR HUGO', 8305928, 'LP', 2013, 84, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4250', 72243692, 70995296, 'mamaniflores@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Victor Hugo Mamani Flores', NULL, NULL),
(598, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAMBI', 'YANA', 'FREDDY', 7024110, 'LP', 2013, 61, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 12', 63454723, 72576591, 'chambiyana@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Freddy Chambi Yana', NULL, NULL),
(599, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAQUERA', 'CONDORI', 'SERGIO CESAR', 6972223, 'LP', 2013, 48, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 34', 69223067, 67054886, 'maqueracondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Sergio Cesar Maquera Condori', NULL, NULL),
(600, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'VALENZUELA', 'CALLISAYA', 'SERGIO RAMIRO', 8303549, 'LP', 2013, 47, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4500', 79401553, 74448012, 'valenzuelacallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Sergio Ramiro Valenzuela Callisaya', NULL, NULL),
(601, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MATTA', 'QUISPE', 'NICOLAS RODRIGO', 6093350, 'LP', 2013, 60, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 62420818, 79725046, 'mattaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Nicolas Rodrigo Matta Quispe', NULL, NULL),
(602, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLE', 'QUISBERT', 'LEONARDO', 6852293, 'LP', 2013, 116, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5016', 72826932, 68302377, 'callequisbert@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Leonardo Calle Quisbert', NULL, NULL),
(603, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HILARI', 'APAZA', 'EDY VLADIMIR', 7064591, 'LP', 2013, 37, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 72546598, 78314301, 'hilariapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Edy Vladimir Hilari Apaza', NULL, NULL),
(604, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ORTIZ', 'VIGABRIEL', 'JUAN GUSTAVO', 9227908, 'LP', 2013, 95, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 192', 66836708, 72326222, 'ortizvigabriel@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Juan Gustavo Ortiz Vigabriel', NULL, NULL),
(605, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'DIAZ', 'LARUTA', 'VLADIMIR', 9982865, 'LP', 2013, 78, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 251', 69343265, 69396315, 'diazlaruta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Vladimir Diaz Laruta', NULL, NULL),
(606, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'JIMENEZ', 'CALLISAYA', 'WILFREDO MARCO', 7082186, 'LP', 2013, 118, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1631', 67364756, 73024401, 'jimenezcallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Wilfredo Marco Jimenez Callisaya', NULL, NULL),
(607, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CHURA', 'QUISPE', 'WILLIAM JUAN', 10927941, 'LP', 2013, 15, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 76506300, 70337135, 'churaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. William Juan Chura Quispe', NULL, NULL),
(608, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'BAUTISTA', 'COARITE', 'BRAYAN ELMER', 6167337, 'LP', 2013, 50, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 34', 64356028, 61384975, 'bautistacoarite@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Brayan Elmer Bautista Coarite', NULL, NULL),
(609, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'PATZI', 'MACHACA', 'RAMIRO', 8308492, 'LP', 2013, 70, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 74226658, 61917842, 'patzimachaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ramiro Patzi Machaca', NULL, NULL),
(610, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'CONDORI', 'DITER ALVARO', 9254369, 'LP', 2013, 32, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 71024214, 63511942, 'apazacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Diter Alvaro Apaza Condori', NULL, NULL),
(611, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HUAYLLUCO', 'MAMANI', 'RUDY MIKI', 6745697, 'LP', 2013, 54, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4501', 66164697, 65887719, 'huayllucomamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rudy Miki Huaylluco Mamani', NULL, NULL),
(612, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'RIVERA', 'ALARCON', 'LEONEL', 8352444, 'LP', 2013, 14, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 21', 75465637, 70834052, 'riveraalarcon@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Leonel Rivera Alarcon', NULL, NULL),
(613, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAMBI', 'QUINO', 'RUDY SERGIO', 8307632, 'LP', 2013, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 193', 77921425, 72812710, 'chambiquino@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rudy Sergio Chambi Quino', NULL, NULL),
(614, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'LIMACHI', 'CORONEL', 'SANTOS SADDY', 4828941, 'LP', 2013, 124, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4251', 66809355, 70715168, 'limachicoronel@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Santos Saddy Limachi Coronel', NULL, NULL),
(615, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'MANCACHI', 'ANDRES JUSMAR', 7041325, 'LP', 2013, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 35', 63940651, 75832891, 'condorimancachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Andres Jusmar Condori Mancachi', NULL, NULL),
(616, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MATTA', 'CHOQUE', 'MARCO ANTONIO', 6988925, 'LP', 2013, 4, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5017', 62703150, 62753606, 'mattachoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Marco Antonio Matta Choque', NULL, NULL),
(617, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HUARAHUARA', 'MAMANI', 'RUDY', 9210978, 'LP', 2013, 14, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 193', 69634235, 75014223, 'huarahuaramamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rudy Huarahuara Mamani', NULL, NULL),
(618, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CORAZON', 'QUISPE', 'JORGE LUIS', 9109961, 'LP', 2013, 49, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 252', 76331585, 65599890, 'corazonquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jorge Luis Corazon Quispe', NULL, NULL),
(619, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'PATZI', 'MAQUERA', 'GONZALO', 7064378, 'LP', 2013, 12, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 35', 77125532, 65998311, 'patzimaquera@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Gonzalo Patzi Maquera', NULL, NULL),
(620, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CHIARA', 'ORELLANA', 'GROVER', 7341290, 'OR', 2013, 76, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 33', 65412164, 78955730, 'chiaraorellana@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Grover Chiara Orellana', NULL, NULL),
(621, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'PEREZ', 'SILVESTRE', 'HERNAN', 6799351, 'LP', 2014, 95, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 18', 78248972, 68580263, 'perezsilvestre@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Hernan Perez Silvestre', NULL, NULL),
(622, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'GUTIERREZ', 'LIMACHI', 'WILLIAM JUAN', 6840413, 'LP', 2014, 140, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 18', 78863163, 67009161, 'gutierrezlimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. William Juan Gutierrez Limachi', NULL, NULL),
(623, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'LUNA', 'QUISPE', 'EDDY HELMER', 7017306, 'LP', 2014, 46, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11119', 67971213, 72807396, 'lunaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Eddy Helmer Luna Quispe', NULL, NULL),
(624, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'VILLCA', 'GUIDO', 7059747, 'LP', 2014, 49, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1631', 79537942, 75139342, 'mamanivillca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Guido Mamani Villca', NULL, NULL),
(625, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLE', 'ALCAZAR', 'GROVER JAN', 9215381, 'LP', 2014, 73, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 12', 63351732, 70779248, 'callealcazar@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Grover Jan Calle Alcazar', NULL, NULL),
(626, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'SILLO', 'TAPIA', 'GUIDO MARCOS', 9176378, 'LP', 2014, 11, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 76730683, 71798906, 'sillotapia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Guido Marcos Sillo Tapia', NULL, NULL),
(627, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'FLORES', 'MAMANI', 'ROGER GONZALO', 5981613, 'LP', 2014, 47, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 325', 63913538, 79454155, 'floresmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Roger Gonzalo Flores Mamani', NULL, NULL),
(628, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MENDOZA', 'SILLERICO', 'GROBER', 7055427, 'LP', 2014, 14, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 13', 65480838, 78359188, 'mendozasillerico@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Grober Mendoza Sillerico', NULL, NULL),
(629, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'MAMANI', 'FRANK WILSON', 8441798, 'LP', 2014, 94, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 73422637, 64833223, 'quispemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Frank Wilson Quispe Mamani', NULL, NULL),
(630, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ZUNIGA', 'CONDORI', 'GROVER', 7065122, 'LP', 2014, 44, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11120', 66312099, 71344796, 'zunigacondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Grover Zuniga Condori', NULL, NULL),
(631, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CUSI', 'CHOQUE', 'WILMER', 9208286, 'LP', 2014, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 61810640, 68123700, 'cusichoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Wilmer Cusi Choque', NULL, NULL),
(632, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'AGUILAR', 'LIMACHI', 'ADALID YVER', 8310629, 'LP', 2014, 115, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 20', 74139969, 66080526, 'aguilarlimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Adalid Yver Aguilar Limachi', NULL, NULL),
(633, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'GUTIERREZ', 'VICENCIO', 'GUSTAVO', 9216046, 'LP', 2014, 80, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 64165142, 72270060, 'gutierrezvicencio@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Gustavo Gutierrez Vicencio', NULL, NULL),
(634, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ESCOBAR', 'LIMACHI', 'MARCELO', 6919656, 'LP', 2014, 65, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 325', 78201736, 78038551, 'escobarlimachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Marcelo Escobar Limachi', NULL, NULL),
(635, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'SILVESTRE', 'RUDDY SAMUEL', 6949634, 'LP', 2014, 69, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 13', 65963220, 61458526, 'quispesilvestre@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ruddy Samuel Quispe Silvestre', NULL, NULL),
(636, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'PACOHUANCA', 'CUEVAS', 'EDDY CESAR', 7087536, 'LP', 2014, 119, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 72636396, 63814820, 'pacohuancacuevas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Eddy Cesar Pacohuanca Cuevas', NULL, NULL),
(637, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'CASTRO', 'CRISTIAN ALFRED', 6992982, 'LP', 2014, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5017', 79607075, 78319637, 'condoricastro@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Cristian Alfred Condori Castro', NULL, NULL),
(638, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'LAURA', 'CONDORI', 'VLADIMIR', 9181328, 'LP', 2014, 87, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 20', 65464041, 69067905, 'lauracondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Vladimir Laura Condori', NULL, NULL),
(639, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'TICONA', 'ROLANDO', 9942400, 'LP', 2014, 90, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 14', 64097987, 72897570, 'mamaniticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rolando Mamani Ticona', NULL, NULL),
(640, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'DIAZ', 'POMA', 'GARY VLADIMIR', 8325616, 'LP', 2014, 108, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4501', 65488829, 62116090, 'diazpoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Gary Vladimir Diaz Poma', NULL, NULL),
(641, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MORALES', 'VILLEGAS', 'MARCELO', 8330370, 'LP', 2014, 128, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 312', 71558191, 67934580, 'moralesvillegas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Marcelo Morales Villegas', NULL, NULL),
(642, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANAPACO', 'RIVERO', 'OMAR GUSTAVO', 7093026, 'LP', 2014, 97, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 74852442, 74302206, 'huanapacorivero@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Omar Gustavo Huanapaco Rivero', NULL, NULL),
(643, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'LAURA', 'CANAVIRI', 'EDWIN REYNALDO', 8344390, 'LP', 2014, 12, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 20', 69375623, 68434006, 'lauracanaviri@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Edwin Reynaldo Laura Canaviri', NULL, NULL),
(644, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'LAYME', 'LARICO', 'CRISTIAN RUDDY', 9240527, 'LP', 2014, 42, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 69332756, 64105687, 'laymelarico@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Cristian Ruddy Layme Larico', NULL, NULL),
(645, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'RAMOS', 'POMA', 'DIEGO DIETER', 9224718, 'LP', 2014, 53, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 21', 66297629, 61305392, 'ramospoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Diego Dieter Ramos Poma', NULL, NULL),
(646, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'ABELO', 'RENE ANGEL', 8432797, 'LP', 2014, 55, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 326', 64974083, 77118211, 'quispeabelo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rene Angel Quispe Abelo', NULL, NULL),
(647, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'SANCHEZ', 'HUANCA', 'EDGAR JHONNY', 7086058, 'LP', 2014, 36, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 66163410, 64509907, 'sanchezhuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Edgar Jhonny Sanchez Huanca', NULL, NULL),
(648, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'PAZ', 'VEDIA', 'CARLOS ANDRES', 8351199, 'LP', 2014, 129, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 312', 73983818, 76428476, 'pazvedia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Carlos Andres Paz Vedia', NULL, NULL),
(649, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'TITO', 'PACASI', 'YERKO', 9864244, 'LP', 2014, 103, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4251', 77088354, 62385458, 'titopacasi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Yerko Tito Pacasi', NULL, NULL),
(650, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'BUSTILLOS', 'ROSAS', 'JUAN LUIS', 6182640, 'LP', 2014, 125, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 35', 73790756, 64386116, 'bustillosrosas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Juan Luis Bustillos Rosas', NULL, NULL),
(651, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'YAPURA', 'LEYVA', 'JUAN CARLOS', 8560227, 'PT', 2014, 45, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 311', 66669112, 68330099, 'yapuraleyva@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Juan Carlos Yapura Leyva', NULL, NULL),
(652, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CASTILLO', 'HERRERA', 'JHONATAN JAVIER', 8625229, 'PT', 2014, 100, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1632', 62711009, 64329457, 'castilloherrera@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jhonatan Javier Castillo Herrera', NULL, NULL),
(653, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'NINA', 'RUBEN ALVARO', 7058432, 'LP', 2014, 104, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1631', 76647464, 78872518, 'quispenina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ruben Alvaro Quispe Nina', NULL, NULL),
(654, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'ARRATIA', 'GUALBERTO DANIEL', 10007808, 'LP', 2015, 22, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4250', 65541029, 77978385, 'mamaniarratia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Gualberto Daniel Mamani Arratia', NULL, NULL),
(655, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'CHURA', 'JUAN LIMBER', 6816214, 'LP', 2015, 21, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 12', 64614943, 78629647, 'apazachura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Juan Limber Apaza Chura', NULL, NULL),
(656, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUE', 'MAMANI', 'EVERT SABDIEL', 7958109, 'LP', 2015, 9, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 19', 73455285, 70528542, 'choquemamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Evert Sabdiel Choque Mamani', NULL, NULL),
(657, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'FERNANDEZ', 'RODRIGUEZ', 'ENRIQUE RICARDO', 8351309, 'LP', 2015, 67, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 35', 67704785, 78524243, 'fernandezrodriguez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Enrique Ricardo Fernandez Rodriguez', NULL, NULL),
(658, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CRUZ', 'BARRA', 'JHIMY ALVARO', 7092386, 'LP', 2015, 53, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 312', 71870588, 63492840, 'cruzbarra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jhimy Alvaro Cruz Barra', NULL, NULL),
(659, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUIUCHACA', 'MAMANI', 'BILLAN', 9985241, 'LP', 2015, 103, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1632', 71772420, 66646296, 'quiuchacamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Billan Quiuchaca Mamani', NULL, NULL),
(660, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'FLORES', 'CONDORI', 'RODRIGO', 9200110, 'LP', 2015, 38, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11121', 73127219, 70759453, 'florescondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Rodrigo Flores Condori', NULL, NULL),
(661, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'BRICHER', 'CALLISAYA', 'RONALD FERNANDO', 6868842, 'LP', 2015, 98, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4251', 65705758, 71321963, 'brichercallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ronald Fernando Bricher Callisaya', NULL, NULL),
(662, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CUELLAR', 'FERNANDEZ', 'CESAR EDGAR', 9496569, 'LP', 2015, 29, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 19', 71594573, 77213966, 'cuellarfernandez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Cesar Edgar Cuellar Fernandez', NULL, NULL),
(663, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'VARGAS', 'HUAMPU', 'HEBER OMAR', 7089552, 'LP', 2015, 56, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 326', 75884128, 77251263, 'vargashuampu@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Heber Omar Vargas Huampu', NULL, NULL),
(664, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MARCA', 'LLUSCO', 'RUBEN', 9126256, 'LP', 2015, 18, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 252', 76365323, 78961754, 'marcallusco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ruben Marca Llusco', NULL, NULL),
(665, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'RAMIREZ', 'MAMANI', 'GERARDO ALEJANDRO', 6950459, 'LP', 2015, 54, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4501', 75956213, 62217216, 'ramirezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Gerardo Alejandro Ramirez Mamani', NULL, NULL),
(666, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'LAURA', 'MAMANI', 'JULIO CESAR', 6850605, 'LP', 2015, 11, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 193', 77010191, 68747685, 'lauramamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Julio Cesar Laura Mamani', NULL, NULL),
(667, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAMBI', 'YANAPA', 'GONZALO', 9973169, 'LP', 2015, 80, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11121', 67203722, 64423649, 'chambiyanapa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Gonzalo Chambi Yanapa', NULL, NULL),
(668, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MATTA', 'CHOQUE', 'JOSE LUIS', 8441193, 'LP', 2015, 69, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 252', 63531534, 77719909, 'mattachoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jose Luis Matta Choque', NULL, NULL),
(669, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'ARUQUIPA', 'CHURA', 'FREDDY', 9953798, 'LP', 2015, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 70181707, 66556916, 'aruquipachura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Freddy Aruquipa Chura', NULL, NULL),
(670, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'COARITE', 'PAUCARA', 'JOSE LUIS', 9101881, 'LP', 2015, 97, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4502', 73005352, 68483900, 'coaritepaucara@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jose Luis Coarite Paucara', NULL, NULL),
(671, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'QUISPE', 'JORGE LUIS', 9960826, 'LP', 2015, 60, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5018', 66576986, 76176971, 'mamaniquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Jorge Luis Mamani Quispe', NULL, NULL),
(672, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'GUERRA', 'QUISPE', 'ISMAEL', 8400821, 'LP', 2015, 71, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 69972123, 76902400, 'guerraquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ismael Guerra Quispe', NULL, NULL),
(673, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'QUISPE', 'ALVARO ANACLETO', 10917136, 'LP', 2015, 31, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5018', 65514250, 66582680, 'huancaquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Alvaro Anacleto Huanca Quispe', NULL, NULL),
(674, 'SOF. - SGTO.', 'Sgto. 1ro. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'DORADO', 'RUBEN', 9229841, 'LP', 2015, 63, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11122', 67228783, 72805825, 'quispedorado@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 1ro. Tgrafo. Ruben Quispe Dorado', NULL, NULL),
(675, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CRUZ', 'PATAN', 'JOSE BORIS', 7080432, 'LP', 2015, 78, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 21', 72439983, 77283103, 'cruzpatan@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jose Boris Cruz Patan', NULL, NULL),
(676, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'YUJRA', 'RIMBER', 8676233, 'CB', 2016, 134, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4502', 75576963, 64754145, 'quispeyujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Rimber Quispe Yujra', NULL, NULL),
(677, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'FERNANDEZ', 'RODRIGUEZ', 'JOSE LUIS', 7023397, 'LP', 2016, 132, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 69280655, 70984877, 'fernandezrodriguez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jose Luis Fernandez Rodriguez', NULL, NULL),
(678, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'RAMIREZ', 'MAMANI', 'SERGIO OSCAR', 6794452, 'LP', 2016, 106, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 69780473, 77617434, 'ramirezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Sergio Oscar Ramirez Mamani', NULL, NULL),
(679, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MOLLO', 'ALONZO', 'LUIS MIGUEL', 8306156, 'LP', 2016, 103, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 311', 68494726, 72187266, 'molloalonzo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Luis Miguel Mollo Alonzo', NULL, NULL),
(680, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CARRASCO', 'SEGALES', 'ISAU', 8328309, 'LP', 2016, 127, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 192', 65276882, 68547259, 'carrascosegales@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Isau Carrasco Segales', NULL, NULL),
(681, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'RAMIREZ', 'CALLISAYA', 'RUDDY CRISTHIAN', 7070793, 'LP', 2016, 131, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 63816600, 66459369, 'ramirezcallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Ruddy Cristhian Ramirez Callisaya', NULL, NULL),
(682, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MACUCHAPI', 'CORNEJO', 'JUAN PABLO', 9949139, 'LP', 2016, 44, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 19', 67652901, 67482433, 'macuchapicornejo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Juan Pablo Macuchapi Cornejo', NULL, NULL),
(683, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'PIZARROSO', 'PIZARROSO', 'JUAN CARLOS', 8335034, 'LP', 2016, 125, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 13', 65769772, 69523922, 'pizarrosopizarroso@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Juan Carlos Pizarroso Pizarroso', NULL, NULL),
(684, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CRUZ', 'GUTIERREZ', 'EDDY', 9256187, 'LP', 2016, 146, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 76100418, 75691593, 'cruzgutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Eddy Cruz Gutierrez', NULL, NULL),
(685, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CANAVIRI', 'FERNANDEZ', 'ROLY VLADIMIR', 9997982, 'LP', 2016, 75, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4501', 70250735, 70360985, 'canavirifernandez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Roly Vladimir Canaviri Fernandez', NULL, NULL),
(686, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'RODRIGUEZ', 'CORNEJO', 'JOSE VALENTIN', 6950854, 'LP', 2016, 136, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 77749083, 71016312, 'rodriguezcornejo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jose Valentin Rodriguez Cornejo', NULL, NULL),
(687, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CUTIPA', 'CONDE', 'RAMIRO', 11545467, 'LP', 2016, 109, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 21', 67156853, 66285768, 'cutipaconde@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Ramiro Cutipa Conde', NULL, NULL),
(688, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'ALANOCA', 'ALANOCA', 'ESTIBER', 7031776, 'LP', 2016, 79, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 193', 66840857, 78711972, 'alanocaalanoca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Estiber Alanoca Alanoca', NULL, NULL),
(689, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MAQUERA', 'BAUTISTA', 'VLADIMIR CESAR', 6057866, 'LP', 2016, 138, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 14', 64061523, 77006817, 'maquerabautista@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Vladimir Cesar Maquera Bautista', NULL, NULL),
(690, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'ULO', 'CESAR MIGUEL', 9104473, 'LP', 2016, 154, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1632', 79886802, 65267780, 'quispeulo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Cesar Miguel Quispe Ulo', NULL, NULL),
(691, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'SOTO', 'RAMOS', 'DAVID', 8438169, 'LP', 2016, 137, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 13', 68784439, 78409268, 'sotoramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. David Soto Ramos', NULL, NULL),
(692, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CUSI', 'CHOQUE', 'YOVAN', 10938877, 'LP', 2016, 149, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 62667297, 64246946, 'cusichoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Yovan Cusi Choque', NULL, NULL),
(693, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HUAYHUA', 'CHOQUE', 'DAVID DELFIN', 9900875, 'LP', 2016, 107, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 69392042, 66683721, 'huayhuachoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. David Delfin Huayhua Choque', NULL, NULL),
(694, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'YUJRA', 'LIMBERT', 10904343, 'LP', 2016, 66, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 62509007, 62318515, 'condoriyujra@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Limbert Condori Yujra', NULL, NULL),
(695, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'FERNANDEZ', 'CUSSI', 'GROVER PONCE', 9176033, 'LP', 2016, 152, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5017', 78821711, 65573146, 'fernandezcussi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Grover Ponce Fernandez Cussi', NULL, NULL),
(696, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'ROJAS', 'CASTILLO', 'GABRIEL', 6993485, 'LP', 2016, 141, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 20', 66608004, 73123941, 'rojascastillo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Gabriel Rojas Castillo', NULL, NULL),
(697, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CRUZ', 'LUIS JAVIER', 9884038, 'LP', 2016, 140, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 19', 73105001, 76505604, 'quispecruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Luis Javier Quispe Cruz', NULL, NULL),
(698, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'FERNANDEZ', 'MAMANI', 'WILSON', 9102302, 'LP', 2016, 133, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 14', 74225963, 62910200, 'fernandezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Wilson Fernandez Mamani', NULL, NULL),
(699, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CORAZON', 'QUISPE', 'ERIK ALVARO', 10916500, 'LP', 2016, 9, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 73876736, 66939097, 'corazonquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Erik Alvaro Corazon Quispe', NULL, NULL),
(700, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'SAIRE', 'APAZA', 'VICTOR HUGO', 9940230, 'LP', 2016, 56, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 20', 65059059, 68937187, 'saireapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Victor Hugo Saire Apaza', NULL, NULL),
(701, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'YUJRA', 'ABALOS', 'RODRIGO JORGE', 4827667, 'LP', 2016, 58, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 327', 75977067, 67632713, 'yujraabalos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Rodrigo Jorge Yujra Abalos', NULL, NULL),
(702, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'MAMANI', 'JHODDY OBET', 9961509, 'LP', 2016, 60, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1633', 66901760, 63595821, 'huancamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jhoddy Obet Huanca Mamani', NULL, NULL),
(703, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'ESPINOZA', 'JULIO CESAR', 9237324, 'LP', 2016, 144, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 15', 61588406, 61909875, 'condoriespinoza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Julio Cesar Condori Espinoza', NULL, NULL),
(704, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'SANGA', 'ZABALA', 'BRAYAN', 8348114, 'LP', 2016, 147, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 14', 63337593, 69136958, 'sangazabala@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Brayan Sanga Zabala', NULL, NULL),
(705, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'VARGAS', 'HUAMPU', 'CRISTHIAN JOEL', 7089553, 'LP', 2016, 69, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 36', 72436254, 72195348, 'vargashuampu@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Cristhian Joel Vargas Huampu', NULL, NULL),
(706, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HUAYHUA', 'RAMOS', 'FREDDY', 4963827, 'LP', 2016, 134, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 78848003, 67271621, 'huayhuaramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Freddy Huayhua Ramos', NULL, NULL),
(707, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'DIAZ', 'POMA', 'EYNAR', 8325619, 'LP', 2016, 130, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 21', 65644299, 76458446, 'diazpoma@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Eynar Diaz Poma', NULL, NULL),
(708, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'SOTO', 'MAMANI', 'JONATHAN', 6707539, 'PT', 2016, 156, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 63805801, 77762677, 'sotomamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jonathan Soto Mamani', NULL, NULL),
(709, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'ECOS', 'AGUANTA', 'CRISTIAN RENE', 8593956, 'PT', 2016, 121, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 61530648, 64897520, 'ecosaguanta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Cristian Rene Ecos Aguanta', NULL, NULL),
(710, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HUAMPO', 'MAMANI', 'ROGER', 9251321, 'LP', 2016, 171, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 19', 70403523, 67581645, 'huampomamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Roger Huampo Mamani', NULL, NULL),
(711, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'GUARACHI', 'QUISPE', 'DIEGO GABRIEL', 7080851, 'LP', 2017, 125, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 61000063, 79730478, 'guarachiquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Diego Gabriel Guarachi Quispe', NULL, NULL),
(712, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'YANIQUE', 'CONDORI', 'ORLANDO', 100295451, 'LP', 2017, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 13', 67898859, 61027783, 'yaniquecondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Orlando Yanique Condori', NULL, NULL),
(713, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'PAREDES', 'ALIAGA', 'REYNALDO FELIX', 10001464, 'LP', 2017, 98, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 312', 66173678, 69876902, 'paredesaliaga@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Reynaldo Felix Paredes Aliaga', NULL, NULL),
(714, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MASCO', 'TICONA', 'RONALD', 6989140, 'LP', 2017, 2, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 21', 77319923, 78781245, 'mascoticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Ronald Masco Ticona', NULL, NULL),
(715, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'ARUQUIPA', 'GUTIERREZ', 'BORIS', 7043253, 'LP', 2017, 84, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 326', 62550867, 78682650, 'aruquipagutierrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Boris Aruquipa Gutierrez', NULL, NULL),
(716, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAMBILLA', 'ILALUQUE', 'DIEGO', 10035279, 'LP', 2017, 72, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1632', 63890717, 78459187, 'chambillailaluque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Diego Chambilla Ilaluque', NULL, NULL),
(717, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'LOZA', 'MAMANI', 'HENRY MICHAEL', 9960721, 'LP', 2017, 27, 'Masculino', 'Casado(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 194', 63757832, 68282170, 'lozamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Henry Michael Loza Mamani', NULL, NULL),
(718, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HUMEREZ', 'CONDORI', 'MILTON ROGER', 7083795, 'LP', 2017, 112, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11122', 68237877, 72256162, 'humerezcondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Milton Roger Humerez Condori', NULL, NULL),
(719, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CALLE', 'WILMER RUBEN', 10902123, 'LP', 2017, 40, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 62967899, 63637711, 'quispecalle@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Wilmer Ruben Quispe Calle', NULL, NULL),
(720, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'VILLAVICENCIO', 'AVALOS', 'ROCIO', 12571627, 'LP', 2017, 70, 'Femenino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 75063910, 73552761, 'villavicencioavalos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Rocio Villavicencio Avalos', NULL, NULL),
(721, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'FLORES', 'CONDORI', 'HABAD', 8415596, 'LP', 2017, 38, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 61519321, 68141498, 'florescondori@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Habad Flores Condori', NULL, NULL),
(722, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CHURA', 'PARI', 'JENNY', 10079886, 'LP', 2017, 92, 'Femenino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1633', 66696086, 67668764, 'churapari@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jenny Chura Pari', NULL, NULL),
(723, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'COARITE', 'PAUCARA', 'AMERICO RUDDY', 9101841, 'LP', 2017, 42, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 73113940, 64048861, 'coaritepaucara@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Americo Ruddy Coarite Paucara', NULL, NULL),
(724, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'URUCHI', 'MAMANI', 'FROILAN', 10081200, 'LP', 2017, 93, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 20', 73079974, 67854391, 'uruchimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Froilan Uruchi Mamani', NULL, NULL),
(725, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUEHUANCA', 'YAPU', 'ROGER', 9191970, 'LP', 2017, 102, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4252', 74071830, 75419653, 'choquehuancayapu@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Roger Choquehuanca Yapu', NULL, NULL),
(726, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAVEZ', 'MAMANI', 'MOISES', 6961352, 'LP', 2017, 128, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 14', 67944678, 69494654, 'chavezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Moises Chavez Mamani', NULL, NULL),
(727, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'GARCIA', 'SANABRIA', 'ALEJANDRO IVAN', 8296749, 'LP', 2017, 47, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 65695571, 67137573, 'garciasanabria@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Alejandro Ivan Garcia Sanabria', NULL, NULL),
(728, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'PINTO', 'RAMOS', 'HENRRY', 13325838, 'PT', 2017, 75, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11122', 69146926, 71728930, 'pintoramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Henrry Pinto Ramos', NULL, NULL),
(729, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MUNOZ', 'TORREZ', 'JHONNY WILLIAM', 8054601, 'LP', 2017, 88, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4252', 63581968, 76309594, 'munoztorrez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jhonny William Munoz Torrez', NULL, NULL),
(730, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'TITO', 'PACASI', 'DAYSI AIDEE', 9210766, 'LP', 2018, 125, 'Femenino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 76981397, 72885051, 'titopacasi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Daysi Aidee Tito Pacasi', NULL, NULL),
(731, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'SACA', 'JOVANA', 9945384, 'LP', 2018, 50, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5017', 72486740, 74705691, 'apazasaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jovana Apaza Saca', NULL, NULL),
(732, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CERDANO', 'CHURA', 'ADALBERTO', 9242345, 'LP', 2018, 84, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 20', 75223209, 79681268, 'cerdanochura@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Adalberto Cerdano Chura', NULL, NULL),
(733, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDORI', 'MAMANI', 'JELMAR', 9231630, 'LP', 2018, 107, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11121', 61538289, 62987053, 'condorimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jelmar Condori Mamani', NULL, NULL),
(734, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'BALBOA', 'VELASQUEZ', 'JOSE MIGUEL', 7034988, 'LP', 2018, 97, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 73463493, 62722477, 'balboavelasquez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jose Miguel Balboa Velasquez', NULL, NULL),
(735, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'VILLCA', 'MAMANI', 'SERGIO GABRIEL', 9921253, 'LP', 2018, 109, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 36', 72040461, 79345683, 'villcamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Sergio Gabriel Villca Mamani', NULL, NULL),
(736, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'GOMEZ', 'LLANQUE', 'NICANOR', 11540280, 'LP', 2018, 57, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 22', 79715582, 77040882, 'gomezllanque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Nicanor Gomez Llanque', NULL, NULL),
(737, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MACUCHAPI', 'CORNEJO', 'JUAN PEDRO', 12635773, 'LP', 2018, 90, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 15', 67784293, 76294405, 'macuchapicornejo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Juan Pedro Macuchapi Cornejo', NULL, NULL),
(738, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'MASCO', 'RODRIGO', 10097412, 'LP', 2018, 88, 'Masculino', 'Casado(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 313', 65271914, 71733384, 'huancamasco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Rodrigo Huanca Masco', NULL, NULL),
(739, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'USNAYO', 'MAMANI', 'RENATO', 9245801, 'LP', 2018, 53, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 67652655, 75993768, 'usnayomamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Renato Usnayo Mamani', NULL, NULL),
(740, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', ' ', 'CHALLAPA', 'JESUS ALEJANDRO', 5742170, 'LP', 2018, 16, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 20', 61778169, 75922252, ' challapa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jesus Alejandro   Challapa', NULL, NULL),
(741, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CASTILLO', 'HERRERA', 'BRIAN KEVIN', 8513075, 'LP', 2018, 92, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 194', 64160373, 72700582, 'castilloherrera@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Brian Kevin Castillo Herrera', NULL, NULL),
(742, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'QUISPE', 'DIEGO FELIPE', 10074822, 'LP', 2018, 43, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 327', 68442694, 74382072, 'quispequispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Diego Felipe Quispe Quispe', NULL, NULL),
(743, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'SANTAMARIA', 'SARMIENTO', 'VICTOR', 6949069, 'LP', 2018, 112, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 64666298, 70199338, 'santamariasarmiento@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Victor Santamaria Sarmiento', NULL, NULL);
INSERT INTO `personas` (`id`, `escalafon`, `grado`, `arma`, `especialidad`, `paterno`, `materno`, `nombre`, `ci`, `extension`, `egreso`, `antiguedad`, `sexo`, `estdo_civil`, `fecha_nacimiento`, `domicilio`, `celular`, `celular2`, `email`, `foto`, `nombre_completo`, `created_at`, `updated_at`) VALUES
(744, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'ADUVIRI', 'FLORES', 'JUAN CRISTIAN', 9982438, 'LP', 2018, 82, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4502', 68588386, 73055239, 'aduviriflores@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Juan Cristian Aduviri Flores', NULL, NULL),
(745, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'RODRIGUEZ', 'CORNEJO', 'MARIA EUGENIA', 8347754, 'LP', 2018, 13, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 313', 66516345, 69022298, 'rodriguezcornejo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Maria Eugenia Rodriguez Cornejo', NULL, NULL),
(746, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLISAYA', 'CALLISAYA', 'MILTON', 6831151, 'LP', 2018, 63, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 21', 72911351, 70828156, 'callisayacallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Milton Callisaya Callisaya', NULL, NULL),
(747, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'GUERRA', 'QUISPE', 'JUAN DANIEL', 8400822, 'LP', 2018, 10, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 62239931, 61961374, 'guerraquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Juan Daniel Guerra Quispe', NULL, NULL),
(748, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'PARI', 'CARITA', 'GABRIEL', 8332724, 'LP', 2018, 94, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 22', 67478253, 68269146, 'paricarita@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Gabriel Pari Carita', NULL, NULL),
(749, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'ESPEJO', 'MAMANI', 'LUIS ANGEL', 8354049, 'LP', 2018, 60, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 36', 77507545, 78283606, 'espejomamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Luis Angel Espejo Mamani', NULL, NULL),
(750, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'MAMANI', 'MARCO ANTONIO', 6864892, 'LP', 2018, 104, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 313', 73515442, 72781563, 'mamanimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Marco Antonio Mamani Mamani', NULL, NULL),
(751, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'VALLEJOS', 'FERNANDEZ', 'ALEXANDER', 9464527, 'LP', 2018, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 62638297, 77492130, 'vallejosfernandez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Alexander Vallejos Fernandez', NULL, NULL),
(752, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'LARICO', 'MIGUEL ANGEL', 9971309, 'LP', 2018, 99, 'Masculino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 71538422, 66207445, 'mamanilarico@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Miguel Angel Mamani Larico', NULL, NULL),
(753, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'ACHO', 'AIZA', 'DANIELA JHOSELIN', 7309870, 'LP', 2018, 121, 'Femenino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4503', 70620607, 69385733, 'achoaiza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Daniela Jhoselin Acho Aiza', NULL, NULL),
(754, 'SOF. - SGTO.', 'Sgto. 2do. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'ALARCON', 'JHAMIL CLOVIS', 11060975, 'LP', 2018, 30, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 314', 69177035, 62855327, 'mamanialarcon@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. 2do. Tgrafo. Jhamil Clovis Mamani Alarcon', NULL, NULL),
(755, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'TICONA', 'PAMELA', 10929453, 'LP', 2018, 21, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 22', 79902985, 62745655, 'apazaticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Pamela Apaza Ticona', NULL, NULL),
(756, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MARISCAL', 'CORRALES', 'EDILBERTO JOSE', 8058281, 'CB', 2019, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 74309006, 66775233, 'mariscalcorrales@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Edilberto Jose Mariscal Corrales', NULL, NULL),
(757, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HUANCA', 'HEREDIA', 'FRANZ', 9224431, 'LP', 2019, 12, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 75875645, 78913842, 'huancaheredia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Franz Huanca Heredia', NULL, NULL),
(758, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ALVAREZ', 'VARGAS', 'VICTOR FERNANDO', 9874351, 'LP', 2019, 16, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 313', 61345546, 65997471, 'alvarezvargas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Victor Fernando Alvarez Vargas', NULL, NULL),
(759, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLISAYA', 'CALLISAYA', 'EYNAR ENRIQUE', 6831150, 'LP', 2019, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 73927337, 78711566, 'callisayacallisaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Eynar Enrique Callisaya Callisaya', NULL, NULL),
(760, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CONDE', 'QUIUCHACA', 'SERGIO', 9250570, 'LP', 2019, 15, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 14', 77489483, 67886623, 'condequiuchaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Sergio Conde Quiuchaca', NULL, NULL),
(761, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CARI', 'CALLE', 'HENRY', 9251160, 'LP', 2019, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 36', 77224531, 62152077, 'caricalle@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Henry Cari Calle', NULL, NULL),
(762, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'FERNANDEZ', 'FRANZ JOSUE', 9977721, 'LP', 2019, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 77687392, 67999277, 'apazafernandez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Franz Josue Apaza Fernandez', NULL, NULL),
(763, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAMBI', 'LARUTA', 'VILMA', 9910842, 'LP', 2019, 10, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 77551320, 72844948, 'chambilaruta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Vilma Chambi Laruta', NULL, NULL),
(764, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'MAMANI', 'MARGARITA', 12572895, 'LP', 2019, 14, 'Femenino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 77293003, 65296326, 'mamanimamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Margarita Mamani Mamani', NULL, NULL),
(765, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'HERRERA', ' ', 'MARIA JOSE', 8354036, 'LP', 2019, 8, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5018', 77166111, 69528035, 'herrera @gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Maria Jose Herrera  ', NULL, NULL),
(766, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CAPCHA', 'CARI', 'JOEL NESTOR', 9993355, 'LP', 2019, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 22', 68966843, 62992219, 'capchacari@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Joel Nestor Capcha Cari', NULL, NULL),
(767, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHOQUEHUANCA', 'FLORES', 'ERIK', 13548795, 'LP', 2019, 11, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 194', 67787850, 70898527, 'choquehuancaflores@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Erik Choquehuanca Flores', NULL, NULL),
(768, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'CHOQUE', 'JUAN RODRIGO', 8376690, 'LP', 2019, 13, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11122', 74968916, 73442141, 'mamanichoque@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Juan Rodrigo Mamani Choque', NULL, NULL),
(769, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'JAHUIRA', 'QUISPE', 'DEYBIS OMAR', 14068834, 'LP', 2019, 9, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Emaverde, Av. Libertad S/N.', 66076752, 69557073, 'jahuiraquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Deybis Omar Jahuira Quispe', NULL, NULL),
(770, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'FLORES', 'JOEL', 9913794, 'LP', 2019, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Chasquipampa, Calle 50 N? 23', 78919489, 74139589, 'mamaniflores@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Joel Mamani Flores', NULL, NULL),
(771, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TICONA', 'ROJAS', 'RONALDO', 9228300, 'LP', 2019, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 61072518, 61477386, 'ticonarojas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Ronaldo Ticona Rojas', NULL, NULL),
(772, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'UNO', 'ZUBIETA', 'OMAR PABLO', 5770560, 'OR', 2019, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1633', 76563291, 63952236, 'unozubieta@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Omar Pablo Uno Zubieta', NULL, NULL),
(773, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'COPAJIRA', 'BALDIVIEZO', 'LUIS GUSTAVO', 10572257, 'PT', 2019, 18, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 194', 70471291, 64724579, 'copajirabaldiviezo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Luis Gustavo Copajira Baldiviezo', NULL, NULL),
(774, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CALLISAYA', 'MAMANI', 'JHOSELIN NELIDA', 10081840, 'LP', 2020, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 253', 68101853, 72717085, 'callisayamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Jhoselin Nelida Callisaya Mamani', NULL, NULL),
(775, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'BLANCO', 'SACA', 'EVER DAVID', 8376832, 'LP', 2020, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 21', 75148790, 65191057, 'blancosaca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Ever David Blanco Saca', NULL, NULL),
(776, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'APAZA', 'WILLIAM JHORTY', 10939472, 'LP', 2020, 11, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 253', 66691266, 68426696, 'quispeapaza@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. William Jhorty Quispe Apaza', NULL, NULL),
(777, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CORONEL', 'GUARACHI', 'JOSUE JHONATAN', 10902703, 'LP', 2020, 16, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 253', 78251362, 78569840, 'coronelguarachi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Josue Jhonatan Coronel Guarachi', NULL, NULL),
(778, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'SALAZAR', 'BARRIONUEVO', 'HENRY', 12801309, 'LP', 2020, 8, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4502', 73448732, 63864219, 'salazarbarrionuevo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Henry Salazar Barrionuevo', NULL, NULL),
(779, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CATARI', 'GAVINCHA', 'MARCO ANTONIO', 8448511, 'LP', 2020, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 15', 69702069, 61436430, 'catarigavincha@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Marco Antonio Catari Gavincha', NULL, NULL),
(780, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ICHUTA', 'NINA', 'NINOSKA MADELEINE', 9937752, 'LP', 2020, 15, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 253', 72008810, 71938231, 'ichutanina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Ninoska Madeleine Ichuta Nina', NULL, NULL),
(781, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'YUJRA', 'COCARICO', 'PEDRO LUIS', 13179954, 'LP', 2020, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1633', 79224945, 69024273, 'yujracocarico@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Pedro Luis Yujra Cocarico', NULL, NULL),
(782, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUENALLATA', 'ALAPA', 'LIMBERT MARIO', 9902241, 'LP', 2020, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 72693307, 75138279, 'quenallataalapa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Limbert Mario Quenallata Alapa', NULL, NULL),
(783, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'APAZA', 'VALENCIA', 'CAROLINA VANESSA', 6789546, 'LP', 2020, 1, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 71900200, 62915050, 'apazavalencia@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Carolina Vanessa Apaza Valencia', NULL, NULL),
(784, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'LOZA', 'DE LA CRUZ', 'NELIDA', 7057481, 'LP', 2020, 13, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5019', 64485497, 68886630, 'lozade la cruz@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Nelida Loza De La Cruz', NULL, NULL),
(785, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MASCO', 'TICONA', 'JOSUE', 12606153, 'LP', 2020, 9, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 66895599, 70770339, 'mascoticona@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Josue Masco Ticona', NULL, NULL),
(786, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUISPE', 'CALLE', 'DANIEL', 12607879, 'LP', 2020, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 21', 66415981, 69895398, 'quispecalle@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Daniel Quispe Calle', NULL, NULL),
(787, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'TITO', 'JHON', 8341269, 'LP', 2020, 6, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 254', 62324882, 72295136, 'mamanitito@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Jhon Mamani Tito', NULL, NULL),
(788, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHILE', 'JANCO', 'MARIA', 7385228, 'OR', 2020, 14, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Callampaya, Calle Padre Bertonio S/N', 71100231, 75787747, 'chilejanco@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Maria Chile Janco', NULL, NULL),
(789, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHUNGARA', 'VASQUEZ', 'ARIEL', 7393096, 'OR', 2020, 12, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 37', 65922902, 64794912, 'chungaravasquez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Ariel Chungara Vasquez', NULL, NULL),
(790, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MENDOZA', 'PATZI', 'EVA', 7404145, 'OR', 2020, 10, 'Femenino', 'Soltero(a)', '0000-00-00', 'Calle 15 ?COE? Calacoto', 76344228, 66420604, 'mendozapatzi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Eva Mendoza Patzi', NULL, NULL),
(791, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUIUCHACA', 'MAMANI', 'MARIO LUIS', 9985260, 'LP', 2021, 18, 'Masculino', 'Soltero(a)', '0000-00-00', 'C. Costanera N?100 V. Copacabana', 64053762, 66449389, 'quiuchacamamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Mario Luis Quiuchaca Mamani', NULL, NULL),
(792, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'QUELCA', 'QUELCA', 'VLADIMIR', 9950847, 'LP', 2021, 3, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4252', 67170550, 61559972, 'quelcaquelca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Vladimir Quelca Quelca', NULL, NULL),
(793, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'LOPEZ', 'CAPCHA', 'JOSUEL MAYKY', 9904496, 'LP', 2021, 2, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, Av. Saavedra, P. Haiti N? 5018', 66893856, 64665570, 'lopezcapcha@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Josuel Mayky Lopez Capcha', NULL, NULL),
(794, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MACUCHAPI', 'CORNEJO', 'RICHAR', 13645242, 'LP', 2021, 5, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 327', 74131160, 76279525, 'macuchapicornejo@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Richar Macuchapi Cornejo', NULL, NULL),
(795, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'RAMOS', 'ELVIS', 9147322, 'LP', 2021, 17, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 15', 65273528, 74252218, 'mamaniramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Elvis Mamani Ramos', NULL, NULL),
(796, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHIPANA', 'CALLIZAYA', 'VERONICA', 5978329, 'LP', 2021, 15, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Miraflores, C. D?az Romero ASCINALSS', 77070512, 73678062, 'chipanacallizaya@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Veronica Chipana Callizaya', NULL, NULL),
(797, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TICONA', 'RAMOS', 'DIEGO ARMANDO', 8361353, 'LP', 2021, 4, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Villa Adela, Calle Plan 44-A N? 20', 69781088, 74413677, 'ticonaramos@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Diego Armando Ticona Ramos', NULL, NULL),
(798, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MAMANI', 'SALAS', 'ABEL', 7093491, 'LP', 2021, 13, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 327', 65117405, 74116360, 'mamanisalas@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Abel Mamani Salas', NULL, NULL),
(799, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ARUQUIPA', 'ARUQUIPA', 'ELVIS ALFREDO', 12453652, 'LP', 2021, 12, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Rio Seco, Z. Brasil, Calle A-6 N? 22', 70217437, 74233635, 'aruquipaaruquipa@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Elvis Alfredo Aruquipa Aruquipa', NULL, NULL),
(800, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'POCOATA', 'QUISPE', 'WILMER HENRY', 9981289, 'LP', 2021, 9, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Alto Lima, C. Rocallado N? 195', 74889615, 75361498, 'pocoataquispe@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Wilmer Henry Pocoata Quispe', NULL, NULL),
(801, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'AVILE', 'HILARI', 'LIZBETH', 8342040, 'LP', 2021, 16, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Brasil, C. El Carmen N? 11123', 77275859, 76279791, 'avilehilari@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Lizbeth Avile Hilari', NULL, NULL),
(802, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'CHAVEZ', 'MAMANI', 'DAVID', 6961353, 'LP', 2021, 10, 'Masculino', 'Soltero(a)', '0000-00-00', 'Z. El Tejar, C. Mejillones N? 328', 72956744, 74328575, 'chavezmamani@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. David Chavez Mamani', NULL, NULL),
(803, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TITO', 'PACASI', 'GABRIELA', 12635693, 'LP', 2021, 19, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Pampahasi Alto, Calle 3 N? 16', 77420442, 79743090, 'titopacasi@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Gabriela Tito Pacasi', NULL, NULL),
(804, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'TROCHE', 'MARQUEZ', 'KEVIN OMAR', 6046176, 'LP', 2021, 11, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Z. Los Andes, Pje. 18 Nov. N? 1634', 68173714, 76166034, 'trochemarquez@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Kevin Omar Troche Marquez', NULL, NULL),
(805, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'MATTA', 'CHOQUEHUANCA', 'VLADIMIR', 13085734, 'LP', 2021, 7, 'Masculino', 'Soltero(a)', '0000-00-00', 'Av. Colorados de Bolivia N? 4253', 79955875, 66129967, 'mattachoquehuanca@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Vladimir Matta Choquehuanca', NULL, NULL),
(806, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'YUPANQUI', 'CABALLERO', 'BRANDON VLADIMIR', 7315831, 'LP', 2021, 1, 'Masculino', 'Soltero(a)', '0000-00-00', 'Meseta Achumani, Calle 14 N? 15', 78488864, 69051860, 'yupanquicaballero@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Brandon Vladimir Yupanqui Caballero', NULL, NULL),
(807, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'ICHUTA', 'NINA', 'FLAVIA MARISOL', 9937749, 'LP', 2021, 6, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Cementerio, Av. Kollasuyo N? 37', 76239774, 76072831, 'ichutanina@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Flavia Marisol Ichuta Nina', NULL, NULL),
(808, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'PEREZ', 'DURAN', 'DOUGLAS', 9155265, 'LP', 2021, 8, 'Masculino', 'Soltero(a)', '0000-00-00', 'El Alto, Urb. ASCINALS, C. Arce N? 4503', 71367562, 77894985, 'perezduran@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Douglas Perez Duran', NULL, NULL),
(809, 'SOF. - SGTO.', 'Sgto. Incl. ', 'Tgrafo. ', 'Tgrafo. ', 'SUCOJAYO', 'MIRANDA', 'LUZ DANIELA', 10932615, 'LP', 2021, 14, 'Femenino', 'Soltero(a)', '0000-00-00', 'Z. Obrajes, Calle 7 N? 314', 69573508, 69546739, 'sucojayomiranda@gmail.com', 'uploads/1/2022-04/logo.png', 'Sgto. Incl. Tgrafo. Luz Daniela Sucojayo Miranda', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacions`
--

CREATE TABLE `situacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `situacion` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `situacions`
--

INSERT INTO `situacions` (`id`, `situacion`, `created_at`, `updated_at`) VALUES
(1, 'EFECTIVO', NULL, NULL),
(2, 'GUARDIA', NULL, NULL),
(3, 'TOLERANCIA', NULL, NULL),
(4, 'COMISION CEO', NULL, NULL),
(5, 'PERMISO', NULL, NULL),
(6, 'COMISION', NULL, NULL),
(7, 'BAJA MEDICA', NULL, NULL),
(8, 'VACACIÓN', NULL, NULL),
(9, 'FALTA', NULL, NULL),
(10, 'PERMISO NATALIDAD', NULL, NULL),
(11, '', NULL, NULL),
(12, 'NO FORMAN', NULL, NULL),
(13, 'FORMAN', NULL, NULL),
(14, 'TOTAL', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_vacacions`
--

CREATE TABLE `t_vacacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desde` int(11) NOT NULL,
  `hasta` int(11) NOT NULL,
  `t_vacacion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `t_vacacions`
--

INSERT INTO `t_vacacions` (`id`, `desde`, `hasta`, `t_vacacion`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 0, '2022-05-01 01:40:33', NULL),
(2, 2, 5, 15, '2022-05-01 01:41:13', NULL),
(3, 6, 10, 20, '2022-05-01 01:41:32', NULL),
(4, 11, 20, 25, '2022-05-01 01:41:50', NULL),
(5, 21, 30, 30, '2022-05-01 01:42:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacacions`
--

CREATE TABLE `vacacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gestion` int(4) NOT NULL,
  `distrito` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persona_id` bigint(20) UNSIGNED NOT NULL,
  `años_trabajo` int(4) NOT NULL DEFAULT 0,
  `dias_vacacion` int(11) NOT NULL DEFAULT 0,
  `colectiva` int(11) NOT NULL DEFAULT 0,
  `f_solicitud` date DEFAULT NULL,
  `dias_solicitados` int(11) DEFAULT 0,
  `horas_solicitadas` int(11) DEFAULT 0,
  `f_desde` date DEFAULT NULL,
  `f_hasta` date DEFAULT NULL,
  `dias_restantes` int(11) NOT NULL DEFAULT 0,
  `horas_restantes` int(11) NOT NULL DEFAULT 0,
  `situacion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vacacions`
--

INSERT INTO `vacacions` (`id`, `gestion`, `distrito`, `persona_id`, `años_trabajo`, `dias_vacacion`, `colectiva`, `f_solicitud`, `dias_solicitados`, `horas_solicitadas`, `f_desde`, `f_hasta`, `dias_restantes`, `horas_restantes`, `situacion`, `created_at`, `updated_at`) VALUES
(15, 2022, 'CARANAVI', 61, 11, 25, 5, '2022-06-03', 5, 0, '2022-06-03', '2022-06-03', 15, 0, '', '2022-06-03 16:50:38', NULL),
(19, 2022, 'CARANAVI', 61, 11, 25, 5, '2022-06-03', 4, 0, '2022-06-03', '2022-06-03', 11, 0, '', '2022-06-03 19:10:13', NULL),
(20, 2022, 'CENTRAL', 422, 14, 25, 5, '2022-06-03', 2, 0, '2022-06-03', '2022-06-03', 8, 0, '', '2022-06-03 19:11:06', NULL),
(21, 2022, 'CARANAVI', 61, 11, 25, 5, '2022-06-03', 1, 0, '2022-06-03', '2022-06-03', 10, 0, '', '2022-06-03 19:18:35', NULL),
(22, 2022, 'CENTRAL', 422, 14, 25, 5, '2022-06-03', 1, 0, '2022-06-03', '2022-06-03', 7, 0, '', '2022-06-03 20:25:00', NULL),
(23, 2022, 'ACHACACHI', 48, 15, 25, 5, '2022-06-01', 0, 0, '2022-06-02', '2022-06-07', 20, 0, '', '2022-06-03 20:34:46', NULL),
(24, 2022, 'CENTRAL', 433, 14, 25, 5, '2022-06-06', 5, 0, '2022-06-06', '2022-06-10', 15, 0, 'VACACIÓN ANUAL DESDE HASTA ', '2022-06-06 12:51:30', NULL),
(25, 2022, 'CARANAVI', 61, 11, 25, 5, '2022-06-08', 0, 2, '2022-06-08', '2022-06-08', 9, 6, 'PERMISO CUENTA VACACIÓN POR 2 HORAS', '2022-06-08 15:12:02', NULL),
(26, 2022, 'CENTRAL', 422, 14, 25, 5, '2022-06-20', 2, 0, '2022-06-20', '2022-06-21', 5, 0, 'VACACION ANUAL DESDE 2022-06-20 14:51:11 HASTA 2022-06-21', '2022-06-20 18:51:28', NULL),
(27, 2022, 'CENTRAL', 375, 16, 25, 5, '2022-06-20', 5, 0, '2022-06-20', '2022-06-24', 15, 0, 'PERMISO CUENTA VACACIÓN DESDE 2022-06-20 HASTA 2022-06-24', '2022-06-20 19:27:28', NULL),
(28, 2022, 'ACHACACHI', 48, 15, 25, 5, '2022-06-24', 5, 0, '2022-06-24', '2022-06-30', 15, 0, 'VACACION ANUAL DESDE 2022-06-24 HASTA 2022-06-30', '2022-06-24 13:31:23', NULL),
(29, 2022, 'CENTRAL', 422, 14, 25, 5, '2022-07-01', 5, 0, '2022-06-30', '2022-07-14', 0, 0, 'VACACION ANUAL DESDE 2022-06-30 HASTA 2022-07-14', '2022-07-01 19:23:20', NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_name`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_name` (
`GRADO, NOMBRE Y APELLIDOS` varchar(100)
,`SITUACION` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `view_name`
--
DROP TABLE IF EXISTS `view_name`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_name`  AS SELECT `personas`.`nombre_completo` AS `GRADO, NOMBRE Y APELLIDOS`, `vacacions`.`situacion` AS `SITUACION` FROM (`vacacions` join `personas`) WHERE current_timestamp() between `vacacions`.`f_desde` and `vacacions`.`f_hasta` AND `vacacions`.`distrito` = 'ACHACACHI' AND `vacacions`.`persona_id` = `personas`.`id` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admpartes`
--
ALTER TABLE `admpartes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `faltaatrasos`
--
ALTER TABLE `faltaatrasos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fechapartes`
--
ALTER TABLE `fechapartes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `guardias`
--
ALTER TABLE `guardias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licencias`
--
ALTER TABLE `licencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licencia_comisions`
--
ALTER TABLE `licencia_comisions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partes`
--
ALTER TABLE `partes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `situacions`
--
ALTER TABLE `situacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_vacacions`
--
ALTER TABLE `t_vacacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vacacions`
--
ALTER TABLE `vacacions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admpartes`
--
ALTER TABLE `admpartes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faltaatrasos`
--
ALTER TABLE `faltaatrasos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `fechapartes`
--
ALTER TABLE `fechapartes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `guardias`
--
ALTER TABLE `guardias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `licencias`
--
ALTER TABLE `licencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `licencia_comisions`
--
ALTER TABLE `licencia_comisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `partes`
--
ALTER TABLE `partes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=810;

--
-- AUTO_INCREMENT de la tabla `situacions`
--
ALTER TABLE `situacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `t_vacacions`
--
ALTER TABLE `t_vacacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vacacions`
--
ALTER TABLE `vacacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
