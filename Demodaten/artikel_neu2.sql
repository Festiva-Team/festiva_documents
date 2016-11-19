-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Nov 2016 um 22:15
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
(24, 'Resort Ruf der Eule 2017', 'Inkl. Kombiticket und Resortticket für 1 Person, inkl. Mwst., zzgl. Versandkosten', '289.00', 0, '', 11),
(25, 'Regencape grau (Einheitsgröße)', 'Produktmaße:\r\nBreite: 150 cm\r\nHöhe: 110 cm\r\n\r\n- Lässt sich klein zusammengefaltet im integrierten Täschchen unterbringen und ist immer griffbereit im Koffer, Rucksack usw.\r\n- Durch verstellbare Klettbandbefestigung unter dem Kinn sitzt die Kapuze auch bei Wind und Wetter sicher.\r\n- Dank der praktischen Tasche auf der Vorderseite des Ponchos sind Schlüssel, Mobiltelefon usw. schnell griffbereit.', '9.99', 0, 'Artikel_25_1479581175400', NULL),
(26, 'JUICY BEATS 22 | FANTICKET KOMBITICKET FR/SA', 'Inkl. 7% MWST, zzgl. Versandkosten\r\nInkl. Systemgebühr (4,40 EUR) ', '67.40', 0, '', 12),
(27, 'JUICY BEATS 22 | CAMPING TICKET', 'Das Juicy Beats Camping Ticket ist gültig für zwei Personen und ein Zelt!\r\n\r\nDer Ticketpreis beinhaltet 10 EUR Müllpfand.\r\n\r\nInkl. 19% MWST, zzgl. Versandkosten', '38.00', 0, '', 12),
(28, 'JUICY BEATS 22 | PARKPLAKETTE', 'Die Parkplakette ist ausschließlich in Kombination mit einem Juicy Beats Campingticket gültig! Das Campingticket/ Bändchen muss bei der Einfahrt vorgezeigt werden!\r\n\r\nInkl. 19% MWST, zzgl. Versandkosten', '8.00', 0, '', 12),
(29, 'ROCK AM RING FESTIVAL-TICKET GENERAL CAMPING', '3-Tage-Festival-Hardticket inkl. Parken und Campen sowie Vorverkaufsgebühr und 10 EUR Müllpfand. \r\n\r\nInkl. Mehrwertsteuer', '185.00', 0, '', 13),
(30, 'ROCK AM RING FESTIVAL-TICKET ROCK´N´ROLL CAMPING', '3-Tage-Festival-Hardticket inkl. Campen sowie Vorverkaufsgebühr und 10 EUR Müllpfand, inkl. Parken ab dem Erwerb von zwei Rock´n´Roll-Camping-Tickets. Rock´n´Roll Camping direkt am Festivalgelände (Einlass Süd) inkl. Anschlussmöglichkeit an Stromverteiler im Umkreis von ca. 50m. \r\n\r\nInkl. Mehrwertsteuer', '235.00', 0, '', 13),
(31, 'ROCK AM RING CARAVAN PARKING WEST', 'Die Caravan Plakette berechtigt zum Campen mit einem Wohnwagen oder einem Wohnmobil oder einem PKW-Bus (Camper) oder einem Faltanhänger auf einem der Caravan-Campingplätze inkl. Anschlussmöglichkeit an Stromverteiler im Umkreis von ca. 50m. In dem Fahrzeug oder Wohnanhänger dürfen maximal nur so viele Personen übernachten, wie baulich vorgesehene Schlafplätze vorhanden sind. Zusätzlich und hierfür unabhängig wird pro Besucher 1 ROCK AM RING Festival-Ticket benötigt.', '85.00', 0, '', 13),
(32, 'ROCK AM RING CARAVAN PARKING NORTH', 'Die Caravan Plakette berechtigt zum Campen mit einem Wohnwagen oder einem Wohnmobil oder einem PKW-Bus (Camper) oder einem Faltanhänger auf einem der Caravan-Campingplätze inkl. Anschlussmöglichkeit an Stromverteiler im Umkreis von ca. 50m. In dem Fahrzeug oder Wohnanhänger dürfen maximal nur so viele Personen übernachten, wie baulich vorgesehene Schlafplätze vorhanden sind. Zusätzlich und hierfür unabhängig wird pro Besucher 1 ROCK AM RING Festival-Ticket benötigt.', '65.00', 0, '', 13),
(33, 'ROCK AM RING FRÜHANREISE-TICKET', 'Dieses Ticket gilt für 1 Person und berechtigt den Inhaber bereits ab Mittwoch, 31.05.2017, 12:00 Uhr zur Nutzung der Parkflächen und ab 14:00 Uhr zur Nutzung der Campingflächen von Rock am Ring 2017. Nur gültig in Verbindung mit einem Rock am Ring 2017 Festivalticket. ', '20.00', 0, '', 13),
(34, 'BECK´S 24X DOSEN 0,5L + PFAND', 'Sichert euch jetzt schon euer gekühltes Beck´s und bestellt euren Beck´s Vorrat - zum Sonderpreis von 24 EUR pro Tray (24 Dosen) zzgl. 6 EUR Pfand.', '30.00', 0, 'Artikel_34_1479581207348', NULL),
(35, 'ROCK IM PARK FESTIVAL-TICKET GENERAL CAMPING', '3-Tage-Festival-Hardticket inkl. Parken und Campen sowie Vorverkaufsgebühr und 10 EUR Müllpfand. \r\n\r\nInkl. Mehrwertsteuer', '185.00', 0, '', 14),
(36, 'ROCK IM PARK FESTIVAL-TICKET ZEPPELIN STAGE CAMPING', '3-Tage-Festival-Hardticket inkl. Parken und Campen sowie Vorverkaufsgebühr und 10 EUR Müllpfand. Zeppelin Stage Camping in unmittelbarer Nähe zur Hauptbühne. Duschen und Wassertoiletten inbegriffen.\r\n\r\nInkl. Mehrwertsteuer', '315.00', 0, '', 14),
(37, 'ROCK IM PARK CARAVAN PARKING WOHNMOBIL', 'Die Caravan Parking Plakette Wohnmobil berechtigt zum Campen mit einem Wohnmobil auf einem der Wohnmobil-Stellplätze inkl. der Anschlussmöglichkeit an einem Stromverteiler im Umkreis von ca. 50m. Pro Fahrzeug (inkl. 2 Personen) wird 1 Caravan Plakette benötigt, pro Besucher zudem 1 ROCK IM PARK Festival Ticket. Pro Stellplatz darf zusätzlich 1 kleines Zelt direkt neben das Fahrzeug gestellt oder ein Vorzelt installiert werden.', '120.00', 0, '', 14),
(38, 'ROCK IM PARK CARAVAN PARKING WOHNWAGEN', 'Die Caravan Parking Plakette Wohnmobil berechtigt zum Campen mit einem Wohnwagen auf einem der Wohnwagen-Stellplätze inkl. der Anschlussmöglichkeit an einem Stromverteiler im Umkreis von ca. 50m. Pro Fahrzeug (inkl. 2 Personen) wird 1 Caravan Plakette benötigt, pro Besucher zudem 1 ROCK IM PARK Festival Ticket. Pro Stellplatz darf zusätzlich 1 kleines Zelt direkt neben das Fahrzeug gestellt oder ein Vorzelt installiert werden.', '120.00', 0, '', 14),
(39, '3-Tages-Ticket (Normalpreis) 2017 ', 'Dieses Ticket ermächtigt zum Eintritt an allen drei Veranstaltungstagen.\r\n\r\nInkl. 7% MWST und zzgl. Versand', '66.66', 0, '', 15),
(40, '3-Tages-Ticket (Unterstützer) 2017 + Backstageführung', 'Für Leute die uns besonders supporten wollen. Das Ticket ermächtigt zum Eintritt an allen drei Veranstaltungstagen. \r\n\r\n+ Backstageführung inklusive einem Getränk & einem Snack (in Frenzy Edition)\r\n\r\nInkl. 7% MWST und zzgl. Versand', '84.90', 0, '', 15),
(41, 'Tagesticket 2017', 'Dieses Ticket ermächtigt zum Eintritt an einem Veranstaltungstag.\r\n\r\nInkl, 7% MWST und zzgl. Versand', '34.00', 0, '', 15),
(42, 'Hardticket, Pogo-Festival 2017', 'inkl. 7% MwSt. zzgl. Versandkosten', '51.50', 0, '', 16),
(43, 'Regular Full Weekend Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) von Freitag bis Sonntag.\r\nKein Zugang zur PAROOKAVILLE Campsite\r\n\r\nInkl. MwSt., zzgl. Versandkosten', '199.00', 0, '', 25),
(44, 'Regular Full Weekend Visa + Campsite', 'Zugang zur PAROOKAVILLE City (Festivalgelände) von Freitag bis Sonntag.\r\nZugang zur PAROOKAVILLE Campsite von Donnerstag bis Montag.\r\n\r\nInkl. MwSt., zzgl. Versand', '249.00', 0, '', 25),
(45, 'Regular Friday Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) am Freitag.\r\nKein Zugang zur PAROOKAVILLE Campsite.\r\n\r\nInkl. MwSt., zzgl. Versandkosten', '99.00', 0, '', 25),
(46, 'Regular Saturday Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) am Samstag.\r\nKein Zugang zur PAROOKAVILLE Campsite\r\n\r\nInkl. MwSt., zzgl. Versandkosten', '109.00', 0, '', 25),
(47, 'ROCKHARZ 2017 FRÜHBUCHER-TICKET', 'Inkl. 7% MwSt., zzgl. Versandkosten', '97.90', 0, '', 17),
(48, 'Resort Wolfsrudel Bronze 2017', 'Inkl. Kombi-, Resort- und Unterkunftsticket für 1 Person, inkl. 7% MwSt., zzgl. Versandkosten', '399.00', 0, '', 11),
(49, 'Resort Wolfsrudel Silver 2017', 'Inkl. Kombi-, Resort- und Unterkunftsticket für 1 Person, inkl. MwSt., zzgl. Versandkosten', '499.00', 0, '', 11),
(50, 'Clubticket 2017', 'Inkl. Kombi- und Clubticket für 1 Person, inkl. MwSt., zzgl. Versandkosten', '329.00', 0, '', 11),
(51, 'WOMO PLAKETTE 2017 - OST', 'Für alle Camper aus Richtung Hannover, inkl. MwSt., zzgl. Versandkosten', '40.00', 0, '', 11),
(52, 'WOMO PLAKETTE 2017 - WEST', 'Für alle Camper aus Richtung Hamburg und Bremen, inkl. MwSt., zzgl. Versandkosten\r\n', '40.00', 0, '', 11),
(53, '3-DAYS "ALL IN" TICKET W:O:A 2017', 'Inkl. MwSt., zzgl. Versandkosten', '221.00', 0, '', 18),
(54, 'WACKEN WINTER NIGHTS 2017', '2-Tages-Ticket, inkl. MwSt., zzgl. Versandkosten', '69.00', 0, '', 19),
(55, 'Standard-Ticket', 'Inkl. MwSt., zzgl. Versandkosten', '29.00', 0, '', 20),
(56, 'VIP-Ticket', 'Inkl. MwSt., zzgl. Versandkosten', '49.00', 0, '', 20),
(57, 'Weedbeat Festival 2017', '3-Tages-Ticket, inkl. MwSt., zzgl. Versandkosten', '32.00', 0, '', 28),
(58, 'Stehplatz', 'Inkl. MwSt., zzgl. Versandkosten', '27.75', 0, '', 21),
(59, 'SONNEMONDSTERNE FESTIVAL-TICKET 2017', 'Das echte und unverwechselbare Ticket für das SonneMondSterne Festival 2017 inkl. Camping, zzgl. Versandkosten. ', '153.00', 0, '', 22),
(60, 'CLUB TICKET (3 Tage)', 'Arena Zugang, Ränge, Q Dance, Club Music Circle, Party Zelte, WCD Pool Sessions Area, Food Area, Chillout Area. Zutritt zu den einzelnen Bereichen je nach temporäre Kapazitätsauslastung. Kein Zugang zum Frontstage & VIP Area.', '129.00', 0, '', 23),
(61, 'CLUB TICKET DELUXE (3 Tage)', 'Garantierter Frontstage Zugang, Arena Zugang, Ränge, Q Dance, Club Music Circle, Party Zelte, Food Area, Chillout Area, WCD Pool Sessions Area. Zutritt zu den einzelnen Bereichen je nach Kapazitätsauslastung.', '189.00', 0, '', 23),
(62, 'VIP-Ticket (3 Tage)', 'VIP AREA mit Terrasse an der Mainstage, Arena Zugang, Ränge, Q Dance, VIP Sicht auf die Mainstage und auf das Gelände, exklusive Speisen & Getränke, separate VIP Eingänge, reservierter VIP Parkplatz (ab 2 Tickets). Zutritt zu den einzelnen Bereichen je nach temporäre Kapazitätsauslastung. Getränke und Speisen sind nicht im Preis inkl. Kein Zugang zum Frontstage.', '279.00', 0, '', 23),
(63, 'Deluxe Camping', 'Camping-Ticket, inkl. MwSt., zzgl. Versandkosten', '49.00', 0, '', 23),
(64, 'Normal Ticket - VIVA Willingen 2017', 'Inkl. MwSt., zzgl. Versandkosten', '22.00', 0, '', 24),
(65, 'VIVA-CLUB-TICKET', 'All inclusive, inkl. MwSt., zzgl. Versandkosten', '165.00', 0, '', 24),
(66, 'Regular Sunday Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) am Sonntag.\r\nKein Zugang zur PAROOKAVILLE Campsite. \r\nInkl. MwSt., zzgl. Versandkosten.', '89.00', 0, '', 25),
(67, 'VIP Full Weekend Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) von Freitag bis Sonntag.\r\nKein Zugang zur PAROOKAVILLE Campsite\r\nVorteile des VIP VISA:\r\nseparater Check-in am City Gate\r\nüberdachte VIP-Decks an den Hauptbühnen mit separaten Bars\r\nFlaschenverkauf auf den VIP-Decks\r\nPremium-Toiletten an den VIP-Decks\r\nfree Wifi Hot Spots an den VIP-Decks\r\ngratis Locker (Schließfach) auf dem Festivalgelände', '299.00', 0, '', 25),
(68, 'VIP Full Weekend Visa + Campsite', 'Zugang zur PAROOKAVILLE City (Festivalgelände) von Freitag bis Sonntag.\r\nZugang zur PAROOKAVILLE Campsite von \r\nVorteile des VIP VISA:\r\nseparater Check-in am City Gate\r\nüberdachte VIP-Decks an den Hauptbühnen mit separaten Bars\r\nFlaschenverkauf auf den VIP-Decks\r\nPremium-Toiletten an den VIP-Decks\r\nfree Wifi Hot Spots an den VIP-Decks\r\ngratis Locker (Schließfach) auf dem Festivalgelände\r\n24h kostenloses Duschen auf der Campsite', '349.00', 0, '', 25),
(69, 'VIP Friday Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) am Freitag.\r\nKein Zugang zur PAROOKAVILLE Campsite\r\nVorteile des VIP VISA:\r\nseparater Check-in am City Gate\r\nüberdachte VIP-Decks an den Hauptbühnen mit separaten Bars\r\nFlaschenverkauf auf den VIP-Decks\r\nPremium-Toiletten an den VIP-Decks\r\nfree Wifi Hot Spots an den VIP-Decks\r\ngratis Locker (Schließfach) auf dem Festivalgelände', '179.00', 0, '', 25),
(70, 'VIP Saturday Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) am Samstag.\r\nKein Zugang zur PAROOKAVILLE Campsite\r\nVorteile des VIP VISA:\r\nseparater Check-in am City Gate\r\nüberdachte VIP-Decks an den Hauptbühnen mit separaten Bars\r\nFlaschenverkauf auf den VIP-Decks\r\nPremium-Toiletten an den VIP-Decks\r\nfree Wifi Hot Spots an den VIP-Decks\r\ngratis Locker (Schließfach) auf dem Festivalgelände.', '199.00', 0, '', 25),
(71, 'VIP Sunday Visa', 'Zugang zur PAROOKAVILLE City (Festivalgelände) am Freitag.\r\nKein Zugang zur PAROOKAVILLE Campsite\r\nVorteile des VIP VISA:\r\nseparater Check-in am City Gate\r\nüberdachte VIP-Decks an den Hauptbühnen mit separaten Bars\r\nFlaschenverkauf auf den VIP-Decks\r\nPremium-Toiletten an den VIP-Decks\r\nfree Wifi Hot Spots an den VIP-Decks\r\ngratis Locker (Schließfach) auf dem Festivalgelände.\r\n', '149.00', 0, '', 25),
(72, '2-Tage Festivalticket ohne Camping', 'Inkl. MwSt., zzgl. Versandkosten', '74.10', 0, '', 26),
(73, '2-Tage Festivalticket inkl. Camping', 'Inkl. MwSt., zzgl. Versandkosten', '90.60', 0, '', 26),
(74, 'Freitag', 'Inkl. MwSt., zzgl. Versandkosten', '20.00', 0, '', 27),
(75, 'Samstag', 'Inkl. MwSt., zzgl. Versandkosten', '30.00', 0, '', 27),
(76, 'Sonntag', 'Inkl. MwSt., zzgl. Versandkosten', '20.00', 0, '', 27),
(77, 'Partyhut', 'Mit diesem auffälligen Hut finden du und deine Freunde euch immer und überall wieder.\r\nDen Hut gibt es nur in einer Größe und der Farbe pink. ', '15.00', 0, 'Artikel_77_1479582527029', NULL),
(78, 'Pavillion (3 x 3)', 'Ein Pavillion ist Muss auf jedem Festival.\r\nEs schützt euch vor Sonne und Regen und kennzeichnet euer Revier.\r\nDer Pavillon verfügt über ein stabiles pulverlackbeschichtetes Stahl-Gestänge und einer hochwertigen 100 g/m² PE Plane.  ', '19.90', 0, 'Artikel_78_1479582744456', NULL),
(79, '2-3 Personen Igluzelt', 'Dieses schlichte Zelt erfüllt die Ansprüche der meisten Festival Besucher bestens: Es ist günstig, wasserdicht und schnell aufgebaut. Darüber hinaus überzeugt es durch sein geringes Gewicht und Packmaß. Da das Zelt über keinerlei Stauraum verfügt, ist es empfehlenswert, es mit höchstens 2 Personen zu nutzen.', '45.00', 0, 'Artikel_79_1479583088478', NULL),
(80, '3 Personen Wurfzelt', 'Dieses Wurfzelt von Quechua zeichnet sich durch hohe Qualität und Komfort beim Aufbau des Zelts aus. Es kann mit wenigen Handgriffen aufgebaut werden und ist eines der beliebtesten Zelte für Festivals. Diese sehr nützlichen Eigenschaften schlagen sich zwar etwas im Preis des Zeltes nieder, allerdings kann das Preis-Leistungsverhältnis trotzdem als sehr gut bezeichnet werden.', '60.00', 0, 'Artikel_80_1479583064448', NULL),
(81, 'Festival Gasgrill', 'Dieser praktiische Gasgrill, bietet alles was das Herz begehrt.\r\nGrill & Kocher in einem, keine Kohle mitschleppen, leicht & kompakt, kein Rauch, kein offenes Feuer.\r\nSofort los grillen!', '50.00', 0, 'Artikel_81_1479583309454', NULL),
(82, 'Regencape rot (Einheitsgröße)', 'Produktmaße:\r\nBreite: 150 cm\r\nHöhe: 110 cm\r\n\r\n- Lässt sich klein zusammengefaltet im integrierten Täschchen unterbringen und ist immer griffbereit im Koffer, Rucksack usw.\r\n- Durch verstellbare Klettbandbefestigung unter dem Kinn sitzt die Kapuze auch bei Wind und Wetter sicher.\r\n- Dank der praktischen Tasche auf der Vorderseite des Ponchos sind Schlüssel, Mobiltelefon usw. schnell griffbereit.', '9.99', 0, 'Artikel_82_1479583460204', NULL),
(83, 'Aufblasbarer Bierkühler', 'Einfach aufpusten und ein aufblasbarer Bierkühler im überdimensionierten Bierkrug-Design entsteht. Mit Eis und Getränken befüllen und die kühlen Getränke genießen. Klar, hat man auf Festivals nicht immer gleich eine Packung Eis zur Hand, aber wenn man nett die Getränkestände fragt, dann haben die sicher nichts dagegen euch dabei ein wenig auszuhelfen. Der aublasbarer Bierkühler hat ein Maß von 45 x 30 x 50 cm und ist mit 300 Gramm sehr leicht. ', '10.00', 0, 'Artikel_83_1479583581060', NULL),
(84, 'Knicklichter Partybox', 'Als Partygänger weißt Du, dass Knicklichter am Arm oder um den Hals der Renner sind. Hier erhältst Du die Knicklichter Party Box. Die Knicklichter sind in den Farben Rot, Gelb, Grün, Blau, Pink, Orange, Lila und Kaltweiß enthalten. Die Knicklichter haben eine Leuchtdauer von etwa 8 Stunden. Sie sind 205 mm lang und weisen einen Durchmesser von 5 mm auf.', '25.00', 0, 'Artikel_84_1479583695515', NULL),
(85, 'Leuchtendes Bier Pong', 'Das ist der Knaller für Dein nächstes Festival. Beim Beer Pong Spiel wird Geschicklichkeit mit Alkoholkonsum kombiniert. Alles, was Du dazu benötigst, ist ein langer Tisch und an jedem Ende 10 halbvolle Becher mit Bier, daneben einen Becher mit Wasser. Die Spieler stehen sich gegenüber und versuchen, dem Gegner einen Beer Pong Ball in einen Becher der Gegner zu schießen. Wenn Du triffst, muss der Gegner den getroffenen Becher auf einen Zug leeren. Das hier angebotene Beer Pong Spiel wird durch die Leucht-Bälle und Leucht-Becher zum wahren Party Hit. Für die 22 Leucht-Becher und zwei Leucht-Bälle benötigst Du keine Batterien, Du hältst sie vor dem Spiel einfach ein paar Minuten an eine Lichtquelle. Schon kann das feuchtfröhliche Vergnügen losgehen', '15.49', 0, 'Artikel_85_1479583785929', NULL),
(86, 'Faltkanister', 'Vor allem auf Festivals oder beim Camping ist es wichtig, stets frisches Trinkwasser bei sich zu haben. Ein normaler Trinkwasserkanister verbraucht meist unnötig Platz. Ohne Inhalt lässt er sich ganz einfach zusammenfalten und verbraucht fast keinen Platz. ', '7.50', 0, 'Artikel_86_1479583912758', NULL),
(87, 'Bierrucksack', 'Auf Festivals und Konzerten bist Du damit immer bestens mit dem kühlem Nass versorgt. Der tolle Duo Bierrucksack hat 2 Tanks mit je 3 Litern Füllmenge. Damit sollte genügend Bier für alle vorhanden sein, vor allem natürlich für Dich. Der besondere Clou an dem Duo Bierrucksack sind die Schläuche und Zapfhähne. Damit kannst Du auch direkte Mundbefüllung machen, was bei jeder Party ein Riesenspaß ist.', '35.00', 0, 'Artikel_87_1479584060817', NULL);

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
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
