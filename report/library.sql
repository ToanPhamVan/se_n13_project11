-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 11:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `userName`, `password`, `email`, `contact`, `img`) VALUES
(1, 'toan', 'Pham', 'toan', '123456', 'hahatyw@gmail.com', '1234', 'userimage.png');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `Links` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `img`, `name`, `authors`, `edition`, `status`, `quantity`, `Links`) VALUES
('5', 'imgb1.jpg', 'binary search tree', 'someone u loved', '3', 'Available', 9, 'https://voicegpt.us/chatgpt'),
('6', 'imgb1.jpg', 'John', 'toandz', '3', 'Available', 9, 'https://www.google.com/search?q=someone+u+loved&rlz=1C1XSWY_viVN984VN984&oq=someone+u+loved&aqs=chro'),
('7', 'imgb1.jpg', 'binary search tree', 'toandz', '1', 'Available', 9, 'https://www.google.com/search?q=someone+u+loved&rlz=1C1XSWY_viVN984VN984&oq=someone+u+loved&aqs=chro'),
('8', 'imgb1.jpg', 'Hello word 123', 'Nothing', '1', 'Available', 3, 'https://www.google.com/search?q=someone+u+loved&rlz=1C1XSWY_viVN984VN984&oq=someone+u+loved&aqs=chro');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `issue_id` int(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `bid` varchar(100) NOT NULL,
  `issue_time` varchar(100) NOT NULL,
  `return_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Not Returned',
  `expired` varchar(100) NOT NULL DEFAULT 'No',
  `fine` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`issue_id`, `id`, `bid`, `issue_time`, `return_time`, `status`, `expired`, `fine`) VALUES
(1, '1', '5', '2023-02-12', '2023-04-12', 'Returned', 'Yes', 6),
(2, '2', '5', '2023-04-10', '2023-04-12', 'Returned', 'Yes', 6),
(3, '9', '5', '2023-04-10', '2023-04-13', 'Returned', 'Yes', 4);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`firstname`, `lastname`, `username`, `password`, `roll`, `email`, `img`) VALUES
('Toan', 'Pham', 'toan', '1234', 1, 'hahatyw@gmail.com', '0'),
('Toan', 'Pham', 'toan', '1234', 2, 'hahatyw@gmail.com', '0'),
('toan', 'pham', 'John', '1234', 5, 'hahatyw@gmail.com', '0'),
('toan', 'Pham', 'Hello', '1234', 9, 'hahatyw@gmail.com', '0'),
('Ngan', 'Vu', 'Oneday', '1234', 10, 'hahatyw@gmail.com', 'userimage.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`roll`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `issue_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `roll` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
