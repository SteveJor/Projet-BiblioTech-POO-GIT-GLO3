-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : sam. 17 mai 2025 à 04:36
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliodb`
--

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

DROP TABLE IF EXISTS `emprunt`;
CREATE TABLE IF NOT EXISTS `emprunt` (
  `id_emprunt` int NOT NULL AUTO_INCREMENT,
  `date_emprunt` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_retour_prevue` datetime DEFAULT NULL,
  `date_retour_effective` datetime DEFAULT NULL,
  `id_lecteur` int DEFAULT NULL,
  `numero_exemplaire` int DEFAULT NULL,
  `id_responsable` int DEFAULT NULL,
  `statut` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_emprunt`),
  KEY `id_lecteur` (`id_lecteur`),
  KEY `numero_exemplaire` (`numero_exemplaire`),
  KEY `id_responsable` (`id_responsable`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id_emprunt`, `date_emprunt`, `date_retour_prevue`, `date_retour_effective`, `id_lecteur`, `numero_exemplaire`, `id_responsable`, `statut`) VALUES
(15, '2025-05-16 08:28:26', '2025-05-16 00:00:00', NULL, 11, 123, 1, 'en cours'),
(16, '2025-05-16 08:34:39', '2025-05-18 00:00:00', '2025-05-16 00:00:00', 11, 326, 1, 'Rendu'),
(17, '2025-05-17 03:40:15', '2025-05-19 00:00:00', NULL, 8, 336, 1, 'en cours'),
(18, '2025-05-17 03:40:51', '2025-05-18 00:00:00', NULL, 13, 332, 1, 'en cours'),
(19, '2025-05-17 03:41:51', '2025-05-18 00:00:00', NULL, 10, 331, 1, 'en cours');

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
CREATE TABLE IF NOT EXISTS `exemplaire` (
  `numero_exemplaire` int NOT NULL AUTO_INCREMENT,
  `etat` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT '1',
  `date_creation` date DEFAULT NULL,
  `isbn` bigint DEFAULT NULL,
  PRIMARY KEY (`numero_exemplaire`),
  KEY `isbn` (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `exemplaire`
--

INSERT INTO `exemplaire` (`numero_exemplaire`, `etat`, `disponible`, `date_creation`, `isbn`) VALUES
(123, 'neuf', 0, '2025-05-10', 91286),
(321, 'neuf', 1, '2025-05-09', 334344334),
(322, 'bon', 1, '2025-05-10', 334344334),
(324, 'moyen', 1, '2025-05-10', 334344334),
(325, 'bon', 1, '2025-05-10', 91286),
(326, 'moyen', 1, '2025-05-11', 678824),
(327, 'Neuf', 1, '2025-05-11', 33624),
(328, 'Neuf', 1, '2025-05-11', 33624),
(329, 'Neuf', 1, '2025-05-11', 78042),
(330, 'mauvais', 1, '2025-05-11', 78042),
(331, 'bon', 0, '2025-05-17', 563478),
(332, 'Neuf', 0, '2025-05-17', 569843),
(333, 'Neuf', 1, '2025-05-17', 569843),
(334, 'Neuf', 1, '2025-05-17', 569843),
(335, 'Neuf', 1, '2025-05-17', 569843),
(336, 'bon', 0, '2025-05-17', 569843);

-- --------------------------------------------------------

--
-- Structure de la table `lecteur`
--

DROP TABLE IF EXISTS `lecteur`;
CREATE TABLE IF NOT EXISTS `lecteur` (
  `id_lecteur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adresse` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateInscription` datetime DEFAULT NULL,
  PRIMARY KEY (`id_lecteur`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `lecteur`
--

INSERT INTO `lecteur` (`id_lecteur`, `nom`, `contact`, `email`, `adresse`, `dateInscription`) VALUES
(5, 'GUEMBU SIME GUY VALAIREkl', '4324234', 'wankagumer@gmail.com', 'dfzeer', '2025-05-10 03:31:37'),
(7, 'Mme Kengne', '4324234', 'guyeinstein15@gmail.com', 'dfzeer', '2025-05-10 03:34:38'),
(8, 'Jonathan David', '677827341', 'jonathandavid@gmail.com', 'PK17', '2025-05-10 18:34:17'),
(9, 'Kitio Ngoumela Harry', '690235849', 'kitiohar23@gmail.com', 'Bepanda ', '2025-05-10 18:36:42'),
(10, 'Totto Philippe', '654367939', 'philippetotto21@gmail.com', 'PK13', '2025-05-10 18:37:39'),
(11, 'Fohom Diane', '691696148', 'mervyfohom15@gmail.com', 'PK17', '2025-05-10 18:38:59'),
(12, 'Ntakeu Leane', '692585545', 'leanentakeu237@gmail.com', 'Yassa', '2025-05-10 18:40:12'),
(13, 'Mohammed Ismaïla', '650223350', 'elbachirmohammed5@gmail.com', 'Logbessou', '2025-05-10 18:41:44');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `isbn` bigint NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `annee_publication` int DEFAULT NULL,
  `nombre_exemplaires` int DEFAULT '0',
  `categorie` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateCreation` datetime DEFAULT NULL,
  `nombre_pages` int DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`isbn`, `titre`, `auteur`, `annee_publication`, `nombre_exemplaires`, `categorie`, `dateCreation`, `nombre_pages`) VALUES
(33624, 'L\'ombre des Etoiles', 'Karim Belhaj', 2018, 2, 'SCIENCE-FICTION', '2025-05-10 18:01:57', 412),
(78042, 'Les cendres du Temps', 'Elise Montbrun', 2004, 2, 'HISTORIQUE', '2025-05-11 07:52:44', 384),
(91286, 'Le misanthrope', 'Molière', 1666, 2, 'THEATRE', '2025-05-10 18:08:29', 120),
(563478, 'Le masque et la Plume', 'Jean-Paul Lemoine', 1995, 1, 'THEATRE', '2025-05-10 18:05:29', 189),
(569843, 'Bel Ami', 'Guy de Maupassant', 1865, 5, 'ROMAN', '2025-05-12 16:30:03', 384),
(634521, 'Le Pacte des Brumes', 'Yann Leclerc', 2012, 0, 'FANTASY', '2025-05-10 18:04:29', 458),
(678824, 'Au bonheur des dames', 'Emile Zola', 1950, 1, 'ROMAN', '2025-05-29 16:55:09', 130),
(678899, 'La dernière Symphonie', 'Charlotte Dumas', 1999, 0, 'ROMAN', '2025-05-10 18:02:29', 327),
(334344334, 'egereryr', 'yeryeryer', 22332, 3, 'HISTORIQUE', '2025-05-09 19:50:42', 24244);

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

DROP TABLE IF EXISTS `responsable`;
CREATE TABLE IF NOT EXISTS `responsable` (
  `id_responsable` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mot_de_passe` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateCreation` datetime DEFAULT NULL,
  PRIMARY KEY (`id_responsable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `responsable`
--

INSERT INTO `responsable` (`id_responsable`, `nom`, `contact`, `email`, `mot_de_passe`, `dateCreation`) VALUES
(1, 'Mme Kengne', '655987654', 'kengne@biblio.cm', 'pass123', '2025-05-07 20:03:44'),
(2, 'Mr Fotso', '690876543', 'fotso@biblio.cm', 'securepwd', '2025-05-07 20:03:44');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`id_lecteur`) REFERENCES `lecteur` (`id_lecteur`) ON DELETE SET NULL,
  ADD CONSTRAINT `emprunt_ibfk_2` FOREIGN KEY (`numero_exemplaire`) REFERENCES `exemplaire` (`numero_exemplaire`) ON DELETE SET NULL,
  ADD CONSTRAINT `emprunt_ibfk_3` FOREIGN KEY (`id_responsable`) REFERENCES `responsable` (`id_responsable`) ON DELETE SET NULL;

--
-- Contraintes pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD CONSTRAINT `exemplaire_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `livre` (`isbn`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
