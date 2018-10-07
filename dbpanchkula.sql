-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2015 at 08:58 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbpanchkula`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbanswers`
--

CREATE TABLE IF NOT EXISTS `tbanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(60) NOT NULL,
  `qid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbanswers`
--

INSERT INTO `tbanswers` (`id`, `answer`, `qid`, `username`, `status`) VALUES
(1, 'hdeujdh', 1, 'aa', 1),
(2, 'man', 2, 'aa', 1),
(3, 's', 3, 'aa', 1),
(4, 'w', 4, 'w', 1),
(5, 'ew', 5, 'w', 1),
(6, 's', 6, 'w', 1),
(7, 'swer', 4, 'w', 1),
(8, 'aarzoo', 7, 'w', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbcategory`
--

CREATE TABLE IF NOT EXISTS `tbcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `further` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `tbcategory`
--

INSERT INTO `tbcategory` (`id`, `cname`, `pid`, `further`) VALUES
(5, 'Health', 0, 1),
(6, 'Automobiles', 0, 1),
(7, 'Education', 0, 1),
(8, 'Lifestyle', 0, 1),
(9, 'Electronics', 0, 1),
(10, 'Fuel/Gas refilling', 0, 1),
(11, 'Banks and post offices', 0, 1),
(13, 'Spiritual places', 0, 1),
(14, 'Courts', 0, 1),
(16, 'Animals', 5, 0),
(17, 'Humans', 5, 0),
(18, 'car dealers', 6, 1),
(19, 'two wheelers', 6, 1),
(22, 'Colleges', 7, 0),
(23, 'Schools', 7, 0),
(24, 'Coaching centres', 7, 0),
(25, 'Gym and sports', 8, 1),
(26, 'Malls', 8, 0),
(27, 'Saloons', 8, 0),
(28, 'Jewellers', 8, 0),
(29, 'Clothing', 8, 1),
(30, 'Eating joints', 8, 1),
(31, 'Flourists', 8, 0),
(32, 'Mobiles and accessories', 9, 1),
(33, 'Laptops and computers', 9, 1),
(34, 'service centres', 9, 1),
(35, 'Home utilities', 9, 0),
(36, 'Petrol pumps', 10, 0),
(38, 'CNG', 10, 0),
(39, 'LPG', 10, 0),
(40, 'Private Banks', 11, 0),
(41, 'Government Banks', 11, 0),
(42, 'Post Offices', 11, 0),
(43, 'High Courts', 14, 0),
(44, 'District Courts', 14, 0),
(45, 'Temples', 13, 0),
(46, 'Churches', 13, 0),
(47, 'Gurdwara', 13, 0),
(48, 'Mosques', 13, 0),
(49, 'Honda Dealers', 18, 0),
(50, 'Hyundai Dealers', 18, 0),
(51, 'Mahindra Dealers', 18, 0),
(52, 'Maruti Dealers', 18, 0),
(53, 'Toyota Dealers', 18, 0),
(54, 'Bajaj Dealers', 19, 0),
(58, 'Gyms', 25, 0),
(59, 'Sport centres', 25, 0),
(60, 'Sport dealers', 25, 0),
(65, 'Bars', 30, 0),
(66, 'Restaurants', 30, 0),
(67, 'Motels', 30, 0),
(68, 'Hotels', 30, 0),
(69, 'Best street food', 30, 0),
(70, '24 hour open!', 30, 0),
(71, 'LG showrooms', 32, 0),
(72, 'HTC showrooms', 32, 0),
(73, 'Nokia showrooms', 32, 0),
(74, 'Sony showrooms', 32, 0),
(75, 'Samsung showrooms', 32, 0),
(76, 'Micromax showrooms', 32, 0),
(77, 'Apple showrooms', 32, 0),
(78, 'Hp showrooms', 33, 0),
(79, 'Dell showrooms', 33, 0),
(80, 'Mac showrooms', 33, 0),
(81, 'Lenovo showrooms', 33, 0),
(82, 'Toshiba showrooms', 33, 0),
(83, 'Nokia', 34, 0),
(84, 'LG', 34, 0),
(85, 'HTC', 34, 0),
(86, 'Sony', 34, 0),
(87, 'Samsung', 34, 0),
(88, 'Micromax', 34, 0),
(89, 'HP', 34, 0),
(90, 'Dell', 34, 0),
(91, 'Lenovo', 34, 0),
(92, 'mac', 34, 0),
(93, 'i-phones', 34, 0),
(94, 'Toshiba', 34, 0),
(95, 'Transport', 0, 1),
(96, 'Bus stands', 95, 0),
(97, 'Railway Stations ', 95, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbdetails`
--

