-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-11-2023 a las 14:43:27
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motogp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motogp_events`
--

CREATE TABLE `motogp_events` (
  `id` varchar(36) NOT NULL,
  `country_iso` varchar(2) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_region_iso` varchar(2) DEFAULT NULL,
  `event_circuit_information_url` varchar(255) DEFAULT NULL,
  `event_circuit_information_menu_position` int(11) DEFAULT NULL,
  `event_podiums_url` varchar(255) DEFAULT NULL,
  `event_podiums_menu_position` int(11) DEFAULT NULL,
  `event_pole_positions_url` varchar(255) DEFAULT NULL,
  `event_pole_positions_menu_position` int(11) DEFAULT NULL,
  `event_nations_statistics_url` varchar(255) DEFAULT NULL,
  `event_nations_statistics_menu_position` int(11) DEFAULT NULL,
  `event_riders_all_time_url` varchar(255) DEFAULT NULL,
  `event_riders_all_time_menu_position` int(11) DEFAULT NULL,
  `circuit_id` varchar(36) NOT NULL,
  `circuit_name` varchar(255) NOT NULL,
  `circuit_legacy_id` int(11) NOT NULL,
  `circuit_place` varchar(255) NOT NULL,
  `circuit_nation` varchar(3) NOT NULL,
  `test` int(11) NOT NULL,
  `sponsored_name` varchar(255) DEFAULT NULL,
  `date_end` date NOT NULL,
  `toad_api_uuid` varchar(36) NOT NULL,
  `date_start` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `season_id` varchar(36) NOT NULL,
  `season_year` int(11) NOT NULL,
  `season_current` int(11) NOT NULL,
  `short_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `motogp_events`
--

INSERT INTO `motogp_events` (`id`, `country_iso`, `country_name`, `country_region_iso`, `event_circuit_information_url`, `event_circuit_information_menu_position`, `event_podiums_url`, `event_podiums_menu_position`, `event_pole_positions_url`, `event_pole_positions_menu_position`, `event_nations_statistics_url`, `event_nations_statistics_menu_position`, `event_riders_all_time_url`, `event_riders_all_time_menu_position`, `circuit_id`, `circuit_name`, `circuit_legacy_id`, `circuit_place`, `circuit_nation`, `test`, `sponsored_name`, `date_end`, `toad_api_uuid`, `date_start`, `name`, `season_id`, `season_year`, `season_current`, `short_name`) VALUES
('0140c3b6-74e6-49f0-a496-0131545deedb', 'IT', 'Italy', '', '', 1, '', 2, '', 2, '', 2, '', NULL, 'e0d07d48-0b62-40fa-9d36-411b15af406f', 'Misano World Circuit Marco Simoncelli', 38, 'Misano Adriatico', 'ITA', 1, 'Misano MotoGP™ Official Test ', '2023-09-11', '0140c3b6-74e6-49f0-a496-0131545deedb', '2023-09-11', 'MISANO MOTOGP™ OFFICIAL TEST ', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'IT6'),
('0b3ee045-3b76-4aea-9827-dfb0f1b6ce48', 'ES', 'Spain', 'CT', 'https://resources.motogp.com/files/results/2023/CAT/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/CAT/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/CAT/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/CAT/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/CAT/table4.pdf', 2, '2218098d-ab2d-498b-a633-1a4a39119e9e', 'Circuit de Barcelona-Catalunya', 13, 'Barcelona', 'SPA', 0, 'Gran Premi Monster Energy de Catalunya', '2023-09-03', 'e0293ea9-82a9-4ef1-a64a-375ee389ec07', '2023-09-01', 'GRAN PREMI DE CATALUNYA', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'CAT'),
('14bd179e-a4bc-4b0d-bd2e-69a9ed99cb60', 'JP', 'Japan', '', 'https://resources.motogp.com/files/results/2023/JPN/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/JPN/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/JPN/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/JPN/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/JPN/table4.pdf', 2, '213eb1ff-9ae5-4aec-862f-44a10637f36d', 'Mobility Resort Motegi', 76, 'Motegi', 'JPN', 0, 'Motul Grand Prix of Japan', '2023-10-01', '035904db-81fa-4232-a671-365ea236880b', '2023-09-29', 'GRAND PRIX OF JAPAN', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'JPN'),
('2147fcdf-a7ea-446c-a99a-21fe98c6949d', 'NL', 'Netherlands', '', 'https://resources.motogp.com/files/results/2023/NED/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/NED/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/NED/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/NED/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/NED/table4.pdf', 2, 'f4f9b0e8-1319-4d4f-a5ae-6cf193b01fca', 'TT Circuit Assen', 7, 'Assen', 'NED', 0, 'Motul TT Assen', '2023-06-25', 'a37733db-64ef-4702-b2b4-583aca89125f', '2023-06-23', 'TT ASSEN', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'NED'),
('28c89b32-cde3-4f3a-8c19-3e96520cdb10', 'ES', 'Spain', '', 'https://resources.motogp.com/files/results/2023/SPA/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/SPA/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/SPA/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/SPA/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/SPA/table4.pdf', NULL, '763812ea-9435-4c1c-b61b-a0c14ccdfbe4', 'Circuito de Jerez - Ángel Nieto', 4, 'Jerez de la Frontera', 'SPA', 0, 'Gran Premio MotoGP™ Guru by Gryfyn de España', '2023-04-30', '0aeb7d9a-45b5-49da-91a6-e693464ba034', '2023-04-28', 'GRAN PREMIO DE ESPAÑA', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'SPA'),
('2cc5cad7-fb28-49fa-9e4d-988396dd5270', 'FR', 'France', '', 'https://resources.motogp.com/files/results/2023/FRA/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/FRA/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/FRA/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/FRA/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/FRA/table4.pdf', NULL, 'ebb41e75-8664-4dfd-b0eb-07f24bd5fb92', 'Le Mans', 8, 'Le Mans', 'FRA', 0, 'Shark Grand Prix de France', '2023-05-14', '66afd967-5c91-443b-9aea-00dbea6c6141', '2023-05-12', 'GRAND PRIX DE FRANCE', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'FRA'),
('4481ddf0-e72e-4da7-844f-efab7a5acfeb', 'US', 'United States of America', '', 'https://resources.motogp.com/files/results/2023/AME/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/AME/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/AME/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/AME/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/AME/table4.pdf', NULL, '5b97d826-e527-43e9-b696-09f61cf4559c', 'Circuit Of The Americas', 101, 'Austin', 'USA', 0, 'Red Bull Grand Prix of The Americas', '2023-04-16', 'c6187910-7f4e-453c-b243-43b539a5f97b', '2023-04-14', 'GRAND PRIX OF THE AMERICAS', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'AME'),
('57b8ce5d-57c5-4799-bc76-4a250243bad2', 'GB', 'United Kingdom of Great Britain and Northern Ireland', '', 'https://resources.motogp.com/files/results/2023/GBR/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/GBR/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/GBR/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/GBR/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/GBR/table4.pdf', 2, '473ee5fa-b4e5-4c00-a0fe-28051700e20d', 'Silverstone Circuit', 42, 'Silverstone', 'GBR', 0, 'Monster Energy British Grand Prix', '2023-08-06', '5d4ee955-a157-45a3-91a6-9f98cf45a230', '2023-08-04', 'BRITISH GRAND PRIX', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'GBR'),
('5d13be02-7586-491a-8553-aca6a99a4afb', 'ES', 'Spain', '', '', 1, '', 2, '', 2, '', 2, '', NULL, '763812ea-9435-4c1c-b61b-a0c14ccdfbe4', 'Circuito de Jerez - Ángel Nieto', 4, 'Jerez de la Frontera', 'SPA', 1, 'Jerez MotoGP™ Official Test', '2023-05-01', 'f79431b4-b34f-44e8-bade-4865a3645b83', '2023-05-01', 'JEREZ MOTOGP™ OFFICIAL TEST', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'JE1'),
('6fc22d22-760d-420b-afb3-b909655b7062', 'ES', 'Spain', '', '', 1, '', 2, '', 2, '', 2, '', NULL, '763812ea-9435-4c1c-b61b-a0c14ccdfbe4', 'Circuito de Jerez - Ángel Nieto', 4, 'Jerez de la Frontera', 'SPA', 1, 'Jerez Moto2™ & Moto3™ Official Test', '2023-05-02', '6fc22d22-760d-420b-afb3-b909655b7062', '2023-05-02', 'JEREZ MOTO2™ & MOTO3™ OFFICIAL TEST', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'JE2'),
('7dfe8c6b-d700-41d7-a7e8-fde4069b8c05', 'AR', 'Argentina', '', 'https://resources.motogp.com/files/results/2023/ARG/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/ARG/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/ARG/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/ARG/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/ARG/table4.pdf', NULL, '536d88a0-b7b9-4312-a5f1-f196e8228991', 'Termas de Río Hondo', 102, 'Termas de Río Hondo', 'ARG', 0, 'Gran Premio Michelin® de la República Argentina', '2023-04-02', '688005f3-5ce3-482d-83ec-c05c8d8eb844', '2023-03-31', 'GRAN PREMIO DE LA REPÚBLICA ARGENTINA', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'ARG'),
('84a1502f-e1c8-4785-b095-5bb1ab1df656', 'PT', 'Portugal', '', '', 1, '', 2, '', 2, '', 2, '', NULL, '2218098d-ab2d-498b-a633-1a4a39119e9e', 'Circuit de Barcelona-Catalunya', 13, 'Barcelona', 'SPA', 1, 'Portimao Moto2™ & Moto3™ Official Test', '2023-03-19', '84a1502f-e1c8-4785-b095-5bb1ab1df656', '2023-03-17', 'PORTIMAO MOTO2™ & MOTO3™ OFFICIAL TEST', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'PT2'),
('8ed52491-e1aa-49a9-8d70-f1c1f8dd3090', 'IT', 'Italy', '', 'https://resources.motogp.com/files/results/2023/ITA/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/ITA/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/ITA/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/ITA/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/ITA/table4.pdf', 2, '1ab286fc-eb24-4980-85a8-b7b940f46e13', 'Autodromo Internazionale del Mugello', 6, 'Mugello', 'ITA', 0, 'Gran Premio dItalia Oakley', '2023-06-11', '7e13dbc1-f62a-4a94-bd2c-df35b77d8b80', '2023-06-09', 'GRAN PREMIO DITALIA', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'ITA'),
('a1587d52-7ccb-4c04-9b77-aaed632c861d', 'DE', 'Germany', '', 'https://resources.motogp.com/files/results/2023/GER/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/GER/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/GER/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/GER/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/GER/table4.pdf', 2, '551f87c7-1940-48b0-bce7-1ad8de7ce548', 'Sachsenring', 51, 'Sachsenring', 'GER', 0, 'Liqui Moly Motorrad Grand Prix Deutschland', '2023-06-18', '3fd381c5-689b-49e8-a965-2c07e3aa0855', '2023-06-16', 'MOTORRAD GRAND PRIX DEUTSCHLAND', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'GER'),
('b64da5dc-9859-4a5f-9a8f-db9db6faa5b4', 'AT', 'Austria', '', 'https://resources.motogp.com/files/results/2023/AUT/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/AUT/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/AUT/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/AUT/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/AUT/table4.pdf', 2, '8dc64efd-25f8-41cf-aa4f-dfbfa41a762a', 'Red Bull Ring - Spielberg', 24, 'Spielberg', 'AUT', 0, 'CryptoDATA Motorrad Grand Prix von Österreich', '2023-08-20', '93d68bde-0db6-4fe7-b169-46e2c9f7a5f1', '2023-08-18', 'MOTORRAD GRAND PRIX VON ÖSTERREICH', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'AUT'),
('bbe5c815-414a-4fe8-9118-5cee4d479639', 'MY', 'Malaysia', '', '', 1, '', 2, '', 2, '', 2, '', NULL, 'f5a7f3f8-0097-4810-a2da-eee749aedc77', 'Sepang International Circuit', 75, 'Sepang', 'MAL', 1, 'Sepang MotoGP™ Official Test', '2023-02-12', 'bbe5c815-414a-4fe8-9118-5cee4d479639', '2023-02-10', 'SEPANG MOTOGP™ OFFICIAL TEST', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'MY2'),
('bfd8a08c-cbb4-413a-a210-6d34774ea4c5', 'ID', 'Indonesia', '', 'https://resources.motogp.com/files/results/2023/INA/CircuitInformation.pdf', 1, '', 2, 'https://resources.motogp.com/files/results/2023/INA/PolePositions.pdf', 2, '', 2, '', NULL, 'a1ec6331-c571-418c-92d7-768cf0c83872', 'Pertamina Mandalika Circuit', 111, 'Lombok', 'INA', 0, 'Pertamina Grand Prix of Indonesia', '2023-10-15', '7390ee6e-25c5-4e45-b769-2b9b9666ee86', '2023-10-13', 'GRAND PRIX OF INDONESIA', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'INA'),
('cd3d90d8-b8ec-44b1-976d-cd8929af0c8b', 'IN', 'India', '', 'https://resources.motogp.com/files/results/2023/IND/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/IND/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/IND/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/IND/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/IND/table4.pdf', 2, 'ab56759b-8c77-468a-8442-88d712344d30', 'Buddh International Circuit', 113, 'Greater Noida', 'IND', 0, 'IndianOil Grand Prix of India', '2023-09-24', 'de3e0e02-2cd8-4a18-a1db-927fc8a50249', '2023-09-22', 'GRAND PRIX OF INDIA', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'IND'),
('df77971c-1f58-4cbd-911f-cf2391fd57e3', 'PT', 'Portugal', '', 'https://resources.motogp.com/files/results/2023/POR/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/POR/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/POR/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/POR/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/POR/table4.pdf', NULL, '912a9d7f-2864-4311-bebb-19851e9c2620', 'Autódromo Internacional do Algarve', 109, 'Portimao', 'POR', 0, 'Grande Prémio Tissot de Portugal', '2023-03-26', '4b70d9b1-3f31-4521-9ec1-9d18cd67a32a', '2023-03-24', 'GRANDE PRÉMIO DE PORTUGAL', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'POR'),
('f79431b4-b34f-44e8-bade-4865a3645b83', 'PT', 'Portugal', '', '', 1, '', 2, '', 2, '', 2, '', NULL, '912a9d7f-2864-4311-bebb-19851e9c2620', 'Autódromo Internacional do Algarve', 109, 'Portimao', 'POR', 1, 'Portimao MotoGP™ Official Test', '2023-03-12', '8d90c455-6ff9-4849-8abd-dc1e95a7d699', '2023-03-11', 'PORTIMAO MOTOGP™ OFFICIAL TEST', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'PT1'),
('ff342dac-9984-44eb-8f6a-ef04ccf86fa9', 'SM', 'San Marino', '', 'https://resources.motogp.com/files/results/2023/RSM/CircuitInformation.pdf', 1, 'https://resources.motogp.com/files/results/2023/RSM/Podiums.pdf', 2, 'https://resources.motogp.com/files/results/2023/RSM/PolePositions.pdf', 2, 'https://resources.motogp.com/files/results/2023/RSM/table2.pdf', 2, 'https://resources.motogp.com/files/results/2023/RSM/table4.pdf', 2, 'e0d07d48-0b62-40fa-9d36-411b15af406f', 'Misano World Circuit Marco Simoncelli', 38, 'Misano Adriatico', 'ITA', 0, 'Gran Premio Red Bull di San Marino e della Riviera di Rimini', '2023-09-10', '917d914f-b287-44b9-8af9-c81b5d1571b5', '2023-09-08', 'GRAN PREMIO DI SAN MARINO E DELLA RIVIERA DI RIMINI', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'RSM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motogp_full_results`
--

