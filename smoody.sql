-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2020 at 01:35 PM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smoody`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `CustomerReservationTracker`
--
CREATE TABLE `CustomerReservationTracker` (
`Customer_Id` int(4)
,`firstname` varchar(50)
,`lastname` varchar(50)
,`Billing_Id` int(4)
,`Room_Id` int(3)
);

-- --------------------------------------------------------

--
-- Table structure for table `Employee_Salary_Audit`
--

CREATE TABLE `Employee_Salary_Audit` (
  `Employee FirstName` varchar(30) NOT NULL,
  `Employee Last Name` varchar(30) NOT NULL,
  `Social Security Number` int(10) NOT NULL,
  `Current Salary` decimal(10,2) NOT NULL,
  `New Salary` decimal(10,2) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee_Salary_Audit`
--

INSERT INTO `Employee_Salary_Audit` (`Employee FirstName`, `Employee Last Name`, `Social Security Number`, `Current Salary`, `New Salary`, `Time`, `Date`) VALUES
('Jennifer', 'Wallace', 987654321, '43000.00', '90000.00', '03:18:58', '2020-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_Cleans`
--

CREATE TABLE `hotel_Cleans` (
  `Room_Id` int(3) NOT NULL,
  `Employee_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_Cleans`
--

INSERT INTO `hotel_Cleans` (`Room_Id`, `Employee_Id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_Customer`
--

CREATE TABLE `hotel_Customer` (
  `Customer_Id` int(4) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone_no` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_Customer`
--

INSERT INTO `hotel_Customer` (`Customer_Id`, `firstname`, `lastname`, `phone_no`) VALUES
(1, 'Steven', 'Moody', 9785947692),
(2, 'John', 'Clause', 1729574839),
(3, 'Amy', 'Meserve', 1058677639),
(4, 'Bo', 'Hatfield', 6175937823),
(5, 'Thomas', 'Schmidt', 987654321),
(6, 'Adam', 'Joseph', 3859265743),
(7, 'Jen', 'Adams', 2885774493),
(8, 'Kevin', 'Smith', 9657881432),
(9, 'Dan', 'Majoane', 6775849399),
(10, 'Sarah', 'Johsnon', 9789665748);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_Employee`
--

CREATE TABLE `hotel_Employee` (
  `Employee_Id` int(10) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `PhoneNumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_Employee`
--

INSERT INTO `hotel_Employee` (`Employee_Id`, `firstname`, `lastname`, `position`, `PhoneNumber`) VALUES
(1, 'John', 'Adams', 'Manager', 1234567890),
(2, 'Amy', 'Rose', 'Front Desk', 1236540987),
(3, 'Abe', 'Lincoln', 'Front Desk', 1235468790),
(4, 'Ashley', 'Johnson', 'Cleaner', 1236457988);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_Invoice`
--

CREATE TABLE `hotel_Invoice` (
  `Billing_Id` int(4) NOT NULL,
  `Reservationcost` varchar(30) NOT NULL,
  `Arrival_Date` varchar(30) NOT NULL,
  `Departure_Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_Invoice`
--

INSERT INTO `hotel_Invoice` (`Billing_Id`, `Reservationcost`, `Arrival_Date`, `Departure_Date`) VALUES
(1, '125.50', '01012020', '01032020'),
(2, '150.00', '01032020', '01052020'),
(3, '75.00', '01052020', '01072020'),
(4, '200.00', '01092020', '01112020'),
(5, '175.50', '01112020', '01132020'),
(6, '175.50', '01132020', '01152020'),
(7, '250.00', '01152020', '01172020'),
(8, '125.50', '01172020', '01192020'),
(9, '100.00', '01192020', '01212020'),
(10, '225.00', '01212020', '01232020');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_Reserves`
--

CREATE TABLE `hotel_Reserves` (
  `Customer_Id` int(4) NOT NULL,
  `Room_Id` int(3) NOT NULL,
  `Billing_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_Reserves`
--

INSERT INTO `hotel_Reserves` (`Customer_Id`, `Room_Id`, `Billing_Id`) VALUES
(2, 2, 2),
(1, 3, 1),
(3, 5, 3),
(5, 6, 5),
(4, 7, 4),
(6, 10, 6),
(10, 12, 10),
(8, 14, 8),
(7, 15, 7),
(9, 18, 9);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_Rooms`
--

CREATE TABLE `hotel_Rooms` (
  `Room_Id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_Rooms`
--

INSERT INTO `hotel_Rooms` (`Room_Id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_Verifies`
--

CREATE TABLE `hotel_Verifies` (
  `Employee_Id` int(10) NOT NULL,
  `Billing_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_Verifies`
--

INSERT INTO `hotel_Verifies` (`Employee_Id`, `Billing_Id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10);

-- --------------------------------------------------------

--
-- Structure for view `CustomerReservationTracker`
--
DROP TABLE IF EXISTS `CustomerReservationTracker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smoody`@`localhost` SQL SECURITY DEFINER VIEW `CustomerReservationTracker`  AS  select `a`.`Customer_Id` AS `Customer_Id`,`a`.`firstname` AS `firstname`,`a`.`lastname` AS `lastname`,`b`.`Billing_Id` AS `Billing_Id`,`b`.`Room_Id` AS `Room_Id` from (`hotel_Customer` `a` join `hotel_Reserves` `b`) where (`a`.`Customer_Id` = `b`.`Customer_Id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel_Cleans`
--
ALTER TABLE `hotel_Cleans`
  ADD PRIMARY KEY (`Room_Id`,`Employee_Id`),
  ADD KEY `Employee_Id` (`Employee_Id`);

--
-- Indexes for table `hotel_Customer`
--
ALTER TABLE `hotel_Customer`
  ADD PRIMARY KEY (`Customer_Id`),
  ADD KEY `firstname` (`firstname`) USING BTREE,
  ADD KEY `firstname_2` (`firstname`);

--
-- Indexes for table `hotel_Employee`
--
ALTER TABLE `hotel_Employee`
  ADD PRIMARY KEY (`Employee_Id`);

--
-- Indexes for table `hotel_Invoice`
--
ALTER TABLE `hotel_Invoice`
  ADD PRIMARY KEY (`Billing_Id`);

--
-- Indexes for table `hotel_Reserves`
--
ALTER TABLE `hotel_Reserves`
  ADD PRIMARY KEY (`Customer_Id`,`Room_Id`,`Billing_Id`),
  ADD KEY `Room_Id` (`Room_Id`),
  ADD KEY `Billing_Id` (`Billing_Id`);

--
-- Indexes for table `hotel_Rooms`
--
ALTER TABLE `hotel_Rooms`
  ADD PRIMARY KEY (`Room_Id`);

--
-- Indexes for table `hotel_Verifies`
--
ALTER TABLE `hotel_Verifies`
  ADD PRIMARY KEY (`Billing_Id`,`Employee_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel_Cleans`
--
ALTER TABLE `hotel_Cleans`
  ADD CONSTRAINT `hotel_Cleans_ibfk_1` FOREIGN KEY (`Room_Id`) REFERENCES `hotel_Rooms` (`Room_Id`),
  ADD CONSTRAINT `hotel_Cleans_ibfk_2` FOREIGN KEY (`Employee_Id`) REFERENCES `hotel_Employee` (`Employee_Id`);

--
-- Constraints for table `hotel_Reserves`
--
ALTER TABLE `hotel_Reserves`
  ADD CONSTRAINT `hotel_Reserves_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `hotel_Customer` (`Customer_Id`),
  ADD CONSTRAINT `hotel_Reserves_ibfk_2` FOREIGN KEY (`Room_Id`) REFERENCES `hotel_Rooms` (`Room_Id`),
  ADD CONSTRAINT `hotel_Reserves_ibfk_3` FOREIGN KEY (`Billing_Id`) REFERENCES `hotel_Invoice` (`Billing_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
