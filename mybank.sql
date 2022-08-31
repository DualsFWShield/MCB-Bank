-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 30 août 2022 à 23:33
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mybank`
--

-- --------------------------------------------------------

--
-- Structure de la table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'MCB Bank générale d\'Europe'),
(2, '100102', 'MCB Bank générale d\'Amérique du nord'),
(3, '100103', 'MCB Bank générale d\'Amérique du sud'),
(4, '100104', 'MCB Bank générale d\'Océanie'),
(5, '100105', 'MCB Bank générale d\'Asie'),
(6, '100106', 'MCB Bank Belgique'),
(7, '100107', 'MCB Bank France'),
(8, '100108', 'MCB Bank Suisse'),
(9, '100109', 'MCB Bank Italie'),
(10, '1001010', 'MCB Bank Suède'),
(11, '1001011', 'MCB Bank Espagne'),
(13, '1001013', 'MCB Bank Portugal'),
(14, '1001014', 'MCB Bank États-Unis'),
(15, '1001015', 'MCB Bank Canada'),
(16, '1001016', 'MCB Bank Maroc'),
(17, '1001017', 'MCB Bank Algérie'),
(19, '1001019', 'MCB Bank Congo'),
(20, '1001020', 'MCB Bank Côte d\'ivoire');

-- --------------------------------------------------------

--
-- Structure de la table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(4, 'this is help card for admin', 1, '2017-12-17 06:45:20');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2017-12-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2017-12-15 04:36:27');

-- --------------------------------------------------------

--
-- Structure de la table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer!\r\nOur privacy policy is changed for account information get new prospectus from your nearest branch.', '2017-12-14 13:11:46');

-- --------------------------------------------------------

--
-- Structure de la table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001124', 'CBC', 'Yousef Khan', '71000', '2017-12-14 11:55:07'),
(2, '12001125', 'CBC', 'Kamala Khan', '992563', '2017-12-14 11:55:07');

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(1, 'transfer', '', '200', '', '', '12001122', 1, '2017-12-14 12:33:40');

-- --------------------------------------------------------

--
-- Structure de la table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(3, 'some@gmail.com', 'some', 'Some', '1000', '000000000000', '', '', '', 'Test', '0000', '1', 'Test', '2009-04-28 12:28:27');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Index pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Index pour la table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
