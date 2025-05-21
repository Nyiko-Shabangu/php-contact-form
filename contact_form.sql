-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_submitted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `name`, `email`, `message`, `date_submitted`) VALUES
(1, 'Nyiko Shabangu', 'nm.sha@gmail.com', 'tt', '2025-05-21 00:42:00'),
(2, 'Nyiko Shabangu', 'nm.shab@gmail.com', 'i work ', '2025-05-21 00:47:29'),
(3, 'Nyiko Shabangu', 'nm.shaba@gmail.com', 'test 3\r\n', '2025-05-21 00:57:06'),
(4, 'Nyiko Shabangu', 'nm.shaba@gmail.com', 'test 3\r\n', '2025-05-21 00:01:07'),
(5, 'Nyiko Shabangu', 'nm.sha@gmail.com', 'test 6', '2025-05-21 00:01:51'),
(6, 'Nyiko Shabangu', 'nm.shab@gmail.com', 'test 6', '2025-05-21 00:03:50'),
(7, 'Nyiko Shabangu', 'nm.shab@gmail.com', 'test 7', '2025-05-21 00:03:55'),
(8, 'Nyiko Shabangu', 'nm.shab@gmail.com', 'test 7', '2025-05-21 00:03:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
