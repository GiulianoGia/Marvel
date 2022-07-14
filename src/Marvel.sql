-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 172.17.0.1
-- Erstellungszeit: 14. Jul 2022 um 12:39
-- Server-Version: 10.8.3-MariaDB-1:10.8.3+maria~jammy
-- PHP-Version: 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `Marvel`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `actor`
--

CREATE TABLE `actor` (
                         `actorid` int(11) NOT NULL,
                         `age` int(11) NOT NULL,
                         `firstname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                         `img` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                         `lastname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Daten für Tabelle `actor`
--

INSERT INTO `actor` (`actorid`, `age`, `firstname`, `img`, `lastname`) VALUES
                                                                           (1, 57, 'Robert', 'robert_downey_jr.jpeg', 'Downey Jr.'),
                                                                           (2, 38, 'Chris', 'chris_hemsworth.jpeg', 'Hemsworth'),
                                                                           (3, 41, 'Chris', 'chris_evans.jpeg', 'Evans'),
                                                                           (4, 37, 'Scarlett', 'scarlett_johansson.jpeg', 'Johansson'),
                                                                           (5, 52, 'Edward', 'edward_norton.jpeg', 'Norton'),
                                                                           (6, 33, 'Elizabeth', 'elizabeth_olsen.jpeg', 'Olsen'),
                                                                           (7, 51, 'Jeremy', 'jeremy_renner.jpeg', 'Renner'),
                                                                           (8, 54, 'Mark', 'mark_ruffalo.jpeg', 'Ruffalo'),
                                                                           (9, 32, 'Aaron', 'aaron_taylor-johnson.jpeg', 'Taylor-Johnson'),
                                                                           (10, 73, 'Samuel L.', 'samuel_l_jackson.jpeg', 'Jackson'),
                                                                           (11, 60, 'Clark', 'clark_gregg.jpeg', 'Gregg'),
                                                                           (12, 40, 'Cobie', 'cobie_smulders.jpeg', 'Smulders'),
                                                                           (13, 40, 'Hayley', 'hayley_atwell.jpeg', 'Atwell'),
                                                                           (14, 57, 'Don', 'don_cheadle.jpeg', 'Cheadle'),
                                                                           (15, 44, 'Dominic', 'dominic_cooper.jpeg', 'Cooper'),
                                                                           (16, 49, 'Idris', 'idris_elba.jpeg', 'Elba'),
                                                                           (17, 84, 'Anthony', 'anthony_hopkins.jpeg', 'Hopkins'),
                                                                           (18, 53, 'Terrence', 'terrence_howard.jpeg', 'Howard'),
                                                                           (19, 43, 'Anthony', 'anthony_mackie.jpeg', 'Mackie'),
                                                                           (20, 49, 'Gwyneth', 'gwyneth_paltrow.jpeg', 'Paltrow'),
                                                                           (21, 41, 'Natalie', 'natalie_portman.jpeg', 'Portman'),
                                                                           (22, 68, 'Rene', 'rene_russo.jpeg', 'Russo'),
                                                                           (23, 71, 'Stellan', 'stellan_skarsgard.jpeg', 'Skarsgård'),
                                                                           (24, 59, 'John', 'john_slattery.jpeg', 'Slattery'),
                                                                           (25, 39, 'Sebastian', 'sebastian_stan.jpeg', 'Stan'),
                                                                           (26, 41, 'Tom', 'tom_hiddleston.jpeg', 'Hiddleston'),
                                                                           (27, 62, 'James', 'james_spader.jpeg', 'Spader'),
                                                                           (28, 53, 'Dave', 'dave_bautista.jpeg', 'Bautista'),
                                                                           (29, 47, 'Bradley', 'bradley_cooper.jpeg', 'Cooper'),
                                                                           (30, 54, 'Vin', 'vin_diesel.jpeg', 'Diesel'),
                                                                           (31, 43, 'Chris', 'chris_pratt.jpeg', 'Pratt'),
                                                                           (32, 44, 'Zoe', 'zoe_saldana.jpeg', 'Saldana'),
                                                                           (33, 53, 'Paul', 'paul_rudd.jpeg', 'Rudd'),
                                                                           (34, 77, 'Michael', 'michael_douglas.jpeg', 'Douglas'),
                                                                           (35, 46, 'Judy', 'judy_greer.jpeg', 'Greer'),
                                                                           (36, 42, 'Evangeline', 'evangeline_lilly.jpeg', 'Lilly'),
                                                                           (37, 46, 'Michael', 'michael_pena.jpeg', 'Peña'),
                                                                           (38, 46, 'Corey', 'corey_stoll.jpeg', 'Stoll'),
                                                                           (39, 52, 'Bobby', 'bobby_cannavale.jpeg', 'Cannavale'),
                                                                           (40, 43, 'Chadwick', 'chadwick_boseman.jpeg', 'Boseman'),
                                                                           (41, 35, 'Michael B.', 'michael_b_jordan.jpeg', 'Jordan'),
                                                                           (42, 28, 'Letitia', 'letitia_wright.jpeg', 'Wright'),
                                                                           (43, 44, 'Danai', 'danai_gurira.jpeg', 'Gurira'),
                                                                           (44, 33, 'Daniel', 'daniel_kaluuya.jpeg', 'Kaluuya'),
                                                                           (45, 35, 'Winston', 'winston_duke.jpeg', 'Duke'),
                                                                           (46, 50, 'Martin', 'martin_freeman.jpeg', 'Freeman'),
                                                                           (47, 63, 'Angela', 'angela_bassett.jpeg', 'Bassett'),
                                                                           (48, 95, 'Stan', 'stan_lee.jpeg', 'Lee'),
                                                                           (49, 46, 'Sterling K.', 'sterling_k_brown.jpeg', 'Brown'),
                                                                           (50, 39, 'Lupita', 'lupita_nyong\'o.jpeg', 'Nyong\'o'),
                                                                           (51, 60, 'Forest', 'forest_whitaker.jpeg', 'Whitaker'),
                                                                           (52, 32, 'Shaunette Renée', 'shaunette_renee_wilson.jpeg', 'Wilson'),
                                                                           (53, 32, 'Denzel', 'denzel_whitaker.jpeg', 'Whitaker'),
                                                                           (54, 78, 'John', 'john_kani.jpeg', 'Kani'),
                                                                           (55, 17, 'Alex R.', 'alex_r_hibbert.jpeg', 'Hibbert'),
                                                                           (56, 45, 'Florence', 'florence_kasumba.jpeg', 'Kasumba'),
                                                                           (57, 38, 'Atandwa', 'atandwa_kani.jpeg', 'Kani');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellungen`
--

CREATE TABLE `bestellungen` (
                                `BestellungID` int(11) NOT NULL,
                                `Datum` text NOT NULL,
                                `Status` varchar(20) NOT NULL,
                                `Versand` text NOT NULL,
                                `Gesamtsumme` int(11) NOT NULL,
                                `Gewicht` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `bestellungen`
--

INSERT INTO `bestellungen` (`BestellungID`, `Datum`, `Status`, `Versand`, `Gesamtsumme`, `Gewicht`) VALUES
                                                                                                        (2720, '07/19/2021', 'Abgeschlossen', '07/20/2021', 251, 1300),
                                                                                                        (2753, '06/09/2021', 'Abgeschlossen', '06/10/2021', 307, 1000),
                                                                                                        (2760, '11/25/2020', 'Abgeschlossen', '11/26/2020', 294, 250),
                                                                                                        (2761, '05/06/2021', 'Abgeschlossen', '05/07/2021', 312, 1700),
                                                                                                        (2765, '08/09/2020', 'Abgeschlossen', '08/10/2020', 40, 600),
                                                                                                        (2770, '07/25/2020', 'Abgeschlossen', '07/26/2020', 140, 450),
                                                                                                        (2783, '03/28/2021', 'Abgeschlossen', '03/29/2021', 239, 300),
                                                                                                        (2812, '01/13/2021', 'Abgeschlossen', '01/14/2021', 169, 500),
                                                                                                        (2816, '03/05/2021', 'Fehlgeschlagen', '', 255, 350),
                                                                                                        (2860, '01/04/2021', 'Abgeschlossen', '01/05/2021', 320, 550),
                                                                                                        (2867, '07/11/2020', 'Abgeschlossen', '07/12/2020', 171, 1700),
                                                                                                        (2886, '09/27/2020', 'Fehlgeschlagen', '', 165, 500),
                                                                                                        (2939, '09/05/2020', 'Abgeschlossen', '09/06/2020', 23, 1250),
                                                                                                        (2950, '02/21/2021', 'Abgeschlossen', '02/22/2021', 33, 500),
                                                                                                        (2957, '08/12/2021', 'Abgeschlossen', '08/13/2021', 52, 1650),
                                                                                                        (2962, '05/24/2020', 'Abgeschlossen', '05/25/2020', 316, 1900),
                                                                                                        (2997, '04/25/2020', 'Abgeschlossen', '04/26/2020', 33, 1800),
                                                                                                        (3018, '07/16/2021', 'Abgeschlossen', '07/17/2021', 237, 1600),
                                                                                                        (3042, '08/16/2020', 'Abgeschlossen', '08/17/2020', 74, 350),
                                                                                                        (3047, '06/06/2021', 'Abgeschlossen', '06/07/2021', 54, 750),
                                                                                                        (3049, '05/01/2021', 'Abgeschlossen', '05/02/2021', 320, 1550),
                                                                                                        (3070, '10/17/2020', 'Abgeschlossen', '10/18/2020', 169, 1800),
                                                                                                        (3083, '08/25/2021', 'Abgeschlossen', '08/26/2021', 291, 350),
                                                                                                        (3088, '05/15/2020', 'Abgeschlossen', '05/16/2020', 15, 1350),
                                                                                                        (3101, '03/19/2020', 'Abgeschlossen', '03/20/2020', 177, 1350),
                                                                                                        (3130, '12/19/2020', 'Abgeschlossen', '12/20/2020', 301, 1700),
                                                                                                        (3133, '09/09/2020', 'Abgeschlossen', '09/10/2020', 55, 1600),
                                                                                                        (3138, '01/25/2021', 'Abgeschlossen', '01/26/2021', 178, 1450),
                                                                                                        (3177, '01/05/2021', 'Abgeschlossen', '01/06/2021', 144, 1550),
                                                                                                        (3179, '07/02/2021', 'Abgeschlossen', '07/03/2021', 114, 700),
                                                                                                        (3187, '08/01/2020', 'Abgeschlossen', '08/02/2020', 103, 800),
                                                                                                        (3203, '01/10/2021', 'Abgeschlossen', '01/11/2021', 31, 400),
                                                                                                        (3222, '10/20/2020', 'Abgeschlossen', '10/21/2020', 210, 1250),
                                                                                                        (3226, '10/05/2020', 'Abgeschlossen', '10/06/2020', 216, 700),
                                                                                                        (3231, '08/27/2021', 'Abgeschlossen', '08/28/2021', 308, 150),
                                                                                                        (3246, '05/29/2021', 'Storniert', '', 86, 900),
                                                                                                        (3249, '12/10/2020', 'Abgeschlossen', '12/11/2020', 76, 1600),
                                                                                                        (3285, '06/09/2020', 'Abgeschlossen', '06/10/2020', 291, 350),
                                                                                                        (3290, '10/18/2020', 'Abgeschlossen', '10/19/2020', 55, 750),
                                                                                                        (3320, '07/19/2020', 'Abgeschlossen', '07/20/2020', 286, 250),
                                                                                                        (3326, '07/16/2021', 'Abgeschlossen', '07/17/2021', 140, 750),
                                                                                                        (3328, '04/14/2021', 'Storniert', '', 137, 1550),
                                                                                                        (3429, '09/16/2020', 'Abgeschlossen', '09/17/2020', 136, 200),
                                                                                                        (3436, '08/01/2020', 'Abgeschlossen', '08/02/2020', 181, 750),
                                                                                                        (3447, '01/31/2021', 'Abgeschlossen', '02/01/2021', 77, 1150),
                                                                                                        (3448, '04/08/2021', 'Abgeschlossen', '04/09/2021', 68, 1300),
                                                                                                        (3505, '06/01/2021', 'Abgeschlossen', '06/02/2021', 208, 450),
                                                                                                        (3515, '03/16/2020', 'Abgeschlossen', '03/17/2020', 310, 250),
                                                                                                        (3527, '08/28/2020', 'Abgeschlossen', '08/29/2020', 146, 1150),
                                                                                                        (3547, '04/24/2021', 'Abgeschlossen', '04/25/2021', 294, 1150),
                                                                                                        (3562, '01/25/2021', 'Abgeschlossen', '01/26/2021', 174, 500),
                                                                                                        (3564, '09/03/2021', 'Fehlgeschlagen', '', 78, 1900),
                                                                                                        (3590, '11/09/2020', 'Abgeschlossen', '11/10/2020', 44, 1000),
                                                                                                        (3597, '10/11/2020', 'Abgeschlossen', '10/12/2020', 199, 1000),
                                                                                                        (3615, '06/13/2020', 'Abgeschlossen', '06/14/2020', 210, 950),
                                                                                                        (3639, '06/16/2021', 'Abgeschlossen', '06/17/2021', 312, 1950),
                                                                                                        (3640, '07/06/2021', 'Abgeschlossen', '07/07/2021', 231, 650),
                                                                                                        (3659, '11/17/2020', 'Abgeschlossen', '11/18/2020', 236, 1250),
                                                                                                        (3665, '04/08/2020', 'Fehlgeschlagen', '', 121, 1100),
                                                                                                        (3707, '10/08/2020', 'Abgeschlossen', '10/09/2020', 98, 1750),
                                                                                                        (3735, '11/05/2020', 'Abgeschlossen', '11/06/2020', 183, 450),
                                                                                                        (3749, '04/27/2021', 'Abgeschlossen', '04/28/2021', 166, 1200),
                                                                                                        (3752, '03/13/2021', 'Fehlgeschlagen', '', 186, 1500),
                                                                                                        (3768, '08/24/2020', 'Abgeschlossen', '08/25/2020', 240, 550),
                                                                                                        (3787, '05/12/2020', 'Abgeschlossen', '05/13/2020', 115, 1650),
                                                                                                        (3788, '05/27/2020', 'Abgeschlossen', '05/28/2020', 203, 700),
                                                                                                        (3837, '08/02/2021', 'Abgeschlossen', '08/03/2021', 190, 250),
                                                                                                        (3854, '04/16/2021', 'Abgeschlossen', '04/17/2021', 295, 1000),
                                                                                                        (3857, '03/11/2021', 'Fehlgeschlagen', '', 123, 1950),
                                                                                                        (3940, '08/08/2021', 'Storniert', '', 36, 1450),
                                                                                                        (3978, '07/04/2021', 'Abgeschlossen', '07/05/2021', 15, 400),
                                                                                                        (3980, '05/26/2021', 'Abgeschlossen', '05/27/2021', 48, 1850),
                                                                                                        (3990, '01/10/2021', 'Storniert', '', 286, 150),
                                                                                                        (4001, '05/02/2020', 'Abgeschlossen', '05/03/2020', 91, 2000),
                                                                                                        (4002, '05/02/2020', 'Storniert', '', 242, 700),
                                                                                                        (4081, '04/27/2020', 'Storniert', '', 78, 500),
                                                                                                        (4082, '03/02/2021', 'Abgeschlossen', '03/03/2021', 153, 750),
                                                                                                        (4083, '04/21/2020', 'Abgeschlossen', '04/22/2020', 63, 150),
                                                                                                        (4111, '06/06/2021', 'Abgeschlossen', '06/07/2021', 212, 900),
                                                                                                        (4118, '11/04/2020', 'Abgeschlossen', '11/05/2020', 64, 1750),
                                                                                                        (4127, '01/25/2021', 'Abgeschlossen', '01/26/2021', 115, 1850),
                                                                                                        (4134, '03/12/2020', 'Abgeschlossen', '03/13/2020', 257, 1000),
                                                                                                        (4166, '11/25/2020', 'Abgeschlossen', '11/26/2020', 176, 1250),
                                                                                                        (4179, '12/21/2020', 'Abgeschlossen', '12/22/2020', 87, 900),
                                                                                                        (4212, '09/03/2021', 'Storniert', '', 283, 1100),
                                                                                                        (4228, '07/18/2021', 'Storniert', '', 73, 900),
                                                                                                        (4230, '01/09/2021', 'Abgeschlossen', '01/10/2021', 46, 2000),
                                                                                                        (4236, '09/18/2020', 'Abgeschlossen', '09/19/2020', 315, 1700),
                                                                                                        (4237, '01/22/2021', 'Abgeschlossen', '01/23/2021', 50, 1700),
                                                                                                        (4248, '04/16/2020', 'Abgeschlossen', '04/17/2020', 296, 550),
                                                                                                        (4269, '08/20/2021', 'Abgeschlossen', '08/21/2021', 231, 1600),
                                                                                                        (4283, '09/27/2020', 'Fehlgeschlagen', '', 284, 1700),
                                                                                                        (4304, '03/15/2021', 'Abgeschlossen', '03/16/2021', 234, 550),
                                                                                                        (4307, '04/27/2020', 'Abgeschlossen', '04/28/2020', 199, 1600),
                                                                                                        (4326, '02/14/2021', 'Abgeschlossen', '02/15/2021', 270, 1250),
                                                                                                        (4359, '06/05/2021', 'Abgeschlossen', '06/06/2021', 137, 600),
                                                                                                        (4365, '09/25/2020', 'Abgeschlossen', '09/26/2020', 293, 1350),
                                                                                                        (4370, '05/20/2020', 'Abgeschlossen', '05/21/2020', 166, 1050),
                                                                                                        (4378, '11/14/2020', 'Abgeschlossen', '11/15/2020', 315, 500),
                                                                                                        (4384, '01/20/2021', 'Abgeschlossen', '01/21/2021', 274, 850),
                                                                                                        (4405, '05/08/2021', 'Abgeschlossen', '05/09/2021', 280, 1800),
                                                                                                        (4412, '03/23/2020', 'Abgeschlossen', '03/24/2020', 36, 200),
                                                                                                        (4496, '04/01/2021', 'Abgeschlossen', '04/02/2021', 183, 1450),
                                                                                                        (4506, '02/17/2021', 'Fehlgeschlagen', '', 65, 850),
                                                                                                        (4527, '04/28/2020', 'Abgeschlossen', '04/29/2020', 156, 950),
                                                                                                        (4529, '05/12/2020', 'Abgeschlossen', '05/13/2020', 291, 1350),
                                                                                                        (4549, '06/17/2021', 'Abgeschlossen', '06/18/2021', 195, 400),
                                                                                                        (4568, '06/23/2020', 'Abgeschlossen', '06/24/2020', 93, 1300),
                                                                                                        (4570, '01/18/2021', 'Abgeschlossen', '01/19/2021', 54, 1100),
                                                                                                        (4600, '06/06/2021', 'Abgeschlossen', '06/07/2021', 53, 1600),
                                                                                                        (4606, '08/19/2020', 'Abgeschlossen', '08/20/2020', 272, 1400),
                                                                                                        (4619, '09/10/2021', 'Abgeschlossen', '09/11/2021', 69, 1300),
                                                                                                        (4637, '03/23/2020', 'Abgeschlossen', '03/24/2020', 120, 1050),
                                                                                                        (4642, '10/15/2020', 'Abgeschlossen', '10/16/2020', 226, 900),
                                                                                                        (4647, '06/17/2020', 'Abgeschlossen', '06/18/2020', 314, 1650),
                                                                                                        (4651, '07/29/2021', 'Abgeschlossen', '07/30/2021', 188, 1600),
                                                                                                        (4660, '03/20/2021', 'Abgeschlossen', '03/21/2021', 174, 950),
                                                                                                        (4716, '05/12/2020', 'Abgeschlossen', '05/13/2020', 256, 1900),
                                                                                                        (4718, '11/20/2020', 'Abgeschlossen', '11/21/2020', 180, 1250),
                                                                                                        (4752, '08/12/2020', 'Abgeschlossen', '08/13/2020', 203, 1250),
                                                                                                        (4758, '02/16/2021', 'Abgeschlossen', '02/17/2021', 217, 300),
                                                                                                        (4768, '06/15/2021', 'Abgeschlossen', '06/16/2021', 51, 950),
                                                                                                        (4785, '04/25/2021', 'Abgeschlossen', '04/26/2021', 253, 1800),
                                                                                                        (4790, '04/03/2020', 'Fehlgeschlagen', '', 68, 150),
                                                                                                        (4818, '06/20/2021', 'Abgeschlossen', '06/21/2021', 281, 950),
                                                                                                        (4830, '11/09/2020', 'Abgeschlossen', '11/10/2020', 126, 1700),
                                                                                                        (4848, '06/15/2020', 'Abgeschlossen', '06/16/2020', 70, 1650),
                                                                                                        (4861, '09/20/2021', 'Storniert', '', 173, 900),
                                                                                                        (4883, '04/21/2020', 'Abgeschlossen', '04/22/2020', 293, 1700),
                                                                                                        (4918, '09/05/2020', 'Abgeschlossen', '09/06/2020', 162, 700),
                                                                                                        (4976, '04/09/2020', 'Fehlgeschlagen', '', 158, 1950),
                                                                                                        (4977, '03/09/2020', 'Abgeschlossen', '03/10/2020', 108, 900),
                                                                                                        (4997, '07/15/2020', 'Abgeschlossen', '07/16/2020', 118, 750),
                                                                                                        (5013, '08/29/2020', 'Storniert', '', 195, 750),
                                                                                                        (5035, '03/30/2020', 'Fehlgeschlagen', '', 38, 950),
                                                                                                        (5054, '11/02/2020', 'Abgeschlossen', '11/03/2020', 186, 1800),
                                                                                                        (5074, '10/01/2020', 'Abgeschlossen', '10/02/2020', 255, 100),
                                                                                                        (5082, '07/25/2021', 'Abgeschlossen', '07/26/2021', 68, 1250),
                                                                                                        (5103, '10/11/2020', 'Storniert', '', 83, 350),
                                                                                                        (5172, '04/16/2021', 'Abgeschlossen', '04/17/2021', 301, 150),
                                                                                                        (5175, '07/19/2021', 'Abgeschlossen', '07/20/2021', 301, 1500),
                                                                                                        (5187, '08/04/2020', 'Abgeschlossen', '08/05/2020', 45, 950),
                                                                                                        (5199, '12/14/2020', 'Fehlgeschlagen', '', 84, 1100),
                                                                                                        (5224, '09/13/2020', 'Abgeschlossen', '09/14/2020', 187, 800),
                                                                                                        (5267, '07/11/2020', 'Abgeschlossen', '07/12/2020', 213, 1200),
                                                                                                        (5271, '08/23/2021', 'Abgeschlossen', '08/24/2021', 211, 1550),
                                                                                                        (5273, '05/13/2021', 'Abgeschlossen', '05/14/2021', 210, 950),
                                                                                                        (5276, '04/14/2020', 'Fehlgeschlagen', '', 42, 250),
                                                                                                        (5281, '03/26/2020', 'Abgeschlossen', '03/27/2020', 282, 1950),
                                                                                                        (5282, '04/02/2021', 'Abgeschlossen', '04/03/2021', 216, 750),
                                                                                                        (5295, '05/30/2021', 'Abgeschlossen', '05/31/2021', 183, 1900),
                                                                                                        (5319, '10/22/2020', 'Abgeschlossen', '10/23/2020', 168, 1850),
                                                                                                        (5332, '11/16/2020', 'Abgeschlossen', '11/17/2020', 31, 1750),
                                                                                                        (5360, '08/08/2020', 'Abgeschlossen', '08/09/2020', 19, 1850),
                                                                                                        (5364, '02/08/2021', 'Abgeschlossen', '02/09/2021', 175, 750),
                                                                                                        (5436, '12/03/2020', 'Abgeschlossen', '12/04/2020', 259, 500),
                                                                                                        (5451, '09/16/2021', 'Abgeschlossen', '09/17/2021', 217, 900),
                                                                                                        (5486, '06/30/2021', 'Abgeschlossen', '07/01/2021', 108, 500),
                                                                                                        (5487, '12/01/2020', 'Abgeschlossen', '12/02/2020', 39, 950),
                                                                                                        (5497, '03/23/2021', 'Abgeschlossen', '03/24/2021', 38, 250),
                                                                                                        (5504, '03/25/2021', 'Abgeschlossen', '03/26/2021', 55, 1800),
                                                                                                        (5514, '08/25/2020', 'Abgeschlossen', '08/26/2020', 151, 1100),
                                                                                                        (5516, '03/15/2020', 'Abgeschlossen', '03/16/2020', 284, 1350),
                                                                                                        (5526, '12/24/2020', 'Abgeschlossen', '12/25/2020', 146, 1200),
                                                                                                        (5548, '01/04/2021', 'Abgeschlossen', '01/05/2021', 102, 900),
                                                                                                        (5552, '08/18/2020', 'Abgeschlossen', '08/19/2020', 32, 1000),
                                                                                                        (5567, '04/13/2021', 'Abgeschlossen', '04/14/2021', 241, 1600),
                                                                                                        (5598, '08/16/2021', 'Abgeschlossen', '08/17/2021', 32, 900),
                                                                                                        (5629, '08/09/2021', 'Abgeschlossen', '08/10/2021', 150, 550),
                                                                                                        (5696, '05/05/2020', 'Abgeschlossen', '05/06/2020', 158, 1150),
                                                                                                        (5700, '08/18/2020', 'Abgeschlossen', '08/19/2020', 114, 850),
                                                                                                        (5735, '03/20/2021', 'Abgeschlossen', '03/21/2021', 241, 1950),
                                                                                                        (5760, '03/16/2021', 'Storniert', '', 63, 1750),
                                                                                                        (5780, '06/14/2021', 'Abgeschlossen', '06/15/2021', 69, 1250),
                                                                                                        (5801, '08/07/2021', 'Abgeschlossen', '08/08/2021', 128, 1100),
                                                                                                        (5828, '09/19/2020', 'Abgeschlossen', '09/20/2020', 222, 550),
                                                                                                        (5847, '12/17/2020', 'Abgeschlossen', '12/18/2020', 15, 200),
                                                                                                        (5857, '05/19/2021', 'Abgeschlossen', '05/20/2021', 44, 600),
                                                                                                        (5871, '07/13/2021', 'Abgeschlossen', '07/14/2021', 319, 200),
                                                                                                        (5882, '09/01/2020', 'Abgeschlossen', '09/02/2020', 192, 1950),
                                                                                                        (5885, '06/22/2021', 'Abgeschlossen', '06/23/2021', 61, 1950),
                                                                                                        (5899, '03/05/2021', 'Fehlgeschlagen', '', 29, 550),
                                                                                                        (5939, '05/29/2020', 'Abgeschlossen', '05/30/2020', 129, 750),
                                                                                                        (5941, '06/19/2020', 'Abgeschlossen', '06/20/2020', 197, 750),
                                                                                                        (5947, '11/13/2020', 'Abgeschlossen', '11/14/2020', 97, 1950),
                                                                                                        (5955, '06/01/2021', 'Abgeschlossen', '06/02/2021', 124, 1700),
                                                                                                        (5973, '01/08/2021', 'Abgeschlossen', '01/09/2021', 105, 150),
                                                                                                        (5987, '04/11/2021', 'Abgeschlossen', '04/12/2021', 116, 1200),
                                                                                                        (5995, '05/04/2021', 'Abgeschlossen', '05/05/2021', 107, 900),
                                                                                                        (6024, '06/10/2021', 'Abgeschlossen', '06/11/2021', 60, 1200),
                                                                                                        (6054, '08/02/2021', 'Abgeschlossen', '08/03/2021', 45, 1050),
                                                                                                        (6110, '06/13/2021', 'Abgeschlossen', '06/14/2021', 267, 1250),
                                                                                                        (6118, '01/05/2021', 'Abgeschlossen', '01/06/2021', 28, 1250),
                                                                                                        (6171, '05/17/2021', 'Abgeschlossen', '05/18/2021', 24, 1000),
                                                                                                        (6175, '06/22/2021', 'Abgeschlossen', '06/23/2021', 186, 1900),
                                                                                                        (6202, '04/21/2021', 'Abgeschlossen', '04/22/2021', 67, 1500),
                                                                                                        (6211, '07/23/2021', 'Abgeschlossen', '07/24/2021', 223, 200),
                                                                                                        (6244, '07/02/2020', 'Abgeschlossen', '07/03/2020', 212, 1650),
                                                                                                        (6247, '12/08/2020', 'Abgeschlossen', '12/09/2020', 276, 150),
                                                                                                        (6255, '11/22/2020', 'Abgeschlossen', '11/23/2020', 152, 1750),
                                                                                                        (6281, '06/29/2020', 'Abgeschlossen', '06/30/2020', 259, 650),
                                                                                                        (6285, '05/05/2020', 'Abgeschlossen', '05/06/2020', 69, 1650),
                                                                                                        (6289, '04/02/2021', 'Abgeschlossen', '04/03/2021', 272, 1050),
                                                                                                        (6328, '09/06/2021', 'Abgeschlossen', '09/07/2021', 207, 550),
                                                                                                        (6367, '05/25/2021', 'Abgeschlossen', '05/26/2021', 305, 1450),
                                                                                                        (6386, '07/07/2020', 'Abgeschlossen', '07/08/2020', 230, 800),
                                                                                                        (6390, '01/28/2021', 'Abgeschlossen', '01/29/2021', 231, 1000),
                                                                                                        (6430, '07/07/2020', 'Abgeschlossen', '07/08/2020', 43, 1950),
                                                                                                        (6432, '12/28/2020', 'Abgeschlossen', '12/29/2020', 124, 600),
                                                                                                        (6463, '02/27/2021', 'Abgeschlossen', '02/28/2021', 24, 1300),
                                                                                                        (6467, '01/10/2021', 'Abgeschlossen', '01/11/2021', 228, 400),
                                                                                                        (6507, '06/05/2021', 'Abgeschlossen', '06/06/2021', 143, 1350),
                                                                                                        (6524, '09/24/2021', 'Fehlgeschlagen', '', 295, 300),
                                                                                                        (6536, '07/19/2021', 'Abgeschlossen', '07/20/2021', 313, 800),
                                                                                                        (6553, '03/07/2021', 'Fehlgeschlagen', '', 281, 400),
                                                                                                        (6568, '04/13/2021', 'Abgeschlossen', '04/14/2021', 274, 1150),
                                                                                                        (6572, '08/12/2020', 'Abgeschlossen', '08/13/2020', 261, 1250),
                                                                                                        (6590, '08/20/2021', 'Abgeschlossen', '08/21/2021', 191, 1600),
                                                                                                        (6638, '03/11/2021', 'Fehlgeschlagen', '', 306, 550),
                                                                                                        (6640, '04/20/2021', 'Abgeschlossen', '04/21/2021', 304, 300),
                                                                                                        (6655, '08/23/2021', 'Abgeschlossen', '08/24/2021', 110, 750),
                                                                                                        (6666, '10/26/2020', 'Abgeschlossen', '10/27/2020', 82, 1800),
                                                                                                        (6701, '04/14/2021', 'Abgeschlossen', '04/15/2021', 135, 1700),
                                                                                                        (6745, '05/25/2021', 'Abgeschlossen', '05/26/2021', 279, 1500),
                                                                                                        (6748, '03/15/2021', 'Abgeschlossen', '03/16/2021', 108, 550),
                                                                                                        (6749, '09/25/2021', 'Abgeschlossen', '09/26/2021', 299, 300),
                                                                                                        (6761, '06/05/2020', 'Abgeschlossen', '06/06/2020', 51, 1300),
                                                                                                        (6762, '09/14/2021', 'Abgeschlossen', '09/15/2021', 130, 1950),
                                                                                                        (6780, '02/24/2021', 'Abgeschlossen', '02/25/2021', 287, 550),
                                                                                                        (6788, '06/22/2020', 'Abgeschlossen', '06/23/2020', 121, 1550),
                                                                                                        (6807, '05/03/2020', 'Abgeschlossen', '05/04/2020', 319, 1700),
                                                                                                        (6829, '12/21/2020', 'Abgeschlossen', '12/22/2020', 278, 1550),
                                                                                                        (6903, '04/01/2021', 'Abgeschlossen', '04/02/2021', 97, 950),
                                                                                                        (6904, '12/07/2020', 'Abgeschlossen', '12/08/2020', 224, 300),
                                                                                                        (6929, '04/14/2021', 'Abgeschlossen', '04/15/2021', 212, 1650),
                                                                                                        (6993, '03/09/2020', 'Abgeschlossen', '03/10/2020', 49, 700),
                                                                                                        (6996, '09/24/2020', 'Abgeschlossen', '09/25/2020', 199, 850),
                                                                                                        (7001, '11/26/2020', 'Abgeschlossen', '11/27/2020', 141, 450),
                                                                                                        (7034, '10/29/2020', 'Abgeschlossen', '10/30/2020', 221, 1500),
                                                                                                        (7050, '06/01/2020', 'Abgeschlossen', '06/02/2020', 29, 1150),
                                                                                                        (7099, '06/13/2020', 'Abgeschlossen', '06/14/2020', 187, 1100),
                                                                                                        (7116, '07/03/2020', 'Abgeschlossen', '07/04/2020', 320, 1600),
                                                                                                        (7145, '03/23/2020', 'Abgeschlossen', '03/24/2020', 174, 1400),
                                                                                                        (7183, '06/12/2020', 'Abgeschlossen', '06/13/2020', 193, 800),
                                                                                                        (7203, '01/17/2021', 'Abgeschlossen', '01/18/2021', 220, 1100),
                                                                                                        (7216, '06/14/2021', 'Abgeschlossen', '06/15/2021', 67, 800),
                                                                                                        (7217, '05/18/2020', 'Abgeschlossen', '05/19/2020', 198, 1500),
                                                                                                        (7222, '09/20/2020', 'Abgeschlossen', '09/21/2020', 242, 150),
                                                                                                        (7225, '05/09/2020', 'Abgeschlossen', '05/10/2020', 141, 600),
                                                                                                        (7227, '07/23/2020', 'Abgeschlossen', '07/24/2020', 234, 900),
                                                                                                        (7238, '09/06/2021', 'Abgeschlossen', '09/07/2021', 66, 500),
                                                                                                        (7242, '12/24/2020', 'Abgeschlossen', '12/25/2020', 272, 650),
                                                                                                        (7298, '05/21/2021', 'Abgeschlossen', '05/22/2021', 222, 1000),
                                                                                                        (7311, '05/02/2020', 'Storniert', '', 109, 150),
                                                                                                        (7312, '08/01/2020', 'Abgeschlossen', '08/02/2020', 20, 1150),
                                                                                                        (7332, '08/30/2021', 'Abgeschlossen', '08/31/2021', 299, 1100),
                                                                                                        (7337, '08/06/2021', 'Abgeschlossen', '08/07/2021', 227, 450),
                                                                                                        (7363, '05/10/2021', 'Abgeschlossen', '05/11/2021', 228, 900),
                                                                                                        (7381, '09/05/2020', 'Abgeschlossen', '09/06/2020', 110, 1850),
                                                                                                        (7385, '10/19/2020', 'Abgeschlossen', '10/20/2020', 82, 900),
                                                                                                        (7400, '07/22/2021', 'Abgeschlossen', '07/23/2021', 182, 400),
                                                                                                        (7435, '04/19/2021', 'Abgeschlossen', '04/20/2021', 144, 800),
                                                                                                        (7448, '09/17/2021', 'Abgeschlossen', '09/18/2021', 303, 150),
                                                                                                        (7459, '07/09/2021', 'Storniert', '', 184, 1000),
                                                                                                        (7477, '04/02/2020', 'Abgeschlossen', '04/03/2020', 96, 200),
                                                                                                        (7480, '02/21/2021', 'Abgeschlossen', '02/22/2021', 128, 500),
                                                                                                        (7508, '11/28/2020', 'Abgeschlossen', '11/29/2020', 19, 1550),
                                                                                                        (7536, '04/08/2020', 'Abgeschlossen', '04/09/2020', 224, 1050),
                                                                                                        (7544, '06/26/2021', 'Abgeschlossen', '06/27/2021', 311, 800),
                                                                                                        (7549, '09/28/2021', 'Abgeschlossen', '09/29/2021', 286, 1050),
                                                                                                        (7562, '04/05/2021', 'Abgeschlossen', '04/06/2021', 313, 600),
                                                                                                        (7563, '07/04/2021', 'Abgeschlossen', '07/05/2021', 25, 950),
                                                                                                        (7582, '08/16/2020', 'Abgeschlossen', '08/17/2020', 61, 500),
                                                                                                        (7587, '07/02/2021', 'Abgeschlossen', '07/03/2021', 54, 1450),
                                                                                                        (7617, '04/14/2021', 'Abgeschlossen', '04/15/2021', 254, 1600),
                                                                                                        (7627, '04/05/2020', 'Fehlgeschlagen', '', 299, 1200),
                                                                                                        (7647, '03/12/2021', 'Fehlgeschlagen', '', 297, 1850),
                                                                                                        (7662, '06/29/2021', 'Abgeschlossen', '06/30/2021', 90, 1200),
                                                                                                        (7729, '07/29/2020', 'Abgeschlossen', '07/30/2020', 27, 1150),
                                                                                                        (7740, '07/03/2020', 'Abgeschlossen', '07/04/2020', 98, 1700),
                                                                                                        (7771, '01/09/2021', 'Abgeschlossen', '01/10/2021', 254, 1050),
                                                                                                        (7774, '12/19/2020', 'Abgeschlossen', '12/20/2020', 189, 1250),
                                                                                                        (7803, '12/31/2020', 'Abgeschlossen', '01/01/2021', 205, 2000),
                                                                                                        (7809, '06/25/2020', 'Abgeschlossen', '06/26/2020', 145, 1750),
                                                                                                        (7821, '02/04/2021', 'Abgeschlossen', '02/05/2021', 37, 1700),
                                                                                                        (7828, '03/11/2021', 'Fehlgeschlagen', '', 134, 900),
                                                                                                        (7856, '07/10/2021', 'Abgeschlossen', '07/11/2021', 129, 900),
                                                                                                        (7864, '08/12/2021', 'Abgeschlossen', '08/13/2021', 83, 1550),
                                                                                                        (7879, '11/22/2020', 'Abgeschlossen', '11/23/2020', 48, 1200),
                                                                                                        (7881, '05/25/2021', 'Abgeschlossen', '05/26/2021', 205, 150),
                                                                                                        (7914, '08/24/2020', 'Abgeschlossen', '08/25/2020', 91, 1800),
                                                                                                        (7926, '04/10/2020', 'Abgeschlossen', '04/11/2020', 149, 1050),
                                                                                                        (7950, '08/20/2020', 'Abgeschlossen', '08/21/2020', 136, 1100),
                                                                                                        (7990, '06/01/2020', 'Abgeschlossen', '06/02/2020', 224, 1400),
                                                                                                        (7995, '03/23/2020', 'Abgeschlossen', '03/24/2020', 64, 550),
                                                                                                        (8031, '06/19/2020', 'Abgeschlossen', '06/20/2020', 207, 300),
                                                                                                        (8039, '04/18/2020', 'Fehlgeschlagen', '', 23, 1600),
                                                                                                        (8052, '10/19/2020', 'Abgeschlossen', '10/20/2020', 133, 150);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `film`
--

CREATE TABLE `film` (
                        `filmid` int(11) NOT NULL,
                        `cost` int(11) NOT NULL,
                        `image` varchar(255) DEFAULT NULL,
                        `name` varchar(255) DEFAULT NULL,
                        `rating` double NOT NULL,
                        `description` varchar(255) DEFAULT NULL,
                        `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Daten für Tabelle `film`
--

INSERT INTO `film` (`filmid`, `cost`, `image`, `name`, `rating`, `description`, `video`) VALUES
                                                                                             (1, 140000000, 'iron_man_1.jpeg', 'Iron man 1', 4.7, NULL, 'x3LbqNE8Opw'),
                                                                                             (2, 150000000, 'the_incredible_hulk.jpeg', 'The Incredible Hulk', 4.1, NULL, 'xbqNb2PFKKA'),
                                                                                             (3, 200000000, 'iron_man_2.jpeg', 'Iron man 2', 3, NULL, 'RcT6WhvqhOQ'),
                                                                                             (4, 150000000, 'thor.jpeg', 'Thor', 3.5, NULL, 'JOddp-nlNvQ'),
                                                                                             (5, 140000000, 'captain_america_1.jpeg', 'Captain America: The First Avenger', 4.5, NULL, 'JerVrbLldXw'),
                                                                                             (6, 220000000, 'avengers_1.jpeg', 'Marvel\'s The Avengers', 4.7, NULL, 'eOrNdBpGMv8'),
(7, 200000000, 'iron_man_3.jpeg', 'Iron man 3', 4, NULL, 'I-JXqQR_FKk'),
(8, 150000000, 'thor_2.jpeg', 'Thor: The Dark World', 2, NULL, 'npvJ9FTgZbM'),
(9, 170000000, 'captain_america_2.jpeg', 'Captain America: The Winter Soldier', 4.7, NULL, '7SlILk2WMTI'),
(10, 200000000, 'guardians_of_the_galaxy_1.jpeg', 'Guardians Of the Galaxy', 4.6, NULL, '2LIQ2-PZBC8'),
(11, 365000000, 'age_of_ultron.jpeg', 'Avengers Age of Ultrons', 5, '', 'tmeOjFno6Do'),
(12, 130000000, 'ant_man.jpeg', 'Ant-Man', 4.5, NULL, 'tmeOjFno6Do'),
(13, 250000000, 'captain_america_3.jpeg', 'Captain America: Civil War', 4.6, NULL, 'dKrVegVI0Us'),
(14, 200000000, 'doctor_strange_1.jpeg', 'Doctor Strange', 4.4, NULL, 'Lt-U_t2pUHI'),
(15, 200000000, 'guardians_of_the_galaxy_2.jpeg', 'Guardians of the Galaxy Vol. 2', 4.6, NULL, 'wUn05hdkhjM'),
(16, 175000000, 'spider-man_1.jpeg', 'Spider-Man: Homecoming', 4.3, NULL, '39udgGPyYMg'),
(17, 180000000, 'thor_3.jpeg', 'Thor: Ragnarok', 4, NULL, 'ue80QwXMRHg'),
(18, 200000000, 'black_panther.jpeg', 'Black Panther', 4.5, NULL, 'xjDjIWPwcPU'),
(19, 316000000, 'avengers_infinity_war.jpg', 'Avengers Infinity War', 4.8, '', 'JQRn06QlXDw'),
(20, 130000000, 'ant-man_2.jpeg', 'Ant-Man and the Wasp', 4.4, NULL, 'UUkn-enk2RU'),
(21, 152000000, 'captain_marvel.jpeg', 'Captain Marvel', 3, NULL, 'Z1BCujX3pw8'),
(22, 365000000, 'avengers_endgame.jpg', 'Avengers Endgame', 5, NULL, 'TcMBFSGVi1c'),
(23, 160000000, 'spider-man_2.jpeg', 'Spider-Man: Far From Home', 4.4, NULL, 'Nt9L1jCKGnE'),
(24, 200000000, 'black_widow.jpeg', 'Black Widow', 4.1, NULL, 'ybji16u608U'),
(25, 150000000, 'shang-chi.jpeg', 'Shang-Chi and the Legend of the Ten Rings', 4.6, NULL, '8YjFbMbfXaQ'),
(26, 200000000, 'eternals.jpeg', 'Eternals', 3.3, NULL, 'x_me3xsvDgk'),
(27, 200000000, 'spider-man_3.jpeg', 'Spider-Man: No Way Home', 4.8, NULL, 'rt-2cxAiPJk'),
(28, 200000000, 'doctor_strange_2.jpeg', 'Doctor Strange in the Multiverse of Madness', 3.6, NULL, 'aWzlQ2N6qqg'),
(29, 200000000, 'thor_4.jpeg', 'Thor: Love And Thunder', 5, NULL, 'khibF2PFU58');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `film_actor`
--

CREATE TABLE `film_actor` (
  `id` int(11) NOT NULL,
  `actor_actor_id` int(11) NOT NULL,
  `film_film_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `film_user`
--

CREATE TABLE `film_user` (
  `film_userid` int(11) NOT NULL,
  `filmid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `selection`
--

CREATE TABLE `selection` (
  `selectionid` int(11) NOT NULL,
  `film_film_id` int(11) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `age`, `email`, `firstname`, `last_logged_in`, `lastname`, `password`) VALUES
(61403711, 19, 'anthony.pena@lernende.bbw.ch', 'Anthony Javier', '2022-06-30 16:59:43', 'Peña Vargas', '1234'),
(70103735, 16, 'gian.bisenz@bluewin.ch', 'Gian', '2022-07-13 09:39:30', 'Bisenz', '001'),
(360382252, 18, 'test@test.com', 'max ', '2022-07-14 05:36:19', 'mustermann', 'test');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actorid`);

--
-- Indizes für die Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  ADD PRIMARY KEY (`BestellungID`);

--
-- Indizes für die Tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`filmid`);

--
-- Indizes für die Tabelle `film_actor`
--
ALTER TABLE `film_actor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf21hkfoa89iyar1calmoe7d7j` (`actor_actor_id`),
  ADD KEY `FKma5hf8eiaqb71bueolgfkyur9` (`film_film_id`);

--
-- Indizes für die Tabelle `film_user`
--
ALTER TABLE `film_user`
  ADD PRIMARY KEY (`film_userid`),
  ADD KEY `FKm8n5q6r7plxdsitxu0snkikha` (`filmid`),
  ADD KEY `FKcayq8q8w3yngtw4jo3tt9fxf1` (`userid`);

--
-- Indizes für die Tabelle `selection`
--
ALTER TABLE `selection`
  ADD PRIMARY KEY (`selectionid`),
  ADD KEY `FK7868vkd6ji38m85mcn4iy4poe` (`film_film_id`),
  ADD KEY `FKl75wqgy64rh3e3wvf12wbecrh` (`user_user_id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `actor`
--
ALTER TABLE `actor`
  MODIFY `actorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT für Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  MODIFY `BestellungID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8053;

--
-- AUTO_INCREMENT für Tabelle `film`
--
ALTER TABLE `film`
  MODIFY `filmid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT für Tabelle `film_actor`
--
ALTER TABLE `film_actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `film_user`
--
ALTER TABLE `film_user`
  MODIFY `film_userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `selection`
--
ALTER TABLE `selection`
  MODIFY `selectionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360382253;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `film_actor`
--
ALTER TABLE `film_actor`
  ADD CONSTRAINT `FKf21hkfoa89iyar1calmoe7d7j` FOREIGN KEY (`actor_actor_id`) REFERENCES `actor` (`actorid`),
  ADD CONSTRAINT `FKma5hf8eiaqb71bueolgfkyur9` FOREIGN KEY (`film_film_id`) REFERENCES `film` (`filmid`);

--
-- Constraints der Tabelle `film_user`
--
ALTER TABLE `film_user`
  ADD CONSTRAINT `FKcayq8q8w3yngtw4jo3tt9fxf1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKm8n5q6r7plxdsitxu0snkikha` FOREIGN KEY (`filmid`) REFERENCES `film` (`filmid`);

--
-- Constraints der Tabelle `selection`
--
ALTER TABLE `selection`
  ADD CONSTRAINT `FK7868vkd6ji38m85mcn4iy4poe` FOREIGN KEY (`film_film_id`) REFERENCES `film` (`filmid`),
  ADD CONSTRAINT `FKl75wqgy64rh3e3wvf12wbecrh` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
