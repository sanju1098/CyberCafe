-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2019 at 04:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234567890, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-08-01 08:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomputers`
--

CREATE TABLE `tblcomputers` (
  `ID` int(10) NOT NULL,
  `ComputerName` varchar(120) DEFAULT NULL,
  `ComputerLocation` varchar(120) DEFAULT NULL,
  `IPAdd` varchar(120) DEFAULT NULL,
  `EntryDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomputers`
--

INSERT INTO `tblcomputers` (`ID`, `ComputerName`, `ComputerLocation`, `IPAdd`, `EntryDate`) VALUES
(1, 'Acer', 'Cabin101', '127.0.0.1', '2019-10-10 03:36:10'),
(2, 'Asus', 'Cabin102', '127.0.0.2', '2019-10-10 03:36:10'),
(3, 'Dell', 'Cabin103', '127.0.0.2', '2019-10-10 03:36:10'),
(4, 'Hp', 'Cabin104', '127.0.0.3', '2019-10-10 03:36:10'),
(5, 'iBall', 'Cabin105', '127.0.0.4', '2019-10-10 03:36:10'),
(6, 'Lenovo\r\n', 'Cabin106', '127.0.0.5\r\n', '2019-10-10 03:36:10'),
(7, 'Microsoft', 'Cabin107', '127.0.0.6', '2019-10-10 03:36:10'),
(8, 'Toshiba\r\n', 'Cabin108', '127.0.0.7', '2019-10-10 03:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int(10) NOT NULL,
  `EntryID` varchar(20) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `UserAddress` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `ComputerName` varchar(120) DEFAULT NULL,
  `IDProof` varchar(120) DEFAULT NULL,
  `InTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OutTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Fees` varchar(120) DEFAULT NULL,
  `Remark` varchar(120) DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `EntryID`, `UserName`, `UserAddress`, `MobileNumber`, `Email`, `ComputerName`, `IDProof`, `InTime`, `OutTime`, `Fees`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, '13425', 'Deepthi', 'Bangalore', 7555427954, 'Deepthi@gmail.com', 'Acer', 'Aadhar Card', '2019-10-11 05:40:42', '2019-10-11 06:40:14', '20', 'Good', 'Out', '2019-10-23 14:14:36'),
(2, '28525', 'Guru', 'Bangalore', 9255549882, 'Guru@gmail.com', 'Asus', 'Aadhar Card', '2019-10-11 07:35:25', '2019-10-11 09:10:48', '45', 'Good', 'Out', '2019-10-23 14:14:52'),
(3, '30564', 'John', 'Bangalore', 7555957438, 'John@gmail.com', 'Acer', 'Pan Card', '2019-10-13 05:44:06', '2019-10-13 08:15:31', '80', 'Good', 'Out', '2019-10-23 14:15:02'),
(4, '63473', 'Balu', 'Bangalore', 8555149625, 'Balu@gmail.com', 'Asus', 'Aadhar Card', '2019-10-13 07:55:41', '2019-10-23 14:25:02', '30', 'Good', 'Out', '2019-10-23 14:25:02'),
(5, '40055', 'Maya', 'Bangalore', 7555237845, 'Maya@gmail.com', 'Dell', 'Aadhar Card', '2019-10-13 10:07:45', '2019-10-13 12:06:04', '150', 'Good', 'Out', '2019-10-23 14:15:35'),
(6, '67367', 'Suraj', 'Bangalore', 9055521387, 'Suraj@gmail.com', 'Acer', 'Pan Card', '2019-10-16 03:47:50', '2019-10-16 04:43:52', '100', 'Good', 'Out', '2019-10-23 14:15:46'),
(7, '45361', 'Dhruva', 'Bangalore', 9655567059, 'Dhruva@gmail.com', 'Asus', 'Aadhar Card', '2019-10-16 03:58:30', '2019-10-23 05:01:10', '50', 'Good', 'Out', '2019-10-23 14:16:47'),
(8, '16276', 'Channa', 'Bangalore', 7555851271, 'Channa@gmail.com', 'Dell', 'Aadhar Card', '2019-10-16 06:47:48', '2019-10-23 08:02:28', '150', 'Good', 'Out', '2019-10-23 14:17:39'),
(9, '42727', 'Sharma', 'Bangalore', 7555636503, 'Sharma@gmail.com', 'Hp', 'Pan Card', '2019-10-20 04:46:48', '2019-10-23 06:02:49', '60', 'Good', 'Out', '2019-10-23 14:18:23'),
(10, '73628', 'Raju', 'Bangalore', 9755536024, 'Raju@gmail.com', 'iBall', 'Aadhar Card', '2019-10-20 13:00:48', '2019-10-23 14:03:05', '25', 'Good', 'Out', '2019-10-23 13:46:49'),
(11, '52827', 'Nitya', 'Bangalore', 8555857130, 'Nitya@gmail.com', 'Asus', 'Aadhar Card', '2019-10-21 04:39:33', '2019-10-23 06:03:24', '75', 'Good', 'Out', '2019-10-23 14:18:41'),
(12, '98373', 'Krishna', 'Bangalore', 9655523549, 'Krishna@gmail.com', 'Dell', 'Pan Card', '2019-10-23 05:00:48', '2019-10-23 07:03:44', '150', 'Good', 'Out', '2019-10-23 14:18:51'),
(13, '63803', 'Suresh', 'Bangalore', 9555512011, 'Suresh@gmail.com', 'Microsoft', 'Aadhar Card', '2019-10-23 06:00:48', '2019-10-23 06:04:02', '80', 'Good', 'Out', '2019-10-23 14:19:07'),
(14, '50543', 'Megha', 'Bangalore', 7555585933, 'Megha@gmail.com', 'Toshiba', 'Pan Card', '2019-10-23 08:39:13', '2019-10-23 10:04:18', '50', 'Good', 'Out', '2019-10-23 14:19:18'),
(15, '78360', 'Pallavi', 'Bangalore', 9355597365, 'Pallavi@gmail.com', 'Lenovo', 'Aadhar Card', '2019-10-23 12:47:48', '2019-10-23 14:04:37', '100', 'Good', 'Out', '2019-10-23 13:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblwindows`
--

CREATE TABLE `tblwindows` (
  `Computer Name` varchar(22) NOT NULL,
  `Windows Version` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwindows`
--

INSERT INTO `tblwindows` (`Computer Name`, `Windows Version`) VALUES
('Acer', 'Windows-10'),
('Asus', 'Windows-10'),
('Dell', 'Windows-10'),
('Hp', 'Windows-7'),
('iBall', 'Windows-xP'),
('Lenovo', 'Windows-7'),
('Microsoft', 'Windows-8'),
('Toshiba', 'Windows-8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcomputers`
--
ALTER TABLE `tblcomputers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblwindows`
--
ALTER TABLE `tblwindows`
  ADD PRIMARY KEY (`Computer Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcomputers`
--
ALTER TABLE `tblcomputers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
