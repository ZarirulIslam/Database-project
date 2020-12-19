-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2020 at 07:32 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_ID` int(11) NOT NULL,
  `Book_Name` varchar(80) DEFAULT NULL,
  `Book_ISBN` varchar(50) DEFAULT NULL,
  `Book_Author` varchar(50) DEFAULT NULL,
  `Book_Edition` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ID`, `Book_Name`, `Book_ISBN`, `Book_Author`, `Book_Edition`) VALUES
(1, 'Computer Programming', '978-984-34-3694-8', 'Tamim', 'First Edition'),
(2, 'Computer Programming-2', '978-984-34-3695-8', 'Tamim', 'Second Edition'),
(3, 'Computer Programming-3', '978-984-34-3696-9', 'Tamim', 'First Edition'),
(4, 'Java Programming', '978-984-34-92164-8', 'Bazlur', 'First Edition'),
(5, '52 Programming', '978-988-34-3678-8', 'Tamim', 'Second Edition'),
(6, 'Mastering Web Development-1', '978-984-74-3694-6', 'Mahbubur', 'Third Edition'),
(7, 'Mastering Web Development-2', '979-984-75-3694-6', 'Mahbubur', 'Second Edition'),
(8, 'Computer Programming', '978-984-34-3694-8', 'Tamim', 'First Edition'),
(9, 'Computer Programming-2', '978-984-34-3695-8', 'Tamim', 'Second Edition'),
(10, 'Computer Programming-3', '978-984-34-3696-9', 'Tamim', 'First Edition'),
(11, 'Java Programming', '978-984-34-92164-8', 'Bazlur', 'First Edition'),
(12, '52 Programming', '978-988-34-3678-8', 'Tamim', 'Second Edition'),
(13, 'Mastering Web Development-1', '978-984-74-3694-6', 'Mahbubur', 'Third Edition'),
(14, 'Mastering Web Development-2', '979-984-75-3694-6', 'Mahbubur', 'Second Edition'),
(15, 'Computer Programming', '978-984-34-3694-8', 'Tamim', 'First Edition'),
(16, 'Computer Programming-2', '978-984-34-3695-8', 'Tamim', 'Second Edition'),
(17, 'Computer Programming-3', '978-984-34-3696-9', 'Tamim', 'First Edition'),
(18, 'Java Programming', '978-984-34-92164-8', 'Bazlur', 'First Edition'),
(19, '52 Programming', '978-988-34-3678-8', 'Tamim', 'Second Edition'),
(20, 'Mastering Web Development-1', '978-984-74-3694-6', 'Mahbubur', 'Third Edition'),
(21, 'Mastering Web Development-2', '979-984-75-3694-6', 'Mahbubur', 'Second Edition');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_ID` int(11) NOT NULL,
  `Branch_Name` varchar(80) DEFAULT NULL,
  `Branch_Location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_ID`, `Branch_Name`, `Branch_Location`) VALUES
(1, 'E-Library', 'Kushtia'),
(2, 'E-Library', 'Chadpur'),
(3, 'E-Library', 'Dhaka'),
(4, 'E-Library', 'Sirajganj'),
(5, 'E-Library', 'Kazipara');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `Customer_Name` varchar(80) DEFAULT NULL,
  `Customer_Email` varchar(50) DEFAULT NULL,
  `Customer_Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Customer_Name`, `Customer_Email`, `Customer_Address`) VALUES
(1, 'Nahidul', 'nahid1@gmail.com', 'Chandpur'),
(2, 'Lamia', 'lamia12@gmail.com', 'Noakhali'),
(3, 'Samrin', 'samrin3@gmail.com', 'Barisal'),
(4, 'Hanzala', 'hanzala420@gmail.com', 'Sirajganj'),
(5, 'Zarirul', 'zarir7116@gmail.com', 'Kazipara'),
(6, 'Sakib', 'sakib123@gmail.com', 'Mirpur-10'),
(7, 'Jiban', 'jiban12@gmail.com', 'Agargaon');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `Issue_ID` int(11) NOT NULL,
  `Issue_Date` datetime DEFAULT NULL,
  `Expiry_Date` datetime DEFAULT NULL,
  `Book_Name` varchar(80) DEFAULT NULL,
  `Book_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`Issue_ID`, `Issue_Date`, `Expiry_Date`, `Book_Name`, `Book_ID`) VALUES
(1, '2020-08-12 03:14:05', '2020-08-13 03:14:05', 'Computer Programming-3', 3),
(2, '2020-08-12 03:14:05', '2020-08-13 03:14:05', 'Computer Programming-2', 2),
(3, '2020-08-12 03:14:05', '2020-08-13 03:14:05', 'Java Programming', 4),
(4, '2020-08-14 03:14:05', '2020-08-14 08:14:05', 'Mastering Web Development-2', 7),
(5, '2020-08-14 10:14:05', '2020-08-15 03:14:05', 'Mastering Web Development-1', 6);

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE `return_book` (
  `Return_ID` int(11) NOT NULL,
  `Issue_Date` datetime DEFAULT NULL,
  `Expiry_Date` datetime DEFAULT NULL,
  `Book_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`Return_ID`, `Issue_Date`, `Expiry_Date`, `Book_ID`) VALUES
(1, '2020-08-12 03:14:05', '2020-08-13 03:14:05', 3),
(2, '2020-08-12 03:14:05', '2020-08-13 03:14:05', 2),
(3, '2020-08-12 03:14:05', '2020-08-13 03:14:05', 4),
(4, '2020-08-14 03:14:05', '2020-08-14 08:14:05', 7),
(5, '2020-08-14 10:14:05', '2020-08-15 03:14:05', 6);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(11) NOT NULL,
  `Staff_Name` varchar(80) DEFAULT NULL,
  `Staff_Address` varchar(50) DEFAULT NULL,
  `Staff_Gender` varchar(50) DEFAULT NULL,
  `Staff_Phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Staff_Name`, `Staff_Address`, `Staff_Gender`, `Staff_Phone`) VALUES
(1, 'Masud Rabbani', 'Kushtia', 'Mail', '014****'),
(2, 'Nushrat Akter', 'Chadpur', 'Female', '019****'),
(3, 'Sakib-Uz-Zaman', 'Dhaka', 'Male', '018****'),
(4, 'Tajmary Mahfuj', 'Sirajganj', 'Female', '017****'),
(5, 'Narayan Chandra', 'Kazipara', 'Male', '013*****');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`Issue_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `return_book`
--
ALTER TABLE `return_book`
  ADD PRIMARY KEY (`Return_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `Branch_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `Issue_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `return_book`
--
ALTER TABLE `return_book`
  MODIFY `Return_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Staff_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issue`
--
ALTER TABLE `issue`
  ADD CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`Book_ID`);

--
-- Constraints for table `return_book`
--
ALTER TABLE `return_book`
  ADD CONSTRAINT `return_book_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`Book_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
