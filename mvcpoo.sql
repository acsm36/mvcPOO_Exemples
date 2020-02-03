-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 03 fév. 2020 à 14:28
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mvcpoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `titre`, `texte`) VALUES
(1, 'Je suis l\'article 1', 'Oh, how I wish I could believe or understand that! There\'s only one reasonable course of action now: kill Flexo! I\'m Santa Claus! Hello Morbo, how\'s the family? Oh dear! She\'s stuck in an infinite loop, and he\'s an idiot! Well, that\'s love for you.\r\n\r\nOne hundred dollars. It doesn\'t look so shiny to me. You seem malnourished. Are you suffering from intestinal parasites? Oh, you\'re a dollar naughtier than most.\r\n\r\nThis is the worst part. The calm before the battle. Why, those are the Grunka-Lunkas! They work here in the Slurm factory. Hello, little man. I will destroy you! Then throw her in the laundry room, which will hereafter be referred to as \"the brig\".\r\n\r\nI meant \'physically\'. Look, perhaps you could let me work for a little food? I could clean the floors or paint a fence, or service you sexually? Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat.\r\n\r\nNo, of course not. It was… uh… porno. Yeah, that\'s it. Oh no! The professor will hit me! But if Zoidberg \'fixes\' it… then perhaps gifts! Can I use the gun? I love you, buddy!'),
(2, 'Je suis l\'article 2', 'Yeah. Give a little credit to our public schools. Anyhoo, your net-suits will allow you to experience Fry\'s worm infested bowels as if you were actually wriggling through them. Good news, everyone! There\'s a report on TV with some very bad news!\r\n\r\nThat could be \'my\' beautiful soul sitting naked on a couch. If I could just learn to play this stupid thing. Do a flip! Hi, I\'m a naughty nurse, and I really need someone to talk to. $9.95 a minute. Hello, little man. I will destroy you!\r\n\r\nIt\'s just like the story of the grasshopper and the octopus. All year long, the grasshopper kept burying acorns for winter, while the octopus mooched off his girlfriend and watched TV. But then the winter came, and the grasshopper died, and the octopus ate all his acorns. Also he got a race car. Is any of this getting through to you? Michelle, I don\'t regret this, but I both rue and lament it.\r\n\r\nYou, minion. Lift my arm. AFTER HIM! Why not indeed! No! Don\'t jump! We\'ll need to have a look inside you with this camera. Stop it, stop it. It\'s fine. I will \'destroy\' you!');

-- --------------------------------------------------------

--
-- Structure de la table `exemple`
--

DROP TABLE IF EXISTS `exemple`;
CREATE TABLE IF NOT EXISTS `exemple` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `exemple`
--

INSERT INTO `exemple` (`id`, `title`) VALUES
(1, 'test1'),
(2, 'test2'),
(3, 'test3');

-- --------------------------------------------------------

--
-- Structure de la table `exemple_truc`
--

DROP TABLE IF EXISTS `exemple_truc`;
CREATE TABLE IF NOT EXISTS `exemple_truc` (
  `id_exemple` int(11) NOT NULL,
  `id_truc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `exemple_truc`
--

INSERT INTO `exemple_truc` (`id_exemple`, `id_truc`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `truc`
--

DROP TABLE IF EXISTS `truc`;
CREATE TABLE IF NOT EXISTS `truc` (
  `id_truc` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id_truc`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `truc`
--

INSERT INTO `truc` (`id_truc`, `text`) VALUES
(1, 'truc1'),
(2, 'truc2'),
(3, 'truc3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
