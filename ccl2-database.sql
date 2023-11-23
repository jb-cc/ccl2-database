-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 23. Nov 2023 um 19:00
-- Server-Version: 8.0.35-0ubuntu0.22.04.1
-- PHP-Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cc221012`
--
CREATE DATABASE IF NOT EXISTS `cc221012` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cc221012`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CCL_inventory`
--

DROP TABLE IF EXISTS `CCL_inventory`;
CREATE TABLE `CCL_inventory` (
  `userWeaponID` int NOT NULL,
  `userID` int NOT NULL,
  `weaponID` int NOT NULL,
  `isListed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `CCL_inventory`
--

INSERT INTO `CCL_inventory` (`userWeaponID`, `userID`, `weaponID`, `isListed`) VALUES
(1, 1, 1, 0),
(32, 66, 3, 0),
(38, 76, 11, 0),
(42, 69, 8, 0),
(44, 64, 15, 0),
(48, 81, 13, 0),
(50, 82, 14, 1),
(51, 34, 8, 1),
(52, 84, 3, 1),
(53, 80, 7, 0),
(54, 84, 19, 0),
(55, 34, 11, 1),
(56, 34, 11, 1),
(57, 85, 4, 0),
(58, 84, 3, 1),
(59, 87, 3, 0),
(60, 81, 16, 0),
(61, 80, 17, 0),
(62, 80, 19, 1),
(63, 34, 19, 1),
(64, 34, 19, 1),
(65, 81, 19, 1),
(66, 34, 12, 1),
(67, 34, 2, 1),
(68, 81, 1, 0),
(69, 84, 18, 0),
(70, 34, 5, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CCL_listings`
--

DROP TABLE IF EXISTS `CCL_listings`;
CREATE TABLE `CCL_listings` (
  `id` int NOT NULL,
  `sellerID` int NOT NULL,
  `sellerWeaponID` int NOT NULL,
  `price` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `CCL_listings`
--

INSERT INTO `CCL_listings` (`id`, `sellerID`, `sellerWeaponID`, `price`) VALUES
(55, 34, 64, 243543),
(60, 34, 66, 5555),
(63, 34, 63, 303232322),
(66, 34, 56, 11111),
(67, 34, 55, 1212),
(68, 34, 70, 3),
(70, 34, 67, 6565),
(73, 80, 62, 100000000000000000),
(74, 81, 65, 134851186161),
(75, 82, 50, 232332366),
(77, 84, 52, 2016541),
(78, 84, 58, 232232),
(81, 34, 51, 6556);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CCL_users`
--

DROP TABLE IF EXISTS `CCL_users`;
CREATE TABLE `CCL_users` (
  `id` int NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `balance` bigint NOT NULL DEFAULT '0',
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `CCL_users`
--

INSERT INTO `CCL_users` (`id`, `username`, `email`, `balance`, `password`) VALUES
(1, '1', '1', 20267, '1'),
(2, '2', '2', 61567, '2'),
(3, '3', '3', 30000, '3'),
(34, 'SKINFINITY', 'SKINFINITY', 11764742, '$2b$10$eXEBAzejpvsZ//7SYYohNOiH63TbThtE47dVQalFY2QZ19A1TQNMe'),
(44, 'fdv', 'dfd@lsdsokdf-df.cde', 0, '$2b$10$.LxAVZx.NGVYQNkgq7uSqu0Ok78SroNv11EuQb9XJRBdeFOvR0qDa'),
(50, 'kl', 'kl', 7732, '$2b$10$OSa0usdSy9YZAe2wLNtPRuf4Xu6Dql1wdf6GhCLXvzEb/YDwHZNJm'),
(52, 'Charlie', 'Charlie', 0, '$2b$10$HUwNuuQVVODMbYT0xsHf4e8cWkaIvgj7Z9L35JK4zZNkRzFprLkwC'),
(53, 'Charlie2', 'Charlie2', 0, '$2b$10$26pnB6a993FLxi39184Ur.d51IhFY6MrAYRagRwDQPUbcS8TP4E8i'),
(54, 'Charlie3', 'Charlie3', 0, '$2b$10$JPyD4ABn9WgUhv8dmoY3FeoLPg4EkVjr6AK/VcU/q.uVISvN8n6Lm'),
(64, 'xxx', 'xxx', 5098, '$2b$10$9O0dnnZ6E8ZB/xH3De3yoOp6mEKJPGY.jGfRQ/tUqoe5koONoH58S'),
(66, '<h3>Para continuar navegado, inicie sesion</h3>', 'ads@gmail.com', 999990303726, '$2b$10$Xe..o7O3p./06lCv1gvfteh9wuEltJfTLs3MV/J5HpqluUhFEUa7C'),
(67, '22', '22', 0, '$2b$10$EsEkFpwH9kav0yE6K508/ut3xq5eQz9Qqr4oN2r6aGwZUR5dvGN5C'),
(69, 'KlemensTest', 'KlemensTest', 88888, '$2b$10$qr0WUsZQJwiHXuKPQGl5N.XBAZnTX0xsMB7dvWrbGauvd4qbAUX7G'),
(71, '1111111', '11111111', 0, '$2b$10$BQ8THP9dnoAOehm8Hqmqmees1mjTGaEWtxt1MprRpLifo3BCkC8r6'),
(73, 'ligma', 'ligma', 0, '$2b$10$EI3CNLk.lN2nrCX5rf1qc.NsF0x677LqwsX6C7t5TWj0q7GVMASSa'),
(76, 'victoroli', 'test', 17184444543, '$2b$10$UWeh4XIYI657S5PB4AXcIesNlPVyGsSHs3YBhF16kDkLvfrls8AQi'),
(77, 'lool', 'lool', 0, '$2b$10$a4fhup/Oh9RLdpMoKTLom.YpSaM82LIXoK8VN29tZiEZSElwbYzEG'),
(78, '33', '33', 0, '$2b$10$x0UwctEC2AspY6HhVwwCn.QuViChCUi1P7EitkxAtLFkYybO6ESV6'),
(79, '44', '44', 0, '$2b$10$bI/4zcYj.7nD7cA2Fw2/NuFH88A1OYd8q3s2YmK439D13fzjg4CFS'),
(80, 'hurensohn', 'vincenzodevita2@web.de', 279864061, '$2b$10$/RBaQpVUViTfVA7s/KxAkOygcFMXyHNv66JmovTgj5k3tuEtqF4Ye'),
(81, 'KeinBierVorVier', 'KeinBierVorVier@ssc.com', 734124, '$2b$10$1i.ReEYnwkfKRw0xbc2ume7vXbBR.STwiZUDfc36t3SHr1QENodXm'),
(82, 'das isses ', 'lol', 51715569, '$2b$10$tGrIbMvtzHQel38gTj4v5Oa0K0lg7c/IQOlN9fiij/Qgdvb6fB0PC'),
(83, 't', 't', 1057008, '$2b$10$tsrbFkkEg/LJmElqPeK0HeasY1Txk1AeaFTOceT521r.2kx6YJlSq'),
(84, 'doc', 'doc', 760665092, '$2b$10$MXKTBvEPYpsSjkRZ0mlIUu2lR13S0GZ9vcx7QCJQayF5auEPeOFbS'),
(85, 'Thais', 'Thais@thais.com', 54546389, '$2b$10$CHmm.3JDrkb6FtmivV3tquDPDLxL4ZfP1xCIgw49nwgV.LmeDtH2S'),
(87, 'Michi der Michi', 'Michi der Michi', 585102250, '$2b$10$dfpYEDdEUr98E3OSmWi2s.XLDS7d4tJRHss9XQrvORw9JGDZ9.Hym');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CCL_weapons`
--

DROP TABLE IF EXISTS `CCL_weapons`;
CREATE TABLE `CCL_weapons` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `team` text NOT NULL,
  `type` text NOT NULL,
  `rarity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `CCL_weapons`
--

INSERT INTO `CCL_weapons` (`id`, `name`, `image`, `team`, `type`, `rarity`) VALUES
(1, 'AK-47 | Fire Serpent', 'ak47_fire_serpent', 'T', 'ak47', 'Covert'),
(2, 'Desert Eagle | Golden Koi', 'desert_eagle_golden_koi', 'All', 'desert eagle', 'Covert'),
(3, 'AWP | Graphite', 'awp_graphite', 'All', 'awp', 'Classified'),
(4, 'P2000 | Ocean Foam', 'p2000_ocean_foam', 'CT', 'p2000', 'Classified'),
(5, 'P90 | Emerald Dragon', 'p90_emerald_dragon', 'All', 'p90', 'Classified'),
(6, 'M4A1-S | Bright Water', 'm4a1_bright_water', 'CT', 'm4a1', 'Restricted'),
(7, 'USP-S | Overgrowth', 'usp_overgrowth', 'CT', 'usp', 'Restricted'),
(8, 'M4A4 | Zirka', 'm4a4_zirka', 'CT', 'm4a4', 'Restricted'),
(9, 'MAC-10 | Graven', 'mac10_graven', 'T', 'mac10', 'Restricted'),
(10, 'G3SG1 | Demeter', 'g3sg1_demeter', 'CT', 'g3sg1', 'Mil-spec'),
(11, 'Galil AR | Shattered', 'galil_shattered', 'T', 'galil', 'Mil-spec'),
(12, 'SG 553 | Wave Spray', 'sg553_wave_spray', 'T', 'sg553', 'Mil-spec'),
(13, 'UMP-45 | Bone Pile', 'ump45_bone_pile', 'All', 'ump', 'Mil-spec'),
(14, 'Dual Berettas | Black Limba', 'dual_berettas_black_limba', 'All', 'dualies', 'Mil-Spec'),
(15, 'Nova | Tempest', 'nova_tempest', 'All', 'nova', 'Mil-Spec'),
(16, 'Bayonet Knife| Case Hardened', 'bayonet_case_hardened', 'All', 'bayonet', 'Rare Special Item'),
(17, 'Flip Knife | Crimson Web', 'flip_knife_crimson_web', 'All', 'flip knife', 'Rare Special Item'),
(18, 'Gut Knife | Stained', 'gut_knife_stained', 'All', 'gut knife', 'Rare Special Item'),
(19, 'Karambit Knife | Slaughter', 'karambit_slaughter', 'All', 'Karambit', 'Rare Special Item');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `CCL_inventory`
--
ALTER TABLE `CCL_inventory`
  ADD PRIMARY KEY (`userWeaponID`),
  ADD KEY `CCL_inventory_ibfk_2` (`weaponID`),
  ADD KEY `CCL_inventory_ibfk_1` (`userID`);

--
-- Indizes für die Tabelle `CCL_listings`
--
ALTER TABLE `CCL_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CCL_listings_ibfk_1` (`sellerID`),
  ADD KEY `CCL_listings_ibfk_2` (`sellerWeaponID`);

--
-- Indizes für die Tabelle `CCL_users`
--
ALTER TABLE `CCL_users`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `CCL_weapons`
--
ALTER TABLE `CCL_weapons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `CCL_inventory`
--
ALTER TABLE `CCL_inventory`
  MODIFY `userWeaponID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT für Tabelle `CCL_listings`
--
ALTER TABLE `CCL_listings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT für Tabelle `CCL_users`
--
ALTER TABLE `CCL_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT für Tabelle `CCL_weapons`
--
ALTER TABLE `CCL_weapons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `CCL_inventory`
--
ALTER TABLE `CCL_inventory`
  ADD CONSTRAINT `CCL_inventory_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `CCL_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CCL_inventory_ibfk_2` FOREIGN KEY (`weaponID`) REFERENCES `CCL_weapons` (`id`);

--
-- Constraints der Tabelle `CCL_listings`
--
ALTER TABLE `CCL_listings`
  ADD CONSTRAINT `CCL_listings_ibfk_1` FOREIGN KEY (`sellerID`) REFERENCES `CCL_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `CCL_listings_ibfk_2` FOREIGN KEY (`sellerWeaponID`) REFERENCES `CCL_inventory` (`userWeaponID`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
