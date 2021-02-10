-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 10 fév. 2021 à 09:57
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données : `Nouveau-Blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 0, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Posts`
--

CREATE TABLE `Posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Posts`
--

INSERT INTO `Posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(11, 'The Good criminal', '<p class=\"synopsis\">Tom, un l&eacute;gendaire voleur de banque d&eacute;cide de se ranger et passe un deal, contre son immunit&eacute;, avec le FBI qui n&rsquo;a jamais r&eacute;ussi &agrave; lui mettre la main dessus. Il r&eacute;alise vite que les F&eacute;d&eacute;raux ont un autre plan en t&ecirc;te : partager son butin et le faire accuser d&rsquo;un meurtre. Pris au pi&egrave;ge, pourchass&eacute; par la police et le FBI, il d&eacute;cide de reprendre les choses en main et se lance dans une vengeance explosive.<br /> <br /><span class=\"date\">14 octobre 2020</span> <span class=\"spacer\">/</span> 1h 38min <span class=\"spacer\">/</span> <a class=\"xXx\" href=\"https://www.allocine.fr/films/genre-13025/\">Action</a>, <a class=\"xXx\" href=\"https://www.allocine.fr/films/genre-13023/\">Thriller <br /></a><span class=\"light\">De</span> <a class=\"blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=57977.html\">Mark Williams (II) <br /></a><span class=\"light\">Avec</span> <a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=5568.html\">Liam Neeson</a><a class=\"blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=57977.html\">, </a><a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=127930.html\">Kate Walsh</a><a class=\"blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=57977.html\">, </a><a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=418933.html\">Jai Courtney</a></p>\r\n<p class=\"synopsis\">&nbsp;</p>\r\n<p id=\"blogvision\"><iframe style=\"width: 300px; height: 150px;\" src=\"https://player.allocine.fr/19587804.html\" width=\"300\" height=\"150\" data-mce-fragment=\"1\">\r\n    </iframe> <br /> <a href=\"https://www.allocine.fr/film/fichefilm_gen_cfilm=268631.html\" target=\"_blank\" rel=\"noopener noreferrer\">The Good criminal</a> <br /> <a href=\"https://www.allocine.fr/video/player_gen_cmedia=19587804&amp;cfilm=268631.html\"><strong>The Good criminal</strong> Bande-annonce VO</a></p>', 'TheGoodCriminal.jpg', '2018-02-03 16:08:55'),
(24, '30 Jours Max', '<p style=\"text-align: left;\">Rayane est un jeune flic trouillard et maladroit sans cesse moqu&eacute; par les autres policiers. <br />Le jour o&ugrave; son m&eacute;decin lui apprend &agrave; tort qu&rsquo;il n&rsquo;a plus que trente jours &agrave; vivre, Il comprend <br />que c&rsquo;est sa derni&egrave;re chance pour devenir un h&eacute;ros au sein de son commissariat <br />et impressionner sa coll&egrave;gue St&eacute;phanie. <br /><br /><span class=\"date\">14 Janvier 2021</span> <span class=\"spacer\">/</span> 1h 27min <span class=\"spacer\">/</span> <a class=\"xXx\" href=\"https://www.allocine.fr/films/genre-13005/\">Com&eacute;die</a>, <a class=\"xXx\" href=\"https://www.allocine.fr/films/genre-13018/\">Policier<br /></a><span class=\"light\">De</span> <a class=\"blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=422282.html\">Tarek Boudali<br /></a><span class=\"light\">Avec</span> <a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=422282.html\">Tarek Boudali</a><a class=\"blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=422282.html\">, </a><a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=422283.html\">Philippe Lacheau</a><a class=\"blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=422282.html\">, </a><a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=449934.html\">Julien Arruti<br /></a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p id=\"blogvision\"><iframe style=\"width: 300px; height: 150px;\" src=\"https://player.allocine.fr/19589117.html\" width=\"300\" height=\"150\" data-mce-fragment=\"1\">\r\n    </iframe> <br /> <a href=\"https://www.allocine.fr/film/fichefilm_gen_cfilm=275355.html\" target=\"_blank\" rel=\"noopener noreferrer\">30 jours max</a> <br /> <a href=\"https://www.allocine.fr/video/player_gen_cmedia=19589117&amp;cfilm=275355.html\"><strong>30 jours max</strong> Teaser VF</a></p>', '30JoursMax.jpg', '2018-02-03 18:33:05'),
(40, 'Résolution', '<p>Tout pourrait aller pour le mieux, si Yenan n\'&eacute;tait pas victime des crises de violence de son mari.</p>\r\n<p><span class=\"date\">6 d&eacute;cembre 2019</span> <span class=\"spacer\">/</span> 1h 45min <span class=\"spacer\">/</span> <a class=\"xXx\" href=\"https://www.allocine.fr/films/genre-13008/\">Drame <br /></a><span class=\"light\">De</span> <a class=\"blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=893855.html\">Boris Oue</a><a class=\"xXx\" href=\"https://www.allocine.fr/films/genre-13008/\">, </a><a class=\"xXx blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=893856.html\">Marcel Sangne <br /></a><span class=\"light\">Avec</span> <a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=893857.html\">Evelyne Ily J.</a><a class=\"xXx blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=893856.html\">, </a><a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=219308.html\">Bruno Henry</a><a class=\"xXx blue-link\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=893856.html\">, </a><a class=\"xXx\" href=\"https://www.allocine.fr/personne/fichepersonne_gen_cpersonne=893858.html\">Devon Austin</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Resolution.jpg', '2018-02-07 13:41:04');

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Romain'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom'),
(15, 'vincent.camy82@gmail.com', '874ba81a0c7926dd03188afaf4b7c4b30089f187', 0, 'vincekmy');

-- --------------------------------------------------------

--
-- Structure de la table `Votes`
--

CREATE TABLE `Votes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Votes`
--
ALTER TABLE `Votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `Votes`
--
ALTER TABLE `Votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
