-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Nov 2016 um 11:28
-- Server-Version: 10.1.16-MariaDB
-- PHP-Version: 7.0.9

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
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE `artikel` (
  `id` int(3) NOT NULL,
  `beschreibung` varchar(600) NOT NULL,
  `details` varchar(6000) NOT NULL DEFAULT '',
  `preis` decimal(5,2) NOT NULL,
  `istgelöscht` tinyint(1) NOT NULL DEFAULT '0',
  `bildpfad` varchar(40) NOT NULL DEFAULT '',
  `festivals_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`id`, `beschreibung`, `details`, `preis`, `istgelöscht`, `bildpfad`, `festivals_id`) VALUES
(6, 'Post-Versand', '', '6.00', 0, '', NULL),
(23, 'Kombiticket 2017 Preisstufe 2 ', 'Inkl. 10 EUR Müllpfand und MwSt., zzgl. Versandkosten', '179.00', 0, '', 11),
(24, 'Resort Ruf der Eule 2017', 'Inkl. Kombiticket und Resortticket für 1 Person\r\nInkl. Mwst., zzgl. Versandkosten', '289.00', 0, '', 11),
(25, 'Regencape (Einheitsgröße)', 'Produktmaße:\r\nBreite: 150 cm\r\nHöhe: 110 cm\r\n\r\n- Lässt sich klein zusammengefaltet im integrierten Täschchen unterbringen und ist immer griffbereit im Koffer, Rucksack usw.\r\n- Durch verstellbare Klettbandbefestigung unter dem Kinn sitzt die Kapuze auch bei Wind und Wetter sicher.\r\n- Dank der praktischen Tasche auf der Vorderseite des Ponchos sind Schlüssel, Mobiltelefon usw. schnell griffbereit.', '9.99', 0, 'Artikel_25_1479495464348', NULL),
(26, 'JUICY BEATS 22 | FANTICKET KOMBITICKET FR/SA', 'Inkl. 7% MWST, zzgl. Versandkosten\r\nInkl. Systemgebühr (4,40 EUR) ', '67.40', 0, '', 12),
(27, 'JUICY BEATS 22 | CAMPING TICKET', 'Das Juicy Beats Camping Ticket ist gültig für zwei Personen und ein Zelt!\r\n\r\nDer Ticketpreis beinhaltet 10 EUR Müllpfand.\r\n\r\nInkl. 19% MWST, zzgl. Versandkosten', '38.00', 0, '', 12),
(28, 'JUICY BEATS 22 | PARKPLAKETTE', 'Die Parkplakette ist ausschließlich in Kombination mit einem Juicy Beats Campingticket gültig! Das Campingticket/ Bändchen muss bei der Einfahrt vorgezeigt werden!\r\n\r\nInkl. 19% MWST, zzgl. Versandkosten', '8.00', 0, '', 12),
(29, 'ROCK AM RING FESTIVAL-TICKET GENERAL CAMPING', '3-Tage-Festival-Hardticket inkl. Parken und Campen sowie Vorverkaufsgebühr und 10 EUR Müllpfand. \r\n\r\nInkl. Mehrwertsteuer', '185.00', 0, '', 13),
(30, 'ROCK AM RING FESTIVAL-TICKET ROCK´N´ROLL CAMPING', '3-Tage-Festival-Hardticket inkl. Campen sowie Vorverkaufsgebühr und 10 EUR Müllpfand, inkl. Parken ab dem Erwerb von zwei Rock´n´Roll-Camping-Tickets. Rock´n´Roll Camping direkt am Festivalgelände (Einlass Süd) inkl. Anschlussmöglichkeit an Stromverteiler im Umkreis von ca. 50m. \r\n\r\nInkl. Mehrwertsteuer', '235.00', 0, '', 13),
(31, 'ROCK AM RING CARAVAN PARKING WEST', 'Die Caravan Plakette berechtigt zum Campen mit einem Wohnwagen oder einem Wohnmobil oder einem PKW-Bus (Camper) oder einem Faltanhänger auf einem der Caravan-Campingplätze inkl. Anschlussmöglichkeit an Stromverteiler im Umkreis von ca. 50m. In dem Fahrzeug oder Wohnanhänger dürfen maximal nur so viele Personen übernachten, wie baulich vorgesehene Schlafplätze vorhanden sind. Zusätzlich und hierfür unabhängig wird pro Besucher 1 ROCK AM RING Festival-Ticket benötigt.', '85.00', 0, '', 13),
(32, 'ROCK AM RING CARAVAN PARKING NORTH', 'Die Caravan Plakette berechtigt zum Campen mit einem Wohnwagen oder einem Wohnmobil oder einem PKW-Bus (Camper) oder einem Faltanhänger auf einem der Caravan-Campingplätze inkl. Anschlussmöglichkeit an Stromverteiler im Umkreis von ca. 50m. In dem Fahrzeug oder Wohnanhänger dürfen maximal nur so viele Personen übernachten, wie baulich vorgesehene Schlafplätze vorhanden sind. Zusätzlich und hierfür unabhängig wird pro Besucher 1 ROCK AM RING Festival-Ticket benötigt.', '65.00', 0, '', 13),
(33, 'ROCK AM RING FRÜHANREISE-TICKET', 'Dieses Ticket gilt für 1 Person und berechtigt den Inhaber bereits ab Mittwoch, 31.05.2017, 12:00 Uhr zur Nutzung der Parkflächen und ab 14:00 Uhr zur Nutzung der Campingflächen von Rock am Ring 2017. Nur gültig in Verbindung mit einem Rock am Ring 2017 Festivalticket. ', '20.00', 0, '', 13),
(34, 'BECK´S 24X DOSEN 0,5L + PFAND', 'Sichert euch jetzt schon euer gekühltes Beck´s und bestellt euren Beck´s Vorrat - zum Sonderpreis von ? 24.- pro Tray (24 Dosen) zzgl. Pfand.\r\n\r\n30,00 EUR \r\n(Preis inkl. 6 ? Pfand und Mehrwertsteuer)', '30.00', 0, 'Artikel_34_1479487559559', NULL),
(35, 'ROCK IM PARK FESTIVAL-TICKET GENERAL CAMPING', '3-Tage-Festival-Hardticket inkl. Parken und Campen sowie Vorverkaufsgebühr und 10 EUR Müllpfand. \r\n\r\nInkl. Mehrwertsteuer', '185.00', 0, '', 14),
(36, 'ROCK IM PARK FESTIVAL-TICKET ZEPPELIN STAGE CAMPING', '3-Tage-Festival-Hardticket inkl. Parken und Campen sowie Vorverkaufsgebühr und 10 EUR Müllpfand. Zeppelin Stage Camping in unmittelbarer Nähe zur Hauptbühne. Duschen und Wassertoiletten inbegriffen.\r\n\r\nInkl. Mehrwertsteuer', '315.00', 0, '', 14),
(37, 'ROCK IM PARK CARAVAN PARKING WOHNMOBIL', 'Die Caravan Parking Plakette Wohnmobil berechtigt zum Campen mit einem Wohnmobil auf einem der Wohnmobil-Stellplätze inkl. der Anschlussmöglichkeit an einem Stromverteiler im Umkreis von ca. 50m. Pro Fahrzeug (inkl. 2 Personen) wird 1 Caravan Plakette benötigt, pro Besucher zudem 1 ROCK IM PARK Festival Ticket. Pro Stellplatz darf zusätzlich 1 kleines Zelt direkt neben das Fahrzeug gestellt oder ein Vorzelt installiert werden.', '120.00', 0, '', 14),
(38, 'ROCK IM PARK CARAVAN PARKING WOHNWAGEN', 'Die Caravan Parking Plakette Wohnmobil berechtigt zum Campen mit einem Wohnwagen auf einem der Wohnwagen-Stellplätze inkl. der Anschlussmöglichkeit an einem Stromverteiler im Umkreis von ca. 50m. Pro Fahrzeug (inkl. 2 Personen) wird 1 Caravan Plakette benötigt, pro Besucher zudem 1 ROCK IM PARK Festival Ticket. Pro Stellplatz darf zusätzlich 1 kleines Zelt direkt neben das Fahrzeug gestellt oder ein Vorzelt installiert werden.', '120.00', 0, '', 14),
(39, '3-Tages-Ticket (Normalpreis) 2017 ', 'Dieses Ticket ermächtigt zum Eintritt an allen drei Veranstaltungstagen.\r\n\r\nInkl. 7% MWST und zzgl. Versand', '66.66', 0, '', 15),
(40, '3-Tages-Ticket (Unterstützer) 2017 + Backstageführung', 'Für Leute die uns besonders supporten wollen. Das Ticket ermächtigt zum Eintritt an allen drei Veranstaltungstagen. \r\n\r\n+ Backstageführung inklusive einem Getränk & einem Snack (in Frenzy Edition)\r\n\r\nInkl. 7% MWST und zzgl. Versand', '84.90', 0, '', 15),
(41, 'Tagesticket 2017', 'Dieses Ticket ermächtigt zum Eintritt an einem Veranstaltungstag.\r\n\r\nInkl, 7% MWST und zzgl. Versand', '34.00', 0, '', 15),
(42, 'Hardticket, Pogo-Festival 2017', 'inkl. 7% MwSt. zzgl. Versandkosten', '51.50', 0, '', 16),
(43, 'Regular Full Weekend Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) von Freitag bis Sonntag\r\n- Freitag, 21.07.17: 14:00 ? 04:00 Uhr \r\n- Samstag, 22.07.17: 14:00 ? 04:00 Uhr \r\n- Sonntag, 23.07.17: 14:00 ? 01:00 Uhr\r\nKein Zugang zur PAROOKAVILLE Campsite\r\n\r\nInkl. MwSt., zzgl. Versandkosten', '199.00', 0, '', 25),
(44, 'Regular Full Weekend Visa + Campsite', 'Zugang zur PAROOKAVILLE City (Festivalgelände) von Freitag bis Sonntag\r\n- Freitag, 21.07.17: 14:00 ? 04:00 Uhr \r\n- Samstag, 22.07.17: 14:00 ? 04:00 Uhr \r\n- Sonntag, 23.07.17: 14:00 ? 01:00 Uhr\r\nZugang zur PAROOKAVILLE Campsite von Donnerstag bis Montag\r\n- Check-In: Donnerstag, 20.07.17, ab 10:00 Uhr\r\n- Check-Out: Montag, 24.07.17, bis 15:00 Uhr\r\n\r\nInkl. MwSt., zzgl. Versand', '249.00', 0, '', 25),
(45, 'Regular Friday Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) am Freitag\r\n- Freitag, 21.07.17, 14:00 ? 04:00 Uhr\r\nKein Zugang zur PAROOKAVILLE Campsite\r\n\r\nInkl. MwSt., zzgl. Versandkosten', '99.00', 0, '', 25),
(46, 'Regular Saturday Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) am Samstag\r\n- Samstag, 22.07.17, 14:00 ? 04:00 Uhr\r\nKein Zugang zur PAROOKAVILLE Campsite\r\n\r\nInkl. MwSt., zzgl. Versandkosten', '109.00', 0, '', 25);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `festivals_id` (`festivals_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`festivals_id`) REFERENCES `festivals` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
