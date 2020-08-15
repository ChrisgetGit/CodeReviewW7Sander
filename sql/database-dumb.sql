-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Aug 2020 um 08:56
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr7_sander`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `classes`
--

CREATE TABLE `classes` (
  `Classes_id` int(11) NOT NULL,
  `Class_Name` varchar(35) NOT NULL,
  `fk_teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `classes`
--

INSERT INTO `classes` (`Classes_id`, `Class_Name`, `fk_teacher_id`) VALUES
(1, '1A', 1),
(2, '1B', 4),
(3, '1C', 2),
(4, '2A', 3),
(5, '2B', 4),
(6, '2C', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` tinyint(4) NOT NULL,
  `fk_students_id` int(11) DEFAULT NULL,
  `fk_class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `fk_students_id`, `fk_class_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 4),
(7, 7, 5),
(8, 8, 6),
(9, 9, 6),
(10, 10, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `students`
--

CREATE TABLE `students` (
  `Students_id` int(11) NOT NULL,
  `First_Name` varchar(55) NOT NULL,
  `Last_Name` varchar(55) NOT NULL,
  `E_Mail` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `students`
--

INSERT INTO `students` (`Students_id`, `First_Name`, `Last_Name`, `E_Mail`) VALUES
(1, 'Christian', 'Sander', 'sander@mail.com'),
(2, 'Sebastian', 'Feist', 'feist@mail.com'),
(3, 'Sabrina', 'Ablest', 'ablest@mail.com'),
(4, 'Fatima', 'Fasta', 'fasta@mail.com'),
(5, 'Andreas', 'Stemer', 'stemer@mail.com'),
(6, 'Markus', 'Maier', 'maier@mail.com'),
(7, 'Hendrik', 'Olsson', 'olsson@mail.com'),
(8, 'Sybille', 'Frei', 'frei@mail.com'),
(9, 'Markus', 'Maier', 'maier@mail.com'),
(10, 'Basti', 'Fantasti', 'fantasti@mail.com');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teachers`
--

CREATE TABLE `teachers` (
  `Teacher_id` int(11) NOT NULL,
  `First_Name` varchar(55) NOT NULL,
  `Last_Name` varchar(55) NOT NULL,
  `E_Mail` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `teachers`
--

INSERT INTO `teachers` (`Teacher_id`, `First_Name`, `Last_Name`, `E_Mail`) VALUES
(1, 'Siegfried', 'Marent', 'marent@hotmail.com'),
(2, 'Astrid', 'Häfele', 'häfele@hotmail.com'),
(3, 'Sieglinde', 'Haas', 'haas@hotmail.com'),
(4, 'Rudolf', 'Ranning', 'ranninger@hotmail.com');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`Classes_id`),
  ADD KEY `fk_teacher_id` (`fk_teacher_id`);

--
-- Indizes für die Tabelle `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `fk_students_id` (`fk_students_id`),
  ADD KEY `fk_class_id` (`fk_class_id`);

--
-- Indizes für die Tabelle `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Students_id`);

--
-- Indizes für die Tabelle `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`Teacher_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `classes`
--
ALTER TABLE `classes`
  MODIFY `Classes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `students`
--
ALTER TABLE `students`
  MODIFY `Students_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `teachers`
--
ALTER TABLE `teachers`
  MODIFY `Teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`fk_teacher_id`) REFERENCES `teachers` (`Teacher_id`);

--
-- Constraints der Tabelle `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`fk_students_id`) REFERENCES `students` (`Students_id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`fk_class_id`) REFERENCES `classes` (`Classes_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
