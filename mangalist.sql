-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 09 juin 2022 à 16:13
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mangalist`
--

-- --------------------------------------------------------

--
-- Structure de la table `consulter`
--

CREATE TABLE `consulter` (
  `id_user` int(11) NOT NULL,
  `id_manga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `auteur` varchar(50) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `synopsis` varchar(1000) DEFAULT NULL,
  `tomes` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`id`, `titre`, `auteur`, `img`, `synopsis`, `tomes`) VALUES
(1, 'Naruto', 'Masashi Kishimoto', '/images/naruto.png', 'Naruto est un garçon un peu spécial. Solitaire au caractère fougueux, il n\'est pas des plus appréciés dans son village. Malgré cela, il garde au fond de lui une ambition: celle de devenir un \"maître Hokage\", la plus haute distinction dans l\'ordre des ninjas, et ainsi obtenir la reconnaissance de ses pairs mais cela ne sera pas de tout repos ... Suivez l\'éternel farceur dans sa quête du secret de sa naissance et de la conquête des fruits de son ambition !', 72),
(2, 'Bleach', 'Tite Kubo', '/images/bleach.png', 'Adolescent de quinze ans, Ichigo Kurosaki possède un don particulier : celui de voir les esprits. Un jour, il croise la route d\'une belle Shinigami (un être spirituel) en train de pourchasser une \"âme perdue\", un esprit maléfique qui hante notre monde et n\'arrive pas à trouver le repos. Mise en difficulté par son ennemi, la jeune fille décide alors de prêter une partie de ses pouvoirs à Ichigo, mais ce dernier hérite finalement de toute la puissance du Shinigami. Contraint d\'assumer son nouveau statut, Ichigo va devoir gérer ses deux vies : celle de lycéen ordinaire, et celle de chasseur de démons...', 74),
(3, 'One Piece', 'Eiichiro Oda', '/images/onepiece.png', 'Nous sommes à l’ère des pirates ! Luffy, un garçon espiègle, rêve de devenir le roi des pirates en trouvant le «One Piece», un fabuleux et mystérieux trésor. Mais, par mégarde, Luffy a avalé un jour un «fruit magique du démon» qui l’a transformé en homme caoutchouc. Depuis, il est capable de contorsionner son corps élastique dans tous les sens, mais il a perdu la faculté de nager, le comble pour un pirate ! Au fil d’aventures toujours plus rocambolesques et de rencontres fortuites, Luffy va progressivement composer son équipage et multiplier les amitiés avec les peuples qu’il découvre, tout en affrontant de redoutables ennemis.', 101),
(4, 'Hunter x Hunter', 'Yoshihiro Togashi', '/images/hxh.png', 'Après avoir longtemps cru que son père était mort, le jeune Gon découvre qu\'il est apparemment toujours en vie mais surtout que c\'est un Hunter. Décidé à suivre ces traces il tente passer le très difficile examen annuel des Hunter...', 36),
(5, 'Monster', 'Naoki Urasawa', '/images/monster.png', '1986. Kenzo Tenma est un brillant neurochirurgien pratiquant son art à l\'hôpital Eisler de Düsseldorf (Allemagne). Tenma est comblé, il vient de sauver la vie d\'un chanteur d\'opéra célèbre... Promis à la belle Eva Heineman, la fille du directeur de l\'hôpital, son avenir est tout tracé. Tout lui sourit... Jusqu\'à la nuit où arrivent deux enfants, Anna et Johann Liebert, dont les parents ont été découverts sauvagement assassinés. En choisissant de sauver le petit garçon plutôt que le maire de la ville, le docteur perdra tout... Amour, gloire et honneur laisseront place à solitude, rupture et alcool... Surtout qu\'autour des deux enfants, les morts se multiplient. Tenma n\'aurait-il pas sauvé un MONSTRE?', 18),
(6, 'Jojo\'s Bizarre Adventure', 'Hirohiko Araki', '/images/jojo.png', 'À la fin du XIXe siècle, en Angleterre, lord Joestar voit arriver dans sa maison le jeune Dio Brando, le fils d’un homme qui lui a sauvé la vie. Reconnaissant, il décide de l’adopter mais le jeune homme s’avère particulièrement ambitieux et prêt à tout pour s’emparer de la fortune familiale. Dio semble même prêt à prendre la place du fils de lord Joestar...', 131),
(7, 'Toriko', 'Mitsutoshi Shimabukuro', '/images/toriko.png', 'Dans un monde où la gastronomie règne sans partage, les plus grands restaurants rivalisent d’ingéniosité pour offrir les menus les plus succulents ! Mais les meilleurs ingrédients sont souvent rarissimes et très risqués à obtenir... Chargé de mettre la main sur de la viande de galala-­‐gator, le chef cuisiner Komatsu fait la rencontre de la crème des chasseurs de denrées rares : l\'herculéen Toriko. Commence alors une  périlleuse quête à travers une flore pleine de mystères et peuplée d\'un bestiaire aussi farfelu que dangereux...', 43),
(8, 'Death Note', 'Tsugumi Oba Takechi Obata', '/images/deathnote.png', 'Light Yagami est un lycéen âgé de 17 ans, jeune homme brillant, fils d\'un policier, il découvre un étrange carnet qui se révèle être le livre d\'un dieu de la mort : Ryûk ! Light apprendra vite quels terribles pouvoirs renferment ce carnet : tous ceux dont le nom est inscrit dans le Death Note sont appelés à mourir dans les 40 secondes qui suivent ! Les implications sont énormes et en possession d\'un tel carnet Light est potentiellement capable d\'imposer sa loi à un monde qu\'il estime perverti. Mais peut-on choisir qui va vivre et qui va mourir ? Certaines personnes méritent-elles de mourir par la seule volonté d\'un adolescent, à la fois juge et bourreau pour une sentence irrévocable ? En agissant de la sorte Light devient lui-même un criminel, il éveille ainsi l\'attention de L, enquêteur mystérieux mandaté par Interpol. Un duel sans merci s\'engage entre ces deux esprits exceptionnels !', 13),
(9, 'Tokyo Revengers', 'Ken Wakui', '/images/tokyorevengers.png', 'À 26 ans, Takemichi a le sentiment d’avoir déjà raté sa vie. Vivotant de petits boulots ingrats tout juste bons à payer le loyer d’un studio miteux, il se lamente sur le désert de sa vie amoureuse lorsqu’il apprend la mort de Hinata, la seule petite amie qu’il ait eue... La jeune fille et son frère ont été les victimes collatérales d’un règlement de comptes entre les membres d’un gigantesque gang, le Tokyo Manji-kai. Encore sous le choc, Takemichi est à son tour victime d’un accident qui le ramène inexplicablement 12 ans en arrière, lorsqu’il était au collège et se donnait des airs de mauvais garçon. Et si c’était pour lui l’occasion de sauver Hinata ? Mais en tentant de modifier le futur, Takemichi se retrouvera inexorablement mêlé aux complots se tramant autour du Tokyo Manji-kai et de son charismatique et mystérieux leader...', 18);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `libelle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `libelle`) VALUES
(1, 'utilisateur'),
(2, 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `pseudo` varchar(20) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `mdp` varchar(100) DEFAULT NULL,
  `id_role` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `prenom`, `nom`, `pseudo`, `mail`, `mdp`, `id_role`) VALUES
(8, 'Giroud', 'Lucas', 'Laxis', 'lucasgiroud@gmail.com', '$2y$10$DWc9HoOs5nXIlZ/vuPYoPeJ3ge4gNuRfkNdDJkWf7OR.4tHQsLjYa', 1),
(13, 'Loan', 'Samai', 'Loan13', 'loansamai@gmail.com', '$2y$10$56fapvvZIgYfcUcSWWvRQuIEgCceuNRZ8JyfGrFfwv5Cjfxxf8aa2', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `consulter`
--
ALTER TABLE `consulter`
  ADD PRIMARY KEY (`id_user`,`id_manga`),
  ADD KEY `id_manga` (`id_manga`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `consulter`
--
ALTER TABLE `consulter`
  ADD CONSTRAINT `consulter_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `utilisateurs` (`id`),
  ADD CONSTRAINT `consulter_ibfk_2` FOREIGN KEY (`id_manga`) REFERENCES `manga` (`id`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
