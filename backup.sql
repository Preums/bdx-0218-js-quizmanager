-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 08 Juin 2018 à 23:54
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `quizDb`
--

-- --------------------------------------------------------

--
-- Structure de la table `accueil`
--

CREATE TABLE `accueil` (
  `id` int(11) NOT NULL,
  `text1` text NOT NULL,
  `text2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `accueil`
--

INSERT INTO `accueil` (`id`, `text1`, `text2`) VALUES
(1, 'Jouer et créer des quizs,', 'en quelques clics .'),
(2, 'Une solution ludique pour tester les connaissances', 'auprès de tous les publics.'),
(3, 'Nous nous impliquons chaque jour dans l\'apprentissage,', 'découvrez nos actions.');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `login` varchar(25) DEFAULT NULL,
  `pass` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `login`, `pass`) VALUES
(1, 'theBoss', 'Sùp3rS3cr3t'),
(2, 'le sbire', 'moinsSecret');

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `great` tinyint(1) DEFAULT NULL,
  `id_questions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `great`, `id_questions`) VALUES
(1, 'la trance', 0, 1),
(2, 'le décrochage', 0, 1),
(3, 'le supersonique', 0, 1),
(4, 'le vortex', 1, 1),
(5, 'il décroche', 1, 2),
(6, 'il accroche', 0, 2),
(7, 'il raccroche', 0, 2),
(8, 'il pend', 0, 2),
(9, 'Une pale qui tourne dans le sens inverse', 0, 3),
(10, 'une pale du rotor arrière', 0, 3),
(11, 'la pale qui fait dos à l\'avancement de la machine', 1, 3),
(12, 'Une pale qui recule', 0, 3),
(13, 'un instrument de mesure des FEN', 0, 4),
(14, 'Un instrument pour vérifier qu\'on est dans la fenêtre ILS', 0, 4),
(15, 'Un rotor arrière caréné', 1, 4),
(16, 'un hublot carré', 0, 4),
(18, 'la Mesure Acoustique de Charge Hypersustentatrice', 0, 5),
(19, 'la vitesse du son', 1, 5),
(20, 'la valeur du Maximum Airlift Cargo Hover', 0, 5),
(21, 'la valeur du Minimum Airlift Cargo Hover', 0, 5),
(22, '90° avant', 1, 6),
(23, 'devant', 0, 6),
(24, 'derrière', 0, 6),
(25, '90° après', 0, 6),
(26, 'prendre une altitude cabine inférieur au niveau 130', 0, 7),
(27, 'Monter au niveau refuge', 0, 7),
(28, 'S\'équiper en oxygène', 1, 7),
(29, 'L\'annoncer aux passagers', 0, 7),
(30, 'à l\'IF', 0, 8),
(31, 'au FAP', 0, 8),
(32, 'au FAF', 0, 8),
(33, 'à l\'IAF', 1, 8),
(34, 'le FL 50', 0, 9),
(35, 'le FL 55', 1, 9),
(36, 'le FL 5000', 0, 9),
(37, 'Le FL 500', 0, 9),
(38, 'vent de travers', 0, 10),
(39, 'face au vent', 0, 10),
(40, 'travers à la houle', 1, 10),
(41, 'face à la houle', 0, 10),
(43, 'Aurélien', 0, 21),
(44, 'Alexandre', 0, 21),
(45, 'Grégory', 0, 21),
(46, 'Il y en a ?', 0, 21),
(47, 'oui', 0, 22),
(48, ' non', 0, 22),
(49, 'elle est basque', 1, 22),
(50, 'je ne sais pas je la fuit', 0, 22),
(51, 'Ses conseils', 0, 23),
(52, 'Ses T-shirts', 0, 23),
(53, 'Ses chaussettes', 1, 23),
(54, 'Son sens de l\'hum....ah non, pas ça', 0, 23),
(55, 'Son implication', 1, 24),
(56, 'ses explications clairs', 0, 24),
(57, 'sa pédagogie,......inversé', 0, 24),
(58, 'la concision de son dicours', 0, 24),
(59, 'rien, je ne fais pas de PHP', 1, 25),
(60, 'pareil', 0, 25),
(61, 'moi non plus', 0, 25),
(62, 'itou', 0, 25),
(63, 'rien', 0, 26),
(64, 'son amabilité', 0, 26),
(65, 'sa douceur', 0, 26),
(66, 'sa ponctualité', 1, 26),
(67, 'Quand on s\'assoit', 0, 27),
(68, 'Quand c\'est fini', 0, 27),
(69, 'rien', 0, 27),
(70, 'les trois réponses précédentes', 1, 27),
(71, 'bien sur il est si parfait', 1, 28),
(72, 'non, et Eliza va nous défoncer pour ces questions/réponses', 0, 28),
(73, 'non, et Eliza va nous défoncer aussi pour autre chose', 0, 28),
(74, 'non, et Grégory va nous dire que notre design est p...........................................as refait', 0, 28),
(75, 'de mieux planifier son suicide', 0, 29),
(76, 'de relativiser la dureté de la vie', 0, 29),
(77, 'd\'ancrer ces comptétences,...non je déconne', 0, 29),
(78, 'de réaliser que la pendaison n\'est pas si douloureuse', 1, 29),
(79, 'des keeps', 0, 30),
(80, 'de marion, maylis, cédric, stéphane et loïc', 0, 30),
(81, 'celui-ci', 0, 30),
(82, 'toutes ces réponses', 1, 30),
(1535, 'prendre un café', 0, 511),
(1536, 'sortir du lit', 0, 511),
(1537, 'éteindre son réveil', 0, 511),
(1538, 'attendre la deuxième', 1, 511),
(1539, 's\'en faire couler un autre', 0, 512),
(1540, 'demander à un ami d\'en préparer un autre', 0, 512),
(1541, 'demander à son partenaire d\'en préparer un autre', 0, 512),
(1542, 'en demander un autre au premier qui passe', 1, 512),
(1543, 'C\'est super', 0, 513),
(1544, 'Ca fait du bien ', 0, 513),
(1545, 'C\'est important', 0, 513),
(1546, 'qui peut répondre à une des réponses précédentes ?', 1, 513),
(1547, 'c\'est pour les autres', 0, 514),
(1548, 'Le meilleur moyen de glander', 0, 514),
(1549, 'on peux toujours se planquer dans un tiroir', 1, 514),
(1550, 'c\'est quoi?', 0, 514),
(1551, 'c\'est quand on doit travailler', 0, 515),
(1552, 'c\'est quand on doit faire un truc', 0, 515),
(1553, 'c\'est quoi?', 0, 515),
(1554, 'c\'est fatiguant', 1, 515),
(1555, 'C\'est le moyen de glander sur le net avec alt+tab vers un page de charabia', 0, 516),
(1556, 'le top c\'est de devenir formateur', 1, 516),
(1557, 'c\'est se doter d\'outils performants pour glander', 0, 516),
(1558, 'c\'est faire faire son travail par un programme', 0, 516),
(1559, 'C\'est top', 0, 517),
(1560, 'c\'est top pour les formateurs', 0, 517),
(1561, 'c\'est top pour les pailleux', 0, 517),
(1562, 'c\'est épuisant', 1, 517),
(1563, 'c\'est que ça doit être ancré dans tout ton être', 0, 518),
(1564, 'c\'est que ça doit être ancré dans ta moelle osseuse', 1, 518),
(1565, 'c\'est que ça doit être ancré dans ton c.........................orps', 0, 518),
(1566, 'c\'est que ça doit être ancré dans ton gros orteil', 0, 518),
(1567, 'C\'est faire pousser des plantes', 0, 519),
(1568, 'c\'est faire pousser des légumes', 0, 519),
(1569, 'c\'est glander devant la télé', 1, 519),
(1570, 'c\'est inutile', 0, 519),
(1571, 'il va falloir trouver autre chose pour glander', 0, 520),
(1572, 'c\'est la fin de la journée', 1, 520),
(1573, 'c\'étais passionnant', 0, 520),
(1574, 'top', 0, 520),
(1575, 'bonjour !', 1, 521),
(1576, 'au revoir', 0, 521),
(1577, 'ca va?', 0, 521),
(1578, 'salut', 0, 521),
(1579, 'moi aussi', 1, 522),
(1580, 'non, j\'ai un rendez vous boulot', 0, 522),
(1581, 'non je suis crevé', 0, 522),
(1582, 'non plus', 0, 522),
(1583, 'et oui', 0, 523),
(1584, 'et non', 0, 523),
(1585, 'qu\'est ce que je fais la', 1, 523),
(1586, 'et toi?', 0, 523),
(1587, 'bidule', 0, 524),
(1588, 'chose', 0, 524),
(1589, 'nubuk', 1, 524),
(1590, 'eh eh', 0, 524),
(1591, 'oui', 0, 525),
(1592, 'non', 0, 525),
(1593, 'elle était pourrie ta question', 1, 525),
(1594, 'peut être', 0, 525),
(1595, 'la marmotte', 1, 526),
(1596, 'le developeur', 0, 526),
(1597, 'les profs', 0, 526),
(1598, 'les pailleux', 0, 526),
(1599, 'oui', 0, 527),
(1600, 'non', 0, 527),
(1601, 'ou ça? .....ou ça?', 1, 527),
(1602, 'peut être', 0, 527),
(1603, 'quoi?', 0, 528),
(1604, 'oui', 1, 528),
(1605, 'non', 0, 528),
(1606, 'peut être', 0, 528),
(1607, 'un truc', 1, 529),
(1608, 'la croisée des chemins', 0, 529),
(1609, 'une formule en rapport avec la tangente', 0, 529),
(1610, 'un bidule du cosinus du truc', 0, 529),
(1611, 'exponentielle', 1, 530),
(1612, 'ralentie', 0, 530),
(1613, 'durable', 0, 530),
(1614, 'ésotérique', 0, 530),
(1615, '1', 1, 531),
(1616, '2', 0, 531),
(1617, '3', 0, 531),
(1618, '4', 0, 531),
(1619, '1', 0, 532),
(1620, '2', 1, 532),
(1621, '3', 0, 532),
(1622, '4', 0, 532),
(1623, '1', 0, 533),
(1624, '2', 0, 533),
(1625, '3', 1, 533),
(1626, '4', 0, 533),
(1627, '1', 0, 534),
(1628, '2', 0, 534),
(1629, '3', 0, 534),
(1630, '4', 1, 534),
(1631, '1', 1, 535),
(1632, '2', 0, 535),
(1633, '3', 0, 535),
(1634, '4', 0, 535),
(1635, '1', 0, 536),
(1636, '2', 1, 536),
(1637, '3', 0, 536),
(1638, '4', 0, 536),
(1639, '1', 0, 537),
(1640, '2', 0, 537),
(1641, '3', 1, 537),
(1642, '4', 0, 537),
(1643, '1', 0, 538),
(1644, '2', 0, 538),
(1645, '3', 0, 538),
(1646, '4', 1, 538),
(1647, '1', 1, 539),
(1648, '2', 0, 539),
(1649, '3', 0, 539),
(1650, '4', 0, 539),
(1651, '1', 0, 540),
(1652, '2', 1, 540),
(1653, '3', 0, 540),
(1654, '4', 0, 540),
(1655, 'la connection', 0, 541),
(1656, 'la cuisine', 0, 541),
(1657, 'les sanitaires', 0, 541),
(1658, 'les stands up', 1, 541),
(1659, 'caché sous le bureau des formateurs', 0, 542),
(1660, 'caché dans le bocal de l\'administration', 0, 542),
(1661, 'dans l\'entrée', 1, 542),
(1662, 'dans ton c..................', 0, 542),
(1663, 'no comment', 1, 543),
(1664, 'trop top', 0, 543),
(1665, 'marvelous', 0, 543),
(1666, 'amazing', 0, 543),
(1667, 'ben rapport au comparateur d\'assurrance tout ca', 0, 544),
(1668, 'aucun', 1, 544),
(1669, 'la choucroute', 0, 544),
(1670, 'la farce', 0, 544),
(1671, 'les autocollants de la vitrine,....ceux qui tiennent encore', 0, 545),
(1672, 'les affichettes sous plastique', 0, 545),
(1673, 'les tableaux de bords scrum', 0, 545),
(1674, 'le pendu gravé dans les toilettes', 1, 545),
(1675, 'le poulet', 0, 546),
(1676, 'le veau', 0, 546),
(1677, 'le cochon,....à non tout est bon', 0, 546),
(1678, 'euh,.....j\'aime tout, le monde est beau, etc.....', 1, 546),
(1679, ' en node c\'est compliqué', 0, 547),
(1680, 'sous react ça passe à fond', 0, 547),
(1681, 'php c\'est pour les .................................................................................................. autres', 0, 547),
(1682, 'c\'est bien', 1, 547),
(1683, 'Ca améliore la 4g', 0, 548),
(1684, 'Ca améliore le wifi', 0, 548),
(1685, 'Ca améliore l\'adsl', 0, 548),
(1686, 'C\'est un réseau crypté', 1, 548),
(1687, 'oui', 0, 549),
(1688, 'non', 0, 549),
(1689, 'peut être', 0, 549),
(1690, 'hein?......', 1, 549),
(1691, 'toi aussi', 1, 550),
(1692, 'toi même', 0, 550),
(1693, 'si tu le dis', 0, 550),
(1694, 'bisous', 0, 550),
(1695, '1', 1, 551),
(1696, '1', 0, 551),
(1697, '1', 0, 551),
(1698, '1', 0, 551),
(1699, '21', 0, 552),
(1700, '2', 1, 552),
(1701, '2', 0, 552),
(1702, '2', 0, 552),
(1703, '3', 0, 553),
(1704, '3', 0, 553),
(1705, '3', 1, 553),
(1706, '3', 0, 553),
(1707, '4', 0, 554),
(1708, '4', 0, 554),
(1709, '4', 0, 554),
(1710, '4', 1, 554),
(1711, '5', 1, 555),
(1712, '5', 0, 555),
(1713, '5', 0, 555),
(1714, '5', 0, 555),
(1715, '6', 0, 556),
(1716, '6', 1, 556),
(1717, '6', 0, 556),
(1718, '6', 0, 556),
(1719, '7', 0, 557),
(1720, '7', 0, 557),
(1721, '7', 1, 557),
(1722, '7', 0, 557),
(1723, '8', 0, 558),
(1724, '8', 0, 558),
(1725, '8', 0, 558),
(1726, '8', 1, 558),
(1727, '9', 1, 559),
(1728, '9', 0, 559),
(1729, '9', 0, 559),
(1730, '9', 0, 559),
(1731, '10', 0, 560),
(1732, '10', 1, 560),
(1733, '10', 0, 560),
(1734, '10', 0, 560);

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `reponse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `faq`
--

INSERT INTO `faq` (`id`, `question`, `reponse`) VALUES
(1, 'Comment partager mon quiz ?', 'Chaque quiz créé aura son adresse unique et à la fin de votre quiz, vous n\'aurez plus qu\'à partager ce numéro à votre entourage pour qu\'il puisse profiter de votre quiz.'),
(2, 'Mes quiz sont-ils publics ?', 'Oui, tous les quizs qui sont publiés sur la plateforme deviennent public dès qu\'ils auront été validé par notre équipe. Les quizs seront disponibles directement sur la plateforme dans l\'onglet jouer mais vous pourez aussi rechercher un quiz par mots-clés, par thématique ou par popularité.'),
(3, 'Peut-on inventer n\'importe quel quiz ?', 'Les thématiques de quiz sont libres mais elles correspondent généralement à une logique d\'apprentissage. Idéalement, le quiz devra permettre au joueur de tester ses connaissances et améliorer sa culture générale.'),
(4, 'Qu\'est-ce que je gagne si je réponds bien à toutes les réponses ?', 'Aucun lot n\'est à gagner. Quizy vous donnera quand même un petit mot d\'encouragement.'),
(5, 'Un quiz avec + de 10 questions, c\'est possible ?', 'Malheureusement, nous ne permettons que la création d\'un quiz comportant 10 questions et 4 réponses. Si vous avez besoin de poser de nouvelles questions, rien ne vous empêche de créer un nouveau quiz qui sera la deuxième partie.'),
(6, 'Est-ce que des enfants peuvent jouer ?', 'Cette plateforme a été créée pour tous les publics. L\'interface graphique a été pensée pour être simple d\'utilisation. Chacun quiz a fait l\'objet d\'une sérieuse correction pour garantir un contenu intègre et respectant les bonnes mœurs.'),
(7, 'Est-ce que plusieurs réponses sont possibles ?', 'Il n\'y a qu\'une et une seule bonne réponse par question. Nous vous conseillons de lire attentivement les énoncés avant de réponse. Vous avez en général suffisamment de temps pour répondre aux questions.\r\n       '),
(8, 'Puis-je commencer la rédaction d\'un quiz et y revenir plus tard ?', 'Non, vous devez terminer la rédaction de votre quiz avant de pouvoir le sauvegarder.');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `id_quiz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`id`, `question`, `id_quiz`) VALUES
(1, 'Dans quel état ce trouve un rotor quand la vitesse de Froude équivaut au taux de descente?', 1),
(2, 'Qu\'advient il quand un profil atteint son incidence maximum?', 1),
(3, 'Qu\'est ce que la pale reculante?', 1),
(4, 'Qu\'est ce qu\'un Fenestron?', 1),
(5, 'Qu\'est ce que le nombre de mach?', 1),
(6, 'L\'action sur un rotor pour le faire varier de façon cyclique doit ce situer...?', 1),
(7, 'Quel est la première action à mener en cas de dépressurisation?', 1),
(8, 'Ou commence le segment d\'approche initial lors d\'une percée de précision?', 1),
(9, 'Quel est le premier niveau utilisable, suivant la règle de la semi-circulaire pour une navigation en VFR au dessus de 5000Ft/sol de bordeaux a Valence?', 1),
(10, 'Quel est l\'axe à privilégier en cas amerrissage?', 1),
(21, 'Quel est le meilleur prof?', 3),
(22, 'Elisa est elle gentille?', 3),
(23, 'Que préférez vous chez Alex?', 3),
(24, 'Que préférez vous chez Grégory', 3),
(25, 'Que préférez vous chez Aurélien', 3),
(26, 'Que préférez vous chez Eliza', 3),
(27, 'Quel est votre moment préféré du daily?', 3),
(28, 'Ce quiz sera le préféré des formateurs...', 3),
(29, 'Les projets permettent', 3),
(30, 'Le meilleur projet est celui,....', 3),
(511, 'Première action de la journée ?', 52),
(512, 'Que faire après le café?', 52),
(513, 'Le sport', 52),
(514, 'le travail', 52),
(515, 'Le stress', 52),
(516, 'la programmation', 52),
(517, 'La wild', 52),
(518, 'Et le médullaire dans tout ca', 52),
(519, 'La culture', 52),
(520, 'Vous êtes à la dernière question, donc', 52),
(521, 'ma question est....', 53),
(522, 'je vais bien et toi', 53),
(523, 'ben voila', 53),
(524, 'truc', 53),
(525, 'avez vous trouvé la rime à la question précédente?', 53),
(526, 'Qui dort au lieu de travailler?', 53),
(527, 'un café?', 53),
(528, 'la vélocité d\'un projectile est inversement proportionnel au chemin parcouru', 53),
(529, 'l\'asymptote est ', 53),
(530, 'ma flemme est elle?', 53),
(531, '1', 54),
(532, '2', 54),
(533, '3', 54),
(534, '4', 54),
(535, '5', 54),
(536, '6', 54),
(537, '7', 54),
(538, '8', 54),
(539, '9', 54),
(540, '10', 54),
(541, 'Ce que vous préférez', 55),
(542, 'ou est la machine à café', 55),
(543, 'La qualité du mobilier', 55),
(544, 'Quel rapport avec le furet farceur?', 55),
(545, 'Votre élément de décoration préféré', 55),
(546, 'Ce que vous detestez', 55),
(547, 'la théorie de la relativité', 55),
(548, 'le stradivarius', 55),
(549, 'le monde est beau', 55),
(550, 'Allez bonne soirée', 55),
(551, '1', 56),
(552, '2', 56),
(553, '3', 56),
(554, '4', 56),
(555, '5', 56),
(556, '6', 56),
(557, '7', 56),
(558, '8', 56),
(559, '9', 56),
(560, '10', 56);

