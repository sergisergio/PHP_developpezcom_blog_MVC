-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Dim 15 Avril 2018 à 18:19
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `blog_developpez_com`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_commentaire`
--

CREATE TABLE `t_commentaire` (
  `COM_ID` int(11) NOT NULL,
  `COM_DATE` datetime NOT NULL,
  `COM_AUTEUR` varchar(100) NOT NULL,
  `COM_CONTENU` varchar(200) NOT NULL,
  `BIL_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_commentaire`
--

INSERT INTO `t_commentaire` (`COM_ID`, `COM_DATE`, `COM_AUTEUR`, `COM_CONTENU`, `BIL_ID`) VALUES
(1, '2018-04-15 10:44:06', 'A. Nonyme', 'Bravo pour ce début', 1),
(2, '2018-04-15 10:44:06', 'Moi', 'Merci ! Je vais continuer sur ma lancée', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_commentaire`
--
ALTER TABLE `t_commentaire`
  ADD PRIMARY KEY (`COM_ID`),
  ADD KEY `BIL_ID` (`BIL_ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_commentaire`
--
ALTER TABLE `t_commentaire`
  MODIFY `COM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_commentaire`
--
ALTER TABLE `t_commentaire`
  ADD CONSTRAINT `t_commentaire_ibfk_1` FOREIGN KEY (`BIL_ID`) REFERENCES `t_billet` (`BIL_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
