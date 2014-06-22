-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2014 at 02:16 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exiastore`
--
CREATE DATABASE IF NOT EXISTS `exiastore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `exiastore`;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `ID_Bill` int(11) NOT NULL,
  `Customer_Bill` int(11) DEFAULT NULL,
  `CommandDate_Bill` date DEFAULT NULL,
  `PurchaseDate_Bill` date DEFAULT NULL,
  `DeliveryPostalCode_Bill` char(5) DEFAULT NULL,
  `DeliveryAddress_Bill` char(32) DEFAULT NULL,
  `DeliveryAddress2_Bill` char(32) DEFAULT NULL,
  `DeliveryCity_Bill` char(24) DEFAULT NULL,
  PRIMARY KEY (`ID_Bill`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`ID_Bill`, `Customer_Bill`, `CommandDate_Bill`, `PurchaseDate_Bill`, `DeliveryPostalCode_Bill`, `DeliveryAddress_Bill`, `DeliveryAddress2_Bill`, `DeliveryCity_Bill`) VALUES
(1, 1, '2013-01-15', '2013-01-15', '40300', '740 route du Griffon', 'Le Griffon', 'Saint-Lon-Les-Mines'),
(2, 2, '2013-08-30', '2013-08-31', '47180', 'Desportes', '', 'Saint-Martin-Petit'),
(3, 4, '2013-11-01', '2013-11-01', '33420', '315 chemin de la monji', '', 'Génissac'),
(4, 3, '2013-12-30', '2013-12-30', '47300', '22 Avenue du groupe franc 13', '', 'Bias'),
(5, 1, '2014-05-12', '2014-05-13', '40300', '740 route du Griffon', 'Le Griffon', 'Saint-Lon-Les-Mines'),
(6, 3, '2014-06-01', '2014-06-01', '47300', '22 Avenue du groupe franc 13', '', 'Bias'),
(7, 2, '2014-06-02', '2014-06-03', '47180', 'Desportes', '', 'Saint-Martin-Petit'),
(8, 1, '2014-06-19', '2014-06-19', '40300', '740 route du Griffon', 'Le Griffon', 'Saint-Lon-Les-Mines');

-- --------------------------------------------------------

--
-- Table structure for table `billstate`
--

