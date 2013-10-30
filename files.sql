-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: 07 ago, 2013 at 07:17 AM
-- Versione MySQL: 5.5.9
-- Versione PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `files`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `file`
--

CREATE TABLE `file` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(25555) NOT NULL,
  `file_ext` varchar(255) NOT NULL,
  `id_user` int(111) NOT NULL,
  `policy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dump dei dati per la tabella `file`
--


-- --------------------------------------------------------

--
-- Struttura della tabella `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `menu`
--

INSERT INTO `menu` VALUES(1, 'Home', 'home.php');
INSERT INTO `menu` VALUES(2, 'Personale', 'personale.php');
INSERT INTO `menu` VALUES(3, 'Aziendale', 'aziendale.php');
INSERT INTO `menu` VALUES(4, 'Pubblico', 'pubblico.php');
INSERT INTO `menu` VALUES(5, 'Logout', 'logout.php');
INSERT INTO `menu` VALUES(6, 'Novita', 'novita.php');

-- --------------------------------------------------------

--
-- Struttura della tabella `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `role`
--

INSERT INTO `role` VALUES(1, 'personale');
INSERT INTO `role` VALUES(2, 'aziendale');
INSERT INTO `role` VALUES(3, 'globale');

-- --------------------------------------------------------

--
-- Struttura della tabella `url`
--

CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `url_real` varchar(2555) NOT NULL,
  `url_short` varchar(2555) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `url`
--

INSERT INTO `url` VALUES(13688, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '3zyg');
INSERT INTO `url` VALUES(15943, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '4d5v');
INSERT INTO `url` VALUES(21741, 'http://127.0.0.1/files/file/JSTART.exe', '73b5');
INSERT INTO `url` VALUES(23575, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7f35');
INSERT INTO `url` VALUES(23722, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7fmi');
INSERT INTO `url` VALUES(24862, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7m62');
INSERT INTO `url` VALUES(25697, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7rrv');
INSERT INTO `url` VALUES(26456, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7x9m');
INSERT INTO `url` VALUES(34066, 'http://127.0.0.1/files/file/JSTART.exe', 'az5q');
INSERT INTO `url` VALUES(36013, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'bbfb');
INSERT INTO `url` VALUES(41041, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'dw29');
INSERT INTO `url` VALUES(41847, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'dyjb');
INSERT INTO `url` VALUES(43975, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'eb8h');
INSERT INTO `url` VALUES(44484, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'efvo');
INSERT INTO `url` VALUES(53272, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'hoj2');
INSERT INTO `url` VALUES(54136, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'huc2');
INSERT INTO `url` VALUES(57363, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'idij');
INSERT INTO `url` VALUES(58326, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'ijmm');
INSERT INTO `url` VALUES(61586, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'ksl2');
INSERT INTO `url` VALUES(62150, 'http://127.0.0.1/files/file/JSTART.exe', 'kxh0');
INSERT INTO `url` VALUES(62863, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'kznf');
INSERT INTO `url` VALUES(64557, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'lb23');
INSERT INTO `url` VALUES(68607, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'lzzb');
INSERT INTO `url` VALUES(69836, 'http://127.0.0.1/files/file/JSTART.exe', 'm6te');
INSERT INTO `url` VALUES(70367, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'o17z');
INSERT INTO `url` VALUES(72482, 'http://127.0.0.1/files/file/JSTART.exe', 'odwi');
INSERT INTO `url` VALUES(73253, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'ojev');
INSERT INTO `url` VALUES(79136, 'http://127.0.0.1/files/file/JSTART.exe', 'pk42');
INSERT INTO `url` VALUES(82303, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'rsxf');
INSERT INTO `url` VALUES(86670, 'http://127.0.0.1/files/file/JSTART.exe', 'sing');
INSERT INTO `url` VALUES(90611, 'http://127.0.0.1/files/file/JSTART.exe', 'uwz9');
INSERT INTO `url` VALUES(96905, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'vyxh');
INSERT INTO `url` VALUES(97562, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'w3yi');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `privilegi` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` VALUES(1, 'nessuno74', 'Attila..74', 777);
INSERT INTO `users` VALUES(2, 'admin', 'bellerofonte.7', 444);
