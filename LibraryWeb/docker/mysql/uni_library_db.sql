
-- 
-- Creation de la base de donnees
-- 

create database uni_library_db;


-- 
-- selection de la base de donnees
-- 

use uni_library_db;

-- 
-- Structure de la table `r_category_title`
-- 

CREATE TABLE `r_category_title` (
  `k_puid_category` int(11) NOT NULL,
  `k_puid_title` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='maps *..* relation between categories and titles';

-- 
-- Contenu de la table `r_category_title`
-- 

INSERT INTO `r_category_title` VALUES (1, 3);
INSERT INTO `r_category_title` VALUES (1, 4);
INSERT INTO `r_category_title` VALUES (5, 3);
INSERT INTO `r_category_title` VALUES (2, 1);
INSERT INTO `r_category_title` VALUES (2, 2);
INSERT INTO `r_category_title` VALUES (2, 5);
INSERT INTO `r_category_title` VALUES (8, 5);
INSERT INTO `r_category_title` VALUES (9, 5);
INSERT INTO `r_category_title` VALUES (3, 4);

-- --------------------------------------------------------

-- 
-- Structure de la table `t_audio_cd`
-- 

CREATE TABLE `t_audio_cd` (
  `k_puid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `tracks` varchar(255) NOT NULL,
  PRIMARY KEY  (`k_puid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `t_audio_cd`
-- 

INSERT INTO `t_audio_cd` VALUES (3, 'Harmonia Mundi', 120, 'Concertos N°1 à N°6');
INSERT INTO `t_audio_cd` VALUES (4, 'Virgin', 60, '12 pistes');

-- --------------------------------------------------------

-- 
-- Structure de la table `t_book`
-- 

CREATE TABLE `t_book` (
  `k_puid` int(11) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `pages` int(11) NOT NULL,
  PRIMARY KEY  (`k_puid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `t_book`
-- 

INSERT INTO `t_book` VALUES (1, '2849468495', 48);
INSERT INTO `t_book` VALUES (2, '2020860910', 250);
INSERT INTO `t_book` VALUES (5, '2070612368', 340);

-- --------------------------------------------------------

-- 
-- Structure de la table `t_category`
-- 

CREATE TABLE `t_category` (
  `k_puid` int(11) NOT NULL auto_increment,
  `fk_puid_parent` int(11) default NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`k_puid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Contenu de la table `t_category`
-- 

INSERT INTO `t_category` VALUES (1, NULL, 'Music');
INSERT INTO `t_category` VALUES (2, NULL, 'Book');
INSERT INTO `t_category` VALUES (3, 1, 'Rock');
INSERT INTO `t_category` VALUES (4, 1, 'Pop');
INSERT INTO `t_category` VALUES (5, 1, 'Classic');
INSERT INTO `t_category` VALUES (6, 3, 'Hard Rock');
INSERT INTO `t_category` VALUES (7, 1, 'Jazz');
INSERT INTO `t_category` VALUES (8, 2, 'Novels');
INSERT INTO `t_category` VALUES (9, 2, 'Comics');

-- --------------------------------------------------------

-- 
-- Structure de la table `t_title`
-- 

CREATE TABLE `t_title` (
  `k_puid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `published_at` date NOT NULL,
  PRIMARY KEY  (`k_puid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `t_title`
-- 

INSERT INTO `t_title` VALUES (1, 'Les naufragés d''Ytaq, T4', 'Floch, Arleston  ', '2007-06-08');
INSERT INTO `t_title` VALUES (2, 'Echo Park', 'Mickael Conelly', '2007-05-04');
INSERT INTO `t_title` VALUES (3, 'Concertos brandebourgeois', 'Jean-Sebastien Bach', '1997-01-09');
INSERT INTO `t_title` VALUES (4, 'Black and Blue', 'The Rolling Stones', '1976-01-25');
INSERT INTO `t_title` VALUES (5, 'Harry Potter and the philosopher''s stone', 'J.K. Rowling', '2000-07-12');
