-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Nov 2016 um 14:10
-- Server-Version: 10.1.16-MariaDB
-- PHP-Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `festiva`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kategorien`
--

CREATE TABLE `kategorien` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `beschreibung` mediumtext NOT NULL,
  `istgelöscht` tinyint(1) NOT NULL DEFAULT '0',
  `bildpfad` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `kategorien`
--

INSERT INTO `kategorien` (`id`, `name`, `beschreibung`, `istgelöscht`, `bildpfad`) VALUES
(1, 'Rock', 'Rock Festivals', 0, 'Kategorie_1_1479559913326'),
(2, 'Schlager', 'Schlager Festivals', 0, 'Kategorie_2_1479559926884'),
(3, 'Metal', 'Metal Festivals', 0, 'Kategorie_3_1479559938829'),
(4, 'Electro', 'Electro Festivals\r\n', 0, 'Kategorie_4_1479559949245'),
(5, 'Country', 'Country Festivals', 0, 'Kategorie_5_1479559975429'),
(6, 'Hip Hop', 'Hip Hop Festivals', 0, 'Kategorie_6_1479559995899'),
(7, 'Reggae', 'Reggae Festivals', 0, 'Kategorie_7_1479560012787');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `kategorien`
--
ALTER TABLE `kategorien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `kategorien`
--
ALTER TABLE `kategorien`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