CREATE TABLE IF NOT EXISTS `billstate` (
  `ID_BillState` int(11) NOT NULL,
  `Name_BillState` char(16) DEFAULT NULL,
  PRIMARY KEY (`ID_BillState`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billstate`
--

INSERT INTO `billstate` (`ID_BillState`, `Name_BillState`) VALUES
(1, 'Saved'),
(2, 'In preparation'),
(3, 'Shipped'),
(4, 'Delivered'),
(5, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `ID_Category` int(11) NOT NULL,
  `Name_Category` char(16) DEFAULT NULL,
  `Parent_Category` char(16) DEFAULT NULL,
  PRIMARY KEY (`ID_Category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID_Category`, `Name_Category`, `Parent_Category`) VALUES
(1, 'DVD', ''),
(2, 'CD', ''),
(3, 'Pop', ''),
(4, 'Rock', ''),
(5, 'Electro', ''),
(6, 'Rap', ''),
(7, 'Hip hop', ''),
(8, 'RnB', ''),
(9, 'Saoul', ''),
(10, 'Jazz', ''),
(11, 'Comic', ''),
(12, 'Tragic', ''),
(13, 'Adventure', ''),
(14, 'Fiction', ''),
(15, 'Thriller', ''),
(16, 'Horror', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `ID_Cust` int(11) NOT NULL,
  `Name_Cust` char(32) DEFAULT NULL,
  `DOB_Cust` date DEFAULT NULL,
  `Email_Cust` char(64) DEFAULT NULL,
  `Mobile_Cust` char(10) DEFAULT NULL,
  `PostalCode_Cust` char(5) DEFAULT NULL,
  `Address_Cust` char(32) DEFAULT NULL,
  `Address2_Cust` char(32) DEFAULT NULL,
  `City_Cust` char(24) DEFAULT NULL,
  `DeliveryPostalCode_Cust` char(5) DEFAULT NULL,
  `DeliveryAddress_Cust` char(32) DEFAULT NULL,
  `DeliveryAddress2_Cust` char(32) DEFAULT NULL,
  `DeliveryCity_Cust` char(24) DEFAULT NULL,
  PRIMARY KEY (`ID_Cust`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID_Cust`, `Name_Cust`, `DOB_Cust`, `Email_Cust`, `Mobile_Cust`, `PostalCode_Cust`, `Address_Cust`, `Address2_Cust`, `City_Cust`, `DeliveryPostalCode_Cust`, `DeliveryAddress_Cust`, `DeliveryAddress2_Cust`, `DeliveryCity_Cust`) VALUES
(1, 'Jean Larrivière', '1991-12-25', 'jean.larriviere@hotmail.fr', '0671753480', '40300', '740 route du Griffon', 'Le Griffon', 'Saint-Lon-Les-Mines', '40300', '740 route du Griffon', 'Le Griffon', 'Saint-Lon-Les-Mines'),
(2, 'Jean-Baptiste Henaff', '1995-08-12', 'jeanbaptiste.henaff@viacesi.fr', '0789330871', '47180', 'Desportes', '', 'Saint-Martin-Petit', '47180', 'Desportes', '', 'Saint-Martin-Petit'),
(3, 'Axel Sercan', '1992-11-27', 'axel.sercan@viacesi.fr', '0615062274', '47300', '22 Avenue du groupe franc 13', '', 'Bias', '47300', '22 Avenue du groupe franc 13', '', 'Bias'),
(4, 'Vladislav Isaak', '1993-07-18', 'vladislav.isaak@viacesi.fr', '0000000000', '33420', '315 chemin de la monji', '', 'Génissac', '33420', '315 chemin de la monji', '', 'Génissac');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `ID_Inventory` int(11) NOT NULL,
  `Name_Inventory` char(32) DEFAULT NULL,
  `DOB_Inventory` date DEFAULT NULL,
  `Email_Inventory` char(64) DEFAULT NULL,
  `Mobile_Inventory` char(10) DEFAULT NULL,
  `PostalCode_Inventory` char(5) DEFAULT NULL,
  `Address_Inventory` char(32) DEFAULT NULL,
  `Address2_Inventory` char(32) DEFAULT NULL,
  `City_Inventory` char(24) DEFAULT NULL,
  PRIMARY KEY (`ID_Inventory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID_Inventory`, `Name_Inventory`, `DOB_Inventory`, `Email_Inventory`, `Mobile_Inventory`, `PostalCode_Inventory`, `Address_Inventory`, `Address2_Inventory`, `City_Inventory`) VALUES
(1, 'Alexandre Sakwa', '1993-05-05', 'alexandre.sakwa@viacesi.fr', '0786772423', '33290', '60 route de maurian', 'B1 21', 'Blanquefort'),
(2, 'Sylvain Mainguenaud', '1992-10-19', 'sylvain.mainguenaud@viacesi.fr', '0652631856', '33290', '60 route de maurian', 'E 50', 'Blanquefort'),
(3, 'Andréa Biatch', '1993-12-05', 'andrea.biatcj@capote.fr', '0669696969', '75000', 'Trottoir', '', 'Paris'),
(4, 'José Nidalee', '1995-02-05', 'jose.nidalee@lol.com', '0699999999', '54468', 'Route de la League', '', 'Legend');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `ID_Item` int(11) NOT NULL,
  `ID_Category` char(16) DEFAULT NULL,
  `Name_Item` char(24) DEFAULT NULL,
  `Picture_Item` char(128) DEFAULT NULL,
  `PriceDF_Item` decimal(18,2) DEFAULT NULL,
  `Description_Item` char(255) DEFAULT NULL,
  `CreationDate_Item` date DEFAULT NULL,
  `ModificationDate_Item` date DEFAULT NULL,
  `ID_State` int(11) DEFAULT NULL,
  `ActualStock_Item` int(11) DEFAULT NULL,
  `AlertStock_Item` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ID_Item`, `ID_Category`, `Name_Item`, `Picture_Item`, `PriceDF_Item`, `Description_Item`, `CreationDate_Item`, `ModificationDate_Item`, `ID_State`, `ActualStock_Item`, `AlertStock_Item`) VALUES
(1, '1', 'Free Willy', 'Free_willy.jpg', '25.00', 'Adventure film, a young man wants to get an orca free!', '1998-05-02', '0000-00-00', 1, 500, 50),
(2, '1', 'Titanic', 'Titanic.jpg', '32.00', 'Adventure film, travel across is possible but dangerous for Jack and Rose, the new lovers.', '1993-08-06', '0000-00-00', 1, 500, 50),
(3, '1', 'Dikkenek', 'Dikkenek.jpg', '20.00', 'Comic film, the sexual identity research seen by the Belguian.', '2001-12-01', '0000-00-00', 3, 600, 50),
(4, '2', 'Mister mystere', 'Mister.jpg', '15.00', 'M, a rather joyful album.', '2005-09-15', '0000-00-00', 2, 1500, 50),
(5, '2', 'ACDC', 'acdc.jpg', '12.00', 'Rock, the 80''s are here =)', '1980-09-01', '0000-00-00', 3, 200, 75),
(6, '1', 'Les voisines', 'Les_voisines.jpg', '17.00', 'A little French variety?', '2007-03-15', '0000-00-00', 1, 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `itemscategories`
--

CREATE TABLE IF NOT EXISTS `itemscategories` (
  `ID_ItemCategories` int(11) NOT NULL,
  `ID_Item` int(11) DEFAULT NULL,
  `ID_Category` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_ItemCategories`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemscategories`
--

INSERT INTO `itemscategories` (`ID_ItemCategories`, `ID_Item`, `ID_Category`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 1, 12),
(8, 1, 13),
(9, 2, 12),
(10, 2, 13),
(11, 3, 11),
(12, 4, 3),
(13, 5, 4),
(14, 5, 8),
(15, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `ID_State` int(11) NOT NULL,
  `Name_State` char(16) DEFAULT NULL,
  PRIMARY KEY (`ID_State`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`ID_State`, `Name_State`) VALUES
(1, 'Sold out'),
(2, 'In Stock'),
(3, 'threshold');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE IF NOT EXISTS `taxes` (
  `ID_Taxes` int(11) NOT NULL,
  `Amout_Taxes` float DEFAULT NULL,
  PRIMARY KEY (`ID_Taxes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`ID_Taxes`, `Amout_Taxes`) VALUES
(1, 1.2),
(2, 1.05),
(3, 1.5);

-- --------------------------------------------------------

--
-- Table structure for table `thelines`
--

CREATE TABLE IF NOT EXISTS `thelines` (
  `ID_Line` int(11) NOT NULL,
  `ID_Bill` int(11) DEFAULT NULL,
  `ID_Item` int(11) DEFAULT NULL,
  `Quantity_Line` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Line`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thelines`
--

INSERT INTO `thelines` (`ID_Line`, `ID_Bill`, `ID_Item`, `Quantity_Line`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 7),
(3, 2, 1, 6),
(4, 3, 1, 5),
(5, 3, 2, 2),
(6, 3, 3, 8),
(7, 4, 1, 2),
(8, 4, 4, 8),
(9, 5, 1, 2),
(10, 5, 5, 9),
(11, 6, 1, 5),
(12, 6, 2, 8),
(13, 6, 3, 2),
(14, 6, 4, 8),
(15, 6, 5, 2),
(16, 6, 6, 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
