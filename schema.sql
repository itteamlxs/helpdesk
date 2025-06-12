-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2025 at 06:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auditoria`
--

CREATE TABLE `auditoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `accion` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_usuario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auditoria`
--

INSERT INTO `auditoria` (`id`, `usuario_id`, `accion`, `descripcion`, `fecha`, `ip_usuario`) VALUES
(1, 4, 'cliente_actualizar', 'Cliente \'Abish Kishori\' (ID: 122) actualizado', '2025-06-11 14:16:46', '127.0.0.1'),
(2, 4, 'cliente_actualizar', 'Cliente \'Abish Kishori\' (ID: 122) actualizado', '2025-06-11 14:16:56', '127.0.0.1'),
(3, 4, 'cliente_eliminado', 'Cliente \'Abish Kishori\' (akishori@localhost.com) eliminado lógicamente (ID: 122)', '2025-06-11 14:29:17', '127.0.0.1'),
(4, 4, 'cliente_eliminado', 'Cliente \'Cliente Empresarial 4\' (empresa4@ejemplo.com) eliminado lógicamente (ID: 158)', '2025-06-11 14:29:54', '127.0.0.1'),
(5, 4, 'cliente_eliminado', 'Cliente \'Cliente Empresarial 2\' (empresa2@ejemplo.com) eliminado lógicamente (ID: 156)', '2025-06-11 14:29:58', '127.0.0.1'),
(6, 4, 'cliente_eliminado', 'Cliente \'Cliente Empresarial 8\' (empresa8@ejemplo.com) eliminado lógicamente (ID: 162)', '2025-06-11 14:30:02', '127.0.0.1'),
(7, 1, 'login', 'Inicio de sesión exitoso', '2025-06-11 18:54:25', '127.0.0.1'),
(8, 2, 'login', 'Inicio de sesión exitoso', '2025-06-11 18:55:10', '127.0.0.1'),
(9, 1, 'cliente_eliminado', 'Cliente \'Automatización Pro\' (support@automation.com) eliminado lógicamente (ID: 153)', '2025-06-11 19:06:54', '127.0.0.1'),
(10, 4, 'login', 'Inicio de sesión exitoso', '2025-06-11 19:11:55', '127.0.0.1'),
(11, 4, 'login', 'Inicio de sesión exitoso', '2025-06-11 19:26:49', '127.0.0.1'),
(12, 4, 'login', 'Inicio de sesión exitoso', '2025-06-12 05:01:43', '127.0.0.1'),
(13, 4, 'cliente_eliminado', 'Cliente \'Cliente Empresarial 1\' (empresa1@ejemplo.com) eliminado lógicamente (ID: 155)', '2025-06-12 05:04:21', '127.0.0.1'),
(14, 4, 'login', 'Inicio de sesión exitoso', '2025-06-12 05:18:18', '127.0.0.1'),
(15, 4, 'cliente_crear', 'Cliente \'Fabiola Galeano\' (ID: 167) creado', '2025-06-12 05:34:16', '127.0.0.1'),
(16, 4, 'cliente_eliminado', 'Cliente \'Cliente Empresarial 10\' (empresa10@ejemplo.com) eliminado lógicamente (ID: 164)', '2025-06-12 05:34:40', '127.0.0.1'),
(17, 4, 'cliente_eliminado', 'Cliente \'Cliente Empresarial 11\' (empresa11@ejemplo.com) eliminado lógicamente (ID: 165)', '2025-06-12 05:44:16', '127.0.0.1'),
(18, 4, 'login', 'Inicio de sesión exitoso', '2025-06-12 05:54:07', '127.0.0.1'),
(19, 4, 'login', 'Inicio de sesión exitoso', '2025-06-12 06:04:13', '127.0.0.1'),
(20, 4, 'cliente_restaurado', 'Cliente \'Abish Kishori\' (akishori@localhost.com) restaurado desde papelera (ID: 122)', '2025-06-12 06:06:06', '127.0.0.1'),
(21, 1, 'login', 'Inicio de sesión exitoso', '2025-06-12 16:05:10', '127.0.0.1'),
(22, 1, 'cliente_actualizar', 'Cliente \'Fabiola Galeano\' (ID: 167) actualizado', '2025-06-12 16:05:31', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `activa` tinyint(1) NOT NULL DEFAULT 1,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `activa`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(29, 'Software', 'Programas y aplicaciones informáticas', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(30, 'Hardware', 'Equipos y componentes físicos', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(31, 'Servicios', 'Servicios profesionales y consultoría', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(32, 'Soporte Técnico', 'Servicios de mantenimiento y soporte', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(33, 'Licencias', 'Licencias de software y suscripciones', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(34, 'Equipos de Red', 'Routers, switches y equipos de conectividad', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(35, 'Periféricos', 'Teclados, ratones, monitores y accesorios', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(36, 'Almacenamiento', 'Discos duros, SSDs y sistemas de backup', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `estado` enum('activo','inactivo') NOT NULL DEFAULT 'activo',
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `eliminado` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Eliminación lógica - TRUE si el cliente fue eliminado',
  `fecha_eliminacion` timestamp NULL DEFAULT NULL COMMENT 'Fecha y hora de eliminación lógica',
  `eliminado_por` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID del usuario que eliminó el cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `estado`, `fecha_creacion`, `fecha_actualizacion`, `eliminado`, `fecha_eliminacion`, `eliminado_por`) VALUES
(121, 'Julio Cesar', 'jcesar@localhost.com', '504 9987654', 'Calle los alcaldes, comisariato los andes, casa 27-C45', 'activo', '2025-06-10 07:29:22', '2025-06-11 13:47:50', 0, NULL, NULL),
(122, 'Abish Kishori', 'akishori@localhost.com', '50478906542', 'Calle los alcaldes, comisariato los andes, casa 5-C25', 'activo', '2025-06-10 07:30:34', '2025-06-12 06:06:06', 0, NULL, NULL),
(123, 'Pamela Suleica', 'chela@localhost.com', '50489076543', 'Calle los alcaldes, Frente a los andes, Calle 21 - C24', 'activo', '2025-06-10 07:49:13', '2025-06-11 13:47:50', 0, NULL, NULL),
(147, 'Empresa Tecnológica SA', 'contacto@tecno.com', '+1-555-0101', 'Av. Tecnología 123, Ciudad Tech', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(148, 'Consultores Modernos SL', 'info@consultores.com', '+1-555-0102', 'Calle Consultoría 456, Tech Park', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(149, 'Desarrollo Web Corp', 'admin@webdev.com', '+1-555-0103', 'Plaza Digital 789, Innovation District', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(150, 'Sistemas Integrados SA', 'ventas@sistemas.com', '+1-555-0104', 'Av. Integración 321, Business Center', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(151, 'Soluciones IT Ltda', 'contacto@soluciones.com', '+1-555-0105', 'Torre IT, Piso 15, Tech City', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(152, 'Innovación Digital SAS', 'hello@innovacion.com', '+1-555-0106', 'Campus Digital 654, StartUp Valley', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(153, 'Automatización Pro', 'support@automation.com', '+1-555-0107', 'Industrial Park 987, AutoCity', 'activo', '2025-06-11 13:52:43', '2025-06-11 19:06:54', 1, '2025-06-11 19:06:54', 1),
(154, 'Cloud Solutions Inc', 'sales@cloudsol.com', '+1-555-0108', 'Cloud Tower 147, DataCenter Ave', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(155, 'Cliente Empresarial 1', 'empresa1@ejemplo.com', '+1-555-0201', 'Dirección Comercial 1, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-12 05:04:21', 1, '2025-06-12 05:04:21', 4),
(156, 'Cliente Empresarial 2', 'empresa2@ejemplo.com', '+1-555-0202', 'Dirección Comercial 2, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 14:29:58', 1, '2025-06-11 14:29:58', 4),
(157, 'Cliente Empresarial 3', 'empresa3@ejemplo.com', '+1-555-0203', 'Dirección Comercial 3, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(158, 'Cliente Empresarial 4', 'empresa4@ejemplo.com', '+1-555-0204', 'Dirección Comercial 4, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 14:29:54', 1, '2025-06-11 14:29:54', 4),
(159, 'Cliente Empresarial 5', 'empresa5@ejemplo.com', '+1-555-0205', 'Dirección Comercial 5, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(160, 'Cliente Empresarial 6', 'empresa6@ejemplo.com', '+1-555-0206', 'Dirección Comercial 6, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(161, 'Cliente Empresarial 7', 'empresa7@ejemplo.com', '+1-555-0207', 'Dirección Comercial 7, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(162, 'Cliente Empresarial 8', 'empresa8@ejemplo.com', '+1-555-0208', 'Dirección Comercial 8, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 14:30:02', 1, '2025-06-11 14:30:02', 4),
(163, 'Cliente Empresarial 9', 'empresa9@ejemplo.com', '+1-555-0209', 'Dirección Comercial 9, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(164, 'Cliente Empresarial 10', 'empresa10@ejemplo.com', '+1-555-0210', 'Dirección Comercial 10, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-12 05:34:40', 1, '2025-06-12 05:34:40', 4),
(165, 'Cliente Empresarial 11', 'empresa11@ejemplo.com', '+1-555-0211', 'Dirección Comercial 11, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-12 05:44:16', 1, '2025-06-12 05:44:16', 4),
(166, 'Cliente Empresarial 12', 'empresa12@ejemplo.com', '+1-555-0212', 'Dirección Comercial 12, Zona Empresarial', 'activo', '2025-06-11 13:52:43', '2025-06-11 13:52:43', 0, NULL, NULL),
(167, 'Fabiola Galeano', 'fgaleano@localhost.com', '50467542389', 'Nos compra calzone de pizza hut siempre', 'activo', '2025-06-12 05:34:16', '2025-06-12 16:05:31', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `clientes_activos`
-- (See below for the actual view)
--
CREATE TABLE `clientes_activos` (
`id` int(10) unsigned
,`nombre` varchar(100)
,`email` varchar(100)
,`telefono` varchar(30)
,`direccion` text
,`estado` enum('activo','inactivo')
,`fecha_creacion` timestamp
,`fecha_actualizacion` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `clientes_eliminados`
-- (See below for the actual view)
--
CREATE TABLE `clientes_eliminados` (
`id` int(10) unsigned
,`nombre` varchar(100)
,`email` varchar(100)
,`telefono` varchar(30)
,`direccion` text
,`estado` enum('activo','inactivo')
,`fecha_creacion` timestamp
,`fecha_eliminacion` timestamp
,`eliminado_por_usuario` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL DEFAULT 1,
  `nombre_empresa` varchar(150) NOT NULL DEFAULT 'Mi Empresa',
  `idioma` enum('es','en') NOT NULL DEFAULT 'es',
  `moneda` varchar(10) NOT NULL DEFAULT 'USD',
  `simbolo_moneda` varchar(5) NOT NULL DEFAULT '$',
  `impuesto_porcentaje` decimal(5,2) NOT NULL DEFAULT 21.00,
  `zona_horaria` varchar(50) NOT NULL DEFAULT 'America/New_York',
  `tema` enum('claro','oscuro') NOT NULL DEFAULT 'claro',
  `logo_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotizaciones`
--

CREATE TABLE `cotizaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` enum('abierta','cerrada','convertida') NOT NULL DEFAULT 'abierta',
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `moneda` varchar(10) NOT NULL DEFAULT 'USD',
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotizacion_productos`
--

