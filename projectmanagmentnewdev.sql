-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2019 at 05:38 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectmanagmentnewdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `ed_docs_requests_tpl`
--

CREATE TABLE `ed_docs_requests_tpl` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `form_fields` varchar(255) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ed_docs_requests_tpl`
--

INSERT INTO `ed_docs_requests_tpl` (`id`, `title`, `form_fields`, `project_id`, `status`, `deleted`) VALUES
(2, 'trs', 'a:4:{s:10:\"form_title\";s:3:\"trs\";s:10:\"project_id\";s:4:\"1234\";s:3:\"chk\";a:1:{i:0;s:2:\"on\";}s:7:\"BX_NAME\";a:1:{i:0;s:5:\"fname\";}}', 1234, NULL, '2019-02-15 10:19:18'),
(3, 'Test43', 'a:4:{s:10:\"form_title\";s:6:\"Test43\";s:10:\"project_id\";s:3:\"435\";s:3:\"chk\";a:2:{i:0;s:2:\"on\";i:1;s:2:\"on\";}s:7:\"BX_NAME\";a:2:{i:0;s:5:\"Test1\";i:1;s:5:\"Test2\";}}', 435, NULL, '2019-02-20 08:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` int(11) NOT NULL,
  `file_name` text,
  `description` mediumtext,
  `file_size` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `project_id` int(11) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_files`
--

INSERT INTO `project_files` (`id`, `file_name`, `description`, `file_size`, `created_at`, `project_id`, `uploaded_by`, `deleted`) VALUES
(1, '1550206266-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 05:51:06', 1234, 50000, NULL),
(2, '1550216404-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 08:40:04', 1234, 50000, NULL),
(3, '1550216447-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 08:40:47', 1234, 50000, NULL),
(4, '1550216469-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 08:41:09', 1234, 50000, NULL),
(5, '1550217770-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:02:50', 1234, 50000, NULL),
(6, '1550220576-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:49:36', 1234, 50000, NULL),
(7, '1550220591-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:49:51', 1234, 50000, NULL),
(8, '1550220619-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:50:19', 1234, 50000, NULL),
(9, '1550220671-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:51:11', 1234, 50000, NULL),
(10, '1550220687-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:51:27', 1234, 50000, NULL),
(11, '1550220717-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:51:57', 1234, 50000, NULL),
(12, '1550220757-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:52:37', 1234, 50000, NULL),
(13, '1550220778-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:52:58', 1234, 50000, NULL),
(14, '1550220820-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:53:40', 1234, 50000, NULL),
(15, '1550220826-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:53:46', 1234, 50000, NULL),
(16, '1550220865-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:54:25', 1234, 50000, NULL),
(17, '1550220870-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:54:30', 1234, 50000, NULL),
(18, '1550220960-Chrysanthemum.jpg', 'fname', 879394, '2019-02-15 09:56:00', 1234, 50000, NULL),
(19, '1551067320-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', 'Test1', 98486, '2019-02-25 05:02:00', 435, 50000, NULL),
(20, '1551067320-18c9Wg2.jpg', 'Test2', 45610, '2019-02-25 05:02:00', 435, 50000, NULL),
(21, '1551067320-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', NULL, 98486, '2019-02-25 05:02:00', 435, 50000, NULL),
(22, '1551067320-18c9Wg2.jpg', NULL, 45610, '2019-02-25 05:02:00', 435, 50000, NULL),
(23, '1551067320-20%sale.png', NULL, 856770, '2019-02-25 05:02:00', 435, 50000, NULL),
(24, '1551067759-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', NULL, 98486, '2019-02-25 05:09:19', 435, 50000, NULL),
(25, '1551067759-18c9Wg2.jpg', NULL, 45610, '2019-02-25 05:09:19', 435, 50000, NULL),
(26, '1551067760-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', NULL, 98486, '2019-02-25 05:09:20', 435, 50000, NULL),
(27, '1551067760-18c9Wg2.jpg', NULL, 45610, '2019-02-25 05:09:20', 435, 50000, NULL),
(28, '1551067760-20%sale.png', NULL, 856770, '2019-02-25 05:09:20', 435, 50000, NULL),
(29, '1551067760-2016-07-22.jpg', NULL, 5405, '2019-02-25 05:09:20', 435, 50000, NULL),
(30, '1551068076-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', '3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', 98486, '2019-02-25 05:14:36', 435, 50000, NULL),
(31, '1551068076-18c9Wg2.jpg', '18c9Wg2.jpg', 45610, '2019-02-25 05:14:36', 435, 50000, NULL),
(32, '1551068076-20%sale.png', '20%sale.png', 856770, '2019-02-25 05:14:36', 435, 50000, NULL),
(33, '1551068105-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', '3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', 98486, '2019-02-25 05:15:05', 435, 50000, NULL),
(34, '1551068105-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', '3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', 98486, '2019-02-25 05:15:05', 435, 50000, NULL),
(35, '1551068105-18c9Wg2.jpg', '18c9Wg2.jpg', 45610, '2019-02-25 05:15:05', 435, 50000, NULL),
(36, '1551068105-20%sale.png', '20%sale.png', 856770, '2019-02-25 05:15:05', 435, 50000, NULL),
(37, '1551068125-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', '3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', 98486, '2019-02-25 05:15:25', 435, 50000, NULL),
(38, '1551068125-3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', '3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg', 98486, '2019-02-25 05:15:25', 435, 50000, NULL),
(39, '1551068125-18c9Wg2.jpg', '18c9Wg2.jpg', 45610, '2019-02-25 05:15:25', 435, 50000, NULL),
(40, '1551068125-20%sale.png', '20%sale.png', 856770, '2019-02-25 05:15:25', 435, 50000, NULL),
(41, '1551068125-2016-07-22.jpg', '2016-07-22.jpg', 5405, '2019-02-25 05:15:25', 435, 50000, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ed_docs_requests_tpl`
--
ALTER TABLE `ed_docs_requests_tpl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ed_docs_requests_tpl`
--
ALTER TABLE `ed_docs_requests_tpl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
