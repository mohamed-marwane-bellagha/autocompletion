-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 22 avr. 2021 à 13:46
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--
CREATE DATABASE IF NOT EXISTS `autocompletion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `autocompletion`;

-- --------------------------------------------------------

--
-- Structure de la table `camp`
--

CREATE TABLE IF NOT EXISTS `camp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `camp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `camp`
--

INSERT INTO `camp` (`id`, `camp`) VALUES
(1, 'gaulois'),
(2, 'romain'),
(3, 'egyptien');

-- --------------------------------------------------------

--
-- Structure de la table `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `id_camp` int(11) NOT NULL DEFAULT 1,
  `metier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_camp` (`id_camp`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `information`
--

INSERT INTO `information` (`id`, `nom`, `id_camp`, `metier`) VALUES
(2, 'asterix', 1, 'heros'),
(3, 'obelix', 1, 'livreur de menhir'),
(4, 'idefix', 1, 'chien'),
(5, 'panoramix', 1, 'druide'),
(6, 'abraracourcix', 1, 'chef de village'),
(7, 'bonnemine', 1, 'epouse'),
(8, 'agecanonix', 1, 'retraite'),
(9, 'falbala', 1, 'inconnu'),
(10, 'cetautomatix', 1, 'forgeron'),
(11, 'assurancetourix', 1, 'barde'),
(12, 'ordralfabetix', 1, 'poissonier'),
(13, 'numerobis', 3, 'architecte'),
(14, 'jules cesar', 1, 'empereur'),
(15, 'Iélosubmarine', 1, 'poissonier'),
(16, 'allégorix', 1, 'ecrivain'),
(17, 'analgésix', 1, 'apothicaire'),
(18, 'arrierboutix', 1, 'commercant'),
(19, 'bellodalix ', 1, 'gardien'),
(20, 'blinix', 1, 'restaurateur'),
(21, 'boulimix', 1, 'restaurateur'),
(22, 'cétaubofix', 1, 'forgeron'),
(23, 'cétyounix', 1, 'developpeur'),
(24, 'chanteclairix', 1, 'barde'),
(25, 'choucroutgarnix', 1, 'restaurateur'),
(26, 'déboitemenduménix', 1, 'paysan'),
(27, 'galantine', 1, 'epouse'),
(28, 'harenbaltix', 1, 'pecheur'),
(29, 'keskonrix', 1, 'guetteur'),
(30, 'linguistix', 1, 'traducteur'),
(31, 'oftalmologix', 1, 'medecin'),
(32, 'ouiskix', 1, 'barman'),
(33, 'porquépix', 1, 'berger'),
(34, 'antibiotix ', 1, 'apothicaire'),
(35, 'obélodalix', 1, 'livreur de menhir'),
(36, 'prolix', 1, 'devin'),
(37, 'goudurix', 1, 'cascadeur'),
(38, 'vercingétorix', 1, 'heros gaulois'),
(39, 'plaintcontrix', 1, 'violeur'),
(40, 'zérozérosix', 1, 'espion'),
(41, 'antivirus', 2, 'apothicaire'),
(42, 'caius bonus', 2, 'centurion'),
(43, 'marcus sacapus', 2, 'soldat'),
(44, 'olibrius', 2, 'djihadiste'),
(45, 'cépaderefus', 2, 'normand'),
(46, 'bonusmalus', 2, 'rubenhabib'),
(47, 'cartapus', 2, 'rachid'),
(48, 'encorutilfaluquejelesus', 2, 'coquillat'),
(49, 'motus', 2, 'dealer'),
(50, 'numerusclausus', 2, 'medecin'),
(51, 'saudepus', 2, 'veterinaire'),
(52, 'tikedbus', 2, 'chauffeur'),
(53, 'coronavirus', 2, 'policier'),
(54, 'volfgangamadéus', 2, 'musicien');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `information_ibfk_1` FOREIGN KEY (`id_camp`) REFERENCES `camp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
