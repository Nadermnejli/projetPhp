-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 08:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'nader', '123', '2024-07-02 08:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06'),
(4, 'demo@gmail.com', 2, '12/01/2024', '14/01/2024', 'hello', 1, '2024-05-25 12:54:25'),
(5, 'nader@gmail.com', 6, '12/01/2024', '14/01/2024', 'nesss', 1, '2024-07-02 08:53:39'),
(6, 'nader@gmail.com', 9, '12/01/2024', '14/01/2024', 'test', 1, '2024-07-04 18:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(9, 'Mercedes', '2024-07-04 17:51:05', NULL),
(10, 'Fiat ', '2024-07-04 17:55:22', NULL),
(11, 'Audi ', '2024-07-04 17:59:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'bonjour a tous 																						', 'cartunisie@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Harry Den', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'nader', 'mnajli@gmail.com', '966636996', 'bonjour', '2024-05-31 18:54:02', 1),
(3, 'nader', 'test@gmail.com', '966636996', '12313', '2024-07-02 10:14:32', 1),
(4, 'nader mnejli123', 'Nader.MNAJLI@tek-up.de', '966636996', 'tetetetetet', '2024-07-04 18:22:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=\"justify\"><FONT size=\"2\"><STRONG><FONT color=\"#990000\">(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>\r\n\r\n1. General Rental Requirements<br>\r\n1.1. Age Requirement: Renters must be at least 21 years old. Drivers under the age of 25 may incur a young driver surcharge.<br>\r\n1.2. Driving License: Renters must hold a valid driving license for at least one year. An International Driving Permit (IDP) is required if the license is not in Roman script.<br>\r\n1.3. Identification: Renters must present a valid ID or passport and a credit card in the renter’s name at the time of pick-up.<br><br>\r\n\r\n2. Payment and Deposits<br>\r\n2.1. Payment: Full payment for the rental period must be made at the time of pick-up.<br>\r\n2.2. Deposit: A security deposit is required at the time of rental, which will be refunded upon the safe return of the vehicle.<br><br>\r\n\r\n3. Use of the Vehicle<br>\r\n3.1. Permitted Use: The vehicle must be used in accordance with all applicable laws and regulations.<br>\r\n3.2. Prohibited Use: The vehicle must not be used for illegal purposes, towing, racing, or driving under the influence of drugs or alcohol.<br>\r\n3.3. Authorized Drivers: Only the renter and additional drivers listed in the rental agreement are authorized to drive the vehicle.<br><br>\r\n\r\n4. Insurance and Liability<br>\r\n4.1. Insurance Coverage: The rental includes basic insurance coverage. Additional coverage may be purchased.<br>\r\n4.2. Accidents and Damages: In the event of an accident, the renter must immediately notify the rental agency and the local authorities. The renter is responsible for any damage not covered by insurance.<br><br>\r\n\r\n5. Fuel Policy<br>\r\n5.1. Fuel Level: The vehicle will be provided with a full tank of fuel. The renter must return the vehicle with a full tank. If the vehicle is returned with less fuel, a refueling charge will apply.<br><br>\r\n\r\n6. Vehicle Maintenance<br>\r\n6.1. Maintenance and Repairs: The renter is responsible for routine maintenance of the vehicle during the rental period. Any necessary repairs must be authorized by the rental agency.<br><br>\r\n\r\n7. Return of the Vehicle<br>\r\n7.1. Return Time: The vehicle must be returned at the agreed time. Late returns may incur additional charges.<br>\r\n7.2. Condition of Vehicle: The vehicle must be returned in the same condition as at the start of the rental, excluding normal wear and tear.<br><br>\r\n\r\n8. Termination<br>\r\n8.1. Breach of Terms: The rental agency reserves the right to terminate the rental agreement and repossess the vehicle if the renter breaches any terms and conditions.<br><br>\r\n\r\n9. Governing Law<br>\r\n9.1. Jurisdiction: These terms and conditions are governed by the laws of the jurisdiction in which the rental agency operates.<br><br>\r\n\r\n10. Miscellaneous<br>\r\n10.1. Amendments: The rental agency reserves the right to amend these terms and conditions at any time.<br>\r\n</FONT></P>\r\n'),
(2, 'Privacy Policy', 'privacy', '<P align=\"justify\"><FONT size=\"2\"><STRONG><FONT color=\"#990000\">(1) PRIVACY POLICY</FONT><BR><BR></STRONG>\r\n\r\n1. Introduction<br>\r\n1.1. We are committed to safeguarding the privacy of our customers and website visitors; this policy sets out how we will treat your personal information.<br><br>\r\n\r\n2. What Information We Collect<br>\r\n2.1. We may collect, store, and use the following kinds of personal data:<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.1.1. Information about your computer and about your visits to and use of this website (including your IP address, geographical location, browser type and version, operating system, referral source, length of visit, page views, and website navigation paths);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.1.2. Information that you provide to us when registering with our website (including your email address);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.1.3. Information that you provide to us for the purpose of subscribing to our email notifications and/or newsletters (including your name and email address);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.1.4. Information that you provide to us when using the services on our website, or that is generated in the course of the use of those services (including the timing, frequency, and pattern of service use);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.1.5. Information relating to any purchases you make of our goods or services or any other transactions that you enter into through our website (including your name, address, telephone number, email address, and card details);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.1.6. Information that you post to our website for publication on the internet (including your user name, your profile pictures, and the content of your posts);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.1.7. Information contained in or relating to any communication that you send to us or send through our website (including the communication content and metadata associated with the communication);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;2.1.8. Any other personal information that you choose to send to us.<br><br>\r\n\r\n3. Using Your Personal Information<br>\r\n3.1. Personal information submitted to us through our website will be used for the purposes specified in this policy or on the relevant pages of the website.<br>\r\n3.2. We may use your personal information to:<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.1. Administer our website and business;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.2. Personalize our website for you;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.3. Enable your use of the services available on our website;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.4. Send you goods purchased through our website;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.5. Supply to you services purchased through our website;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.6. Send statements, invoices, and payment reminders to you, and collect payments from you;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.7. Send you non-marketing commercial communications;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.8. Send you email notifications that you have specifically requested;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.9. Send you our email newsletter, if you have requested it (you can inform us at any time if you no longer require the newsletter);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.10. Send you marketing communications relating to our business or the businesses of carefully-selected third parties which we think may be of interest to you, by post or, where you have specifically agreed to this, by email or similar technology (you can inform us at any time if you no longer require marketing communications);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.11. Provide third parties with statistical information about our users (but those third parties will not be able to identify any individual user from that information);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.12. Deal with inquiries and complaints made by or about you relating to our website;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.13. Keep our website secure and prevent fraud;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.14. Verify compliance with the terms and conditions governing the use of our website (including monitoring private messages sent through our website private messaging service); and<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;3.2.15. Other uses.<br><br>\r\n\r\n4. Disclosing Personal Information<br>\r\n4.1. We may disclose your personal information to any of our employees, officers, insurers, professional advisers, agents, suppliers, or subcontractors insofar as reasonably necessary for the purposes set out in this policy.<br>\r\n4.2. We may disclose your personal information:<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;4.2.1. To the extent that we are required to do so by law;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;4.2.2. In connection with any ongoing or prospective legal proceedings;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;4.2.3. In order to establish, exercise, or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk);<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;4.2.4. To the purchaser (or prospective purchaser) of any business or asset that we are (or are contemplating) selling; and<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;4.2.5. To any person who we reasonably believe may apply to a court or other competent authority for disclosure of that personal information where, in our reasonable opinion, such court or authority would be reasonably likely to order disclosure of that personal information.<br>\r\n4.3. Except as provided in this policy, we will not provide your personal information to third parties.<br><br>\r\n\r\n5. International Data Transfers<br>\r\n5.1. Information that we collect may be stored, processed in, and transferred between any of the countries in which we operate in order to enable us to use the information in accordance with this policy.<br>\r\n5.2. Information that we collect may be transferred to the following countries which do not have data protection laws equivalent to those in force in the European Economic Area: the United States of America, Russia, Japan, China, and India.<br>\r\n5.3. Personal information that you publish on our website or submit for publication on our website may be available, via the internet, around the world. We cannot prevent the use or misuse of such information by others.<br><br>\r\n\r\n6. Retaining Personal Information<br>\r\n6.1. This Section 6 sets out our data retention policies and procedure, which are designed to help ensure that we comply with our legal obligations regarding the retention and deletion of personal information.<br>\r\n6.2. Personal information that we process for any purpose or purposes shall not be kept for longer than is necessary for that purpose or those purposes.<br>\r\n6.3. Notwithstanding the other provisions of this Section 6, we will retain documents (including electronic documents) containing personal data:<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;6.3.1. To the extent that we are required to do so by law;<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;6.3.2. If we believe that the documents may be relevant to any ongoing or prospective legal proceedings; and<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;6.3.3. In order to establish, exercise, or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk).<br><br>\r\n\r\n7. Security of Your Personal Information<br>\r\n7.1. We will take reasonable technical and organizational precautions to prevent the loss, misuse,\r\n'),
(3, 'About Us ', 'aboutus', '<P align=\"justify\"><FONT size=\"2\"><STRONG><FONT color=\"#990000\">(1) ABOUT US</FONT><BR><BR></STRONG>\r\n\r\nWe are a Tunisian car rental agency located in the vibrant city of Ariana. Our mission is to provide high-quality, reliable, and affordable car rental services to both locals and tourists. With a wide range of vehicles to choose from, we ensure that our customers find the perfect car to suit their needs and preferences.<BR><BR>\r\n\r\n<STRONG>Our Story</STRONG><BR>\r\nFounded with a passion for delivering exceptional customer service, our agency has grown to become a trusted name in car rentals across Tunisia. Our team of dedicated professionals works tirelessly to ensure that each rental experience is smooth and hassle-free.<BR><BR>\r\n\r\n<STRONG>Our Fleet</STRONG><BR>\r\nWe offer an extensive selection of vehicles, including compact cars, sedans, SUVs, and luxury cars. Whether you\'re looking for a vehicle for a family vacation, business trip, or a weekend getaway, we have the perfect car for you.<BR><BR>\r\n\r\n<STRONG>Why Choose Us?</STRONG><BR>\r\n- **Customer-Centric Approach**: We prioritize our customers\' needs and strive to provide personalized services.<BR>\r\n- **Competitive Pricing**: Our pricing is transparent and competitive, ensuring you get the best value for your money.<BR>\r\n- **Convenient Location**: Located in Ariana city, we are easily accessible and provide convenient pick-up and drop-off services.<BR>\r\n- **24/7 Support**: Our customer service team is available 24/7 to assist you with any queries or issues you may have.<BR><BR>\r\n\r\n<STRONG>Our Commitment</STRONG><BR>\r\nWe are committed to maintaining the highest standards of service and ensuring that our customers have a memorable and enjoyable rental experience. Your satisfaction is our top priority, and we continuously strive to improve our services to meet and exceed your expectations.<BR><BR>\r\n\r\n<STRONG>Contact Us</STRONG><BR>\r\nIf you have any questions or need further information, please do not hesitate to contact us:<BR>\r\n- **Address**:  Ariana City, Tunisia<BR>\r\n- **Phone**: +216 988588666<BR>\r\n- **Email**: tunisiacar@gmail.com<BR>\r\n- **Website**: tunisiacar.tn<BR><BR>\r\n\r\nThank you for choosing us for your car rental needs. We look forward to serving you and making your journey as smooth and enjoyable as possible.<BR><BR>\r\n</FONT></P>\r\n'),
(11, 'FAQs', 'faqs', '<P align=\"justify\"><FONT size=\"2\"><STRONG><FONT color=\"#990000\">(1) FREQUENTLY ASKED QUESTIONS (FAQs)</FONT><BR><BR></STRONG>\r\n\r\n<STRONG>1. What are the age requirements for renting a car?</STRONG><BR>\r\nRenters must be at least 21 years old. Drivers under the age of 25 may incur a young driver surcharge.<BR><BR>\r\n\r\n<STRONG>2. What documents do I need to rent a car?</STRONG><BR>\r\nYou need to present a valid driving license, a passport or ID, and a credit card in your name. An International Driving Permit (IDP) is required if your license is not in Roman script.<BR><BR>\r\n\r\n<STRONG>3. Is there a deposit required?</STRONG><BR>\r\nYes, a security deposit is required at the time of rental. The deposit will be refunded upon the safe return of the vehicle.<BR><BR>\r\n\r\n<STRONG>4. What payment methods are accepted?</STRONG><BR>\r\nWe accept major credit cards. Full payment for the rental period must be made at the time of pick-up.<BR><BR>\r\n\r\n<STRONG>5. Can I add additional drivers?</STRONG><BR>\r\nYes, additional drivers can be added to the rental agreement. They must meet the same age and license requirements as the primary driver.<BR><BR>\r\n\r\n<STRONG>6. What is the fuel policy?</STRONG><BR>\r\nThe vehicle will be provided with a full tank of fuel. You must return the vehicle with a full tank. If the vehicle is returned with less fuel, a refueling charge will apply.<BR><BR>\r\n\r\n<STRONG>7. What should I do in case of an accident?</STRONG><BR>\r\nIn the event of an accident, you must immediately notify the rental agency and the local authorities. You are responsible for any damage not covered by insurance.<BR><BR>\r\n\r\n<STRONG>8. Can I return the car after hours?</STRONG><BR>\r\nAfter-hours returns are possible but must be arranged in advance. Additional charges may apply for late returns.<BR><BR>\r\n\r\n<STRONG>9. Are there any mileage limits?</STRONG><BR>\r\nOur rentals come with unlimited mileage unless stated otherwise in your rental agreement.<BR><BR>\r\n\r\n<STRONG>10. How do I extend my rental period?</STRONG><BR>\r\nTo extend your rental period, you must contact the rental agency before your current rental period ends. Extensions are subject to vehicle availability and additional charges.<BR><BR>\r\n\r\n<STRONG>11. What is your cancellation policy?</STRONG><BR>\r\nCancellations made at least 24 hours before the scheduled pick-up time will not incur any charges. Cancellations made less than 24 hours before the pick-up time may incur a cancellation fee.<BR><BR>\r\n\r\n<STRONG>12. What types of insurance are available?</STRONG><BR>\r\nBasic insurance coverage is included in the rental. Additional insurance options are available for purchase to cover theft, damage, and personal accidents.<BR><BR>\r\n\r\n<STRONG>13. Can I drive the rental car outside the country?</STRONG><BR>\r\nDriving the rental car outside the country is subject to prior approval and may incur additional charges. Please inform us if you plan to travel internationally.<BR><BR>\r\n\r\n<STRONG>14. What happens if the car breaks down?</STRONG><BR>\r\nIn case of a breakdown, contact our 24/7 roadside assistance service. The contact information is provided in the rental agreement.<BR><BR>\r\n\r\n<STRONG>15. Are pets allowed in the rental cars?</STRONG><BR>\r\nPets are allowed in our rental cars. However, an additional cleaning fee may apply if the vehicle requires extra cleaning upon return.<BR><BR>\r\n\r\nIf you have any other questions, please do not hesitate to contact our customer service team.</FONT></P>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Harry Den', 'demo@gmail.com', '202cb962ac59075b964b07152d234b70', '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2024-05-25 12:53:17'),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2017-06-26 21:03:09'),
(3, 'Mark K', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'PKL', 'PKL', 'PKL', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(4, 'Tom K', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'PKL', 'XYZ', 'XYZ', '2017-06-17 20:03:36', '2017-06-26 19:18:14'),
(5, 'nader mnejli', 'nader@gmail.com', '69d58b4aff64f3b4838c3da282ffda9d', '26521734', '', '', '', '', '2024-07-02 08:52:34', '2024-07-02 14:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(4, 'Lorem ipsum', 1, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 5636, 'CNG', 2012, 5, 'featured-img-3.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2017-06-20 18:44:12'),
(9, 'Mercedes-Benz Classe S', 9, 'À louer S 350 berline toutes options voitures très très propre comme neuve jantes 20’´ AMG svp prix légèrement négociable et curieux s’abstenir TEL 98214267///53402770', 100, 'Diesel', 2021, 4, '103089_1GQsZ_f83Fb8DPEUo0gdolt5V_max.webp', '103089_aX3NlIoDUP1Ob1UVCkv82GCs0_max.webp', '103089_cKRVYSc_xTrZCIKiRiM33vzdn_max.webp', NULL, '103089_Qg_UY-qUGLEHb_jG5P2NBWYAP_max.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-03 23:00:00', NULL),
(10, 'Fiat 500', 10, 'Fiat 500 de couleur blanc boite auto année 9/2020 jantes allum avec faible kilométrage 49000 km seulement svp prix légèrement négociable et curieux s’abstenir tel 98214267///53402770', 80, 'Petrol', 2020, 2, '103839_a0aU168qv3xW2JfDikZ4_8Xis_max.webp', '103839_aBNISlsSNPIN3g1gY-hb6N-KL_max.webp', '103839_AS1p0-d873badlsNqceAb3pSp_max.webp', NULL, '103839_nNPcWd3meehdukIgPYrty61XG_max.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-03 23:00:00', NULL),
(11, 'Audi A1', 3, 'Audi A1 de couleur blanc boite auto année 9/2020 jantes allum avec faible kilométrage 49000 km seulement svp prix légèrement négociable et curieux s’abstenir tel 98214267///53402770', 90, 'Petrol', 2020, 4, '103967_0hH3sh87Ul72lLEJI5dMjb1FS_max.webp', '103967__jVliL-z-aaSnIl1wruZp7fDY_max.webp', '103967_J6TD9t7_eRusZpE_GpBlAETGy_max.webp', NULL, 'about_us_img1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-03 23:00:00', NULL);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
