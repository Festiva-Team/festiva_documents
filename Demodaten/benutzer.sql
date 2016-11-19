-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Nov 2016 um 16:41
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
-- Tabellenstruktur für Tabelle `benutzer`
--

CREATE TABLE `benutzer` (
  `id` int(3) NOT NULL,
  `vorname` varchar(50) DEFAULT NULL,
  `nachname` varchar(50) DEFAULT NULL,
  `strasse` varchar(50) DEFAULT NULL,
  `hausnummer` varchar(4) DEFAULT NULL,
  `plz` int(5) DEFAULT NULL,
  `ort` varchar(40) DEFAULT NULL,
  `emailadresse` varchar(40) NOT NULL,
  `passworthash` varchar(40) NOT NULL,
  `istgesperrt` tinyint(1) NOT NULL DEFAULT '0',
  `istgelöscht` tinyint(1) NOT NULL DEFAULT '0',
  `iban` varchar(34) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `einzugsermächtigungerteilt` tinyint(1) NOT NULL DEFAULT '0',
  `passwortzaehler` int(1) NOT NULL DEFAULT '0',
  `gruppen_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `benutzer`
--

INSERT INTO `benutzer` (`id`, `vorname`, `nachname`, `strasse`, `hausnummer`, `plz`, `ort`, `emailadresse`, `passworthash`, `istgesperrt`, `istgelöscht`, `iban`, `bic`, `einzugsermächtigungerteilt`, `passwortzaehler`, `gruppen_id`) VALUES
(1, 'Alina', 'Fankhänel', 'Auf der Höhe', '12', 33129, 'Delbrück', 'alina.fankhaenel@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, 'DE12345678999999999999', '', 1, 0, 2),
(3, 'Max', 'Mustermann', 'Postweg', '12', 33129, 'Gütersloh', 'kunde1@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, 'DE12344222233455667678', '', 1, 0, 2),
(5, 'Paula', 'Strunz', 'Kastanienweg', '100', 33333, 'Gütersloh', 'kunde2@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, '', '', 1, 0, 2),
(8, 'null', 'null', 'null', 'null', 0, 'null', 'admin@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, 'null', 'null', 0, 0, 1),
(9, 'Olga', 'Ostermann', 'Staufenbergstraße', '9', 33333, 'Gütersloh', 'kunde3@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, 'DE12345678999999999999', 'WELXDI789AH', 1, 0, 2),
(35, 'Ulf', 'Meier', 'Poststraße', '1a', 33129, 'Delbrück', 'kunde4@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, '', '', 0, 0, 2),
(36, 'Olaf', 'Müller', 'Tosterweg', '77', 33098, 'Paderborn', 'kunde5@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, 'DE78902735202435648625', 'WELA86754DX', 1, 0, 2),
(37, 'Susi', 'Saubermann', 'Rottenweg', '23', 33102, 'Paderborn', 'kunde6@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, '', '', 0, 0, 2),
(38, 'Ines', 'Wunder', 'Umliegestraße', '4', 33129, 'Delbrück', 'kunde7@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, '', '', 0, 0, 2),
(39, 'Achim', 'Köppe', 'Detmolder Weg', '21', 33102, 'Paderborn', 'kunde8@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, '', '', 0, 0, 2),
(40, 'Wolfgang', 'Umlauf', 'Tierstraße', '12', 33333, 'Gütersloh', 'kunde9@festiva.de', '3a1e91bd62cc2a64f1631f291bbfa2fe1840e699', 0, 0, '', '', 0, 0, 2);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `benutzer`
--
ALTER TABLE `benutzer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gruppen_id` (`gruppen_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `benutzer`
--
ALTER TABLE `benutzer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `benutzer`
--
ALTER TABLE `benutzer`
  ADD CONSTRAINT `benutzer_ibfk_1` FOREIGN KEY (`gruppen_id`) REFERENCES `gruppen` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
