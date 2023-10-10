-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 09:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_kb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('M','F','O') DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `gender`, `address`, `city`, `country`, `dob`, `password`, `status`, `points`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Somnath Mukherjee', '4i@gmail.com', 'M', 'Regent Education & Research Foundation', NULL, 'India', '2023-10-03', '000', 1, 1, '2023-10-03 12:40:28', '2023-10-09 01:39:49', '2023-10-09 01:39:49'),
(13, 'krishna', 'k8@gmial.com', 'M', 'Regent Education & Research Foundation', NULL, 'India', '2023-10-03', '123', 0, 1, '2023-10-03 12:44:40', '2023-10-06 04:44:01', NULL),
(16, 'test', 'test@laravelkb.com', 'M', 'Regent Education & Research Foundation', NULL, 'India', '2023-10-03', '123', 0, 1, '2023-10-03 12:46:09', '2023-10-03 12:46:09', NULL),
(17, 'gopal', 'gopal@gmail.com', 'M', 'barrackpore', NULL, 'india', '2023-10-04', '123', 1, 1, '2023-10-04 09:31:38', '2023-10-06 02:34:31', NULL),
(18, 'Mundu Panda', 'somnathmw@gmail.com', 'M', 'Regent Education & Research Foundation', NULL, 'India', '2023-10-05', '123', 1, 0, '2023-10-05 06:40:46', '2023-10-06 05:09:31', NULL),
(21, 'Somnath Mukherjee', 'somnathmw@gmail.com', 'M', 'Mina', NULL, 'India', '2023-10-05', '123', 1, 1, '2023-10-05 06:52:47', '2023-10-05 06:52:47', NULL),
(22, 'Somnath Mukherjee', 'somnathmw@gmail.com', 'M', 'Pita', NULL, 'India', '2023-10-05', '123', 1, 1, '2023-10-05 06:54:47', '2023-10-05 06:54:47', NULL),
(23, 'Terrance Mitchell', 'dhickle@hotmail.com', 'M', '469 Matilda Orchard Suite 246\nTerryton, VA 04666', 'Champlinberg', 'Guyana', '2012-08-11', 'K?(kX]hCc%]|=Q\'', 1, 1, '2023-10-06 08:46:10', '2023-10-06 08:46:10', NULL),
(24, 'Christopher Armstrong', 'keara.ortiz@hotmail.com', 'M', '9954 Emmanuel Station Suite 347\nJohnnychester, DC 63243-3689', 'New Kaitlyn', 'Cyprus', '1970-03-20', '{>;/`VUnV;Ydx30Cq\"}', 1, 1, '2023-10-06 08:46:10', '2023-10-06 08:46:10', NULL),
(25, 'Dr. Jerel Tromp', 'oroob@yahoo.com', 'M', '856 Letitia Prairie\nEast Williamton, NE 55965', 'Port Reidshire', 'USA', '1987-10-30', '|HYG^~~&x%!', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(26, 'Lennie Kunde', 'garland61@becker.com', 'M', '3605 Russel Way\nMilfordborough, PA 55795', 'Celestinetown', 'USA', '2001-02-13', '}BL-~9+U', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(27, 'Ellis Berge Sr.', 'ihoppe@crist.biz', 'M', '16959 Schneider Centers Apt. 434\nKasandrafort, ND 41625-2208', 'Agneschester', 'USA', '2009-04-02', '[RIUkc42c}%K', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(28, 'Heidi Marks', 'vnader@towne.com', 'M', '66552 Homenick Mill\nKonopelskiborough, SD 81662', 'South Khalil', 'USA', '1982-09-15', '!xBcVV,q;j', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(29, 'Robbie Stokes', 'rodriguez.franz@reichert.com', 'M', '70715 Mann Flat\nPort Hattiehaven, CA 63293', 'East Parkermouth', 'USA', '2003-02-15', 'mW:n315GRO74Q(730&', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(30, 'Jesse Brown', 'nkunze@yahoo.com', 'M', '7427 Gutmann Cliffs\nPort Tremaine, MI 86539', 'Electamouth', 'USA', '2019-05-24', 'o2I,QfIDhV', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(31, 'Mr. Felton Champlin', 'helena.stehr@yahoo.com', 'M', '4775 Connelly Prairie\nMooreland, KY 67522', 'North Cornellburgh', 'USA', '1983-01-30', 'TeY1N1=.V3v)Gy1', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(32, 'Sofia Hoeger', 'emie.harvey@gmail.com', 'M', '35776 Marquardt Summit Apt. 570\nNorth Albina, MO 36957-0840', 'East Alva', 'USA', '1987-04-17', 'mw2nWX@f6q2$', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(33, 'Alexa Koelpin', 'raphael.gutkowski@waelchi.com', 'M', '89811 Yasmeen Centers\nPort Margaretteburgh, KS 11627', 'Kaylahborough', 'USA', '1979-11-21', 'TRf9QE*.yYl', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(34, 'Kiara Boyle', 'norris.schowalter@hotmail.com', 'M', '769 Destiney Forge Apt. 082\nWest Camille, FL 20617', 'East Marvin', 'USA', '2003-07-13', '~8dQHt`}c~i', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(35, 'Ignatius Nienow', 'ulices21@hotmail.com', 'M', '56883 Dulce Mountain Suite 123\nAbbottborough, MO 00234', 'New Peytonton', 'USA', '1977-11-19', 'qGz+w=b(^ib6Tw', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(36, 'Will Corwin', 'beaulah.davis@hotmail.com', 'M', '340 Bernhard Forges Suite 588\nNorth Marianborough, MA 11826', 'Port Aurelioborough', 'USA', '1981-06-17', '#XqdI-\\', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(37, 'Lisette Morissette', 'hegmann.emmie@hayes.com', 'M', '4166 Stoltenberg Squares\nSibylshire, MN 92708', 'Lake Fredychester', 'USA', '1998-11-18', 'Lqe>H=', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(38, 'Damaris Wyman', 'bria.wisoky@gmail.com', 'M', '724 Hills Forest Apt. 931\nNew Rocio, MO 52661', 'Thieltown', 'USA', '2021-11-22', 'f[6cx]tI', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(39, 'Davin Davis', 'braeden69@hotmail.com', 'M', '3575 Matteo Falls Apt. 038\nMooreborough, NV 37753', 'Port Jabariland', 'USA', '2012-11-12', 'Yvr\".0C', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(40, 'Kelvin Beatty I', 'celestino.kiehn@gmail.com', 'M', '281 Raina Pines Suite 629\nSouth Dax, IL 13470-9861', 'West Anastasiahaven', 'USA', '1986-01-18', '))1*<aH4j-tm(BSIkgAh', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(41, 'Miss Ashley Herzog', 'shannon.weber@gmail.com', 'M', '4790 Kreiger Ramp\nVandervortfort, AZ 42070-7690', 'Christianchester', 'USA', '2017-06-23', 'F1o;}+;;v!+vJc:L<%6', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(42, 'Timmothy Schinner', 'kenna.okon@yahoo.com', 'M', '2673 Jamaal Trafficway\nLake Ulises, AL 88810', 'New Alejandrin', 'USA', '2020-11-15', 'U:&E,&Pvv', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(43, 'Charlene Hintz', 'icarter@hotmail.com', 'M', '6856 Claire Bypass Apt. 810\nPort Eleazarfort, MI 43239', 'Litteltown', 'USA', '1992-08-19', 'V@hJ7&$Z6%3}', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(44, 'Ms. Shannon O\'Hara MD', 'wintheiser.nadia@yahoo.com', 'M', '6395 Mueller Cove\nLake Jaquelin, MI 60185', 'Daphneton', 'USA', '2011-12-29', '$3K=Xs0', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(45, 'Prof. Linda Little', 'cronin.billy@yahoo.com', 'M', '455 Heathcote Lakes Suite 152\nNew Jarred, NY 43256', 'East Lorenfurt', 'USA', '2017-06-22', 'HhUVz=NE/U+RxjaD', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(46, 'Oscar Cronin', 'jennifer.kulas@wuckert.com', 'M', '2500 Christiansen Forest\nHalvorsontown, NH 33291-4729', 'South Bert', 'USA', '2002-04-29', 'vcMY3j!4wmcR[K', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(47, 'Ansley Gleichner PhD', 'runolfsdottir.tia@white.net', 'M', '81072 Coleman Plains Apt. 815\nJohnsonmouth, IL 49596-6357', 'Wademouth', 'USA', '2000-08-05', 'c_C[3b5WRg', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(48, 'Joshuah Franecki', 'vnienow@yahoo.com', 'M', '297 Hackett Creek\nAmyaport, CT 82521-8856', 'Domingoburgh', 'USA', '2021-11-07', '/Lr%gh9E6VmCvWW+~>', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(49, 'Maxine Harber', 'crona.bennie@schultz.com', 'M', '2014 Kihn Cliff\nSchillerberg, FL 22621', 'Tyraberg', 'USA', '1987-09-26', '[dXbm$V]', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(50, 'Sigurd Langosh IV', 'toy.carli@hotmail.com', 'M', '790 Steuber Dale Suite 097\nNew Madelynshire, MT 75629-9716', 'Fayfort', 'USA', '2010-10-18', 'Sf<N1(!E$', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(51, 'Kyle Bednar', 'zhaag@pollich.com', 'M', '32298 Ignacio Meadow Suite 806\nBlandaburgh, MS 99266-7533', 'Rafaelahaven', 'USA', '1976-12-31', 'Id*3W~nUR=1', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(52, 'Bessie Becker', 'tschiller@schoen.com', 'M', '80040 Wiegand Canyon\nLake Dantechester, PA 10535', 'Haagland', 'USA', '1980-10-26', 'NnWqIn2VNgxl*ys', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(53, 'Sheldon Johnston PhD', 'angie58@haag.biz', 'M', '60188 Macie Court\nNorth Eliseo, NY 58146', 'West Zakary', 'USA', '2011-11-11', 'y+E0z@/7xV]$', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(54, 'Evalyn Conroy MD', 'sporer.estel@schaefer.org', 'M', '6968 Rogahn Highway\nPort Sydnie, ND 63419', 'South Keyshawn', 'USA', '2018-05-31', 'K<hoAq2,XPs8', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(55, 'Dr. Joanne Brakus', 'friedrich05@rutherford.biz', 'M', '352 Kathlyn Underpass\nWest Dorianmouth, WI 16370', 'Lake Lavada', 'USA', '2015-10-22', 'S~4%8\"qf2wr', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(56, 'Gaston Auer', 'jacobi.tomasa@yahoo.com', 'M', '572 Lowe Square Suite 331\nNorth Claudie, CT 14253-6637', 'Colemouth', 'USA', '1992-04-08', '_=wfx(Z3l', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(57, 'Kacey Spencer', 'kuhn.christ@yahoo.com', 'M', '80908 Howell Court\nEddview, MT 66969', 'Edwardofurt', 'USA', '2003-04-08', '2>MJ8L#9y~*OnbvI', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(58, 'Dr. Kiera Zulauf III', 'fannie.champlin@gorczany.com', 'M', '94368 Rosendo Shoals Apt. 150\nSouth Celestine, RI 28236-8142', 'Lake Aniyahmouth', 'USA', '1987-11-24', '$.a8:04/q|7,\'G', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(59, 'Dolly Borer IV', 'dorris26@gmail.com', 'M', '6101 Stroman Grove Suite 479\nSouth Hector, NC 67732', 'New Doloresville', 'USA', '1979-08-09', 'Z9`[uAmV(3.3hk6zs', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(60, 'Dion Miller', 'rubye41@yahoo.com', 'M', '903 O\'Reilly Road Apt. 848\nAdrianstad, ME 55837', 'Schultzbury', 'USA', '1994-06-17', 'Kzdz._u*', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(61, 'Prof. Alia Langworth V', 'carroll.alfreda@hahn.biz', 'M', '3865 Stuart Expressway\nNew Florence, AL 51308', 'South Irwin', 'USA', '1976-04-03', 'HS11kJLg7@24p)Sc', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(62, 'Janice Rath', 'juston37@yahoo.com', 'M', '4187 Kyra Way\nLake Ava, SD 90983', 'Rosenbaumshire', 'USA', '1977-11-20', ']fEGno', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(63, 'Sarina Crooks', 'halvorson.linnie@mills.com', 'M', '665 Orie Lodge Apt. 238\nWest Vita, KS 85223', 'Bartolettishire', 'USA', '2004-07-25', 'd$^.j3,su2kY,l|+_', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(64, 'Ellsworth Franecki', 'charles93@rippin.com', 'M', '9987 Hagenes Drive\nZemlakburgh, NY 55790', 'Selmerfurt', 'USA', '1992-05-06', '!3Cw_l7*)Kl8vO5H', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(65, 'Bernard Jaskolski', 'lang.chanel@bechtelar.com', 'M', '989 Romaguera Fall Suite 025\nAmayamouth, VT 59532-1583', 'New Jewelberg', 'USA', '1988-10-11', '`-,OQee$ne^}r', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(66, 'Abner Zboncak DVM', 'quinton.fahey@gmail.com', 'M', '9933 Jaquelin Estate Suite 609\nMertzton, PA 66421', 'North Meggiechester', 'USA', '2018-10-24', 'lYOWW2`RG34#', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(67, 'Mr. Kristopher Bashirian', 'kaleb.borer@bins.com', 'M', '984 Kuhn Crest Suite 433\nWizaport, OK 58345-5936', 'Port Dangeloville', 'USA', '2011-04-03', 'ZrcSxZ=#k\'h|C5U=', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(68, 'Drew Wuckert', 'urosenbaum@eichmann.org', 'M', '579 Leatha Plains Suite 378\nEast Peterfurt, IA 80462-8347', 'South Albert', 'USA', '2013-11-03', 'xOPfTB*ok!!GW|^', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(69, 'Mya Hartmann', 'bbogisich@conn.org', 'M', '8908 Ankunding Ford Apt. 382\nWest Jacynthe, ID 36339', 'McClureshire', 'USA', '1986-08-05', '*T.[NC`*Di?|\\U', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(70, 'Dr. Henriette Halvorson', 'dejon00@block.com', 'M', '4409 Streich Forge\nWiegandmouth, ME 47218', 'Schultzhaven', 'USA', '1981-06-01', '2<xllsg', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(71, 'Mrs. Margarett Feeney IV', 'jacquelyn.swift@hotmail.com', 'M', '795 Marge Gardens Suite 944\nOdaborough, NC 26310', 'Lake Ronny', 'USA', '2021-04-25', 'I;\\[}h~Xzq\"', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(72, 'Mrs. Elna Bradtke', 'danny59@gmail.com', 'M', '49090 Brody Hollow Suite 490\nPriceside, SD 83409-3590', 'Gaylordview', 'USA', '2006-10-17', 'rC_#.sWnGe\'S\\P,94&mk', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(73, 'Rupert Harber', 'karina97@gmail.com', 'M', '1655 Etha Tunnel\nSouth Katrinefurt, AR 47178', 'Deckowberg', 'USA', '1970-03-23', 'HE[|>y;+11^25:UxP:P', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(74, 'Judd Ryan', 'marvin.charlotte@prohaska.com', 'M', '67646 Norene Branch Suite 135\nFeeneystad, PA 00985', 'Tianastad', 'USA', '2008-05-19', 'P|_3a9kJ.Gd]AV#', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(75, 'Juanita Tromp', 'qrobel@gmail.com', 'M', '95333 Yost Extension Apt. 802\nPagacbury, VT 47058-1326', 'Lake Darionbury', 'USA', '2013-08-13', 'zGUgzgIYKB<q@OC', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(76, 'Prof. Sterling Thiel I', 'shaina41@kassulke.net', 'M', '7733 Emmerich Skyway\nHazelburgh, MT 40461-6201', 'East Pinkchester', 'USA', '2005-12-01', 'k8lo+fo1659=gm.g/j', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(77, 'Casandra Harvey PhD', 'ratke.dannie@welch.com', 'M', '62866 Trisha Roads\nBrendenton, AL 01892', 'West Americo', 'USA', '1998-09-16', 'W)k$?{]t;Rj', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(78, 'Trycia Cartwright', 'sterling.volkman@yahoo.com', 'M', '8912 Walker Tunnel\nWest Sheridan, VT 44269', 'West Pauline', 'USA', '1974-08-13', 'kDe>9\\7k~', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(79, 'Prof. Bobbie Gutkowski IV', 'duane35@yahoo.com', 'M', '19393 Imelda Glen Suite 362\nReannachester, MS 81413-2494', 'Vernicemouth', 'USA', '1989-09-06', 't9R&Rw', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(80, 'Ottis Farrell', 'vtromp@conn.net', 'M', '959 Hudson Extension\nAshlyport, FL 68822', 'Peytonport', 'USA', '1999-05-19', 'bU2rB.Ge', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(81, 'Arnoldo Fadel', 'skylar.wintheiser@yahoo.com', 'M', '7722 Brycen Light Apt. 292\nHeavenmouth, MN 02542', 'Lake Teresa', 'USA', '1978-10-26', 'h8(9gwL#jN-', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(82, 'Miss Norene Bayer', 'willms.vernice@hotmail.com', 'M', '853 Emely Dam Suite 247\nBrannonshire, LA 14400-4497', 'East Bradmouth', 'USA', '2020-06-26', 'BRU^B\\L', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(83, 'Ebony Trantow', 'prosacco.vince@watsica.com', 'M', '8998 Elliot Divide\nAxelhaven, SC 27215', 'Berrytown', 'USA', '2010-10-01', 'ryCn/QFLf)mN0TZcpq?F', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(84, 'Leslie Daniel', 'lester94@ortiz.com', 'M', '4744 Marks Burg Apt. 170\nWest Jacky, TN 23444-4706', 'Lionelland', 'USA', '1984-11-26', 'A[rhSx\"gjzl;\"', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(85, 'Arturo Beer DVM', 'nathanael.ebert@pfannerstill.com', 'M', '7693 Marion Estate\nNew Elenora, MS 06206-5874', 'Lonhaven', 'USA', '1996-09-01', '_:)$J~$4fak(p', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(86, 'Ryan Jones', 'korey55@walker.com', 'M', '403 Humberto Harbors\nNitzscheville, SC 45101', 'West Kiana', 'USA', '1977-03-10', '!._-Bl3JU:', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(87, 'Pascale Kertzmann PhD', 'vcrona@gmail.com', 'M', '546 Waters Streets\nShaniyaside, LA 20041', 'New Kelleyview', 'USA', '1988-01-23', 'scjZT\'y`<]0<', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(88, 'Prof. Deshawn Mante', 'mya49@hotmail.com', 'M', '716 Shanahan Locks Apt. 798\nCorrinefort, FL 25808-0257', 'Filibertoville', 'USA', '1980-02-03', 'SG*cl0E5C\'cL', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(89, 'Lafayette Harber', 'hintz.ella@moore.org', 'M', '31949 Uriah Lodge Apt. 957\nNorth Stanley, MT 06554', 'North Linwood', 'USA', '1989-08-21', 'fICBMC^dG+3b^=$GT5Im', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(90, 'Arvid Greenholt', 'oscar.abshire@yahoo.com', 'M', '910 Gorczany Canyon Suite 250\nLake Trinity, KY 96109-8917', 'Hartmannport', 'USA', '1973-01-03', '8eVu1l|X>', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(91, 'Clovis Johnson', 'lhammes@kemmer.com', 'M', '34433 Xzavier Hills Suite 048\nEast Annabellbury, AK 33088-0893', 'Raynorport', 'USA', '1974-10-11', 'azelr{Ct}{o', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(92, 'Cristobal Hilpert', 'connelly.chase@halvorson.org', 'M', '583 Barrows Burg\nSouth Santina, CT 95404', 'Port Romanbury', 'USA', '1972-11-06', '@\'[=Al*qPZrj0v', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(93, 'Prof. Moriah Mohr IV', 'oswaldo.veum@yahoo.com', 'M', '478 Linnie Greens Apt. 936\nNorth Dejaville, MT 69084-4434', 'Lake Kennith', 'USA', '2011-09-11', '7Tq%+639m=U~g1,I', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(94, 'Macy Sipes', 'ramona.ankunding@oberbrunner.com', 'M', '5999 Pfeffer Haven Apt. 272\nEast Jessside, SD 81745-5289', 'Braedenberg', 'USA', '2020-04-28', '^~mlHQi', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(95, 'Devante Heidenreich DDS', 'camden22@shields.com', 'M', '2963 Keyon Fords Apt. 427\nEast Annefort, MD 45070', 'Osinskiville', 'USA', '2021-12-30', 'Q*Bc,|Zu#R^a', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(96, 'Armando Hoppe MD', 'mosciski.hollis@zieme.info', 'M', '89777 Hintz Street Suite 552\nNorth Bernitaton, ND 83029-2815', 'South Ceasarshire', 'USA', '1976-09-22', '&n>=DI+QK', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(97, 'Rosella Effertz', 'ucronin@raynor.com', 'M', '329 Ledner Island Suite 148\nOrvalport, MO 85039', 'Bransonside', 'USA', '2007-02-20', '?@~4~<$MKH\\', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(98, 'Brian Bashirian', 'rglover@lueilwitz.org', 'M', '9114 Zemlak Trafficway\nSpinkatown, LA 73376-8715', 'South Katelynshire', 'USA', '1993-01-08', 'A8;yR6%Pg~RXJtXx', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(99, 'Prof. Adrain Muller V', 'martina15@stanton.info', 'M', '5376 Conroy Glens\nWest Leola, CT 70491-3494', 'North Janellemouth', 'USA', '1996-03-22', 'HH6@g%G0]2A', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(100, 'Matilda Sanford', 'witting.kaylie@yahoo.com', 'M', '3609 Delilah Mews\nLeuschketown, IA 32307-8442', 'Trystanton', 'USA', '2014-11-24', 'N{31*|JK[0y', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(101, 'Isobel Ryan DVM', 'breitenberg.camron@yahoo.com', 'M', '528 Cheyanne Lodge\nEast Maymieburgh, AR 72316', 'North Petertown', 'USA', '1974-04-22', 'aA<Uv<B[=C', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(102, 'Dr. Camylle Lubowitz', 'kryan@metz.com', 'M', '6597 Powlowski Trail\nFlorenciofort, NV 24039-6598', 'Asastad', 'USA', '1982-02-15', 'oqYvH1jt-\\a0[WapMN<', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(103, 'Juvenal Boehm', 'marc61@marks.com', 'M', '934 Champlin Mission Suite 413\nLake Samsontown, WA 42053-0763', 'Malvinaton', 'USA', '2000-05-28', 'zpL\\P`}K]', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(104, 'Ahmad Weissnat', 'hailey.gerlach@yahoo.com', 'M', '88879 Jerde Ridges\nWest Reymundobury, GA 58971-7033', 'New Ellenstad', 'USA', '1989-10-15', '`(TO7e.D', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(105, 'Aleen McKenzie', 'irma18@hotmail.com', 'M', '945 Keebler Ridge Apt. 957\nSouth Carliehaven, MS 05593', 'North Torreyberg', 'USA', '1981-07-30', 'K%FY9qy$[jJR?;hU%rL', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(106, 'Taya Halvorson', 'courtney15@bogisich.net', 'M', '66986 Katrina Roads Suite 983\nAlbinport, CO 92448', 'Marvinburgh', 'USA', '1996-03-31', '2qzTQ=J(/Bn@j', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(107, 'Prof. Sam Littel', 'isaiah66@gmail.com', 'M', '248 Bosco Roads\nKuhnview, UT 75616', 'Elizamouth', 'USA', '1988-03-17', 'GBmN&PC&)X', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(108, 'Prof. Verlie Shields', 'hblick@oconnell.info', 'M', '291 Delphine Ridges Suite 848\nSkilestown, IA 51514-7289', 'Port Darienport', 'USA', '1998-10-07', ',>D~Gs=ESLB;rf', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(109, 'Adrianna Waters IV', 'ischroeder@johns.info', 'M', '73147 Maida Gateway Apt. 046\nEast Shaniya, CA 46352', 'Mauriciofort', 'USA', '1977-01-09', 'RVBx$fIfrD4r|!2', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(110, 'Prof. Herminia Mohr DDS', 'isabell15@dickens.net', 'M', '27513 Crist Loop Suite 492\nEast Demario, KY 75339-6727', 'Braunville', 'USA', '1996-01-10', 'PUrBn}A{I', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(111, 'Dr. Terrill Windler', 'cydney.roberts@prohaska.com', 'M', '5097 Donna Circle Suite 964\nCarolyneland, IL 75806', 'Hudsonville', 'USA', '1978-06-09', 'lk2TL9(\")kptS5', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(112, 'Dr. Lillie Hahn', 'rosendo.rosenbaum@block.com', 'M', '168 Camren Coves Suite 045\nEast Geovanni, SC 14376-3974', 'Joannyport', 'USA', '1986-02-24', 'l;@\'FKm<}{yj1QLP', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(113, 'Kristy Schmitt', 'corwin.rosemarie@hotmail.com', 'M', '398 O\'Reilly Cove Apt. 609\nSouth Kristopher, IL 17262-1601', 'South Kameron', 'USA', '2019-06-20', '22pzaZd!3a!6J)', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(114, 'Declan Bailey', 'rgleichner@hotmail.com', 'M', '29745 Dach Estate\nOphelialand, WY 08045-1860', 'Nicolaston', 'USA', '2018-11-20', '3)fL),mvE-s@hY8&cd', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(115, 'Assunta Casper', 'cshanahan@thompson.com', 'M', '1137 Gene Coves Suite 534\nLake Valentinborough, MA 59377-0050', 'Clemmieside', 'USA', '1980-11-30', 'MQLb(q`t^I4\\6u', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(116, 'Felton Kunde', 'roberto.welch@yahoo.com', 'M', '544 Maverick Pike Suite 840\nSylvanview, NJ 88715', 'Grahamside', 'USA', '2021-04-01', 'QE)wt\'?].\'~', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(117, 'Carlos Jenkins', 'joany35@bergnaum.org', 'M', '1339 Krystel Burg Apt. 828\nDemarcochester, ID 17458', 'West Thelmaside', 'USA', '2001-11-29', 'x^\'HA3;', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(118, 'Vicente Treutel', 'lsimonis@koelpin.com', 'M', '83044 Heaven Roads Suite 153\nNew Gerrytown, MI 48596-4036', 'Schmittland', 'USA', '2007-03-06', 'HO0<O_cQh1t},+', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(119, 'Prof. Annabel Leffler Jr.', 'fadel.angelo@hotmail.com', 'M', '8808 Howard Shores Suite 612\nPort Irmaville, AL 63793-4288', 'Hayesland', 'USA', '1975-11-02', 'uHT<?l`7rj]p', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(120, 'Miss Kyra Kassulke I', 'therese06@donnelly.com', 'M', '67698 Macejkovic Stravenue Suite 023\nTitoport, CT 81165', 'New Dayana', 'USA', '1996-08-19', 'e~?GZ?*Xa|F.!iYcx~[?', 1, 1, '2023-10-06 08:46:53', '2023-10-06 08:46:53', NULL),
(121, 'Dr. Muhammad Satterfield', 'mhagenes@kilback.com', 'M', '7466 Konopelski Isle Suite 125\nNorth Angus, AR 35633-8451', 'Jonathonshire', 'USA', '2003-12-08', 'GQWb?eB%^&.dGxMDD', 1, 1, '2023-10-06 08:46:54', '2023-10-06 08:46:54', NULL),
(122, 'Prof. Judah Weimann V', 'hagenes.jessyca@gmail.com', 'M', '1180 Wilber Wall\nSouth Laishaport, VA 55958', 'North Lindaside', 'USA', '1972-08-28', 'ZIH~Y*@\"L]*s1o(f', 1, 1, '2023-10-06 08:46:54', '2023-10-06 08:46:54', NULL),
(123, 'Alejandrin Jacobson V', 'stanton.rosetta@buckridge.biz', 'M', '84102 Hirthe Locks Apt. 253\nEast Destintown, KY 52602', 'Jaymemouth', 'USA', '2007-01-02', '(R7@P+j\'', 1, 1, '2023-10-06 08:46:54', '2023-10-06 08:46:54', NULL),
(124, 'Sally Howell Sr.', 'crona.buster@block.info', 'M', '577 Antonia Common Suite 881\nMarianamouth, KY 58786-2451', 'Richardchester', 'USA', '1993-05-28', 'na_;\'NPK?', 1, 1, '2023-10-06 08:46:54', '2023-10-06 08:46:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'kolkata', NULL, NULL),
(2, 'Barrackpore', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'somnath', 'somnathmw@gmail.com', 2, NULL, NULL),
(2, 'gopal', 'gopal@gmail.com', 1, NULL, NULL),
(3, 'krishna', 'krishna@gmail.com', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_02_131151_create_customers_table', 2),
(6, '2023_10_02_134715_add_column_to_customers_table', 3),
(7, '2023_10_06_063812_add_column_deleted_at_to_customers_table', 4),
(8, '2023_10_09_103057_create_groups_table', 5),
(9, '2023_10_09_103207_create_members_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_group_id_foreign` (`group_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
