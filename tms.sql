-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 06:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Administrator', 'test@gmail.com', 7894561239, '123', '2024-01-10 11:18:49'),
(2, 'rozy', 'Rozy Begum', 'test.rozy@gmail.com', 9093615636, '123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2024-01-16 06:38:36', 2, 'u', '2024-01-30 05:18:29'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2024-01-17 06:43:25', 1, NULL, '2024-01-31 01:21:17'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2024-01-17 06:44:39', 2, 'a', '2024-01-30 05:18:52'),
(4, 2, 'test@gmail.com', '2024-02-02', '2024-02-08', 'NA', '2024-01-31 02:03:27', 1, NULL, '2024-01-31 06:35:08'),
(5, 3, 'test@gmail.com', '2024-01-31', '2024-02-05', 'please offer some discount', '2024-01-31 05:21:52', 2, 'a', '2024-05-12 16:46:26'),
(6, 2, 'garima12@gmail.com', '2024-03-01', '2024-03-05', 'NA', '2024-02-03 13:04:33', 1, NULL, '2024-02-03 13:05:29'),
(7, 1, 'testroodro@gmail.com', '2024-05-12', '2024-05-14', 'HELLO', '2024-05-12 12:47:39', 2, 'a', '2024-05-12 16:46:23'),
(8, 3, 'testroodro@gmail.com', '2024-05-12', '2024-05-14', 'HELLO', '2024-05-12 13:15:41', 2, 'a', '2024-05-12 16:46:08'),
(9, 1, 'rozybegum69@gmail.com', '2024-05-16', '2024-05-23', 'book', '2024-05-15 15:04:20', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2024-01-18 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2024-01-19 06:32:41', 1),
(5, 'hohn Doe', 'John12@gmail.com', '142536254', 'Test Subject', 'this is for testing', '2024-02-03 13:07:50', 1),
(6, 'rozy begum', 'rozybegum69@gmail.com', '9093615636', 'dgjhrt', 'rggjrt', '2024-05-15 14:58:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2024-01-25 06:56:29', NULL, '2024-01-30 05:20:14'),
(15, NULL, NULL, NULL, '2024-05-15 15:00:28', NULL, NULL),
(16, 'rozybegum69@gmail.com', 'Booking Issues', 'vnm', '2024-05-15 15:04:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">terms and condition page</span></p>\r\n										\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled TMS to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>\r\n										'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address: WGPG+5RV, District Birbhum, Suri, West Bengal 731101</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Santiniketan Trip  (Group Package)', 'Group Package', 'Santiniketan', 2000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights and 3 nights.', 'Visit Santiniketan | Complimentary services of a Professional Guide', 'licensed-image.jpg', '2024-07-15 05:21:58', '2024-05-15 16:10:02'),
(2, 'Digha Summer Holidays ', 'Family Package', 'Digha', 2000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Visit to digha beaches, hotels. | Complimentary services of a Professional Guide', 'dighaa.jpg', '2024-07-15 05:21:58', '2024-05-15 16:12:08'),
(3, 'Soulmate Special Mirik - 7 Nights', 'Couple Package', 'Mirik', 5000, 'Free Pickup and drop facility, Free Wi-fi , Free professional guide', 'Airport transfers by private car | Popular Sightseeing included | Suitable for Couple and budget travelers', 'download (3).jpg', '2024-07-15 05:21:58', '2024-05-15 16:15:57'),
(4, 'Bakkhali - A Lovers Paradise - Value Added', 'Family Package', 'Bakkhali', 3000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Bakkhali, tea plantation and a spice garden | View sunset in Bakkhali | AC Car at disposal for 2hrs extra (once per city)', 'download (4).jpg', '2024-07-15 05:21:58', '2024-05-15 16:17:33'),
(5, 'Short Trip To Bakreshwar', 'Family', 'Bakreshwar', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'download (5).jpg', '2024-07-15 05:21:58', '2024-05-15 16:19:23'),
(6, 'Sikkim Delight ', 'Group', 'Sikkim', 3500, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2024-07-15 05:21:58', '2024-05-15 16:22:27'),
(11, 'Kalimpong Vacation Tour (Group Package)', 'Family Package', 'Kalimpong', 3000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Out Stations, tea plantation and a spice garden | View sunset in Kalimpong | AC Car at disposal for 2hrs extra (once per city)', 'Kalimpong.jpg', '2024-05-15 15:44:12', NULL),
(12, 'Birbhum Tour', 'Family Package', 'Birbhum', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Birbhum Tilpara barage. | AC Car at disposal for 2hrs extra (once per city)', 'birbhum.jpg', '2024-05-15 15:48:23', NULL),
(13, 'Kolkata Tour', 'Family Package', 'Kolkata', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Kolkata\'s Famous places, | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'kolkata.jpg', '2024-05-15 15:51:00', NULL),
(14, 'Darjeeling Tour', 'Family Package', 'Darjeeling', 2000, 'Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights', 'Visit Darjeeling, tea plantation and a spice garden | View sunset in Darjeeling | AC Car at disposal for 2hrs extra (once per city)', 'Darjeeling.jpg', '2024-05-15 15:54:49', NULL),
(15, 'Hoogly Tour', 'Family Package', 'Hoogly', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Hoogly, Famous Places | View sunset | AC Car at disposal for 2hrs extra (once per city)', 'Hoogly.jpeg', '2024-05-15 15:58:11', NULL),
(16, 'Malda Tour', 'Family Package', 'Malda', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Malda ,  | View sunset | AC Car at disposal for 2hrs extra (once per city)', 'Malda.jpg', '2024-05-15 16:00:30', NULL),
(17, 'Roychak Trip', 'Group Package', 'Roychak', 1000, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'Visit to Roychak | Complimentary services of a Professional Guide', '2021-12-09.jpg', '2024-05-15 16:21:38', NULL),
(18, 'Dakshineswar Kali Temple', 'Family', 'Kolkata', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit to Dakshineswar Kali Temple | Complimentary services of a Professional Guide', '1636190130_dakshineswar-kali-temple-20214.jpg', '2024-05-15 16:25:54', NULL),
(19, 'Siliguri Tour', 'Group', 'Siliguri', 3000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit to Siliguri | Complimentary services of a Professional Guide', 'Siliguri_view_3.jpg', '2024-05-15 16:28:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:40'),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(5, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(9, 'Test Sample', '4654654564', 'testsample@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-31 06:32:51', NULL),
(10, 'Garima Singh', '1425362540', 'garima12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-02-03 13:03:43', '2024-02-03 13:04:02'),
(12, 'ROODRADITYA DAS', '7001044905', 'testroodro@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-05-12 12:46:52', NULL),
(13, 'Rozy Begum', '9093615636', 'rozybegum69@gmail.com', '25963076c377ecae5dc7b1073ed67005', '2024-05-15 15:00:28', NULL),
(14, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2024-05-15 15:04:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
