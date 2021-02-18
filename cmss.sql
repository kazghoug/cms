-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Feb 18, 2021 at 10:15 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmss`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_auteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `image`, `text`, `id_categorie`, `id_auteur`) VALUES
(27, 'fogo', 'index.jpg', 'Mauris scelerisque nibh sed tellus tempor blandit. Vestibulum sodales nunc finibus enim maximus, in interdum enim imperdiet. Nulla feugiat placerat neque vitae ornare. Morbi nec pulvinar urna. In ullamcorper ac tellus quis varius. Curabitur dictum porta purus, vitae hendrerit ante. In lacinia vulputate dui id tincidunt. Integer in tellus nec neque accumsan sollicitudin at ornare arcu. Aenean sed hendrerit arcu.', 1, 10),
(39, 'this is an arti', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', 'Praesent sodales, odio at commodo fringilla, quam neque hendrerit sapien, ut malesuada elit nibh vel lacus. Maecenas varius sagittis erat, vel porttitor ex luctus nec. Vestibulum luctus turpis a nunc malesuada, et lobortis nunc fringilla. Suspendisse at dui sed elit finibus fermentum non sit amet mi. Quisque vehicula non est a efficitur. Curabitur nec libero elementum, cursus magna nec, pellentesque lorem. Nunc varius bibendum venenatis. Vivamus iaculis, tellus vel finibus porta, ligula dolor pretium odio, a suscipit odio nisl a purus. Donec ut neque orci. Proin et semper tellus. Cras non pulvinar tellus, ac sollicitudin eros. Donec maximus rhoncus odio nec varius. In hac habitasse platea dictumst. Curabitur posuere, lectus quis ornare molestie, magna enim elementum mauris, vitae lobortis turpis lorem accumsan enim. Fusce ut nunc at eros convallis malesuada nec et orci.\r\n\r\nProin dictum felis quis pharetra vehicula. Ut vel est orci. In a sagittis augue. Aliquam in dignissim enim, non blandit mi. Pellentesque in dui vitae sem scelerisque vehicula a non lorem. Praesent vitae elementum arcu. Suspendisse tempor risus purus, vel ultrices nulla rhoncus eget. Aliquam nec tellus eros. Ut porta non orci ullamcorper auctor. Praesent malesuada elementum velit, vestibulum rutrum turpis gravida congue. Aliquam in ipsum ligula. Donec tristique, sapien a auctor mattis, odio velit cursus odio, vitae scelerisque odio justo ac metus. Duis tristique mi eu libero convallis pharetra.\r\n\r\nEtiam ultrices congue vehicula. Sed elit libero, pretium nec mi quis, rutrum pretium odio. Mauris facilisis convallis massa et lacinia. Curabitur non nibh leo. Mauris sed augue metus. Sed sodales venenatis volutpat. In ligula tortor, pulvinar tempus lectus sit amet, semper tempus turpis. Maecenas ut vulputate mi. Cras volutpat quam massa, sit amet maximus tortor efficitur vitae. Praesent nec purus tincidunt, sollicitudin elit at, feugiat lectus. Vivamus mattis tellus tellus, gravida hendrerit tortor euismod eget. Aenean ullamcorper erat leo, ac facilisis urna faucibus in.', 10, 67),
(40, 'hfikzsre', 'clouds-1573923_960_720.jpg', 'Ut tincidunt, nisi a blandit posuere, erat erat commodo diam, id facilisis libero diam vel sapien. Aliquam erat volutpat. Sed eget maximus nunc. Praesent in egestas neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur consequat quam orci, vel imperdiet enim porttitor at. Phasellus a felis a lacus volutpat luctus. Quisque eget felis nec urna tempus hendrerit. Nunc commodo nisl id egestas placerat. Nunc gravida, libero nec accumsan tempus, mi dui pretium metus, a volutpat urna mauris non velit.\r\n\r\nUt congue tortor arcu, eget fringilla nisl rhoncus in. Quisque hendrerit tempor libero ut efficitur. Etiam nec arcu nibh. Aliquam ultrices libero tempor, imperdiet lectus in, consequat purus. In sed risus id sem sagittis interdum eget finibus nunc. Etiam semper nisl eu purus elementum, ac elementum dui porttitor. Praesent nec nibh id urna cursus mattis.', 12, 68),
(41, 'titow', 'philippines.jpg', 'Morbi sed placerat odio. Phasellus nec ipsum sit amet ante congue vestibulum aliquam sed felis. In eu tortor sed urna laoreet commodo. In iaculis libero id ultricies volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed non commodo nulla. Maecenas at bibendum nisi. Nam mollis ex elit, in accumsan nunc gravida et. Quisque pellentesque porttitor erat eget cursus.\r\n\r\nPraesent sodales, odio at commodo fringilla, quam neque hendrerit sapien, ut malesuada elit nibh vel lacus. Maecenas varius sagittis erat, vel porttitor ex luctus nec. Vestibulum luctus turpis a nunc malesuada, et lobortis nunc fringilla. Suspendisse at dui sed elit finibus fermentum non sit amet mi. Quisque vehicula non est a efficitur. Curabitur nec libero elementum, cursus magna nec, pellentesque lorem. Nunc varius bibendum venenatis. Vivamus iaculis, tellus vel finibus porta, ligula dolor pretium odio, a suscipit odio nisl a purus. Donec ut neque orci. Proin et semper tellus. Cras non pulvinar tellus, ac sollicitudin eros. Donec maximus rhoncus odio nec varius. In hac habitasse platea dictumst. Curabitur posuere, lectus quis ornare molestie, magna enim elementum mauris, vitae lobortis turpis lorem accumsan enim. Fusce ut nunc at eros convallis malesuada nec et orci.', 13, 69);

-- --------------------------------------------------------

--
-- Table structure for table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auteur`
--

