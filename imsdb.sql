-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2025 at 11:09 AM
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
-- Database: `imsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `CategoryName` varchar(45) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `CategoryName`, `CreationDate`) VALUES
(1, 'Health Insurance', NULL),
(3, 'Life insurance', NULL),
(4, 'Vehicle Insurance', NULL),
(5, 'Crop Insurance', NULL),
(6, 'Marine Insurance', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblimsadmin`
--

CREATE TABLE `tblimsadmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminUsername` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblimsadmin`
--

INSERT INTO `tblimsadmin` (`ID`, `AdminName`, `AdminUsername`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'userAdmin', 'admin@123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpolicy`
--

CREATE TABLE `tblpolicy` (
  `ID` int(11) NOT NULL,
  `SubcategoryId` varchar(50) NOT NULL,
  `CategoryId` varchar(25) DEFAULT NULL,
  `PolicyName` varchar(45) DEFAULT NULL,
  `Sumassured` int(11) DEFAULT NULL,
  `Premium` varchar(45) DEFAULT NULL,
  `Tenure` int(10) DEFAULT NULL,
  `policyDetails` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpolicy`
--

INSERT INTO `tblpolicy` (`ID`, `SubcategoryId`, `CategoryId`, `PolicyName`, `Sumassured`, `Premium`, `Tenure`, `policyDetails`, `CreationDate`) VALUES
(1, '5', '1', 'comprehensive health insurance policy', 500000, '15421', 10, 'Coverage for unexpected medical expenses\r\nTax deduction benefits Coverage for pre- and post-hospitalisation costs\r\nHolistic product with holistic benefits - Star Comprehensive Insurance Policy\r\ntest', '2025-10-02 17:03:09'),
(2, '23', '3', 'Max Life Smart Fixed Return Digital - Titaniu', 1000000, '165000', 8, 'A money back policy is an investment plan offered by an insurance company that pays a pre-determined percentage of the sum assured to the policyholder at specific intervals called \"survival benefits.\" These survival benefits are paid out irrespective of whether the insured individual is alive or not.\r\n\r\nIt offers the policyholder the dual benefit of life coverage and regular cash inflows that can be utilized for various purposes such as education, marriage, purchasing a house, or meeting other financial goals.', '2025-10-01 01:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpolicyholder`
--

CREATE TABLE `tblpolicyholder` (
  `ID` int(11) NOT NULL,
  `UserId` char(20) DEFAULT NULL,
  `PolicyId` char(20) DEFAULT NULL,
  `PolicyNumber` char(9) DEFAULT NULL,
  `PolicyApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `PolicyStatus` int(1) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpolicyholder`
--

INSERT INTO `tblpolicyholder` (`ID`, `UserId`, `PolicyId`, `PolicyNumber`, `PolicyApplyDate`, `PolicyStatus`, `UpdationDate`) VALUES
(1, '1', '1', '909952445', NULL, 1, '2025-10-08 07:23:48'),
(2, '1', '2', '983541621', NULL, 1, NULL),
(3, '2', '1', '165986863', NULL, 2, NULL),
(4, '2', '2', '539768120', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `id` int(11) NOT NULL,
  `CategoryId` char(5) NOT NULL,
  `SubcategoryName` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`id`, `CategoryId`, `SubcategoryName`, `CreationDate`, `UpdationDate`) VALUES
(5, '1', 'Health Maintenance Organization (HMO) plans', NULL, NULL),
(6, '1', 'Preferred Provider Organization (PPO) plans', NULL, NULL),
(7, '1', 'Exclusive Provider Organization (EPO) plans', NULL, NULL),
(8, '1', 'Point of Service (POS) plans', NULL, NULL),
(9, '1', 'High Deductible Health Plan (HDHP) plans', NULL, NULL),
(10, '4', 'Liability Coverage', NULL, NULL),
(11, '4', 'Collision Coverage', NULL, NULL),
(12, '4', 'Personal Injury Coverage', NULL, NULL),
(13, '4', 'Uninsured Motorist Protection', NULL, NULL),
(14, '4', 'Comprehensive Coverage', NULL, NULL),
(15, '5', 'Multiple Peril Crop Insurance', NULL, NULL),
(16, '5', 'Actual Production History', NULL, NULL),
(17, '5', 'Group Risk Plan', NULL, NULL),
(18, '5', 'Crop Revenue Coverage', NULL, NULL),
(19, '5', 'Actual Production History', NULL, NULL),
(20, '3', 'Term Plan', NULL, NULL),
(21, '3', 'Unit linked insurance plan(ULIP)', NULL, NULL),
(22, '3', 'Endowment Plan', NULL, NULL),
(23, '3', 'Money Back', NULL, NULL),
(24, '3', 'Whole Life Insurance', NULL, NULL),
(25, '6', 'Hull Insurance', NULL, NULL),
(26, '6', 'Machinery Insurance', NULL, NULL),
(27, '6', 'Protection & Indemnity (P&I) Insurance', NULL, NULL),
(28, '6', 'Liability Insurance', NULL, NULL),
(29, '6', 'Freight, Demurrage and Defense (FD&D) Insurance', NULL, NULL),
(30, '6', 'Freight Insurance', NULL, NULL),
(31, '6', 'Marine Cargo Insurance', NULL, NULL),
(32, '3', 'Test Subcat', NULL, NULL),
(33, '5', 'Demo subcat test', NULL, NULL),
(34, '9', 'test scatgry', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblticket`
--

CREATE TABLE `tblticket` (
  `ID` int(11) NOT NULL,
  `UserId` varchar(25) DEFAULT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `NatureofIssue` varchar(120) DEFAULT NULL,
  `Description` varchar(120) DEFAULT NULL,
  `AdminRemark` varchar(120) DEFAULT NULL,
  `TicketGenerationDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblticket`
--

INSERT INTO `tblticket` (`ID`, `UserId`, `Subject`, `NatureofIssue`, `Description`, `AdminRemark`, `TicketGenerationDate`, `AdminRemarkdate`) VALUES
(1, '1', 'Test Ticket', 'payment issue', 'This is for testing.', 'Issue is resolved now.', NULL, NULL),
(2, '2', 'Claim Issue', 'claim  issue', ' Claim Not received yet. Please release the claim asap', 'Claim released. Claim id is 34325235235', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `ContactNo` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `ContactNo`, `Email`, `Gender`, `Password`, `CreationDate`) VALUES
(1, 'Anuj kumar', 3819283912, 'User', 'Female', 'user@123', '0000-00-00 00:00:00'),
(2, 'John Doe', 1425363626, 'jd@gmail.com', 'Male', 'user@123', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblimsadmin`
--
ALTER TABLE `tblimsadmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpolicy`
--
ALTER TABLE `tblpolicy`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpolicyholder`
--
ALTER TABLE `tblpolicyholder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblticket`
--
ALTER TABLE `tblticket`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblimsadmin`
--
ALTER TABLE `tblimsadmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpolicy`
--
ALTER TABLE `tblpolicy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpolicyholder`
--
ALTER TABLE `tblpolicyholder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblticket`
--
ALTER TABLE `tblticket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
