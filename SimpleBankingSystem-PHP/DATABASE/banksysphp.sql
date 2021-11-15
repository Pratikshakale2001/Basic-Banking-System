-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 05:46 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksysphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Pratiksha Kale', 'sayali dargude', 5000, '2021-11-15 19:33:52'),
(2, 'Dhiraj Kale', 'Kartik Choudhari', 25000, '2021-11-15 19:34:18'),
(3, 'Snehal Gome', 'sandhya ranvir', 50000, '2021-11-15 19:34:54'),
(4, 'Snehal Gome', 'Aarav oswal', 75000, '2021-11-15 19:35:46'),
(5, 'Kartik Choudhari', 'Sai Patil', 20000, '2021-11-15 19:36:38'),
(6, 'Pratiksha Kale', 'Sai Patil', 5000, '2021-11-15 21:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(22, 'Pratiksha Kale', 'pathu19@gmail.com', 'Female', 40000),
(23, 'sayali dargude', 'sayu@gmail.com', 'Female', 105000),
(24, 'Ashwini pathare', 'ashu@gmail.com', 'Female', 75000),
(25, 'sandhya ranvir', 'sandhu@gmail.com', 'Female', 750000),
(26, 'Snehal Gome', 'sehal@gmail.com', 'Female', 675000),
(27, 'Kartik Choudhari', 'kar@gmail.com', 'Male', 50000),
(28, 'Aarav oswal', 'araav@gmail.com', 'Male', 675000),
(29, 'Shwetan Kale', 'shwetu@gmail.com', 'Male', 1500000),
(30, 'Dhiraj Kale', 'dhiraj@gmail.com', 'Male', 1975000),
(31, 'Sai Patil', 'sai@gmail.com', 'Male', 120000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