CREATE TABLE `cotizacion_productos` (
  `cotizacion_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `precio_unitario` decimal(12,2) NOT NULL,
  `impuesto_porcentaje` decimal(5,2) NOT NULL DEFAULT 21.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario_movimientos`
--

CREATE TABLE `inventario_movimientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `tipo_movimiento` enum('entrada','salida','ajuste') NOT NULL,
  `cantidad` int(11) NOT NULL,
  `stock_anterior` int(10) UNSIGNED NOT NULL,
  `stock_nuevo` int(10) UNSIGNED NOT NULL,
  `motivo` text NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventario_movimientos`
--

INSERT INTO `inventario_movimientos` (`id`, `producto_id`, `tipo_movimiento`, `cantidad`, `stock_anterior`, `stock_nuevo`, `motivo`, `usuario_id`, `fecha`) VALUES
(1, 121, 'entrada', 25, 0, 25, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(2, 122, 'entrada', 100, 0, 100, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(3, 123, 'entrada', 150, 0, 150, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(4, 124, 'entrada', 12, 0, 12, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(5, 125, 'entrada', 18, 0, 18, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(6, 126, 'entrada', 8, 0, 8, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(7, 132, 'entrada', 5, 0, 5, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(8, 133, 'entrada', 12, 0, 12, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(9, 134, 'entrada', 20, 0, 20, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(10, 135, 'entrada', 30, 0, 30, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43'),
(11, 136, 'entrada', 8, 0, 8, 'Stock inicial de datos de prueba', 1, '2025-06-11 13:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `codigo_sku` varchar(50) DEFAULT NULL,
  `precio_compra` decimal(12,2) NOT NULL DEFAULT 0.00,
  `precio_venta` decimal(12,2) DEFAULT NULL,
  `stock_actual` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock_minimo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock_maximo` int(10) UNSIGNED DEFAULT NULL,
  `precio_base` decimal(12,2) NOT NULL,
  `impuesto_porcentaje` decimal(5,2) NOT NULL DEFAULT 21.00,
  `unidad_medida` enum('unidad','kg','gramo','litro','metro','caja','paquete') NOT NULL DEFAULT 'unidad',
  `imagen` varchar(255) DEFAULT NULL,
  `stock` int(10) UNSIGNED DEFAULT NULL,
  `moneda` varchar(10) NOT NULL DEFAULT 'USD',
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `categoria_id`, `codigo_sku`, `precio_compra`, `precio_venta`, `stock_actual`, `stock_minimo`, `stock_maximo`, `precio_base`, `impuesto_porcentaje`, `unidad_medida`, `imagen`, `stock`, `moneda`, `activo`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(121, 'Licencia Windows Server 2022', 'Licencia de sistema operativo servidor', 29, 'WIN-SRV-2022', 450.00, 699.00, 25, 5, 50, 699.00, 21.00, 'unidad', NULL, 25, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(122, 'Office 365 Business Premium', 'Suite ofimática en la nube anual', 29, 'O365-BP-001', 180.00, 299.00, 100, 10, 200, 299.00, 21.00, 'unidad', NULL, 100, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(123, 'Antivirus Kaspersky Endpoint', 'Protección antivirus empresarial', 29, 'KAS-EP-001', 35.00, 59.00, 150, 20, 300, 59.00, 21.00, 'unidad', NULL, 150, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(124, 'Laptop Dell Latitude 5520', 'Laptop empresarial i5, 16GB RAM, 512GB SSD', 30, 'DELL-LAT-5520', 850.00, 1299.00, 12, 3, 25, 1299.00, 21.00, 'unidad', NULL, 12, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(125, 'Monitor Samsung 27\" 4K', 'Monitor profesional 27 pulgadas resolución 4K', 30, 'SAM-MON-27-4K', 280.00, 449.00, 18, 5, 30, 449.00, 21.00, 'unidad', NULL, 18, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(126, 'Impresora HP LaserJet Pro', 'Impresora láser monocromática profesional', 30, 'HP-LJ-PRO-001', 165.00, 279.00, 8, 2, 15, 279.00, 21.00, 'unidad', NULL, 8, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(127, 'Consultoría IT - Hora', 'Hora de consultoría especializada', 31, 'CONS-IT-HORA', 60.00, 120.00, 0, 0, NULL, 120.00, 21.00, 'unidad', NULL, 0, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(128, 'Implementación de Red', 'Diseño e implementación de red empresarial', 31, 'IMPL-RED-001', 800.00, 1500.00, 0, 0, NULL, 1500.00, 21.00, 'unidad', NULL, 0, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(129, 'Migración a la Nube', 'Servicio de migración completa a cloud', 31, 'MIG-CLOUD-001', 1200.00, 2500.00, 0, 0, NULL, 2500.00, 21.00, 'unidad', NULL, 0, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(130, 'Soporte Técnico Mensual', 'Contrato de soporte técnico mensual', 32, 'SOPORTE-MES', 80.00, 150.00, 0, 0, NULL, 150.00, 21.00, 'unidad', NULL, 0, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(131, 'Mantenimiento Preventivo', 'Servicio de mantenimiento preventivo equipos', 32, 'MANT-PREV-001', 45.00, 89.00, 0, 0, NULL, 89.00, 21.00, 'unidad', NULL, 0, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(132, 'Router Cisco 2911', 'Router empresarial Cisco 2911', 34, 'CISCO-2911', 1200.00, 1899.00, 5, 1, 10, 1899.00, 21.00, 'unidad', NULL, 5, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(133, 'Switch TP-Link 24 Puertos', 'Switch administrable 24 puertos gigabit', 34, 'TPL-SW24-001', 180.00, 299.00, 12, 3, 20, 299.00, 21.00, 'unidad', NULL, 12, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(134, 'Access Point Ubiquiti', 'Punto de acceso WiFi 6 empresarial', 34, 'UBI-AP-001', 95.00, 159.00, 20, 5, 40, 159.00, 21.00, 'unidad', NULL, 20, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(135, 'Disco SSD Samsung 1TB', 'Disco estado sólido 1TB SATA', 36, 'SAM-SSD-1TB', 85.00, 149.00, 30, 10, 60, 149.00, 21.00, 'unidad', NULL, 30, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43'),
(136, 'NAS Synology 2 Bahías', 'Sistema almacenamiento en red 2 bahías', 36, 'SYN-NAS-2BAY', 220.00, 399.00, 8, 2, 15, 399.00, 21.00, 'unidad', NULL, 8, 'USD', 1, '2025-06-11 13:52:43', '2025-06-11 13:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('admin','vendedor') NOT NULL DEFAULT 'vendedor',
  `nombre_completo` varchar(100) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password_hash`, `email`, `role`, `nombre_completo`, `fecha_creacion`, `fecha_actualizacion`, `activo`) VALUES
(1, 'root', '$2y$10$yD7T2nUFLFnKbRInbOf1w.jkTCdTaWI162bhboMwqexpEtwIFSJh6', 'admin@crm.local', 'admin', 'Administrador Principal', '2025-06-10 07:02:12', '2025-06-11 13:47:50', 1),
(2, 'seller1', '$2y$10$yD7T2nUFLFnKbRInbOf1w.jkTCdTaWI162bhboMwqexpEtwIFSJh6', 'vendedor1@crm.local', 'vendedor', 'Juan Pérez Vendedor', '2025-06-10 07:02:12', '2025-06-11 13:47:50', 1),
(3, 'seller2', '$2y$10$yD7T2nUFLFnKbRInbOf1w.jkTCdTaWI162bhboMwqexpEtwIFSJh6', 'vendedor2@crm.local', 'vendedor', 'María González Vendedor', '2025-06-10 07:02:12', '2025-06-11 13:47:50', 1),
(4, 'supervisor', '$2y$10$yD7T2nUFLFnKbRInbOf1w.jkTCdTaWI162bhboMwqexpEtwIFSJh6', 'supervisor@crm.local', 'admin', 'Carlos López Supervisor', '2025-06-10 07:02:12', '2025-06-11 13:47:50', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_productos`
-- (See below for the actual view)
--
CREATE TABLE `vista_productos` (
`id` int(10) unsigned
,`nombre` varchar(150)
,`descripcion` text
,`categoria_id` int(10) unsigned
,`codigo_sku` varchar(50)
,`precio_compra` decimal(12,2)
,`precio_venta` decimal(12,2)
,`stock_actual` int(10) unsigned
,`stock_minimo` int(10) unsigned
,`stock_maximo` int(10) unsigned
,`precio_base` decimal(12,2)
,`impuesto_porcentaje` decimal(5,2)
,`unidad_medida` enum('unidad','kg','gramo','litro','metro','caja','paquete')
,`imagen` varchar(255)
,`stock` int(10) unsigned
,`moneda` varchar(10)
,`activo` tinyint(1)
,`fecha_creacion` timestamp
,`fecha_actualizacion` timestamp
,`categoria_nombre` varchar(100)
,`categoria_descripcion` text
,`estado_stock` varchar(12)
);

-- --------------------------------------------------------

--
-- Structure for view `clientes_activos`
--
DROP TABLE IF EXISTS `clientes_activos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clientes_activos`  AS SELECT `clientes`.`id` AS `id`, `clientes`.`nombre` AS `nombre`, `clientes`.`email` AS `email`, `clientes`.`telefono` AS `telefono`, `clientes`.`direccion` AS `direccion`, `clientes`.`estado` AS `estado`, `clientes`.`fecha_creacion` AS `fecha_creacion`, `clientes`.`fecha_actualizacion` AS `fecha_actualizacion` FROM `clientes` WHERE `clientes`.`eliminado` = 0 ;

-- --------------------------------------------------------

--
-- Structure for view `clientes_eliminados`
--
DROP TABLE IF EXISTS `clientes_eliminados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clientes_eliminados`  AS SELECT `c`.`id` AS `id`, `c`.`nombre` AS `nombre`, `c`.`email` AS `email`, `c`.`telefono` AS `telefono`, `c`.`direccion` AS `direccion`, `c`.`estado` AS `estado`, `c`.`fecha_creacion` AS `fecha_creacion`, `c`.`fecha_eliminacion` AS `fecha_eliminacion`, `u`.`username` AS `eliminado_por_usuario` FROM (`clientes` `c` left join `usuarios` `u` on(`c`.`eliminado_por` = `u`.`id`)) WHERE `c`.`eliminado` = 1 ORDER BY `c`.`fecha_eliminacion` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `vista_productos`
--
DROP TABLE IF EXISTS `vista_productos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_productos`  AS SELECT `p`.`id` AS `id`, `p`.`nombre` AS `nombre`, `p`.`descripcion` AS `descripcion`, `p`.`categoria_id` AS `categoria_id`, `p`.`codigo_sku` AS `codigo_sku`, `p`.`precio_compra` AS `precio_compra`, `p`.`precio_venta` AS `precio_venta`, `p`.`stock_actual` AS `stock_actual`, `p`.`stock_minimo` AS `stock_minimo`, `p`.`stock_maximo` AS `stock_maximo`, `p`.`precio_base` AS `precio_base`, `p`.`impuesto_porcentaje` AS `impuesto_porcentaje`, `p`.`unidad_medida` AS `unidad_medida`, `p`.`imagen` AS `imagen`, `p`.`stock` AS `stock`, `p`.`moneda` AS `moneda`, `p`.`activo` AS `activo`, `p`.`fecha_creacion` AS `fecha_creacion`, `p`.`fecha_actualizacion` AS `fecha_actualizacion`, `c`.`nombre` AS `categoria_nombre`, `c`.`descripcion` AS `categoria_descripcion`, CASE WHEN `p`.`stock_actual` <= 0 THEN 'sin_stock' WHEN `p`.`stock_actual` <= `p`.`stock_minimo` THEN 'stock_bajo' ELSE 'stock_normal' END AS `estado_stock` FROM (`productos` `p` join `categorias` `c` on(`p`.`categoria_id` = `c`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_accion` (`accion`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_clientes_eliminado_por` (`eliminado_por`),
  ADD KEY `idx_eliminado` (`eliminado`),
  ADD KEY `idx_eliminado_fecha` (`eliminado`,`fecha_eliminacion`);

--
-- Indexes for table `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `cotizacion_productos`
--
ALTER TABLE `cotizacion_productos`
  ADD PRIMARY KEY (`cotizacion_id`,`producto_id`),
  ADD KEY `idx_producto` (`producto_id`);

--
-- Indexes for table `inventario_movimientos`
--
ALTER TABLE `inventario_movimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `idx_producto` (`producto_id`),
  ADD KEY `idx_tipo` (`tipo_movimiento`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_sku` (`codigo_sku`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `cotizaciones`
--
ALTER TABLE `cotizaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `inventario_movimientos`
--
ALTER TABLE `inventario_movimientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auditoria`
--
ALTER TABLE `auditoria`
  ADD CONSTRAINT `auditoria_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_eliminado_por` FOREIGN KEY (`eliminado_por`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD CONSTRAINT `cotizaciones_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cotizaciones_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `cotizacion_productos`
--
ALTER TABLE `cotizacion_productos`
  ADD CONSTRAINT `cotizacion_productos_ibfk_1` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cotizacion_productos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `inventario_movimientos`
--
ALTER TABLE `inventario_movimientos`
  ADD CONSTRAINT `inventario_movimientos_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_movimientos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
