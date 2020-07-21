-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 18 Juillet 2020 à 15:43
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `site_ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(5, 'CHAUSSURES FEMMES', 'chaussures-femmes'),
(7, 'SAC A MAIN FEMME', 'sac-a-main-femme');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `shipping` varchar(255) NOT NULL,
  `tva` varchar(255) NOT NULL,
  `final_price` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`ID`, `title`, `slug`, `description`, `price`, `category`, `weight`, `shipping`, `tva`, `final_price`, `stock`) VALUES
(40, 'TALONS', 'talons', 'Chaussures femmes tres chic a bas prix', '50', 'CHAUSSURES FEMMES', '100', '10', '20', '72', '3'),
(44, 'Tommy Hilfiger', 'tommy-hilfiger', 'Sac femme couleur noir et convenable avec tout type ', '90', 'SAC A MAIN FEMME', '100', '10', '20', '120', '5');

-- --------------------------------------------------------

--
-- Structure de la table `products_transactions`
--

CREATE TABLE IF NOT EXISTS `products_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(25) NOT NULL,
  `date` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(4, 'carole', 'tchany12@gmail.com', 'tantine');

-- --------------------------------------------------------

--
-- Structure de la table `weights`
--

CREATE TABLE IF NOT EXISTS `weights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `weights`
--

INSERT INTO `weights` (`id`, `name`, `price`) VALUES
(1, 0, 5),
(2, 100, 10),
(3, 300, 15),
(4, 500, 20),
(5, 1000, 40);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
