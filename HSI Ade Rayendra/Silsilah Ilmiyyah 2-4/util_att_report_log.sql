-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 10.90.64.3
-- Generation Time: Mar 16, 2023 at 11:42 AM
-- Server version: 10.5.15-MariaDB-0+deb11u1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `util_att_report_log`
--

CREATE TABLE `util_att_report_log` (
  `id` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `report_start` timestamp NOT NULL DEFAULT current_timestamp(),
  `report_finish` timestamp NOT NULL DEFAULT current_timestamp(),
  `exec_time` varchar(20) NOT NULL,
  `ip_address` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `util_att_report_log`
--

INSERT INTO `util_att_report_log` (`id`, `month`, `year`, `report_start`, `report_finish`, `exec_time`, `ip_address`) VALUES
(216, '01', '2023', '2023-03-16 04:13:20', '2023-03-16 04:13:35', '15.129692077637', '103.144.228.19'),
(215, '01', '2023', '2023-03-16 03:59:49', '2023-03-16 04:00:05', '16.832978963852', '103.144.228.19'),
(214, '01', '2023', '2023-03-16 03:38:40', '2023-03-16 03:38:57', '16.401836872101', '103.144.228.19'),
(213, '01', '2023', '2023-03-16 03:14:21', '2023-03-16 03:14:35', '14.401057004929', '103.144.228.19'),
(212, '01', '2023', '2023-03-16 03:10:03', '2023-03-16 03:10:18', '15.296715021133', '103.144.228.19'),
(211, '01', '2023', '2023-03-16 03:02:41', '2023-03-16 03:02:56', '14.950092077255', '103.144.228.19'),
(210, '01', '2023', '2023-03-16 02:38:04', '2023-03-16 02:38:21', '16.47129201889', '103.144.228.19'),
(209, '01', '2023', '2023-03-16 02:26:31', '2023-03-16 02:26:46', '15.27231502533', '103.144.228.19'),
(208, '01', '2023', '2023-03-16 02:18:37', '2023-03-16 02:18:52', '15.380869865417', '103.144.228.19'),
(207, '01', '2023', '2023-03-16 02:15:13', '2023-03-16 02:15:28', '14.378056049347', '103.144.228.19'),
(206, '01', '2023', '2023-03-16 02:10:18', '2023-03-16 02:10:33', '15.899517059326', '103.144.228.19'),
(205, '01', '2023', '2023-03-16 01:37:50', '2023-03-16 01:38:06', '16.815566062927', '103.144.228.19'),
(204, '02', '2023', '2023-03-15 19:13:49', '2023-03-15 19:14:02', '13.362133979797', '182.4.70.195'),
(203, '01', '2023', '2023-03-15 19:12:03', '2023-03-15 19:12:18', '14.976048946381', '182.4.70.195'),
(202, '01', '2023', '2023-03-15 19:11:06', '2023-03-15 19:11:20', '14.307517051697', '182.4.70.195'),
(201, '01', '2023', '2023-03-15 18:56:31', '2023-03-15 18:56:47', '15.849703788757', '182.4.70.195'),
(200, '01', '2023', '2023-03-15 18:53:42', '2023-03-15 18:53:56', '14.130938053131', '182.4.70.195'),
(199, '01', '2023', '2023-03-15 18:37:20', '2023-03-15 18:37:35', '14.289921045303', '182.4.70.195'),
(198, '01', '2023', '2023-03-15 18:36:48', '2023-03-15 18:37:03', '14.91296505928', '182.4.70.195'),
(197, '01', '2023', '2023-03-15 18:35:39', '2023-03-15 18:35:54', '14.86234998703', '182.4.70.195'),
(196, '01', '2023', '2023-03-15 18:32:49', '2023-03-15 18:33:03', '14.155735015869', '182.4.70.195'),
(195, '01', '2023', '2023-03-15 18:31:51', '2023-03-15 18:32:06', '15.124956130981', '182.4.70.195'),
(194, '01', '2023', '2023-03-15 18:27:55', '2023-03-15 18:28:09', '14.182446956635', '182.4.70.195'),
(193, '01', '2023', '2023-03-15 18:24:46', '2023-03-15 18:25:00', '14.329195976257', '182.4.70.195'),
(192, '01', '2023', '2023-03-15 18:24:13', '2023-03-15 18:24:29', '15.231472015381', '182.4.70.195'),
(191, '01', '2023', '2023-03-15 18:23:23', '2023-03-15 18:23:41', '17.307973146439', '182.4.70.195'),
(190, '01', '2023', '2023-03-15 18:14:56', '2023-03-15 18:15:11', '15.322072029114', '182.4.70.195'),
(189, '01', '2023', '2023-03-15 18:14:33', '2023-03-15 18:14:48', '14.316258192062', '182.4.70.195'),
(188, '01', '2023', '2023-03-15 18:12:39', '2023-03-15 18:12:54', '15.263023138046', '182.4.70.195'),
(187, '01', '2023', '2023-03-15 18:11:12', '2023-03-15 18:11:26', '14.198622941971', '182.4.70.195'),
(186, '01', '2023', '2023-03-15 18:07:30', '2023-03-15 18:07:46', '15.902261018753', '182.4.70.195'),
(185, '01', '2023', '2023-03-15 18:05:23', '2023-03-15 18:05:37', '14.562795877457', '182.4.70.195'),
(184, '01', '2023', '2023-03-15 18:04:55', '2023-03-15 18:05:09', '14.051958799362', '182.4.70.195'),
(183, '01', '2023', '2023-03-15 18:00:43', '2023-03-15 18:00:58', '15.02386713028', '182.4.70.195'),
(182, '01', '2023', '2023-03-15 17:54:56', '2023-03-15 17:55:10', '14.505383968353', '182.4.70.195'),
(181, '01', '2023', '2023-03-15 17:52:59', '2023-03-15 17:53:14', '15.054939985275', '182.4.70.195'),
(180, '01', '2023', '2023-03-15 17:44:19', '2023-03-15 17:44:34', '15.937061071396', '182.4.70.195'),
(179, '01', '2023', '2023-03-15 17:42:29', '2023-03-15 17:42:43', '14.451051950455', '182.4.70.195'),
(178, '01', '2023', '2023-03-15 17:41:59', '2023-03-15 17:42:14', '15.261260032654', '182.4.70.195'),
(177, '01', '2023', '2023-03-15 17:39:14', '2023-03-15 17:39:29', '14.24125790596', '182.4.70.195'),
(176, '01', '2023', '2023-03-15 17:37:49', '2023-03-15 17:38:04', '14.206530094147', '182.4.70.195'),
(175, '01', '2023', '2023-03-15 17:34:18', '2023-03-15 17:34:34', '15.629482030869', '182.4.70.195'),
(174, '01', '2023', '2023-03-15 17:33:48', '2023-03-15 17:34:03', '15.246695995331', '182.4.70.195'),
(173, '01', '2023', '2023-03-15 17:33:05', '2023-03-15 17:33:21', '15.302720069885', '182.4.70.195'),
(172, '01', '2023', '2023-03-15 17:31:33', '2023-03-15 17:31:49', '16.162165164948', '182.4.70.195'),
(171, '01', '2023', '2023-03-15 17:31:04', '2023-03-15 17:31:19', '15.412443876266', '182.4.70.195'),
(170, '01', '2023', '2023-03-15 17:30:09', '2023-03-15 17:30:24', '14.649021863937', '182.4.70.195'),
(169, '01', '2023', '2023-03-15 17:27:53', '2023-03-15 17:28:08', '15.231706142426', '182.4.70.198'),
(168, '01', '2023', '2023-03-15 17:26:48', '2023-03-15 17:27:04', '16.04852104187', '182.4.70.198'),
(167, '01', '2023', '2023-03-15 17:15:36', '2023-03-15 17:15:51', '14.850610017776', '182.4.70.198'),
(166, '01', '2023', '2023-03-15 17:14:20', '2023-03-15 17:14:36', '15.932503938675', '182.4.70.198'),
(165, '01', '2023', '2023-03-15 17:13:52', '2023-03-15 17:14:08', '15.758796930313', '182.4.70.198'),
(164, '01', '2023', '2023-03-15 17:11:30', '2023-03-15 17:11:45', '14.412557125092', '182.4.70.198'),
(163, '01', '2023', '2023-03-15 17:06:44', '2023-03-15 17:06:58', '14.764583826065', '182.4.70.198'),
(162, '01', '2023', '2023-03-15 17:06:04', '2023-03-15 17:06:20', '15.767111063004', '182.4.70.198'),
(161, '01', '2023', '2023-03-15 17:05:12', '2023-03-15 17:05:27', '15.205379962921', '182.4.70.198'),
(160, '01', '2023', '2023-03-15 17:04:33', '2023-03-15 17:04:48', '14.608336925507', '182.4.70.198'),
(159, '01', '2023', '2023-03-15 17:04:14', '2023-03-15 17:04:28', '14.662743806839', '182.4.70.198'),
(158, '01', '2023', '2023-03-15 17:02:46', '2023-03-15 17:03:03', '17.049314975739', '182.4.70.198'),
(157, '01', '2023', '2023-03-15 17:00:03', '2023-03-15 17:00:18', '15.474906921387', '182.4.70.198'),
(156, '01', '2023', '2023-03-15 16:59:41', '2023-03-15 16:59:55', '14.055593013763', '182.4.70.198'),
(155, '01', '2023', '2023-03-15 16:57:26', '2023-03-15 16:57:41', '15.599095821381', '182.4.70.198'),
(154, '01', '2023', '2023-03-15 16:57:01', '2023-03-15 16:57:16', '15.305230140686', '182.4.70.198'),
(153, '01', '2023', '2023-03-15 16:54:48', '2023-03-15 16:55:02', '13.989778995514', '182.4.70.198'),
(152, '01', '2023', '2023-03-15 16:54:22', '2023-03-15 16:54:38', '15.807727813721', '182.4.70.198'),
(151, '01', '2023', '2023-03-15 16:50:18', '2023-03-15 16:50:34', '15.615148067474', '182.4.70.198'),
(150, '01', '2023', '2023-03-15 16:48:37', '2023-03-15 16:48:52', '14.960635900497', '182.4.70.198'),
(149, '01', '2023', '2023-03-15 16:46:12', '2023-03-15 16:46:28', '15.892246961594', '182.4.70.198'),
(148, '01', '2023', '2023-03-15 16:45:50', '2023-03-15 16:46:06', '15.031075954437', '182.4.70.198'),
(147, '01', '2023', '2023-03-15 16:44:19', '2023-03-15 16:44:35', '15.778399944305', '182.4.70.198'),
(146, '01', '2023', '2023-03-15 16:43:57', '2023-03-15 16:44:11', '14.493649959564', '182.4.70.198'),
(145, '01', '2023', '2023-03-15 16:43:00', '2023-03-15 16:43:16', '16.538020133972', '182.4.70.198'),
(144, '01', '2023', '2023-03-15 16:41:28', '2023-03-15 16:41:43', '14.837213039398', '182.4.70.198'),
(143, '01', '2023', '2023-03-15 16:41:09', '2023-03-15 16:41:24', '15.250017166138', '182.4.70.198'),
(142, '01', '2023', '2023-03-15 16:39:23', '2023-03-15 16:39:38', '14.237957000732', '182.4.70.198'),
(141, '01', '2023', '2023-03-15 16:26:37', '2023-03-15 16:26:53', '16.009553194046', '182.4.70.198'),
(140, '01', '2023', '2023-03-15 16:21:41', '2023-03-15 16:21:56', '15.234147071838', '182.4.70.198'),
(139, '01', '2023', '2023-03-15 16:20:38', '2023-03-15 16:20:53', '14.416667938232', '182.4.70.198'),
(138, '01', '2023', '2023-03-15 16:18:51', '2023-03-15 16:19:07', '16.189610958099', '182.4.70.198'),
(137, '01', '2023', '2023-03-15 15:08:49', '2023-03-15 15:09:05', '16.035956859589', '182.4.70.195'),
(136, '01', '2023', '2023-03-15 15:06:33', '2023-03-15 15:06:48', '15.145550966263', '182.4.70.195'),
(135, '01', '2023', '2023-03-15 15:05:43', '2023-03-15 15:06:00', '16.60675907135', '182.4.70.195'),
(134, '01', '2023', '2023-03-15 15:02:32', '2023-03-15 15:02:48', '15.190801143646', '182.4.70.195'),
(133, '01', '2023', '2023-03-15 14:57:43', '2023-03-15 14:57:59', '16.669625997543', '182.4.70.195'),
(132, '01', '2023', '2023-03-15 14:56:10', '2023-03-15 14:56:27', '16.431135177612', '182.4.70.195'),
(131, '01', '2023', '2023-03-15 14:52:23', '2023-03-15 14:52:37', '14.535585165024', '182.4.70.195'),
(130, '01', '2023', '2023-03-15 14:42:22', '2023-03-15 14:42:39', '16.747277975082', '182.4.70.195'),
(129, '01', '2023', '2023-03-15 08:55:42', '2023-03-15 08:55:57', '15.164469003677', '103.144.228.19'),
(128, '01', '2023', '2023-03-15 08:39:46', '2023-03-15 08:40:01', '15.082715034485', '103.144.228.19'),
(127, '01', '2023', '2023-03-15 08:35:23', '2023-03-15 08:35:38', '15.330150127411', '103.144.228.19'),
(126, '01', '2023', '2023-03-15 07:48:20', '2023-03-15 07:48:35', '14.754621982574', '103.144.228.19'),
(125, '01', '2023', '2023-03-15 06:02:32', '2023-03-15 06:02:47', '15.580739021301', '103.144.228.19'),
(124, '01', '2023', '2023-03-15 05:45:23', '2023-03-15 05:45:39', '16.320040225983', '103.144.228.19'),
(123, '01', '2023', '2023-03-15 05:39:58', '2023-03-15 05:40:14', '15.507885932922', '103.144.228.19'),
(122, '01', '2023', '2023-03-15 05:07:24', '2023-03-15 05:07:39', '15.043388843536', '182.4.68.50'),
(121, '01', '2023', '2023-03-15 05:06:06', '2023-03-15 05:06:22', '15.59903717041', '103.144.228.19'),
(120, '01', '2023', '2023-03-15 04:56:05', '2023-03-15 04:56:21', '16.151460886002', '103.144.228.19'),
(119, '01', '2023', '2023-03-15 04:42:41', '2023-03-15 04:42:55', '14.275778055191', '103.144.228.19'),
(118, '01', '2023', '2023-03-15 04:39:44', '2023-03-15 04:40:00', '15.993635177612', '103.144.228.19'),
(117, '01', '2023', '2023-03-15 04:35:20', '2023-03-15 04:35:35', '15.351249217987', '103.144.228.19'),
(116, '01', '2023', '2023-03-15 04:32:23', '2023-03-15 04:32:38', '15.697990894318', '103.144.228.19'),
(115, '01', '2023', '2023-03-15 04:26:00', '2023-03-15 04:26:16', '15.516460895538', '103.144.228.19'),
(114, '01', '2023', '2023-03-15 04:16:04', '2023-03-15 04:16:20', '16.858752012253', '103.144.228.19'),
(113, '01', '2023', '2023-03-15 03:59:26', '2023-03-15 03:59:43', '16.561665058136', '103.144.228.19'),
(112, '01', '2023', '2023-03-15 03:56:17', '2023-03-15 03:56:35', '17.232551813126', '103.144.228.19'),
(111, '01', '2023', '2023-03-14 18:18:28', '2023-03-14 18:18:43', '14.696207046509', '182.4.71.242'),
(110, '01', '2023', '2023-03-14 18:17:49', '2023-03-14 18:18:03', '14.596774101257', '182.4.71.242'),
(109, '01', '2023', '2023-03-14 18:13:03', '2023-03-14 18:13:17', '14.419343948364', '182.4.71.242'),
(108, '01', '2023', '2023-03-14 18:10:32', '2023-03-14 18:10:46', '14.481117963791', '182.4.71.242'),
(107, '01', '2023', '2023-03-14 18:10:16', '2023-03-14 18:10:30', '14.554807186127', '182.4.71.242'),
(106, '01', '2023', '2023-03-14 18:09:44', '2023-03-14 18:09:59', '14.510130882263', '182.4.71.242'),
(105, '01', '2023', '2023-03-14 18:08:48', '2023-03-14 18:09:03', '15.506067991257', '182.4.71.242'),
(104, '01', '2023', '2023-03-14 18:02:07', '2023-03-14 18:02:21', '14.509927988052', '182.4.71.242'),
(103, '01', '2023', '2023-03-14 17:59:40', '2023-03-14 17:59:55', '14.796503067017', '182.4.71.242'),
(102, '01', '2023', '2023-03-14 17:54:49', '2023-03-14 17:55:06', '16.49662399292', '182.4.68.122'),
(101, '01', '2023', '2023-03-14 17:54:06', '2023-03-14 17:54:21', '15.553483963013', '182.4.68.122'),
(100, '01', '2023', '2023-03-14 17:51:07', '2023-03-14 17:51:22', '15.316082954407', '182.4.68.122'),
(99, '01', '2023', '2023-03-14 17:48:45', '2023-03-14 17:49:02', '16.63719701767', '182.4.68.122'),
(98, '01', '2023', '2023-03-14 17:46:19', '2023-03-14 17:46:33', '14.505923032761', '182.4.68.122'),
(97, '01', '2023', '2023-03-14 17:43:55', '2023-03-14 17:44:11', '16.149141788483', '182.4.68.122'),
(96, '01', '2023', '2023-03-14 17:42:23', '2023-03-14 17:42:39', '15.688310146332', '182.4.68.122'),
(95, '01', '2023', '2023-03-14 17:40:39', '2023-03-14 17:40:54', '14.562444925308', '182.4.71.242'),
(94, '01', '2023', '2023-03-14 17:39:48', '2023-03-14 17:40:03', '14.387257099152', '182.4.71.242'),
(93, '01', '2023', '2023-03-14 17:38:41', '2023-03-14 17:38:56', '15.065459012985', '182.4.71.242'),
(92, '01', '2023', '2023-03-14 17:33:27', '2023-03-14 17:33:43', '15.729378223419', '182.4.71.242'),
(91, '01', '2023', '2023-03-14 17:32:18', '2023-03-14 17:32:33', '14.593613862991', '182.4.71.242'),
(90, '01', '2023', '2023-03-14 17:29:48', '2023-03-14 17:30:04', '16.115196943283', '182.4.71.242'),
(89, '01', '2023', '2023-03-14 17:28:23', '2023-03-14 17:28:40', '16.57420706749', '182.4.71.242'),
(88, '01', '2023', '2023-03-14 17:27:40', '2023-03-14 17:27:56', '15.600563049316', '182.4.71.242'),
(87, '01', '2023', '2023-03-14 17:26:05', '2023-03-14 17:26:20', '14.99191904068', '182.4.71.242'),
(86, '01', '2023', '2023-03-14 17:24:54', '2023-03-14 17:25:10', '16.528465032578', '182.4.71.242'),
(85, '01', '2023', '2023-03-14 17:19:31', '2023-03-14 17:19:45', '14.617389917374', '182.4.71.242'),
(84, '01', '2023', '2023-03-14 16:57:30', '2023-03-14 16:57:46', '15.630309104919', '182.4.71.242'),
(83, '01', '2023', '2023-03-14 16:45:49', '2023-03-14 16:46:04', '14.884991884232', '182.4.71.242'),
(82, '01', '2023', '2023-03-14 16:40:57', '2023-03-14 16:41:11', '14.616136074066', '182.4.71.242'),
(81, '01', '2023', '2023-03-14 16:32:15', '2023-03-14 16:32:30', '15.488327026367', '182.4.68.122'),
(80, '01', '2023', '2023-03-14 16:31:14', '2023-03-14 16:31:30', '15.785025119781', '182.4.71.242'),
(79, '01', '2023', '2023-03-14 16:29:56', '2023-03-14 16:30:12', '16.714732885361', '182.4.71.242'),
(78, '01', '2023', '2023-03-14 16:25:15', '2023-03-14 16:25:30', '14.540390014648', '182.4.71.242'),
(77, '01', '2023', '2023-03-14 16:19:53', '2023-03-14 16:20:11', '17.967820882797', '182.4.71.242'),
(76, '01', '2023', '2023-03-14 16:17:16', '2023-03-14 16:17:32', '16.006423950195', '182.4.71.242'),
(75, '01', '2023', '2023-03-14 16:12:22', '2023-03-14 16:12:38', '15.554224967957', '182.4.68.122'),
(74, '01', '2023', '2023-03-14 16:11:05', '2023-03-14 16:11:22', '16.664070129395', '182.4.68.122'),
(73, '01', '2023', '2023-03-14 15:56:14', '2023-03-14 15:56:30', '15.532146930695', '182.4.68.122'),
(72, '01', '2023', '2023-03-14 08:45:42', '2023-03-14 08:45:59', '16.878924131393', '103.144.228.19'),
(71, '01', '2023', '2023-03-14 08:38:02', '2023-03-14 08:38:17', '15.575247049332', '103.144.228.19'),
(70, '01', '2023', '2023-03-14 08:32:40', '2023-03-14 08:32:54', '14.500562906265', '103.144.228.19'),
(69, '01', '2023', '2023-03-14 07:59:47', '2023-03-14 08:00:03', '16.336235046387', '103.144.228.19'),
(68, '01', '2023', '2023-03-14 07:38:51', '2023-03-14 07:39:06', '15.015009880066', '103.144.228.19'),
(67, '01', '2023', '2023-03-14 07:38:04', '2023-03-14 07:38:21', '16.979864120483', '103.144.228.19'),
(66, '01', '2023', '2023-03-14 07:36:49', '2023-03-14 07:37:04', '15.923909902573', '103.144.228.19'),
(65, '01', '2023', '2023-03-14 07:34:53', '2023-03-14 07:35:11', '17.91268992424', '103.144.228.19'),
(64, '01', '2023', '2023-03-14 07:32:43', '2023-03-14 07:33:01', '17.411979913712', '103.144.228.19'),
(63, '01', '2023', '2023-03-14 07:28:24', '2023-03-14 07:28:40', '16.427294015884', '103.144.228.19'),
(62, '01', '2023', '2023-03-14 07:17:00', '2023-03-14 07:17:16', '16.446243047714', '103.144.228.19'),
(61, '01', '2023', '2023-03-14 06:19:15', '2023-03-14 06:19:30', '15.338531970978', '103.144.228.19'),
(60, '01', '2023', '2023-03-14 06:14:56', '2023-03-14 06:15:13', '16.985080957413', '103.144.228.19'),
(59, '01', '2023', '2023-03-14 05:59:37', '2023-03-14 05:59:53', '16.464856863022', '103.144.228.19'),
(58, '01', '2023', '2023-03-14 05:26:13', '2023-03-14 05:26:28', '14.864068984985', '103.144.228.19'),
(57, '01', '2023', '2023-03-14 05:14:26', '2023-03-14 05:14:44', '17.95951294899', '103.144.228.19'),
(56, '01', '2023', '2023-03-14 04:06:00', '2023-03-14 04:06:16', '15.748105049133', '103.144.228.19'),
(55, '01', '2023', '2023-03-14 03:07:12', '2023-03-14 03:07:27', '15.16420006752', '103.144.228.19'),
(54, '01', '2023', '2023-03-14 03:04:31', '2023-03-14 03:04:46', '15.228203773499', '103.144.228.19'),
(53, '01', '2023', '2023-03-14 01:51:01', '2023-03-14 01:51:18', '17.263548135757', '103.144.228.19'),
(52, '01', '2023', '2023-03-13 19:03:19', '2023-03-13 19:03:36', '16.282036066055', '182.4.68.113'),
(51, '01', '2023', '2023-03-13 18:57:06', '2023-03-13 18:57:21', '14.743578910828', '182.4.68.113'),
(50, '01', '2023', '2023-03-13 18:55:41', '2023-03-13 18:55:56', '15.968453884125', '182.4.68.9'),
(49, '01', '2023', '2023-03-13 18:54:24', '2023-03-13 18:54:39', '15.043881177902', '182.4.68.9'),
(48, '01', '2023', '2023-03-13 18:52:25', '2023-03-13 18:52:40', '14.343774795532', '182.4.68.29'),
(47, '01', '2023', '2023-03-13 18:47:56', '2023-03-13 18:48:10', '14.3143658638', '182.4.68.9'),
(46, '01', '2023', '2023-03-13 18:44:54', '2023-03-13 18:45:09', '14.759515047073', '182.4.69.1'),
(45, '01', '2023', '2023-03-13 18:41:57', '2023-03-13 18:42:12', '15.032597064972', '182.4.69.25'),
(44, '01', '2023', '2023-03-13 18:41:01', '2023-03-13 18:41:17', '16.387458086014', '182.4.68.9'),
(43, '01', '2023', '2023-03-13 18:38:31', '2023-03-13 18:38:46', '14.892046928406', '182.4.69.1'),
(42, '01', '2023', '2023-03-13 18:37:28', '2023-03-13 18:37:43', '14.45368719101', '182.4.68.5'),
(41, '01', '2023', '2023-03-13 18:33:46', '2023-03-13 18:34:03', '16.264605045319', '182.4.68.9'),
(40, '01', '2023', '2023-03-13 18:26:48', '2023-03-13 18:27:04', '15.134510993958', '182.4.68.5'),
(39, '01', '2023', '2023-03-13 18:24:46', '2023-03-13 18:25:01', '14.690475940704', '182.4.68.29'),
(38, '01', '2023', '2023-03-13 18:24:11', '2023-03-13 18:24:26', '15.217575073242', '182.4.69.1'),
(37, '01', '2023', '2023-03-13 18:23:09', '2023-03-13 18:23:25', '15.716093063354', '182.4.68.29'),
(36, '01', '2023', '2023-03-13 18:22:08', '2023-03-13 18:22:23', '15.635859966278', '182.4.69.25'),
(35, '01', '2023', '2023-03-13 13:50:21', '2023-03-13 13:50:37', '16.026401042938', '182.4.68.9'),
(34, '01', '2023', '2023-03-13 13:49:16', '2023-03-13 13:49:32', '15.617796897888', '182.4.69.1'),
(33, '01', '2023', '2023-03-13 12:53:27', '2023-03-13 12:53:42', '14.777334928513', '182.4.68.113'),
(32, '01', '2023', '2023-03-13 12:53:01', '2023-03-13 12:53:17', '16.393777132034', '182.4.68.113'),
(31, '01', '2023', '2023-03-13 12:50:36', '2023-03-13 12:50:53', '16.146040201187', '182.4.68.113'),
(30, '01', '2023', '2023-03-13 12:49:52', '2023-03-13 12:50:08', '15.689079046249', '182.4.68.113'),
(29, '01', '2023', '2023-03-13 12:44:02', '2023-03-13 12:44:17', '14.723429918289', '182.4.68.113'),
(28, '01', '2023', '2023-03-13 12:43:12', '2023-03-13 12:43:28', '15.581571817398', '182.4.68.113'),
(27, '01', '2023', '2023-03-13 12:42:13', '2023-03-13 12:42:29', '15.180490016937', '182.4.68.113'),
(26, '01', '2023', '2023-03-13 12:40:09', '2023-03-13 12:40:26', '17.209719896317', '182.4.68.113'),
(25, '01', '2023', '2023-03-13 12:38:18', '2023-03-13 12:38:34', '16.657618999481', '182.4.68.113'),
(24, '01', '2023', '2023-03-13 12:36:20', '2023-03-13 12:36:35', '14.514686107635', '182.4.68.113'),
(23, '01', '2023', '2023-03-13 12:32:58', '2023-03-13 12:33:12', '14.50829911232', '182.4.68.113'),
(22, '01', '2023', '2023-03-13 12:32:23', '2023-03-13 12:32:38', '14.929579973221', '182.4.68.113'),
(21, '01', '2023', '2023-03-13 12:31:37', '2023-03-13 12:31:52', '14.597054004669', '182.4.68.113'),
(20, '01', '2023', '2023-03-13 12:30:10', '2023-03-13 12:30:26', '16.057862043381', '182.4.68.113'),
(19, '01', '2023', '2023-03-13 12:24:48', '2023-03-13 12:25:05', '16.593973875046', '182.4.68.113'),
(18, '01', '2023', '2023-03-13 12:00:24', '2023-03-13 12:00:40', '15.624303817749', '182.4.68.113'),
(17, '01', '2023', '2023-03-13 07:48:32', '2023-03-13 07:48:48', '16.062419891357', '103.144.228.19'),
(16, '01', '2023', '2023-03-13 07:47:40', '2023-03-13 07:47:56', '16.010154008865', '103.144.228.19'),
(15, '01', '2023', '2023-03-13 01:59:23', '2023-03-13 01:59:39', '16.782126188278', '103.144.228.19'),
(14, '01', '2023', '2023-03-13 01:58:48', '2023-03-13 01:59:04', '15.392200946808', '103.144.228.19'),
(13, '01', '2023', '2023-03-13 01:57:19', '2023-03-13 01:57:36', '16.791507959366', '103.144.228.19'),
(12, '01', '2023', '2023-03-09 18:43:31', '2023-03-09 18:43:48', '16.677660942078', '182.4.70.241'),
(11, '01', '2023', '2023-03-09 16:38:23', '2023-03-09 16:38:39', '15.839642047882', '182.4.70.241'),
(10, '01', '2023', '2023-03-09 15:04:29', '2023-03-09 15:04:45', '16.38884305954', '182.4.69.111'),
(9, '01', '2023', '2023-03-09 15:02:10', '2023-03-09 15:02:24', '14.43555021286', '182.4.69.115'),
(8, '01', '2023', '2023-03-09 14:50:01', '2023-03-09 14:50:17', '16.192867994308', '182.4.69.67'),
(7, '01', '2023', '2023-03-07 02:38:10', '2023-03-07 02:38:58', '48.835072994232', '103.144.228.19'),
(6, '01', '2023', '2023-02-28 06:50:14', '2023-02-28 06:51:01', '47.060660839081', '103.144.228.19'),
(5, '01', '2023', '2023-02-28 06:46:55', '2023-02-28 06:47:41', '46.687151908875', '103.144.228.19'),
(4, '01', '2023', '2023-02-27 12:51:12', '2023-02-27 12:51:54', '42.464324951172', '182.4.68.41'),
(3, '01', '2023', '2023-02-27 12:31:48', '2023-02-27 12:32:29', '41.898086071014', '182.4.68.41'),
(2, '01', '2023', '2023-02-24 02:02:48', '2023-02-24 02:03:31', '42.771122932434', '103.144.228.19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `util_att_report_log`
--
ALTER TABLE `util_att_report_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `util_att_report_log`
--
ALTER TABLE `util_att_report_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;