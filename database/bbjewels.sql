-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2014 at 05:56 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bbjewels`
--
CREATE DATABASE IF NOT EXISTS `bbjewels` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bbjewels`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `jewel_id` int(4) unsigned zerofill NOT NULL,
  `qty` int(4) NOT NULL DEFAULT '0',
  `cust_id` int(4) unsigned zerofill NOT NULL,
  `checkout` varchar(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'n',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checkedon` date NOT NULL,
  `trans` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `jewel_id`, `qty`, `cust_id`, `checkout`, `added`, `checkedon`, `trans`) VALUES
(0001, 0001, 1, 0002, 'y', '2014-03-27 07:44:55', '2014-03-27', 16444);

-- --------------------------------------------------------

--
-- Table structure for table `jewellery`
--

DROP TABLE IF EXISTS `jewellery`;
CREATE TABLE IF NOT EXISTS `jewellery` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `prodname` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `path` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'images/nophoto.gif',
  `category` int(33) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `descr` text COLLATE latin1_general_ci NOT NULL,
  `type` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT 'latest',
  `noviews` int(4) NOT NULL DEFAULT '0',
  `topsell` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0 AUTO_INCREMENT=327 ;

--
-- Dumping data for table `jewellery`
--

INSERT INTO `jewellery` (`id`, `prodname`, `path`, `category`, `price`, `descr`, `type`, `noviews`, `topsell`) VALUES

(0002, 'Gold/Bangles/9.jpg', 'Gold/Bangles/9.jpg', 1, '1000.00', 'Diamond Carte:20\r\n\r\n', 'featured', 13, 27),
(0003, 'Gold/Bangles/12.jpg', 'Gold/Bangles/12.jpg', 1, '1000.00', 'Diamond Carte:15\r\nGold Carte:24', 'featured', 0, 0),
(0004, 'Gold/Bangles/13.jpg', 'Gold/Bangles/13.jpg', 1, '1000.00', 'Diamond Carte:15\r\n', 'featured', 2, 7),
(0005, 'Gold/Bangles/9.jpg', 'Gold/Bangles/9.jpg', 1, '1000.00', 'Diamond Carte:20\r\n\r\n', 'featured', 13, 27),
(0006, 'Gold/EarRings/62.jpg', 'Gold/EarRings/62.jpg', 1, '1000.00', 'Diamond carte:10\r\nGold Carte:24', 'featured', 0, 0),
(0007, 'Gold/EarRings/18.jpg', 'Gold/EarRings/18.jpg', 1, '1000.00', 'Diamond Carte:10\r\n', 'featured', 0, 0),
(0008, 'Gold/EarRings/53.jpg', 'Gold/EarRings/53.jpg', 1, '1000.00', 'Diamond Carte:20\r\nGold Carte:24', 'featured', 1, 5),
(0009, 'Gold/EarRings/79.jpg', 'Gold/EarRings/79.jpg', 1, '1000.00', 'Diamond Carte:25\r\n', 'featured', 1, 1),
(0010, 'Gold/Lady Rings/13.jpg', 'Gold/Lady Rings/13.jpg', 1, '1000.00', 'Diamond Carte:25\r\n', 'featured', 0, 0),
(0011, 'Gold/Lady Rings/14.jpg', 'Gold/Lady Rings/14.jpg', 1, '1000.00', 'Diamond Carte:20', 'soon', 0, 0),
(0015, 'Gold/Lady Rings/15.jpg', 'Gold/Lady Rings/15.jpg', 2, '1000.00', 'Diamond Carte:10\r\ngold Carte:24', 'featured', 0, 0),
(0016, 'Gold/Man Rings/12.jpg', 'Gold/Man Rings/12.jpg', 2, '1000.00', 'Diamond Carte:12\r\nGold Carte:24', 'featured', 0, 0),
(0017, 'Gold/Man Rings/13.jpg', 'Gold/Man Rings/13.jpg', 2, '1000.00', 'Diamond Carte:14\r\nGold Carte:24', 'featured', 0, 0),
(0018, 'Gold/Man Rings/14.jpg', 'Gold/Man Rings/14.jpg', 2, '1000.00', 'Diamond Carte:16\r\nGold Carte:24', 'featured', 0, 0),
(0019, 'Gold/Mangalsutra/16.jpg', 'Gold/Mangalsutra/16.jpg', 2, '1000.00', 'Diamond Carte:18\r\nGold Carte:24', 'featured', 0, 0),
(0020, 'Gold/Mangalsutra/12.jpg', 'Gold/Mangalsutra/12.jpg', 2, '2500.00', 'Diamond Carte:20\r\nGold Carte:24', 'featured', 0, 0),
(0021, 'Gold/Mangalsutra/9.jpg', 'Gold/Mangalsutra/9.jpg', 2, '2500.00', 'Diamond carte:5\r\nGold Carte:24', 'featured', 0, 0),
(0022, 'Gold/Mangalsutra/86.jpg', 'Gold/Mangalsutra/86.jpg', 2, '2500.00', 'Diamond Carte:10\r\nGold Carte:24', 'latest', 0, 0),
(0023, 'Gold/Necklaces/13.jpg', 'Gold/Necklaces/13.jpg', 2, '1000.00', 'Diamond Carte:16\r\nGold Carte:24', 'featured', 0, 0),
(0077, 'Gold/Necklaces/11.jpg', 'Gold/Necklaces/11.jpg', 9, '1000.00', 'Gold Carte:24', 'featured', 0, 0),
(0076, 'Gold/Necklaces/12.jpg', 'Gold/Necklaces/12.jpg', 9, '1000.00', 'Gold Carte:24', 'soon', 0, 0),
(0026, 'Gold/Necklaces/8.jpg', 'Gold/Necklaces/8.jpg', 8, '1000.00', 'Diamond Carte:20', 'latest', 6, 14),
(0027, 'Gold/Necklaces/10.jpg', 'Gold/Necklaces/10.jpg', 8, '1000.00', 'Diamond Carte:10\r\nGold Carte:24', 'featured', 0, 0),
(0028, 'Gold/Necklaces/14.jpg', 'Gold/Necklaces/14.jpg', 8, '1000.00', 'Diamond Carte:12\r\nGold Carte: 24', 'featured', 0, 0),
(0029, 'Gold/Nose Rings/12.jpg', 'Gold/Nose Rings/12.jpg', 8, '1000.00', 'Diamond Carte:14\r\nGold  Carte:24', 'latest', 0, 0),
(0030, 'Gold/Nose Rings/13.jpg', 'Gold/Nose Rings/13.jpg', 8, '1000.00', 'Diamond Carte:18\r\nGold Carte: 24', 'featured', 2, 0),
(0031, 'Gold/Nose Rings/14.jpg', 'Gold/Nose Rings/14.jpg', 8, '2500.00', 'Diamond Carte:20\r\nGold Carte: 24', 'featured', 0, 0),
(0032, 'Gold/Nose Rings/15.jpg', 'Gold/Nose Rings/15.jpg', 8, '2500.00', 'Diamond Carte:20\r\nGold Carte: 24', 'latest', 0, 0),
(0033, 'Diamond/Lady Ring/8.jpg', 'Diamond/Lady Ring/8.jpg', 8, '2500.00', 'Diamond Carte: 10\r\nGold Carte:24', 'featured', 0, 0),
(0034, 'Diamond/Lady Ring/9.jpg', 'Diamond/Lady Ring/9.jpg', 8, '2500.00', 'Diamond Carte:19\r\nGold Carte:24', 'featured', 0, 0),
(0035, 'Diamond/Lady Ring/10.jpg', 'Diamond/Lady Ring/10.jpg', 8, '375.00', 'Diamond Carte:14\r\nGold Carte:24', 'featured', 0, 0),
(0037, 'Diamond/Necklaces/2.jpg', 'Diamond/Necklaces/2.jpg', 3, '1000.00', 'Diamond Carte:15', 'featured', 0, 0),
(0038, 'Diamond/Necklaces/3.jpg', 'Diamond/Necklaces/3.jpg', 3, '1000.00', 'Diamond Carte:12', 'featured', 0, 0),
(0039, 'Diamond/Necklaces/4.jpg', 'Diamond/Necklaces/4.jpg', 3, '1000.00', 'Diamond Carte:14', 'featured', 0, 0),
(0040, 'Diamond/Necklaces/5.jpg', 'Diamond/Necklaces/5.jpg', 3, '1000.00', 'Diamond Carte:13', 'featured', 0, 0),
(0043, 'Diamond/Nose Pin/1.jpg', 'Diamond/Nose Pin/1.jpg', 4, '1000.00', 'Diamond Carte:1\r\nGold Carte:24', 'featured', 0, 0),
(0044, 'Diamond/Nose Pin/2.jpg', 'Diamond/Nose Pin/2.jpg', 4, '2500.00', 'Diamond Carte:2\r\nGold Carte:24', 'featured', 0, 0),
(0045, 'Diamond/Nose Pin/3.jpg', 'Diamond/Nose Pin/3.jpg', 4, '375.00', 'Diamond Carte:3\r\nGold Carte:24', 'featured', 0, 0),
(0046, 'Diamond/Nose Pin/4.jpg', 'Diamond/Nose Pin/4.jpg', 4, '4550.00', 'Diamond carte:4\r\nGold Carte:24', 'featured', 0, 0),
(0047, 'Diamond/Nose Pin/5.jpg', 'Diamond/Nose Pin/5.jpg', 4, '500.00', 'Diamond Carte:5\r\nGold Carte:24', 'featured', 0, 0),
(0048, 'Diamond/Nose Pin/6.jpg', 'Diamond/Nose Pin/6.jpg', 4, '1799.00', 'Diamond Carte:6\r\nGold Carte:24', 'featured', 0, 0),
(0049, 'Diamond/Nose Pin/7.jpg', 'Diamond/Nose Pin/7.jpg', 4, '780.00', 'Diamond Carte:7\r\nGold Carte:24', 'featured', 0, 0),
(0050, 'Diamond/Nose Pin/8.jpg', 'Diamond/Nose Pin/8.jpg', 4, '890.00', 'Diamond Carte:8\r\nGold  Carte:24', 'featured', 0, 0),
(0051, 'Diamond/Nose Pin/9.jpg', 'Diamond/Nose Pin/9.jpg', 4, '900.00', 'Diamond Carte:9\r\nGold Carte:24', 'featured', 0, 0),
(0052, 'Diamond/Nose Pin/10.jpg', 'Diamond/Nose Pin/10.jpg', 4, '1000.00', 'Diamond Carte:10\r\nGold Carte:24', 'featured', 0, 0),
(0053, 'Diamond/Pendant Set/1.jpg', 'Diamond/Pendant Set/1.jpg', 6, '375.00', 'Diamond Carte:25', 'featured', 0, 0),
(0055, 'Diamond/Pendant Set/3.jpg', 'Diamond/Pendant Set/3.jpg', 6, '2500.00', 'Diamond Carte:10', 'featured', 0, 0),
(0056, 'Diamond/Pendant Set/4.jpg', 'Diamond/Pendant Set/4.jpg', 6, '375.00', 'Diamond Carte: 25', 'featured', 0, 0),
(0057, 'Diamond/Pendant Set/5.jpg', 'Diamond/Pendant Set/5.jpg', 6, '2500.00', 'Diamond Carte:15', 'featured', 0, 0),
(0059, 'Diamond/Pendant Set/6.jpg', 'Diamond/Pendant Set/6.jpg', 6, '375.00', 'Diamond Carte:30', 'featured', 0, 0),
(0060, 'Diamond/Pendant Set/7.jpg', 'Diamond/Pendant Set/7.jpg', 6, '2500.00', 'Diamond Carte:15', 'featured', 0, 0),
(0061, 'Diamond/Pendant Set/8.jpg', 'Diamond/Pendant Set/8.jpg', 6, '2500.00', 'Diamond Carte:17', 'featured', 0, 0),
(0062, 'Diamond/Pendant Set/9.jpg', 'Diamond/Pendant Set/9.jpg', 6, '2500.00', 'Diamond Carte:20', 'featured', 0, 0),
(0065, 'Diamond/Pendants/2.jpg', 'Diamond/Pendants/2.jpg', 7, '1799.00', 'Diamond Carte:20', 'featured', 0, 0),
(0066, 'Diamond/Pendants/3.jpg', 'Diamond/Pendants/3.jpg', 7, '780.00', 'Diamond Carte:10\r\n', 'featured', 0, 0),
(0067, 'Diamond/Pendants/4.jpg', 'Diamond/Pendants/4.jpg', 7, '890.00', 'Diamond Carte: 12', 'featured', 0, 0),
(0068, 'Diamond/Pendants/5.jpg', 'Diamond/Pendants/5.jpg', 7, '900.00', 'Diamond Carte:15', 'featured', 0, 0),
(0069, 'Diamond/Pendants/6.jpg', 'Diamond/Pendants/6.jpg', 7, '1000.00', 'Diamond Carte:20\r\n', 'featured', 0, 0),
(0070, 'Diamond/Pendants/9.jpg', 'Diamond/Pendants/9.jpg', 7, '1000.00', 'Diamond Carte:15\r\n', 'featured', 8, 0),
(0071, 'Diamond/Pendants/10.jpg', 'Diamond/Pendants/10.jpg', 7, '2500.00', 'Diamond Carte:25', 'featured', 0, 0),
(0073, 'Diamond/Pendants/7.jpg', 'Diamond/Pendants/7.jpg', 7, '375.00', 'Diamond Carte:15\r\n', 'featured', 0, 0),
(0074, 'Diamond/Pendants/8.jpg', 'Diamond/Pendants/8.jpg', 7, '375.00', 'Diamond Carte:15', 'featured', 0, 0);


-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

DROP TABLE IF EXISTS `main_menu`;
CREATE TABLE IF NOT EXISTS `main_menu` (
  `mmenu_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `mmenu_name` varchar(200) NOT NULL,
  `mmenu_link` varchar(200) NOT NULL,
  PRIMARY KEY (`mmenu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`mmenu_id`, `mmenu_name`, `mmenu_link`) VALUES
(0001, 'About Us', 'about.php'),
(0002, 'Contact Us', 'contact.php'),
(0003, 'Gold Items', 'javascript:void(0)'),
(0004, 'Silver Items', 'javascript:void(0)'),
(0005, 'Diamond Items', 'javascript:void(0)'),
(0006, 'Featured Items', 'featured.php'),
(0007, 'Latest Items', 'latest.php'),
(0008, 'Top', 'javascript:void(0)');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

DROP TABLE IF EXISTS `sub_menu`;
CREATE TABLE IF NOT EXISTS `sub_menu` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `mmenu_id` int(4) NOT NULL DEFAULT '375',
  `smenu_name` varchar(200) NOT NULL,
  `smenu_link` varchar(200) NOT NULL DEFAULT 'viewproduct.php',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `mmenu_id`, `smenu_name`, `smenu_link`) VALUES
(0001, 5, 'Bangles', 'viewproduct.php'),
(0002, 5, 'EarRings', 'viewproduct.php'),
(0003, 5, 'Necklaces', 'viewproduct.php'),
(0004, 5, 'Nose Pin', 'viewproduct.php'),
(0005, 5, 'Pendant Set', 'viewproduct.php'),
(0006, 5, 'Pendants', 'viewproduct.php'),
(0007, 5, 'LadyRings', 'viewproduct.php'),
(0008, 3, 'Bangles', 'viewproduct.php'),
(0009, 3, 'Ear Rings', 'viewproduct.php'),
(0010, 3, 'Mang Tika', 'viewproduct.php'),
(0011, 3, 'Mangalsutra', 'viewproduct.php'),
(0012, 3, 'Necklaces', 'viewproduct.php'),
(0013, 3, 'Nose Rings', 'viewproduct.php'),
(0014, 3, 'Pendant Set', 'viewproduct.php'),
(0015, 3, 'Pendants', 'viewproduct.php'),
(0016, 4, 'Anklets', 'viewproduct.php'),
(0017, 4, 'Armlets', 'viewproduct.php'),
(0018, 4, 'Bracelet', 'viewproduct.php'),
(0019, 4, 'Brooches', 'viewproduct.php'),
(0020, 4, 'Hair Pin', 'viewproduct.php'),
(0021, 4, 'EarRings', 'viewproduct.php'),
(0022, 4, 'Cuffilinks', 'viewproduct.php'),
(0023, 4, 'Chain', 'viewproduct.php'),
(0024, 4, 'ManRings', 'viewproduct.php'),
(0025, 4, 'Pendants', 'viewproduct.php'),
(0026, 4, 'Pendants Sets', 'viewproduct.php'),
(0027, 4, 'Lady Rings', 'viewproduct.php'),
(0028, 3, 'LadyRings', 'viewproduct.php'),
(0029, 3, 'ManRings', 'viewproduct.php'),
(0030, 4, 'ToeRings', 'viewproduct.php'),
(0031, 8, 'Views', 'topviewed.php'),
(0032, 8, 'Sellings', 'topsell.php');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `tel` int(8) NOT NULL,
  `ac_type` varchar(30) DEFAULT 'user',
  `user_status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `username`, `password`, `email`, `address`, `tel`, `ac_type`, `user_status`) VALUES
(0001, 'BB Jewellery', 'Online Store', 'Admin', '12345', 'admin@bbjewels.com', 'Montagne Blanche', 54954491, 'Administrator', 0),
(0002, 'Nadeem', 'Goolamhossen', 'Nadeem', '12345', 'nadeem05786@yahoo.com', 'Montagne Blanche', 54954491, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webcontent`
--

DROP TABLE IF EXISTS `webcontent`;
CREATE TABLE IF NOT EXISTS `webcontent` (
  `content_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `webpage` varchar(200) NOT NULL,
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `webpage` (`webpage`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `webcontent`
--

INSERT INTO `webcontent` (`content_id`, `content`, `webpage`) VALUES
(0001, 'BB Jewellery Online Store has more than 35 years of experience in dealing with jewelleries susch as Gold, Silver and Diamond.', 'about');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
