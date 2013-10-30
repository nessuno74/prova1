-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: Ago 03, 2013 alle 14:18
-- Versione del server: 5.5.32
-- Versione PHP: 5.3.10-1ubuntu3.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


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

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(25555) NOT NULL,
  `id_user` int(111) NOT NULL,
  `policy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dump dei dati per la tabella `file`
--

INSERT INTO `file` (`id`, `file_name`, `file_path`, `id_user`, `policy`) VALUES
(14, '600_b042_multilanguage.exe', 'file/', 1, 1),
(15, 'E3SP2ITA.EXE', 'file/', 1, 2),
(16, 'eav_nt32_ita.msi', 'file/', 1, 3),
(17, 'JSTART.exe', 'file/', 1, 1),
(18, 'recoverytools.iso', 'file/', 1, 3),
(19, 'ZBRUSH 4 R4 Keygenonly.rar', 'file/', 1, 2),
(20, 'CD.ico', 'file/', 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`) VALUES
(1, 'Home', 'home.php'),
(2, 'Personale', 'personale.php'),
(3, 'Aziendale', 'aziendale.php'),
(4, 'Pubblico', 'pubblico.php'),
(5, 'Logout', 'logout.php'),
(6, 'Novita', 'novita.php');

-- --------------------------------------------------------

--
-- Struttura della tabella `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `role`
--

INSERT INTO `role` (`id`, `nome`) VALUES
(1, 'personale'),
(2, 'aziendale'),
(3, 'globale');

-- --------------------------------------------------------

--
-- Struttura della tabella `url`
--

CREATE TABLE IF NOT EXISTS `url` (
  `id` int(11) NOT NULL,
  `url_real` varchar(2555) NOT NULL,
  `url_short` varchar(2555) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `url`
--

INSERT INTO `url` (`id`, `url_real`, `url_short`) VALUES
(13688, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '3zyg'),
(15943, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '4d5v'),
(21741, 'http://127.0.0.1/files/file/JSTART.exe', '73b5'),
(23575, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7f35'),
(23722, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7fmi'),
(24862, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7m62'),
(25697, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7rrv'),
(26456, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', '7x9m'),
(34066, 'http://127.0.0.1/files/file/JSTART.exe', 'az5q'),
(36013, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'bbfb'),
(41041, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'dw29'),
(41847, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'dyjb'),
(43975, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'eb8h'),
(44484, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'efvo'),
(53272, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'hoj2'),
(54136, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'huc2'),
(57363, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'idij'),
(58326, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'ijmm'),
(61586, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'ksl2'),
(62150, 'http://127.0.0.1/files/file/JSTART.exe', 'kxh0'),
(62863, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'kznf'),
(64557, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'lb23'),
(68607, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'lzzb'),
(69836, 'http://127.0.0.1/files/file/JSTART.exe', 'm6te'),
(70367, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'o17z'),
(72482, 'http://127.0.0.1/files/file/JSTART.exe', 'odwi'),
(73253, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'ojev'),
(79136, 'http://127.0.0.1/files/file/JSTART.exe', 'pk42'),
(82303, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'rsxf'),
(86670, 'http://127.0.0.1/files/file/JSTART.exe', 'sing'),
(90611, 'http://127.0.0.1/files/file/JSTART.exe', 'uwz9'),
(96905, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'vyxh'),
(97562, 'http://127.0.0.1/files/file/600_b042_multilanguage.exe', 'w3yi');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `role` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `role`) VALUES
(1, 'nessuno74', 'Attila..74', 777),
(2, 'admin', 'bellerofonte.7', 444);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