CREATE TABLE IF NOT EXISTS `tbdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sector` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL DEFAULT 'nil',
  `image` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `tbdetails`
--

INSERT INTO `tbdetails` (`id`, `categoryid`, `name`, `contact`, `sector`, `email`, `location`, `pincode`, `description`, `image`) VALUES
(4, 17, 'Alchemist Hospital', '0172-4500000', '21', '-', '-', '-', 'nil', 0),
(5, 17, 'Dhawan Hospital', '0172-2596090', '7', '-', 'Plot no.1 ,Chandigarh panchkula road, opposite Command  Hospital', '-', 'nil', 0),
(6, 17, 'Saket Hospital', '0172-2554022', '1', '-', '-', '-', 'nil', 0),
(7, 17, 'Chakravarty nursing Home', '0172-2563505', '10', '-', '#207-208,Near Bus station', '-', 'nil', 0),
(8, 16, 'Pet Animal Medical Centre cum Teaching Hospital', '0172-2562055', '3', '-', '-', '-', 'nil', 0),
(9, 16, 'Pet Care Centre', '-', '21', '-', 'House no.1547,Near 20-21 dividing', '-', 'nil', 0),
(10, 16, 'Dr. Garg''s Dog clinic and Pet Shoppe', '-', '5', '-', 'SCO 22 ,Mansa Devi Complex', '-', 'nil', 0),
(11, 16, 'Vet care Dog clinic', '-', '6', '-', 'Shop no 170,Near Civil Hospital', '-', 'nil', 0),
(12, 23, 'Little flower Convent School', '-', '14', '-', '-', '134113', 'nil', 0),
(13, 23, 'Satluj Public School', '0172-2560167', '4', '-', '-', '-', 'nil', 0),
(14, 23, 'Hansraj Public School', '0172-2573800', '6', '-', '-', '-', 'nil', 0),
(15, 23, 'Bhavan Vidyalaya', '0172-2592509', '15', '-', '-', '-', 'nil', 0),
(16, 22, 'Government PG college', '0172-2560076', '1', '-', '-', '-', 'nil', 0),
(17, 22, 'Sarva Institute of Hotel Management', '0172-2584464', '8', '-', 'SCO-395', '-', 'nil', 0),
(18, 22, 'Government College of girls', '0172-2583956', '14', '-', '-', '-', 'nil', 0),
(19, 22, 'Panchkula Engineering College', '01734-258705,06,08,09', '-', 'www.pecindia.org', 'NH-73,Mouli(Barwala)', '-', 'nil', 0),
(20, 42, 'Chandimandir Post Office', '0172-2589093', '-', '-', 'Cantonment road,Chandimandir,Near State Bank of Patiala', '134107', 'nil', 0),
(21, 42, 'Sector 20 Post Office', '0172-2551569', '20', '-', 'Near Government High School', '134113', 'nil', 0),
(22, 42, 'Sector 4 Post Office', '0172-2563254', '4', '-', 'Near Punjab National Bank', '134113', 'nil', 0),
(23, 42, 'Sector 8 Post Office', '0172-2561446,2561374', '8', '-', 'Near Panchkula Main Police Station', '134109', 'nil', 0),
(24, 40, 'Axis Bank', '0172-4642200,4642203,4642206', '10', '-', 'SCO 11', '134101', 'nil', 0),
(25, 40, 'Axis Bank', '0172-5040250/253/(0172)4024772', '20', '-', 'Ground Floor and Basement,SCO 390', '-', 'nil', 0),
(26, 41, 'Punjab National Bank', '0172-2571702,2560479', '8', '-', 'SCO 40-41', '134109', 'nil', 0),
(27, 41, 'Punjab National Bank', '0172-2550014', '25', '-', 'SCO 114', '-', 'nil', 0),
(28, 41, 'Punjab National Bank', '0172-571895,560625', '12-A', '-', '-', '-', 'nil', 0),
(29, 41, 'Punjab National Bank', '0172-2570866,2585770', '4', '-', '-', '-', 'nil', 0),
(30, 41, 'Punjab National Bank', '0172-566486, 590800', '5', '-', '-', '-', 'nil', 0),
(31, 41, 'Punjab National Bank', '0172-2552398', '20', '-', '-', '-', 'nil', 0),
(32, 41, 'State Bank of India', '8054640136', '25', '-', 'SCO-133, SECTOR-25, DIST.: PANCHKULA, HARYANA-134113', '-', 'nil', 0),
(33, 41, 'State Bank of India', '01722538530', '20', '-', 'SCO-133, SECTOR-25, DIST.: PANCHKULA, HARYANA-134113', '-', 'nil', 0),
(34, 41, 'State Bank of India', '8284088433', '19', '-', 'SCO-71', '134113', 'nil', 0),
(35, 41, 'State Bank of India', '-', '8', '-', 'SCF-55', '134109', 'nil', 0),
(36, 41, 'State Bank of India', '9815653714', '5', '-', 'S.C.O. 139, SECTOR-5, MANSA DEVI COMPLEX, PANCHKULA, DISTT.PANCHKULA', '134114', 'nil', 0),
(37, 40, 'ICICI', '022 - 67574314 / 4322', '11', '-', 'SHOW ROOM NO. 6', '134109', 'nil', 0),
(38, 40, 'ICICI', '022 - 67574314 / 4322', '20', '-', 'ICICI BANK LTD., SCO - 237 - 238, SECTOR - 20, URBAN ESTATE', '134109', 'nil', 0),
(39, 40, 'ICICI', '9569427827', '8', '-', 'SCO 412', '134109', 'nil', 0),
(40, 40, 'ICICI', '01725040126', '16', '-', 'SCO 194', '134109', 'nil', 0),
(41, 40, 'ICICI', '9646107898', '2', '-', 'SCF 5,Sector 2, Urban Estate', '134112', 'nil', 0),
(42, 40, 'ICICI', '8146624751', '5', '-', 'SCO-136 MANSA DEVI COMPLEX ', '134114', 'nil', 0),
(43, 40, 'ICICI', '9501458147', '7', '-', 'SCF 71 ', '134109', 'nil', 0),
(44, 41, 'Bank Of Baroda', '0172-2567276', '8', '-', 'SCO 56', '134109', 'nil', 0),
(45, 41, 'Bank Of Baroda', '0172-2566287', '11', '-', 'PANCHKULA BRANCH, SCO 22', '134109', 'nil', 0),
(46, 41, 'Bank Of Baroda', '9888686898', '14', '-', 'SCO 204', '134113', 'nil', 0),
(47, 41, 'Bank Of Baroda', '1800223344', '-', '-', 'SCO 95 SWASTIK VIHAR MANSA DEVI COMPLEX ', '132109', 'nil', 0),
(48, 40, 'Canara Bank', '0172-2567076', '10', '-', 'SCO 12', '134109', 'nil', 0),
(49, 40, 'Canara Bank', '01733 - 220483', '16', '-', 'COMMODITY COMPLEX', '134113', 'nil', 0),
(50, 40, 'Canara Bank', '0172-256076', '20', '-', 'SCO296', '134120', 'nil', 0),
(51, 40, 'Canara Bank', '-', '25', 'CB5090@CANARABANK.COM', 'SCO-132', '134108', 'nil', 0),
(52, 40, 'Canara Bank', '-', '4', 'CB5091@CANARABANK.COM', 'SCO-82', '134108', 'nil', 0),
(53, 40, 'Canara Bank', '-', '10', 'CB5092@CANARABANK.COM', 'SCO-12', '134108', 'nil', 0),
(54, 40, 'Canara Bank', '9781929227', '19', '-', '-', '134109', 'nil', 0),
(55, 40, 'Canara Bank', '2256225', '5', '-', 'Mansa Devi Complex', '134114', 'nil', 0),
(56, 40, 'HDFC', 'Tel: 0172-2587504, Fax: 0172-58522', '11', '-', 'SCO 67', '134109', 'nil', 0),
(57, 40, 'HDFC', 'Tel: 0172-2587504, Fax: 0172-58522', '7', '-', 'SCO 409', '134109', 'nil', 0),
(58, 40, 'HDFC', 'Tel: 0172-3935802-809 3935820, Fax: 0172-3935814', '5', '-', 'SCO 144-145,Swastik vihar', '134109', 'nil', 0),
(59, 40, 'HDFC', 'Tel: 0172-65444495, Fax: 0172-2654343', '16', '-', 'SCO 1', '134109', 'nil', 0),
(60, 40, 'HDFC', '-', '25', '-', 'SCO 120', '134109', 'nil', 0),
(61, 41, 'Oriental Bank of Commerce', '0172-2563843', '11', '-', 'SCO 30', '134112', 'nil', 0),
(62, 41, 'Oriental Bank of Commerce', '0172-2551860', '20', '-', 'SCO 392', '134112', 'nil', 0),
(63, 41, 'Oriental Bank of Commerce', '0172-2571663', '6', '-', 'Hansraj Public School', '134109', 'nil', 0),
(64, 41, 'Oriental Bank of Commerce', '0172-2562721', '8', '-', 'Huda Complex,SCO 63', '134109', 'nil', 0),
(65, 41, 'State Bank of Hyderabad', '1722583329', '4', 'panchakula@sbhyd.co.in', 'SCOF-85', '134112', 'nil', 0),
(66, 41, 'State Bank of Patiala', '0172-2599244, 0172-2596225', '7', '-', '-', '-', 'nil', 0),
(67, 41, 'State Bank of Patiala', '0172-2576896, 0172-2577282', '6', '-', '-', '-', 'nil', 0),
(68, 41, 'State Bank of Patiala', '01733-220880', '12', '-', '-', '-', 'nil', 0),
(69, 41, 'State Bank of Patiala', '01762-271576', 'Zirakpur', '-', 'SCF 23 Kalgirdhar Enclave', '-', 'nil', 0),
(70, 41, 'State Bank of Patiala', '0172-2555175', '5', '-', 'SCO 87,88,Swastik Vihar,MDC', '-', 'nil', 0),
(71, 41, 'State Bank of Patiala', '0172-2591223, 224', '15', '-', 'SCO 11', '-', 'nil', 0),
(72, 41, 'State Bank of Patiala', '0172-2552153, 4658677', '20', '-', 'SCO 236', '-', 'nil', 0),
(73, 41, 'State Bank of Patiala', '0172-258077', '4', '-', 'SCO 40', '-', 'nil', 0),
(74, 41, 'Central Bank of India', 'Tel: (0172) 2562028, Tel: (0172) 2568303', '10', 'bmcmba1454@centralbank.co.in', 'SCO 9', '-', 'nil', 0),
(75, 41, 'Central Bank of India', '0172-2550166', '25', '-', '-', '-', 'nil', 0),
(76, 41, 'Central Bank of India', '0172-2562028', '10', '-', 'SCO 9', '-', 'nil', 0),
(77, 41, 'Federal Bank', '0172-2587918', '11', 'PNK@FEDERALBANK', 'SCO 63', '134109', 'nil', 0),
(78, 40, 'Kotak Mahindra Bank', '0172-5004323', '9', '-', 'SCO 331', '134109', 'nil', 0),
(79, 40, 'Yes Bank', '9958390909', '11', 'CONTACTUS@YESBANK.IN', 'SCO 24,Huda Complex', '134112', 'nil', 0),
(80, 40, 'Yes Bank', '2562175', '10', '-', 'SCF 75', '134109', 'nil', 0),
(81, 31, 'A1 City Flowers', '09882292004', 'Manimajra', '-', 'Near Housing Board,Main Market', '-', 'nil', 0),
(82, 31, 'Arena Flowers', '0172 401 4056', '9', '-', 'Near Hanuman mandir', '-', 'nil', 0),
(83, 31, 'Punsons Flora', '9646304688', '11', '-', 'Shop 212,SCO 45,Canam Plaza', '-', 'nil', 0),
(84, 31, 'Ferns and Petals', '0172 324 6070', '8', '-', 'SCO-410,Ground floor', '-', 'nil', 0),
(85, 44, 'District Consumer Dispute Redressal Forum', '-', '12-A', '-', '-', '134112', 'nil', 0),
(86, 60, 'Pooja Sports', '09888287525', '11', '-', 'Showroom no 65,backside', '-', 'nil', 0),
(87, 60, 'Kadian Sports', '+91-9417006292', '20', '-', 'DSS #260', '134112', 'nil', 0),
(88, 24, 'Bulls Eye', '0172 465 5465', '11', '-', 'SCO 1 Second Floor', '-', 'nil', 0),
(89, 24, 'Ranjit Shahi Chemistry Classes', '-', '10', '-', 'SCF 72,Second floor', '-', 'nil', 0),
(90, 24, 'MIITJEE', '9463087706', '14', '-', 'SCO 214,Top Floor', '-', 'nil', 0),
(91, 24, 'Aakash Institute', '0172 394 5454', '14', '-', '1st Floor, 218 & 219', '134113', 'nil', 0),
(92, 58, 'Burn Gym and Spa', '0172 500 8801', '11', '-', '#SCO 58,59', '-', 'nil', 0),
(93, 58, 'Platinum Fitness & Spa', '0172 4646120', '8', '-', '#SCO 387,388,second floor', '-', 'nil', 0),
(94, 58, 'Prime Bodies', '0172 4986268', '20', '-', '#SCO 248,top floor', '-', 'nil', 0),
(95, 58, 'Gold''s Gym', '0172 3060060', '20', '-', '#SCO 10,First and second floor', '-', 'nil', 0),
(96, 58, 'Gymkhana Cclub', '0172 4983463', '1', '-', 'MDC', '-', 'nil', 0),
(97, 58, 'Oceanic Fitness Centre', '0172 2583451', '12', '-', 'SCO 87,Behind State Bank of Patiala', '-', 'nil', 0),
(98, 58, 'Blitz fitness gym', '0172 4981593', '5', '-', 'SCO 59,MDC', '-', 'nil', 0),
(99, 27, 'Loreal Professional', '+(91)-172-6533303, +(91)-9888702043 ', '20', '-', '-', '-', 'nil', 0),
(100, 27, 'Lakme Salon', '+(91)-172-4981988  ', '8', '-', '-', '-', 'nil', 0),
(101, 27, 'Tocado Salon', '+(91)-172-4646668, +(91)-9888196386 ', '8', '-', 'Near Shalimar', '-', 'nil', 0),
(102, 27, 'Tress Lounge', '+(91)-172-4632301, 4632300  ', '8', '-', 'Ground Floor', '-', 'nil', 0),
(103, 27, 'About U', '+(91)-172-5064634, +(91)-9256241949 ', '20', '-', '-', '-', 'nil', 0),
(104, 27, 'Curly Palace', ' +(91)-172-2597748, +(91)-9915087748 ', '7', '-', 'First Floor', '-', 'nil', 0),
(105, 27, 'Hair Raiserz', ' +(91)-172-4635300 ', '20', '-', 'SCO 248', '-', 'nil', 0),
(106, 49, 'Harmony Honda : Joshi Autolinks Pvt Ltd ', '0172-5066666 ', '-', '-', 'Plot No. 389,Industrial Area Phase 1,Adjoining Drish Shoes ', '-', 'nil', 0),
(107, 53, 'Pioneer Toyota', 'Phone:+919915003442 ', '-', '-', 'No. 71 Industrial Area, Phase -1 ', '134113', 'nil', 0),
(108, 50, 'Ultimate Hyundai', '8054996615', '-', '-', '355,Industrial Area Phase-2', '134109', 'nil', 0),
(109, 52, 'Maruti Suzuki Dealer', '9646000180', '8', 'modernl.phk.sal1@marutidealers.com', 'SCO 411', '-', 'nil', 0),
(110, 51, 'Mahindra Dealers', '0172-5210000', '-', '-', 'Plot #82,Industrial Area,Phase-1', '-', 'nil', 0),
(111, 54, 'PARTAP BAJAJ', '(0172)2570214/5064356 , 5064356, 7876022867', '9', 'd10534@baldealer.com', 'SCO 356', '134109', 'nil', 0),
(112, 65, 'Aloha Bar', '-', '8', '-', 'peninsula', '134109', 'nil', 0),
(113, 65, 'Shooters Bar', '-', '10', '-', 'Hotel Shiraaz', '134109', 'nil', 0),
(114, 59, 'Rimmi Cue club', '-', '11', '-', 'Near Anupam Sweets', '134109', 'nil', 0),
(115, 59, '147 Cue club', '-', '14', '-', 'Near pragya institute', '134109', 'nil', 0),
(116, 66, 'Nik Baker''s', '-', '5', '-', 'SCO 182', '-', 'nil', 0),
(117, 66, '5 Degrees', '-', '5', '-', 'Nirjhar Vatika', '-', 'nil', 0),
(118, 66, 'The Cup Cake village', '9041797790', '4', '-', '#1203', '-', 'nil', 0),
(119, 66, 'Anupam Sweets', '01722564641', '11', '-', 'SCO 25', '-', 'nil', 0),
(120, 66, 'Gopals', '-', '8', '-', 'SCO 391', '-', 'nil', 0),
(121, 66, 'Domino''s Pizza', '01722587801', '9', '-', 'SCO 354', '-', 'nil', 0),
(122, 66, 'Hot millions', '01724648888', '9', '-', 'SCO 303', '-', 'nil', 0),
(123, 66, 'Barryo Fiesta', '01724000455', '8', '-', 'SCO 387', '-', 'nil', 0),
(124, 66, 'KFC', '01724007444', '9', '-', 'SCO 328', '-', 'nil', 0),
(125, 66, 'Pizza Hut', '01723988398', '20', '-', 'SCO 137,ist market', '-', 'nil', 0),
(126, 69, 'Bengali chicken corner', '-', '7', '-', 'Market', '-', 'nil', 0),
(127, 69, 'Wah ji Wah(pure veg)', '-', '20', '-', 'Market', '-', 'nil', 0),
(128, 69, 'Chap Street', '-', '11', '-', 'Market back side', '-', 'nil', 0),
(129, 69, 'Shammi chaat and sweets', '-', '10', '-', 'Market ', '-', 'nil', 0),
(130, 69, 'Goli vada pav', '-', '15', '-', 'Market ', '-', 'nil', 0),
(131, 69, 'Dragon chicken', '-', '20', '-', '3rd Market ', '-', 'nil', 0),
(132, 70, 'MCDonald''s Drive thru', '7355547158', 'SAS Nagar', '-', 'Ambala highway', '-', 'nil', 0),
(133, 68, 'KC Royal park', '01726633333', '3', '-', 'City centre', '-', 'nil', 0),
(134, 68, 'Western court', '01724334455', '10', '-', 'Site no.2', '-', 'nil', 0),
(135, 68, 'Pallavi west', '01722584966', '16', '-', 'SCO 5', '-', 'nil', 0),
(136, 68, 'Bella Vista', '01725064848', '5', '-', '-', '-', 'nil', 0),
(137, 65, 'Hops and Grains', '08054923856', '9', '-', 'SCO 358', '-', 'nil', 0),
(138, 65, 'F#11 Sports Bar', '9988889457', 'MDC Sector 5', '-', 'gh 39', '-', 'nil', 0),
(139, 65, 'S.K. Mehta House', '01722592952', '15', '-', '-', '-', 'nil', 0),
(140, 65, 'Ooze', '7307290009', '9', '-', 'Market', '-', 'nil', 0),
(141, 65, 'The Vivbe Club', '9888892892', 'MDC Sector 5', '-', 'Swastik Vihar', '-', 'nil', 0),
(142, 28, 'Radhey krishna jewellers', '01722594545', '15', '-', 'SCO 14', '-', 'nil', 0),
(143, 28, 'Jai Ambey jewellers', '8284978888', '8', '-', 'Booth no. 99', '-', 'nil', 0),
(144, 28, 'Mayaji Jewellers', '9815800339', '11', '-', 'SCO 59', '-', 'nil', 0),
(145, 26, 'Paras downtown square', '-', '-', '-', 'Zirakpur', '-', 'nil', 0),
(146, 26, 'Shalimar mega mall', '-', '5', '-', '-', '-', 'nil', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE IF NOT EXISTS `tblogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `securityquestion` varchar(50) NOT NULL,
  `securityanswer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`id`, `username`, `password`, `securityquestion`, `securityanswer`) VALUES
