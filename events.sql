-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 07:43 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteproc` ()  NO SQL
DELETE FROM customer WHERE cust_id='$id'$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(3) NOT NULL,
  `id` int(3) NOT NULL,
  `cust_id` int(3) NOT NULL,
  `ticket_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `id`, `cust_id`, `ticket_type`) VALUES
(72, 1, 53, 'pro'),
(73, 1, 53, 'pro'),
(74, 4, 53, 'pro'),
(75, 4, 53, 'pro'),
(76, 3, 53, 'pro'),
(77, 1, 53, 'pro'),
(78, 1, 53, 'standard'),
(79, 1, 53, 'standard'),
(80, 1, 53, 'pro'),
(81, 1, 53, 'premium'),
(82, 1, 53, 'pro'),
(83, 4, 53, 'pro'),
(84, 4, 53, 'pro');

--
-- Triggers `booking`
--
DELIMITER $$
CREATE TRIGGER `after_booking_insert` AFTER INSERT ON `booking` FOR EACH ROW BEGIN
INSERT into booking_backup values( NEW.book_id, NEW.id,NEW.cust_id,NEW.ticket_type);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `booking_backup`
--

CREATE TABLE `booking_backup` (
  `book_id` int(3) NOT NULL,
  `id` int(3) NOT NULL,
  `cust_id` int(3) NOT NULL,
  `ticket_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking_backup`
--

INSERT INTO `booking_backup` (`book_id`, `id`, `cust_id`, `ticket_type`) VALUES
(37, 1, 51, 'pro'),
(38, 1, 51, 'pro'),
(39, 2, 52, 'standard'),
(40, 2, 52, 'standard'),
(41, 2, 52, 'standard'),
(42, 1, 52, 'pro'),
(43, 1, 52, 'pro'),
(44, 1, 52, 'pro'),
(45, 1, 52, 'pro'),
(46, 1, 52, 'standard'),
(47, 1, 52, 'standard'),
(48, 1, 52, 'pro'),
(49, 2, 52, 'standard'),
(50, 3, 52, 'standard'),
(51, 1, 52, 'pro'),
(52, 1, 52, 'pro'),
(53, 1, 52, 'pro'),
(54, 1, 52, 'pro'),
(55, 1, 52, 'pro'),
(56, 1, 52, 'standard'),
(57, 1, 52, 'pro'),
(58, 1, 52, 'pro'),
(59, 4, 52, 'premium'),
(60, 4, 52, 'standard'),
(61, 1, 52, 'pro'),
(62, 4, 51, 'standard'),
(63, 4, 51, 'standard'),
(64, 4, 53, 'pro'),
(65, 4, 51, 'pro'),
(66, 1, 51, 'pro'),
(67, 4, 51, 'pro'),
(68, 4, 51, 'pro'),
(69, 3, 51, 'pro'),
(70, 4, 51, 'standard'),
(71, 1, 51, 'pro'),
(72, 1, 53, 'pro'),
(73, 1, 53, 'pro'),
(74, 4, 53, 'pro'),
(75, 4, 53, 'pro'),
(76, 3, 53, 'pro'),
(77, 1, 53, 'pro'),
(78, 1, 53, 'standard'),
(79, 1, 53, 'standard'),
(80, 1, 53, 'pro'),
(81, 1, 53, 'premium'),
(82, 1, 53, 'pro'),
(83, 4, 53, 'pro'),
(84, 4, 53, 'pro');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(3) NOT NULL,
  `cust_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `email`, `password`, `phone`) VALUES
(53, 'Dave', 'dave@gmail.com', '123', '8095208192'),
(54, 'Clinton', 'clinton@gmail.com', '123', '9964062018'),
(55, 'John', 'john@gmail.com', '123', '9964062018');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `video_link` varchar(511) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venue_id` int(3) NOT NULL,
  `image_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `date`, `video_link`, `venue_id`, `image_link`) VALUES
(1, 'Sunburn Festival', 'Sunburn festival is a commercial EDM fest held in India every year. This year India\'s most loved DJ Nucleya is back!', '2018-09-01', 'https://www.youtube.com/watch?v=7yzXmLz-Q14', 12, 'img/venue-info-bg.jpg'),
(2, 'Comedy Fest', 'A special showcase of the country\'s best comics. Will surely tickle your funny bone!', '2018-10-04', 'https://www.youtube.com/watch?v=W6Vpf9zmIQE\r\n', 11, 'img/slide.jpg'),
(3, 'Life In disaster', 'Funniest interview ever!!', '2018-12-30', 'https://www.youtube.com/watch?v=beVSHiyog4o', 14, 'img/subscribe-bg.jpg'),
(4, 'Holi Party', 'Indulge in a splash of Colors this Holi!', '2018-09-20', 'https://www.youtube.com/watch?v=Hh-o5g4tLVE', 12, 'img/holi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(3) NOT NULL,
  `sponsor_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `logo_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `sponsor_name`, `logo_link`) VALUES
(1, 'Strider', 'img/sponsors/1.png'),
(1, 'runtastic', 'img/sponsors/2.png'),
(1, 'EditShare', 'img/sponsors/3.png'),
(3, 'cadent', 'img/sponsors/6.png'),
(3, 'gategroup', 'img/sponsors/5.png'),
(1, 'editshare', 'img/sponsors/3.png'),
(4, 'Strider', 'img/sponsors/1.png'),
(2, 'editshare', 'img/sponsors/3.png');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(3) NOT NULL,
  `standard` int(5) NOT NULL,
  `pro` int(5) NOT NULL,
  `premium` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `standard`, `pro`, `premium`) VALUES
(1, 200, 300, 400),
(2, 100, 200, 300),
(3, 150, 300, 500);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(3) NOT NULL,
  `venue_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Venue_description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `photo_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `venue_name`, `location`, `Venue_description`, `photo_link`) VALUES
(11, 'Hard Rock Cafe', 'Bangalore', 'It cannot get harder than this!\r\nRock and roll-themed chain with a high-energy vibe serving burgers & American classics.', 'img/venue-gallery/1.jpg'),
(12, 'Palace Grounds', 'Bangalore', 'The sprawling grounds surrounding the palace used for holding public events including music concerts, weddings and much more.', 'img/hotels/2.jpg'),
(13, 'Elite grounds', 'Mumbai', 'Only elites and legends allowed!\r\nGreat ambiance, great memories. ', 'img/hotels/1.jpg'),
(14, 'Paramount studios', 'Delhi', 'Paramount studios - Live shows, Theater and Enriched experiences', 'img/gallery/8.jpg'),
(15, 'The Leela Palace ', 'Chennai', 'The Leela Palace Chennai is a sea facing 5-star luxury business hotel. Enjoy serenity and comfort all in one.', 'img/venue-gallery/3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `id` (`id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `booking_backup`
--
ALTER TABLE `booking_backup`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `id` (`id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venue_id` (`venue_id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD KEY `id` (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `booking_backup`
--
ALTER TABLE `booking_backup`
  MODIFY `book_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `sponsors_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