INSERT INTO `auteur` (`id`, `name`, `email`, `profile_pic`, `password`) VALUES
(10, 'new name', 'newname@yahoo.fr', 'clouds-1573923_960_720.jpg', ''),
(14, 'bobo', 'bobo@yahoo.fr', 'philippines.jpg', ''),
(16, 'tipag', 'tipag@koko.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', ''),
(17, 'malaoka', 'malaoka@gmail.com', 'philippines.jpg', ''),
(18, 'konapani', 'konapani@yzhoo.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', ''),
(26, 'tyuirzpc', 'tyuirzpc@gmail.com', 'clouds-1573923_960_720.jpg', 'tyuirzpc'),
(27, 'tyuirzpc', 'tyuirzpc@gmail.com', 'clouds-1573923_960_720.jpg', 'tyuirzpc'),
(28, 'wxsertyu', 'wxsertyu@yahoo.com', 'clouds-1573923_960_720.jpg', 'wxsertyu'),
(30, 'cvnbyuiui', 'cvnbyuiui@gmail.com', 'philippines.jpg', 'cvnbyuiui'),
(31, 'cvbzret2018', 'cvbzret2018@gmail.com', 'clouds-1573923_960_720.jpg', 'cvbzret2018'),
(32, 'cvbe2018', 'cvbe2018@g.com', 'clouds-1573923_960_720.jpg', 'cvbe2018'),
(33, 'rtuyi2020', 'rtuyi2020@g.com', 'clouds-1573923_960_720.jpg', 'rtuyi2020'),
(35, 'cvrtu8956', 'cvrtu8956@gm.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', 'cvrtu8956'),
(36, 'czrvzrrtg2525', 'czrvzrrtg2525@gmail.com', 'clouds-1573923_960_720.jpg', 'czrvzrrtg2525'),
(37, 'bobo258', 'bobo258@gmail.com', 'clouds-1573923_960_720.jpg', 'bobo258'),
(38, 'xcvneu321654', 'xcvneu321654@gmail.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', 'xcvneu321654'),
(39, 'oirnvoer5487', 'oirnvoer5487@groi.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', 'oirnvoer5487'),
(40, 'iauzehfiaujbcaoef2018', 'iauzehfiaujbcaoef2018@gmail.com', 'philippines.jpg', 'iauzehfiaujbcaoef2018'),
(42, 'yryrry201', 'yryrry201@gmail.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', 'yryrry201'),
(43, 'rttivnbuio554', 'rttivnbuio554@gmail.com', 'clouds-1573923_960_720.jpg', 'rttivnbuio554'),
(44, 'rvbzibvr', 'rvbzibvr@gmail.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', 'rvbzibvr'),
(45, 'ugozer555', 'ugozer555@gmail.com', 'clouds-1573923_960_720.jpg', 'ugozer555'),
(46, 'uhfizr2525', 'uhfizr2525gmail.com', 'clouds-1573923_960_720.jpg', 'uhfizr2525'),
(47, 'jvozei', 'jvozei@gmail.com', 'clouds-1573923_960_720.jpg', 'jvozei'),
(49, 'asma3wa', 'asma3wa@gmail.com', 'clouds-1573923_960_720.jpg', 'asma3wa'),
(50, 'asma333', 'asma333@gmail.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', 'asma333'),
(51, 'jzporjvzprorgv', 'jzporjvzprorgv@gmail.com', 'clouds-1573923_960_720.jpg', 'jzporjvzprorgv'),
(52, 'ytytytytyttutu', 'ytytytytyttutu@gmail.com', 'index.jpg', 'ytytytytyttutu'),
(53, 'tyi20', 'tyi20@gmail.com', 'index.jpg', 'tyi20'),
(54, 'yutoz2020', 'yutoz2020@gmail.com', 'philippines.jpg', 'yutoz2020'),
(56, 'jpzojrptspojzsrpgzj', 'jpzojrptspojzsrpgzj', 'philippines.jpg', 'jpzojrptspojzsrpgzj'),
(57, 'riiiiiiiiiiiiiiiiiiiriri', 'riiiiiiiiiiiiiiiiiiiriri', 'philippines.jpg', 'riiiiiiiiiiiiiiiiiiiriri'),
(59, 'gozpkrtg', 'gozpkrtg', 'philippines.jpg', 'gozpkrtg'),
(60, 'ojzpgjrgg', 'ojzpgjrgg', 'philippines.jpg', 'ojzpgjrgg'),
(61, 'urururururru', 'urururururru@hh.com', 'clouds-1573923_960_720.jpg', 'urururururru'),
(63, 'asma3wa2', 'asm@gmail.coma3wa2', 'index.jpg', 'asma3wa2'),
(64, 'fjpaifvpzir', 'fjpaifvpzir@gmail.com', 'index.jpg', 'fjpaifvpzir'),
(65, 'vweity', 'vweity', 'clouds-1573923_960_720.jpg', 'vweity'),
(66, 'cdcecee2', 'cdcecee2', 'clouds-1573923_960_720.jpg', 'cdcecee2'),
(67, 'rytuyio', 'rytuyio@gmail.com', 'clouds-1573923_960_720.jpg', 'rytuyio'),
(68, 'yutirei', 'yutirei@gmail..com', 'clouds-1573923_960_720.jpg', 'yutirei'),
(69, 'tooot2018', 'tooot2018@gmail.com', 'beautiful-tropical-beach-landscape-banner-white-sand-coco-palms-wide-panorama-background-concept-amazing-scene-use-summer-136519718.jpg', 'tooot2018');

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `name`, `image`) VALUES
(1, 'haha', 'clouds-1573923_960_720.jpg'),
(10, 'bababba', 'index.jpg'),
(12, 'mazagan', 'philippines.jpg'),
(13, 'barapa', 'clouds-1573923_960_720.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_ibfk_1` (`id_auteur`),
  ADD KEY `article_ibfk_2` (`id_categorie`);

--
-- Indexes for table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