(1, 'aarzoo', '12345', 'what is your full name?', 'aarzoobhatia');

-- --------------------------------------------------------

--
-- Table structure for table `tbloginuser`
--

CREATE TABLE IF NOT EXISTS `tbloginuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(50) NOT NULL,
  `image` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbquestion`
--

CREATE TABLE IF NOT EXISTS `tbquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qname` varchar(50) NOT NULL,
  `blogid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbquestion`
--

INSERT INTO `tbquestion` (`id`, `qname`, `blogid`, `username`, `status`) VALUES
(1, 'what si sa', 9, 'asas', 1),
(2, 'asd', 8, 'aa', 1),
(3, 'ss', 7, 'aa', 1),
(4, 'ww', 5, 'w', 1),
(5, 'wq', 5, 'w', 1),
(6, 's', 9, 'w', 1),
(7, 'what is your name', 5, 'w', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbregister`
--

CREATE TABLE IF NOT EXISTS `tbregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `securityquestion` varchar(50) NOT NULL,
  `securityanswer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbregister`
--

INSERT INTO `tbregister` (`id`, `name`, `contact`, `address`, `username`, `password`, `securityquestion`, `securityanswer`) VALUES
(10, 'efw', 'fe', 'fef', 'aa', 'bb', 'dwsd', 'sf'),
(11, 'dw', 'dwdw', 'dd', 'sw', 'ew', 're', 'wa'),
(12, 'sw', 's', 's', 'a', 'b', 'q', 'w'),
(13, 'a', 's', 'w', 'w', 'w', 'w', 'w');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
