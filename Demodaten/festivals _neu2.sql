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
-- Tabellenstruktur für Tabelle `festivals`
--

CREATE TABLE `festivals` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ort` varchar(40) NOT NULL,
  `kurzbeschreibung` mediumtext NOT NULL,
  `langbeschreibung` longtext NOT NULL,
  `startdatum` date NOT NULL,
  `enddatum` date NOT NULL,
  `istgelöscht` tinyint(1) NOT NULL DEFAULT '0',
  `bildpfad` varchar(40) NOT NULL DEFAULT '',
  `kategorien_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `festivals`
--

INSERT INTO `festivals` (`id`, `name`, `ort`, `kurzbeschreibung`, `langbeschreibung`, `startdatum`, `enddatum`, `istgelöscht`, `bildpfad`, `kategorien_id`) VALUES
(11, 'Hurricane', 'Scheeßel', 'Das Hurricane Festival ist ein riesiges Festival zwischen Hamburg/Bremen und Hannover und bietet Livebands aus unterschiedlichen Stilrichtungen. Geboten werden über 60 Bands auf zwei Open-Air Bühnen und einer Zeltbühne und findet 2017 zum 22. Mal statt.\r\n', 'Das Hurricane findet 2017 zum einundzwanzigsten Mal am Eichenring in Scheeßel statt. Während der vergangenen Jahre hat das Festival international erfolgreiche Künstler, beliebte deutsche Acts und eine große Anzahl Newcomer, von denen einige heutzutage die Headliner-Position einnehmen, präsentiert. Seit 1999 findet parallel im Süden der Republik das Zwillingsfestival Southside Festival mit gleichem Lineup statt. Alljährlich treffen sich mehr als 130.000 Besucher aus ganz Europa bei den Hurricane + Southside Festivals.', '2017-06-23', '2017-06-25', 0, 'Festival_11_1479579005114', 1),
(12, 'Juicy Beats', 'Dortmund', 'Am Freitag 28.07. und Samstag 29.07. versetzt das größte Festival für alternative Popmusik in NRW den Dortmunder Westfalenpark an zwei Tagen in Festivalfieber. \r\n', 'Juicy Beats ist ein seit 1996 jährlich im Westfalenpark in Dortmund stattfindendes Festival für elektronische Musik.\r\n\r\nDas Juicy Beats Festival erwartet Euch auch dieses Jahr wieder im Westfalenpark Dortmund mit seiner unvergleichlichen Atmosphäre und seinen unterschiedlichen fruchtigen Bereichen zum Tanzen, Feiern und Chillen. Und damit sich auch wirklich niemand in der Nacht in diesem wirklich großen Park verläuft, haben wir für Euch das Fruchtleitsystem weiter perfektioniert.\r\n\r\nSaftige Farben, die alle Wege, Bäume, Seen und Areas ausleuchten, werden Euch auch in der Nacht zum Ziel führen. Und falls auch das nicht fruchtet, GPS Handy raus oder Vordermann nach der Banane oder Ananas fragen. Keine Sorge ? das hat noch jedes Juicy Beats Greenhorn tun müssen. Außerdem stehen Euch unsere Juicy Beats - Volontäre jederzeit für Fragen nach Weg, Line-Up etc. zur Verfügung. Es gibt natürlich auch einen extra Infostand in der Nähe der Mainstage auf der Festwiese. ', '2017-07-28', '2017-07-29', 0, 'Festival_12_1479579301628', 1),
(13, 'Rock am Ring', 'Mendig', 'Vom 2. bis 4. Juni 2017 findet Rock am Ring statt. Dabei werden Acts wie Macklemore & Ryan Lewis, Kraftklub, Marteria und noch viele mehr auf der Bühne stehen. Nach der Absage wegen der heftigen Unwetter 2016, wollen wir mit Euch endlich wieder ein komplettes Wochenende lang feiern.', 'Erste Bestätigungswelle:\r\n187 Strassenbande, Airbourne, AnnenMayKantereit, Bastille, Beartooth, Beginner, Bonez MC & RAF Camora, Broilers, Die Toten Hosen, Feine Sahne Fischfilet, Henning Wehland, In Flames, Kraftklub, Macklemore & Ryan Lewis, Marteria, Motionless in White, Pierce the Veil, Prophets of Rage, Rag ?N? Bone Man, Sleeping with Sirens, System of a Down, Wirtz', '2017-06-02', '2017-06-04', 0, 'Festival_13_1479579317700', 1),
(14, 'Rock im Park', 'Nürnberg', 'Die Toten Hosen und System Of A Down führen das wie immer hochkarätige Line-up von Rock im Park 2017 an!', 'Kaum ist das Festivaljahr 2016 vorbei, beginnt für echte Festival-Fans schon der Countdown für nächstes Jahr. Ein paar Monate sind es jedoch noch bis sich auf dem Zeppelinfeld in Nürnberg wieder Musikfans aus Franken und ganz Deutschland treffen, um die Sau rauszulassen. Das LineUp für das Rock im Park 2017 und sein Schwesterfestival in Rheinland-Pfalz - Rock am Ring 2017 - hat auch die ersten Kracher parat. ', '2017-06-02', '2017-06-04', 0, 'Festival_14_1479579331852', 1),
(15, 'Metal Frenzy Open Air', 'Gardelegen', 'Weiter gehts! Vom 29.Juni - 01. Juli 2017 ist es wieder soweit: das vierte Metal Frenzy naht! Feiert ab und lasst die Haare kreisen!\r\n', '"Was erwartet euch? Neben Bands vom Top-Headliner mit großem Namen bis hin zum Newcomer und zu echten Geheimtipps bieten wir euch eine Riesen-Party in bester Lage, die einfach nur Spaß machen wird. Das Metal Frenzy Open Air findet Ihr direkt gegenüber des Erlebnisbades in Gardelegen, welches euch an heißen Tagen Abkühlung bietet.\r\n\r\nDer Bahnhof ist zu Fuß in weniger als 20 Minuten zu erreichen - das macht eine Anreise per Bahn oder Bus sehr einfach. Einmal angekommen auf dem Gelände, könnt ihr mit eurem Auto direkt neben der Bühne zelten. Das macht die Fußwege auf dem Festival kurz und entspannt. Da wir aufgrund der Geländegröße eine Limitierung bei den Besucherzahlen vornehmen, wird es kein überlaufenes Gedrängel geben! Es erwartet euch familiäre Stimmung. Bei uns steht die Musik, der Metal, im Mittelpunkt der Veranstaltung."\r\n', '2017-06-29', '2017-07-01', 0, 'Festival_15_1479586678845', 3),
(16, 'P.O.G.O Festival', 'Oberhausen', 'Rocksau präsentiert am 3. und 4. Februar 2017 die nächste Ausgabe des P.O.G.O Festivals, dem größtem Deutschrockfestival im Pott.\r\n', 'Bisher bestätigte Künstler:\r\n- Unantastbar\r\n- KrawallBrueder (DVD PRODUKTION)\r\n- Hämatom\r\n- Discipline (Band)( Einzige NRW Show 2017 )\r\n- Kneipenterroristen\r\n- Berserker Berlin\r\n- eizbrand\r\n- UNHERZ\r\n- VOLLBLUT', '2017-02-03', '2017-02-04', 0, 'Festival_16_1479579395443', 3),
(17, 'Rockharz Open Air', 'Ballenstedt', 'Der Harz rockt - und wie! Auch zum 24. Festival präsentiert das RockHarz Open Air wieder ein Line-Up, das sich gewaschen hat.\r\n', 'Das Rockharz Open Air ist ein Metalfestival und findet seit 1994 jährlich am Harz statt. Angefangen hat es mit rund 100 Besuchern, Gigs auf LKW-Anhängern, und entwickelte sich seitdem zu einer festen Größe im jährlichen Metalfestival-Plan. Im Jahr 2013 waren es dann rund 12.000 Besucher. Als Festivalgelände dient der Flugplatz Ballenstedt.\r\n\r\nEin besonderes Merkmal des Rockharz Open Air sind die beiden gleichwertigen Bühnen, als Rock Stage und Dark Stage bezeichnet, was sich auf keinem anderen Festival dieser Art finden lässt. Außerdem gibt es keine Zeitüberschneidungen zwischen den Bandauftritten, sodass es den Besuchern tatsächlich möglich ist, jeden Bandauftritt zu sehen.', '2017-07-05', '2017-07-08', 0, 'Festival_17_1479579416489', 3),
(18, 'Wacken', 'Wacken', 'Das Wacken Open Air ist das wohl bekannteste und Größte Metal Open Air Festival. \r\nGeboten werden wie immer zahlreiche Bands auf mehreren Bühnen und ein buntes Rahmenprogramm. Camping ist möglich.\r\n', 'Das Wacken Open Air (Eigenschreibweise W:O:A) ist ein erstmals 1990 abgehaltenes Heavy-Metal-Festival, das jährlich am ersten Augustwochenende in der Gemeinde Wacken in Schleswig-Holstein stattfindet. Nahezu alle Spielarten des Hard Rock und Metal sind auf dem Festival vertreten. Mittlerweile ist es eines der größten Heavy-Metal-Festivals der Welt und eines der größten Open-Air-Festivals Deutschlands. In den Jahren 2011?2015 lag die Teilnehmerzahl jeweils bei rund 85.000 Menschen, davon 75.000 zahlende Besucher.', '2017-08-03', '2017-08-05', 0, 'Festival_18_1479579437728', 3),
(19, 'Wacken Winternights', 'Wacken', 'Vom 10. bis zum 12. Februar 2017 finden die Wacken Winter Nights zum ersten Mal in Wacken statt. Auf die Besucher wartet eine Winterwelt mit Kleinkunst, Eispalast, Märchenwald und viel Musik.', 'Taucht in verschiedene Themenwelten ein und begebt euch auf eine Reise durch zauberhafte Welten und Spielorte. Genießt an wärmenden Feuern einmalige intime Konzerterlebnisse. Erlebt im Eispalast auf der Mainstage namhafte Bands aus Mittelalterrock, Symphonic Metal, Pagan und Mystic Folk in voller Setlänge.\r\n\r\nWandelt durch das historische Dorf am Fuße des Eispalastes und besucht in der dort beheimateten Old Village Church eines der Konzerte oder lasst euch von einmaligen Shows im Theatre of Grace verzaubern. Begegnet in einem märchenhaften Wald Fabelwesen, wandelnden Musikern, Geschichtenerzählern, Zauberern und vielem mehr.\r\n\r\nAußerdem könnt ihr an diversen Workshops teilnehmen und Handwerkern über die Schulter schauen sowie aufs feinste auf dem Markt um Waren feilschen.\r\n\r\nGastronomisch erwarten euch mittelalterliche Gaumenfreuden der Spitzenklasse und andere Spezialitäten, einiges auch in Bioqualität.\r\n\r\nWacken Winter Nights wird ein Festival nah am Künstler und in einmaliger Kulisse im Kultdorf Wacken.\r\n', '2017-02-10', '2017-02-12', 0, 'Festival_19_1479586576650', 3),
(20, 'Electric Sea Dance Festival', 'Rostock', 'Verpasst nicht Gestört Aber Geil, Ostblockschlampen, Danny Avila, Moti, Mike Perry, Boris Dlugosch, Krama, Infuso und viele viele mehr in am 10.Dezember in der HanseMesse Rostock!', 'Ein Hauch von Festivalfeeling erobert am 10. Dezember die Hansestadt Rostock. EDM-, House- und Goasounds werden von internationalen Stars serviert.\r\n', '2016-12-10', '2016-12-10', 0, 'Festival_20_1479579656856', 4),
(21, 'Spirit Of Goa', 'Hamburg', 'Audioplay Events präsentiert am 28. Januar mit Spirit Of Goa elektronische Klänge im Docks und in der Prinzenbar in Hamburg.\r\n', 'Ahoi ...\r\nMit frischer Brise und ordentlich Knoten Richtung Sonnenuntergang feiern wir auch in diesem Jahr wieder auf der Elbe. Da diese Bootsfahrt eine Family Affairs Party ist, von Freunden für Freunde, sind die Tickets limitiert. --DAS GILT NATÜRLICH NUR FÜR DIE BOOTSTOUR - auf der Afterhour ist dann für alle Interessierten genug Platz-- Unsere Fahrt führt uns durch den Hafen, an den Container-Riesen vorbei, nach Blankenese immer dem Sonnenuntergang entgegen. ? für die Landratten unter Euch, geht es nach der Party an Deck anschließend in direkter Elbnähe weiter! Die Afterparty findet ab 22:00Uhr im Docks statt. Der Eintritt für die Afterhour beträgt sommerliche 10 Euro, für alle Bootsleute, Matrosen und Seemänner ist der Eintritt frei!', '2017-01-28', '2017-01-28', 0, 'Festival_21_1479579856749', 4),
(22, 'SonneMondSterne', 'Saalburg', 'Das SonneMondSterne Festival (kurz: SMS) ist eines der größten Open-Air-Festivals der elektronischen Tanzmusik in Europa.', 'Neben der elektronischen Musik, treten vereinzelt auch Vertreter des Rock und Pop auf. Das Festival findet jährlich am zweiten Augustwochenende in Thüringen an der Bleilochtalsperre bei Saalburg-Ebersdorf statt.\r\n', '2017-08-11', '2017-08-13', 0, 'Festival_22_1479579932262', 4),
(23, 'World Club Dome', 'Frankfurt am Main', 'Der ?größte Club der Welt? entsteht jährlich im Herzen Europas, inmitten der Weltstadt Frankfurt.\r\nMit einem gigantischen Dancefloor Areal von über 700.000m², 20 Bühnen und 200 internationalen DJs verschmelzen 130.000 im Beat schlagende Herzen zur BigCityBeats Familie.', 'Der BigCityBeats WORLD CLUB DOME hat es sich zur Aufgabe gemacht, die besten Brands, DJs und Live-Acts der einzelnen Genres auf einem Fleck in Europa - dem ?größten Club der Welt? - zusammen zu führen. Die Mainstage ist das pulsierende Herzstück des BigCityBeats WORLD CLUB DOME. Unter dem größten Cabrio Dach der Welt vereinen sich zigtausende im Beat schlagender Herzen der WorldClubber mit den Sounds der Headliner. 2017 erwartet die WorldClubber hier wieder eine gigantische Bühne, spektakuläre Headliner, die größte Lasershow des Kontinents und eine Pyroshow, die ganz Deutschland erstrahlen lässt.\r\n', '2017-06-02', '2017-06-04', 0, 'Festival_23_1479580031174', 4),
(24, 'Viva Willingen', 'Willingen', 'Auf in ein verrücktes Wochenende ins Sauerland. Zum wiederholten Male geht an diesem Wochenende die Post ab.\r\n', 'Am Samstag, den 17.06.2017 kommt ""das Festival der guten Laune"" zum fünftenmal nach Willingen. \r\n\r\nAuch bei ""VIVA Willingen 2017"" werden wieder mindestens siebzehn (17!) aktuelle nationale und internationale Party-Schlager-Stars auf der Open Air Bühe am Festival-Gelände oberhalb des Sauerlandsterns stehen. \r\nDie Künstler Mickie Krause, Loona, Peter Wackel, Oli P. ,Willi Herren, Anna Maria Zimmermann, Tim Toupet, Achim Petry, Norman Langen, Dorfrocker, Mary, Ina Colada, Der Benii, Oliver Frank, Remmi Demmi Boys, La Vida Loca Dancers sind am Start. \r\nDie Party-Elite der Playa de Palma wird geschlossen für die richtige Party-Stimmung bei ""VIVA Willingen"" sorgen. \r\n\r\nFeiert mit uns das schönste Sommerfest des Sauerlands! \r\n', '2017-06-17', '2017-06-17', 0, 'Festival_24_1479586605771', 2),
(25, 'Parookaville', 'Weeze', 'Parookaville ist ein EDM Festival, das vom 21. bis 23. Juli auf dem Festivalgelände am Airport Weeze stattfindet.', 'Das Konzept des Events erinnert ein bisschen an eine Mischung aus Kazantip und Tomorrowland. Es soll märchenhaft bunt werden, das Ticket ist gleichzeitig ein Visum und der Ticketinhaber wird zum Bürger der Stadt Parookaville.\r\n', '2017-07-21', '2017-07-23', 0, 'Festival_25_1479580448541', 4),
(26, 'Big Day Out', 'Anröchte', 'Alle zwei Jahre geht es in Anröchte rund. Und auch 2017 präsentiert die JZI Anröchte e.V. ein Programm, mit dem das Big Day Out Festival seinem Ruf als lautstärkste Sehenswürdigkeit der Region garantiert gerecht wird.\r\n', 'Big Day Out Anröchte ist ein Indie, Rock, Pop und Hip Hop Festival, das vom 04.08.2017 bis 05.08.2017 in Anröchte in der Nähe von Paderborn und Dortmund (DE) stattfindet. Es werden ca. 10.000 Fans erwartet.\r\n\r\nAls Top-Acts sind Alligatoah, Bosse und Donots bestätigt. Darüber hinaus spielen Donots, BRKN, Alligatoah, Marathonmann, Bosse, The Amity Affliction und viele mehr. Das vollständige Line Up findet ihr hier.\r\n\r\nWogende Menschenmassen, zwei Bühnen, gute Laune ein ganzes Wochenende lang. Wer das wieder oder erstmals erleben möchte, den wird diese Nachricht in Jubelstimmung versetzen: Es gibt eine Neuauflage des kultigen Big Day Out-Festivals!', '2017-08-04', '2017-08-05', 0, 'Festival_26_1479580923972', 6),
(27, 'Country Music Meeting', 'Berlin', 'Vom 3. bis 5. Februat 2017 wird das siebte Country Music Meeting im Berlin-Reinickendorfer Fontane Haus stattfinden. Das Fontane Haus ist der auserkorene Wallfahrtsort für Freunde der guten Country Music Klänge.\r\n', 'Das Country Music Meeting Berlin ist ein Event rund um Country und Western. Zahlreiche Aussteller und Händler präsentieren auf der Country Music Messe Berlin ein umfangreiches Angebotsspektrum an Kleidung, Accessoires, CDs, Blechschildern und Deko- und Merchandising-Artikeln sowie auch Schmuck, Pins, Figuren und Magazine. Ein umfangreiches Bühnen- und Musikprogramm mit verschiedenen Shows und Workshops rundet das Angebot des Berliner Country Music Meeting ab.', '2017-02-03', '2017-02-05', 0, 'Festival_27_1479581042369', 5),
(28, 'Weedbeat Festival', 'Nordstemmen', 'Vom 14ten bis einschließlich 16ten Juli 2017 geht das nächste Weedbeat Festival über die Bühnen am Vaz Speicher in Rössing.\r\n\r\nDas Weedbeat Open Air Festival bietet wieder off beat Live-Musik mit allen Facetten. Natürlich Roots Reggae und Ska aber auch die inzwischen weit verbreiteten deutschsprachigen Versionen der Reggae-Musik bis hin zum elektronischen Dub Step. Das Festival-Gelände im Grünen, wird eingerahmt von einer kulinarischen Zeltstadt.', 'Seit 2004 findet das jährliche Reggaespektakel im ländlichen Kreis von Hildesheim statt. Ein bunter Mix aus lokalen, nationalen und internationalen Künstlern und das liebevoll gestaltete Gelände mit den naheliegenden Kiesteichen, machen den Charme des Weedbeat Festivals aus.\r\nWer nicht auf große Massenfestivals steht und trotzdem ein hochwertiges Line Up braucht, ist hier genau richtig.\r\nDas Weedbeat Open Air bietet Livemusik auf 2 Bühnen in karibischer Atmosphäre. In den letzten Jahren ist es gelungen eine traumhafte Festivalkultur mit Livebands, Strandbühne, Badesee, kulinarischen Ständen und Campingwiesen am See und nahe dem Festivalgelände zu errichten.\r\nDas Weedbeat läuft bis durch die Nacht mit einem zusätzlichen Indoor Bereich für ausgelassene Dancehall Partys.', '2017-07-14', '2017-07-16', 0, 'Festival_28_1479630470538', 7);


--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `festivals`
--
ALTER TABLE `festivals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategorien_id` (`kategorien_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `festivals`
--
ALTER TABLE `festivals`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `festivals`
--
ALTER TABLE `festivals`
  ADD CONSTRAINT `festivals_ibfk_1` FOREIGN KEY (`kategorien_id`) REFERENCES `kategorien` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