-- --------------------------------------------------------

--
-- Structure de la table `Quiz`
--

CREATE TABLE `Quiz` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Quiz`
--

INSERT INTO `Quiz` (`id`, `title`, `category`, `date`, `checked`) VALUES
(1, 'aeronautique', 'science', '2018-04-17 19:28:29', 1),
(2, 'l\'optique', 'cuisine', '2018-04-17 17:28:29', 1),
(3, 'La wild', 'musique', '2018-04-25 18:51:34', 1),
(4, 'les avions', 'cuisine', '2018-04-17 17:28:29', 1),
(7, 'les radios', 'musique', '2018-04-17 17:28:29', 1),
(9, 'le design scandinave ', 'divers', '2018-04-17 17:28:29', 1),
(11, 'les pierres précieuses', 'divers', '2018-04-17 17:28:29', 1),
(12, 'la cartographie', 'science', '2018-04-17 17:28:29', 1),
(13, 'les épices', 'cuisine', '2018-04-17 17:28:29', 1),
(15, 'les planètes les plus folles', 'science', '2018-04-17 17:28:29', 1),
(52, 'Glandouille médulaire', 'science', '2018-04-26 10:54:13', 1),
(53, 'intitulé de mon super quiz', 'science', '2018-04-26 11:56:09', 0),
(54, 'titre', 'amour', '2018-04-26 13:57:58', 0),
(55, 'La wild 2 le retour du furet farceur', 'sante', '2018-04-26 15:08:32', 1),
(56, 'truc', 'societe', '2018-05-03 11:06:32', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `accueil`
--
ALTER TABLE `accueil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_answers_id_questions` (`id_questions`);

--
-- Index pour la table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_questions_id_quiz` (`id_quiz`);

--
-- Index pour la table `Quiz`
--
ALTER TABLE `Quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `accueil`
--
ALTER TABLE `accueil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1735;
--
-- AUTO_INCREMENT pour la table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;
--
-- AUTO_INCREMENT pour la table `Quiz`
--
ALTER TABLE `Quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `FK_answers_id_questions` FOREIGN KEY (`id_questions`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FK_questions_id_quiz` FOREIGN KEY (`id_quiz`) REFERENCES `Quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