CREATE TABLE `motogp_full_results` (
  `result_id` varchar(36) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `rider_id` varchar(36) DEFAULT NULL,
  `rider_full_name` varchar(255) DEFAULT NULL,
  `rider_country_iso` varchar(2) DEFAULT NULL,
  `rider_country_name` varchar(255) DEFAULT NULL,
  `rider_region_iso` varchar(2) DEFAULT NULL,
  `rider_legacy_id` int(11) DEFAULT NULL,
  `rider_number` int(11) DEFAULT NULL,
  `riders_api_uuid` varchar(36) DEFAULT NULL,
  `team_id` varchar(36) DEFAULT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `team_legacy_id` int(11) DEFAULT NULL,
  `team_season_id` varchar(36) DEFAULT NULL,
  `team_season_year` int(11) DEFAULT NULL,
  `team_season_current` int(11) DEFAULT NULL,
  `constructor_id` varchar(36) DEFAULT NULL,
  `constructor_name` varchar(255) DEFAULT NULL,
  `constructor_legacy_id` int(11) DEFAULT NULL,
  `average_speed` decimal(5,1) DEFAULT NULL,
  `gap_first` varchar(255) DEFAULT NULL,
  `gap_lap` int(11) DEFAULT NULL,
  `total_laps` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_rider_id` varchar(36) DEFAULT NULL,
  `record_rider_full_name` varchar(255) DEFAULT NULL,
  `record_rider_country_iso` varchar(2) DEFAULT NULL,
  `record_rider_country_name` varchar(255) DEFAULT NULL,
  `record_rider_region_iso` varchar(2) DEFAULT NULL,
  `record_rider_legacy_id` int(11) DEFAULT NULL,
  `bestLap_number` int(11) DEFAULT NULL,
  `bestLap_time` varchar(255) DEFAULT NULL,
  `record_speed` decimal(5,1) DEFAULT NULL,
  `record_year` int(11) DEFAULT NULL,
  `isNewRecord` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `files` text DEFAULT NULL,
  `track_condition` text DEFAULT NULL,
  `air_condition` text DEFAULT NULL,
  `humidity_condition` text DEFAULT NULL,
  `ground_condition` text DEFAULT NULL,
  `weather_condition` text DEFAULT NULL,
  `classification_url` text DEFAULT NULL,
  `analysis_url` text DEFAULT NULL,
  `average_speed_url` text DEFAULT NULL,
  `fast_lap_sequence_url` text DEFAULT NULL,
  `lap_chart_url` text DEFAULT NULL,
  `analysis_by_lap_url` text DEFAULT NULL,
  `fast_lap_rider_url` text DEFAULT NULL,
  `grid_url` text DEFAULT NULL,
  `session_url` text DEFAULT NULL,
  `world_standing_url` text DEFAULT NULL,
  `best_partial_time_url` text DEFAULT NULL,
  `maximum_speed_url` text DEFAULT NULL,
  `combined_practice_url` text DEFAULT NULL,
  `combined_classification_url` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `category_name` text DEFAULT NULL,
  `event_name` text DEFAULT NULL,
  `event_sponsored_name` text DEFAULT NULL,
  `circuit_place` text DEFAULT NULL,
  `circuit_nation` text DEFAULT NULL,
  `country_name` text DEFAULT NULL,
  `country_region_iso` text DEFAULT NULL,
  `event_short_name` text DEFAULT NULL,
  `s_status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motogp_season`
--

CREATE TABLE `motogp_season` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `current` tinyint(1) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `motogp_season`
--

INSERT INTO `motogp_season` (`id`, `name`, `year`, `current`, `md5`) VALUES
('db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', NULL, 2023, 1, '5e73a7e293b6a265b39930ae4c66ffec'),
('fa729c5c-a34a-40b9-8ebf-2578d9433517', NULL, 2020, 0, '55b4a22d4bc59457a6fd1db8ead1e633');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motogp_world_standing_riders`
--

CREATE TABLE `motogp_world_standing_riders` (
  `classification_id` char(36) NOT NULL,
  `position` int(11) NOT NULL,
  `rider_id` char(36) NOT NULL,
  `rider_full_name` varchar(255) NOT NULL,
  `rider_country_iso` char(2) NOT NULL,
  `rider_country_name` varchar(255) NOT NULL,
  `rider_region_iso` char(2) DEFAULT NULL,
  `rider_legacy_id` int(11) DEFAULT NULL,
  `rider_number` int(11) DEFAULT NULL,
  `riders_api_uuid` char(36) DEFAULT NULL,
  `team_id` char(36) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `team_legacy_id` int(11) DEFAULT NULL,
  `season_id` char(36) NOT NULL,
  `season_year` int(11) NOT NULL,
  `season_current` int(11) NOT NULL,
  `constructor_id` char(36) NOT NULL,
  `constructor_name` varchar(255) NOT NULL,
  `constructor_legacy_id` int(11) DEFAULT NULL,
  `session` varchar(10) NOT NULL,
  `points` int(11) NOT NULL,
  `xmlFile` varchar(255) DEFAULT NULL,
  `year` varchar(4) NOT NULL,
  `session_id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `motogp_world_standing_riders`
--

INSERT INTO `motogp_world_standing_riders` (`classification_id`, `position`, `rider_id`, `rider_full_name`, `rider_country_iso`, `rider_country_name`, `rider_region_iso`, `rider_legacy_id`, `rider_number`, `riders_api_uuid`, `team_id`, `team_name`, `team_legacy_id`, `season_id`, `season_year`, `season_current`, `constructor_id`, `constructor_name`, `constructor_legacy_id`, `session`, `points`, `xmlFile`, `year`, `session_id`, `category_id`, `md5`) VALUES
('76de10f4-6e2b-4670-bf82-de5c9c21291b', 1, '9cb55304-0ac1-401c-beb6-1a4f445018a4', 'Francesco Bagnaia', 'IT', 'Italy', NULL, 8273, 1, '66b78301-5826-4986-b11e-fa68a7bd77a7', '52ce0374-e215-4d1c-ae94-062ea3cb45ac', 'Ducati Lenovo Team', 75, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'b9d93efb-3cd0-4681-9de4-c412a866d568', 'Ducati', 110, 'RAC', 346, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', 'ea1bf4aab7c989e50fb86f4b6ce13300'),
('f3d37150-e2b2-484f-a157-a967d70c0ea1', 2, '5cbd7eb6-ccfc-4b9f-aad1-ede25d394f7b', 'Jorge Martin', 'ES', 'Spain', NULL, 8146, 89, '5b9af34e-da94-4ca2-9c4c-6be0fc8b1bbc', '8cc37cab-5932-4cfc-bcb7-43c123fd9078', 'Prima Pramac Racing', 79, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'b9d93efb-3cd0-4681-9de4-c412a866d568', 'Ducati', 110, 'RAC', 328, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '86a5d9f455c9c40da219ed846b49aa56'),
('ca19bfb4-a84b-48bd-826c-165387fbadf0', 3, 'ab06dbae-7d6e-47c3-b63f-b7ac6b7d3bcd', 'Marco Bezzecchi', 'IT', 'Italy', NULL, 8688, 72, 'e622ec5b-5ccf-457c-a67f-ec028f0ddf6e', '1ccf3842-3b2c-47d8-aa38-6fec1936f3ac', 'Mooney VR46 Racing Team', 76, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'b9d93efb-3cd0-4681-9de4-c412a866d568', 'Ducati', 110, 'RAC', 312, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '4a68242a3ed59d1d60c7f7435cc5820f'),
('777a345c-24c5-4fcf-aa5d-18e1665e3202', 4, 'e71216ef-2c43-4dbd-a2dd-40c054ea0d60', 'Enea Bastianini', 'IT', 'Italy', NULL, 9528, 23, 'a57f7ad5-eab8-4e94-89cd-1d9ec5066ae1', 'a180985a-9327-4c68-8bd6-0b0b4e051f65', 'Gresini Racing MotoGP', 65, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '5b647585-e54a-4f1d-8a1c-090f2ff476f3', 'Ducati', 110, 'RAC', 273, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '8e9a36b762db002f6d0b5d0b77f35d7a'),
('08648a3c-03a0-43a5-837b-3de21c9f688e', 5, 'ab238e38-1940-42cf-80fe-8f6e366b301e', 'Joan Mir', 'ES', 'Spain', NULL, 7992, 36, '447d7f60-9e9e-49e0-870d-4778c731468e', '355a8233-3a7e-499c-a7eb-13b962eb9e7d', 'Team Suzuki Ecstar', 49, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '36f52956-043e-4a1c-8f71-8995c896d6fc', 'Suzuki', 111, 'RAC', 265, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '067754db5dbd0e1407d4c1588b9c5a65'),
('deea078a-b212-43ce-bdb5-96a20a1143ad', 6, 'c20d097f-3d3f-4cf2-b036-3a1d6f124740', 'Miguel Oliveira', 'PT', 'Portugal', NULL, 8013, 88, 'd7737dfb-b4ac-4ae4-9e5a-145c1f8bf0c2', 'ddbd2682-1d9e-496c-8162-1f5dabf23d2a', 'Red Bull KTM Factory Racing', 42, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '6e6f56b3-ef76-4e7b-aa21-5f1e872dcc1a', 'KTM', 113, 'RAC', 264, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '7ea419259933ad7968b5d3bdf4f9ed46'),
('af3a2fc7-272d-465b-8a08-57e2c1deed3d', 7, '593e3ec1-40f8-47e9-bf61-f781e3a2b7a5', 'Pol Espargaro', 'ES', 'Spain', NULL, 7991, 44, '5372b743-35ac-40bf-8c8b-2d5d47bcf06d', 'ee47fe57-b672-4d5a-9fc5-47a195145b33', 'Repsol Honda Team', 46, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'ecf1a662-b90c-4d02-bd06-b9e8e01992ed', 'Honda', 109, 'RAC', 192, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '84d2461dd980f7bfc8dfc8d6b5b07075'),
('d0ed4cb1-193d-4da1-9e65-9b1a4f9a1fcf', 8, 'e5d73317-44a4-4de5-bb54-1a150a8fe5fc', 'Aleix Espargaro', 'ES', 'Spain', NULL, 7995, 41, 'e76a070d-6f21-4eb3-a95c-e0e433330f10', '5a95c5d9-bcee-4b82-b8f2-c4fbadf7a8c6', 'Aprilia Racing Team Gresini', 54, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '330e8aa2-2ad5-4edf-9681-0e7d83e6da23', 'Aprilia', 105, 'RAC', 152, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '1a0c5d3b12f3df3204a6da232461ac6f'),
('a614d8f8-08e8-48de-b2a1-00b4c6d32c13', 9, 'cd08d9e7-d5f7-4ebd-810e-36a72681cf99', 'Marc Marquez', 'ES', 'Spain', NULL, 7994, 93, '48fb853f-1c1f-4c7c-9d2d-4c2e17d0a453', 'ddbd2682-1d9e-496c-8162-1f5dabf23d2a', 'Repsol Honda Team', 46, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '3e8a7eb1-4cd2-4f43-8a06-98147776bced', 'Honda', 109, 'RAC', 145, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '7c8d3ab3aadaab1edf9b542e557c6df4'),
('c53e8b9f-9b95-4bf4-b5fc-3df1c59f8e27', 10, '4b2f1d8c-f9aa-4c20-95c1-1be2f1a5db68', 'Brad Binder', 'ZA', 'South Africa', NULL, 8025, 33, '6038ebf5-25b5-4819-a962-dbf24e71e4a3', 'e83293c3-e168-4b15-9be2-027b8bf7d5db', 'Red Bull KTM Factory Racing', 44, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '3d89c9ea-6481-4012-b9a3-9e4aa075f9e7', 'KTM', 105, 'RAC', 138, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '19b8b058ed4708ab0f7c9be7bfbf4d97'),
('eff872b3-ba8d-4b2b-90e9-d6f4fca1b180', 11, '890d9ab9-7a88-42f3-b41c-663ff9d88822', 'Takaaki Nakagami', 'JP', 'Japan', NULL, 7988, 30, '7ef660b3-1e7c-4e61-95f0-7be16ac55823', '95c6f1ea-e06e-41d2-b874-5828c0c9a6f1', 'LCR Honda Idemitsu', 46, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '5340b3db-1021-4ab7-9dd9-b2bf94a1ff1c', 'Honda', 109, 'RAC', 118, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '4da748d2d5868a7db4dab0f0e2a5e9f4'),
('5b24e0b8-fc17-4c19-9c5e-8a0fb8da661c', 12, 'a72ac148-689f-4f6c-8707-e5a77234f10a', 'Miguel Oliveira', 'PT', 'Portugal', NULL, 7989, 88, 'cdf8ccaa-99e5-4c25-bd0e-ba2ad1813d1b', '3e5c6d34-e551-495d-9601-c3f92bfe0b5b', 'Red Bull KTM Factory Racing', 44, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, 'd3e85ed1-b4fe-4155-9d74-100c14cb5b2c', 'KTM', 105, 'RAC', 110, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', '2df7e19fc44ad3993f07f3ebe2976c43'),
('2b1463c1-b729-4a94-b70b-9b7384ab830b', 13, '9cb29a4c-9037-4a77-9c4b-264ac91343cc', 'Danilo Petrucci', 'IT', 'Italy', NULL, 7994, 9, '6a6135c8-2d5b-4d88-9035-79f10b7aa8a7', '86ff12a2-cfec-4dd7-9a5b-0447d51a7b72', 'Tech 3 KTM Factory Racing', 50, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '1b89b89e-8f9b-4fcd-b77f-47f9c9f19607', 'KTM', 105, 'RAC', 94, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', 'd6d9d2a2c7e2813b22f8b7595df071a2'),
('8398a59a-0fc7-4671-a01b-ee3aa7696477', 14, '651fb24e-5d5f-407a-987f-731b5ef21dd3', 'Luca Marini', 'IT', 'Italy', NULL, 8076, 10, '431bf713-7828-4593-8cf3-65f1c9dd71e4', 'd6ce81cc-fc1a-421c-8d0a-4a4947e8e4d0', 'Gresini Racing MotoGP', 86, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '8a8f9327-bbd7-48a9-8b84-214f865a5c99', 'Aprilia', 71, 'RAC', 82, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', 'c32d9a7aa5245a2b6637323eb37a89e0'),
('afe60e1a-7080-4fe1-a05c-6c56c6ffac4d', 15, '650773b5-1f4a-4cc1-9ae5-d96191f3ad72', 'Valentino Rossi', 'IT', 'Italy', NULL, 7995, 46, 'c3d4f8e1-8a57-48c5-bc29-482e530d9a8f', 'd8c106cd-0056-4a46-b1d6-2373c16c1c8e', 'Petronas Yamaha SRT', 17, 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 2023, 1, '1c67e78a-e0e6-4612-b272-83e14086bdcd', 'Yamaha', 99, 'RAC', 74, 'https://resources.motogp.com/files/results/2023/INA/MotoGP/RAC/worldstanding.XML', '2023', 'db8dc197-c7b2-4c1b-b3a4-6dc534c023ef', 'e8c110ad-64aa-4e8e-8a86-f2f152f6a942', 'b23a3f333c61e9f135b1a5f2c8a2a6c8');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `motogp_events`
--
ALTER TABLE `motogp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motogp_full_results`
--
ALTER TABLE `motogp_full_results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indices de la tabla `motogp_season`
--
ALTER TABLE `motogp_season`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
