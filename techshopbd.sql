-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 07 mai 2021 à 20:34
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `techshopbd`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `clientID` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `autori` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`clientID`, `nom`, `prenom`, `address`, `email`, `mdp`, `autori`) VALUES
(1, 'admin', 'utlime', '---', 'techshop@gmail.com', '123456', 1),
(3, 'younes', 'tissilguit', '38 LOT CASABLANCA', 'younes@gmail.com', '123456', 0),
(15, 'ghali', 'tagemouati', '58 LOTcasablanca', 'ghali@gmail.com', '123456', 0);

-- --------------------------------------------------------

--
-- Structure de la table `commandde`
--

CREATE TABLE `commandde` (
  `clientRef` int(11) NOT NULL,
  `produitRef` int(255) NOT NULL,
  `quantite_D` varchar(255) DEFAULT NULL,
  `date_cmd` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commandde`
--

INSERT INTO `commandde` (`clientRef`, `produitRef`, `quantite_D`, `date_cmd`) VALUES
(3, 3, '4', '2021-04-29'),
(3, 12, '1', '2021-04-29'),
(3, 1, '2', '2021-04-29'),
(14, 5, '1', '2021-04-30'),
(15, 4, '2', '2021-04-30'),
(15, 1, '4', '2021-05-02'),
(15, 14, '2', '2021-05-07'),
(15, 7, '3', '2021-05-07');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `prod_id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` int(6) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `note` int(1) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `stock` int(6) NOT NULL,
  `src` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`prod_id`, `nom`, `prix`, `libelle`, `note`, `categorie`, `stock`, `src`) VALUES
(1, 'BRIO STREAM 3', 168, 'La meilleure webcam pour la diffusion, l\'enregistrement et les appels vidéo en 4K HDR .', 5, 'Camera', 56, 'cam1'),
(2, 'AUKEY Webcam', 400, 'AUKEY Webcam 1080P Full HD avec Microphone Stéréo, Caméra Web pour Chat Vidéo et Enregistrement, Compatible avec Windows, Mac et Android', 5, 'Camera', 16, 'cam2'),
(3, 'Casque Apple AirPods Max', 600, ' Transducteur dynamique conçu par Apple, Réduction active du bruit, Mode Transparence, Égalisation adaptative, Audio spatial avec suivi dynamique des mouvements de la tête ;', 4, 'Casque', 96, 'csq1'),
(4, 'Logitech G213 Prodigy', 500, 'Logitech G213 Prodigy, Clavier Gaming, Eclairage RVB LIGHTSYNC, Résistant aux Éclaboussures, Personnalisable, Commandes Multimédia Dédiées, Clavier Français AZERTY - Noir', 3, 'Clavier', 95, 'clv1'),
(5, 'Souris Gaming Logitech G502 Hero Noir\r\n', 589, 'Capteur HERO - La souris gaming G502 possède notre capteur optique le plus avancé et le capteur HERO nouvelle génération.', 4, 'Souris', 66, 'sour1'),
(6, 'Casque Gaming HyperX Cloud', 390, 'Micro casque filaire pour : console de jeux, dispositifs électroniques portables, ordinateur, Boitier de commande USB avec carte son DSP intégrée, Son Surround virtuel 7.', 3, 'Casque', 98, 'csq2'),
(7, 'KLIM Aim Souris Gamer RGB 7000 DPI', 450, 'KLIM Aim Souris Gamer RGB 7000 DPI - Souris Ambidextre Ergonomique RGB Chroma pour Ordinateur - Souris PS4, PC Portable et de Bureau + Souris à Laser Optique Haute Précision - Noir', 3, 'Souris', 96, 'sour2'),
(8, 'Clavier Gaming filaire Razer', 690, 'Le clavier gamer Razer Cynosa Lite dispose de touches AZERTY avec enregistrement de macros à la volée. Choisissez parmi 16,8 millions de couleurs.', 5, 'Clavier', 99, 'clv2'),
(9, 'AverMedia Live Streamer CAM 513', 352, 'AverMedia Live Streamer CAM 513 Webcam Ultra Grand Angle 4K avec Couverture Webcam, Microphone intégré, Plug & Play pour Jeu, Stream, Appel vidéo – PW513\r\n', 2, 'Camera', 100, 'cam3'),
(10, 'Casque hi-fi fermé circum-aural', 344, 'Vivre en toute intimité une écoute d’exception, sans craindre qu’un environnement bruyant ne perturbe ce moment de plaisir.', 5, 'Casque', 100, 'csq3'),
(11, 'FELiCON AK33', 600, 'FELiCON AK33 Clavier de Jeu mécanique câblé, Clavier Blanc à rétroéclairage LED 82 Touches E-Sport Gamer pour dactylographes au Bureau Jouant à des Jeux (commutateur Bleu, Blanc)', 4, 'Clavier', 97, 'clv3'),
(12, 'Logitech Streamcam Webcam', 253, 'Logitech Streamcam Webcam avec USB-C Pour Le Streaming Et La Création De Contenu, Vidéo Verticale Full HD 1080p, Double Fixation De La Caméra, pour YouTube, Gaming Twitch, PC/Mac - Noir', 4, 'Camera', 100, 'cam4'),
(13, 'Casque audio Focal Celestee', 845, 'Casque fermé haut de gamme, fabriqué en France par focal, pour un usage domestique et nomade.Design, matériaux nobles et finitions Navy Blue, avec des détails en Soft Copper.', 4, 'Casque', 100, 'csq4'),
(14, 'Souris sans fil Logitech M220 Silent Noir', 844, 'Connexion sans fil à 2.4 GHz, Portée sans fil: 10 mètres, Autonomie: 18 mois, Roulette de défilement: Oui, 2D, optique, Boutons standard et spéciaux: Clic central\r\n', 3, 'Souris', 98, 'sour3'),
(15, 'Corsair K68 Red LED ', 142, 'Corsair K68 Red LED Clavier Mécanique Gaming (Cherry MX Red: Lisse et rapide, Rétro-Éclairage Rouge, Étanche et Résistant à la Poussière, AZERTY FR Layout) - Noir', 4, 'Clavier', 100, 'clv4'),
(16, 'Souris Logitech M236 Argent', 242, 'Simple à installer, efficace cette petite souris se manie du bout des doigts. Elle est parfaite pour une utilisation de tous les jours en bureautique et internet.', 2, 'Souris', 100, 'sour4');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`);

--
-- Index pour la table `commandde`
--
ALTER TABLE `commandde`
  ADD KEY `fk_com_pro` (`produitRef`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
