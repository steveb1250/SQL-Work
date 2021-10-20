-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2019 at 06:52 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.0.33-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skiing`
--

-- --------------------------------------------------------

--
-- Table structure for table `Lift`
--

CREATE TABLE `Lift` (
  `L_ID` int(10) UNSIGNED NOT NULL,
  `R_ID` int(10) UNSIGNED DEFAULT NULL,
  `l_name` varchar(200) NOT NULL,
  `l_catacity` varchar(10) NOT NULL,
  `l_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Lift`:
--   `R_ID`
--       `Resort` -> `R_ID`
--

--
-- Dumping data for table `Lift`
--


-- --------------------------------------------------------

--
-- Table structure for table `L_acc_T`
--

CREATE TABLE `L_acc_T` (
  `L_ID` int(10) UNSIGNED NOT NULL,
  `T_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `L_acc_T`:
--   `L_ID`
--       `Lift` -> `L_ID`
--   `T_ID`
--       `Trail` -> `T_ID`
--

--
-- Dumping data for table `L_acc_T`
--


-- --------------------------------------------------------

--
-- Table structure for table `Price`
--

CREATE TABLE `Price` (
  `P_ID` int(10) UNSIGNED NOT NULL,
  `R_ID` int(10) UNSIGNED DEFAULT NULL,
  `p_price` int(11) NOT NULL,
  `p_type` varchar(10) NOT NULL,
  `p_shift` varchar(10) DEFAULT NULL,
  `p_age_Group` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Price`:
--   `R_ID`
--       `Resort` -> `R_ID`
--

--
-- Dumping data for table `Price`
--



-- --------------------------------------------------------

--
-- Table structure for table `Resort`
--

CREATE TABLE `Resort` (
  `R_ID` int(10) UNSIGNED NOT NULL,
  `r_title` varchar(50) NOT NULL,
  `r_area` int(11) DEFAULT NULL,
  `r_elevation` int(11) DEFAULT NULL,
  `r_street` varchar(50) NOT NULL,
  `r_city` varchar(20) NOT NULL,
  `r_state` varchar(2) NOT NULL,
  `r_zip` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Resort`:
--

--
-- Dumping data for table `Resort`
--



--
-- Triggers `Resort`
--
DELIMITER $$
CREATE TRIGGER `res_insert_trigger` AFTER INSERT ON `Resort` FOR EACH ROW INSERT INTO Price SET Price.p_price=100, Price.p_type="trigger",Price.p_age_Group="ti",Price.p_shift='day'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Trail`
--

CREATE TABLE `Trail` (
  `T_ID` int(10) UNSIGNED NOT NULL,
  `R_ID` int(10) UNSIGNED DEFAULT NULL,
  `t_name` varchar(200) NOT NULL,
  `t_color` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Trail`:
--   `R_ID`
--       `Resort` -> `R_ID`
--

--
-- Dumping data for table `Trail`
--



--
-- Indexes for dumped tables
--

--
-- Indexes for table `Lift`
--
ALTER TABLE `Lift`
  ADD PRIMARY KEY (`L_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `L_acc_T`
--
ALTER TABLE `L_acc_T`
  ADD PRIMARY KEY (`L_ID`,`T_ID`),
  ADD KEY `T_ID` (`T_ID`);

--
-- Indexes for table `Price`
--
ALTER TABLE `Price`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `Resort`
--
ALTER TABLE `Resort`
  ADD PRIMARY KEY (`R_ID`);

--
-- Indexes for table `Trail`
--
ALTER TABLE `Trail`
  ADD PRIMARY KEY (`T_ID`),
  ADD KEY `R_ID` (`R_ID`),
  ADD KEY `t_name` (`t_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Lift`
--
ALTER TABLE `Lift`
  MODIFY `L_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `Price`
--
ALTER TABLE `Price`
  MODIFY `P_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `Resort`
--
ALTER TABLE `Resort`
  MODIFY `R_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `Trail`
--
ALTER TABLE `Trail`
  MODIFY `T_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2559;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Lift`
--
ALTER TABLE `Lift`
  ADD CONSTRAINT `Lift_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `Resort` (`R_ID`);

--
-- Constraints for table `L_acc_T`
--
ALTER TABLE `L_acc_T`
  ADD CONSTRAINT `L_acc_T_ibfk_1` FOREIGN KEY (`L_ID`) REFERENCES `Lift` (`L_ID`),
  ADD CONSTRAINT `L_acc_T_ibfk_2` FOREIGN KEY (`T_ID`) REFERENCES `Trail` (`T_ID`);

--
-- Constraints for table `Price`
--
ALTER TABLE `Price`
  ADD CONSTRAINT `Price_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `Resort` (`R_ID`);

--
-- Constraints for table `Trail`
--
ALTER TABLE `Trail`
  ADD CONSTRAINT `Trail_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `Resort` (`R_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
