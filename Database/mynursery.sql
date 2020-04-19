-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 19 avr. 2020 à 23:39
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mynursery`
--

-- --------------------------------------------------------

--
-- Structure de la table `nurs_allergies`
--

CREATE TABLE `nurs_allergies` (
  `id_allergies` int(11) NOT NULL,
  `nom_allergie` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_autre_responsable`
--

CREATE TABLE `nurs_autre_responsable` (
  `id_autre_responsable` int(11) NOT NULL,
  `id_enfant` int(11) NOT NULL,
  `nom_autre_respons` varchar(45) NOT NULL,
  `prenom_autre_respons` varchar(45) NOT NULL,
  `role_autre_respons` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_autre_responsable_has_enfant`
--

CREATE TABLE `nurs_autre_responsable_has_enfant` (
  `autre_responsable_id_autre_responsable` int(11) NOT NULL,
  `enfant_id_enfant` int(11) NOT NULL,
  `enfant_responsablelegal_enfant_idresponsable_legale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_commentmeta`
--

CREATE TABLE `nurs_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_comments`
--

CREATE TABLE `nurs_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_comments`
--

INSERT INTO `nurs_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-19 12:06:04', '2020-03-19 11:06:04', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `nurs_contact`
--

CREATE TABLE `nurs_contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sujet` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `statut` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_creche`
--

CREATE TABLE `nurs_creche` (
  `id_creche` int(11) NOT NULL,
  `nom_creche` varchar(255) NOT NULL,
  `nom_gerant` varchar(255) NOT NULL,
  `prenom_gerant` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telephone_creche` int(11) NOT NULL,
  `num_rue` int(11) NOT NULL,
  `supp_rue` varchar(45) DEFAULT NULL,
  `nom_rue` varchar(255) NOT NULL,
  `codepostal` int(11) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `num_siret` varchar(45) NOT NULL,
  `num_agrement` varchar(45) NOT NULL,
  `num_secusocial` varchar(45) NOT NULL,
  `effectif_maxenfant` int(11) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_creche_has_employee_creche`
--

CREATE TABLE `nurs_creche_has_employee_creche` (
  `creche_id_creche` int(11) NOT NULL,
  `employee_creche_id_employee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_documents_responsablelegal`
--

CREATE TABLE `nurs_documents_responsablelegal` (
  `id_document` int(11) NOT NULL,
  `id_responsable` int(11) NOT NULL,
  `justif_domicile` int(11) NOT NULL,
  `justif_emploi` int(11) NOT NULL,
  `fiche_impot` int(11) NOT NULL,
  `attest_assurance` int(11) NOT NULL,
  `responsablelegal_enfant_idresponsable_legale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_employee_creche`
--

CREATE TABLE `nurs_employee_creche` (
  `id_employee` int(11) NOT NULL,
  `id_creche` int(11) NOT NULL,
  `nom_employee` varchar(255) NOT NULL,
  `prenom_employee` varchar(255) NOT NULL,
  `telephone_employee` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_enfant`
--

CREATE TABLE `nurs_enfant` (
  `id_enfant` int(11) NOT NULL,
  `id_responsablelegal` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `birthdate` varchar(45) NOT NULL,
  `sexe` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `responsablelegal_enfant_idresponsable_legale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_enfant_has_allergies`
--

CREATE TABLE `nurs_enfant_has_allergies` (
  `enfant_id_enfant` int(11) NOT NULL,
  `enfant_responsablelegal_enfant_idresponsable_legale` int(11) NOT NULL,
  `allergies_id_allergies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_facture`
--

CREATE TABLE `nurs_facture` (
  `id_facture` int(11) NOT NULL,
  `id_creche` varchar(45) DEFAULT NULL,
  `id_parent` varchar(45) DEFAULT NULL,
  `id_resa` varchar(45) DEFAULT NULL,
  `tarif` varchar(45) DEFAULT NULL,
  `creche_id_creche` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_links`
--

CREATE TABLE `nurs_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_notes`
--

CREATE TABLE `nurs_notes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_creche` int(11) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_options`
--

CREATE TABLE `nurs_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_options`
--

INSERT INTO `nurs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mynursery', 'yes'),
(2, 'home', 'http://localhost/mynursery', 'yes'),
(3, 'blogname', 'mynursery', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'wpgestionadm@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:208:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"latestnew/?$\";s:29:\"index.php?post_type=latestnew\";s:42:\"latestnew/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=latestnew&feed=$matches[1]\";s:37:\"latestnew/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=latestnew&feed=$matches[1]\";s:29:\"latestnew/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=latestnew&paged=$matches[1]\";s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:17:\"Specialization/?$\";s:34:\"index.php?post_type=specialization\";s:47:\"Specialization/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=specialization&feed=$matches[1]\";s:42:\"Specialization/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=specialization&feed=$matches[1]\";s:34:\"Specialization/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=specialization&paged=$matches[1]\";s:10:\"aboutus/?$\";s:27:\"index.php?post_type=aboutus\";s:40:\"aboutus/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=aboutus&feed=$matches[1]\";s:35:\"aboutus/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=aboutus&feed=$matches[1]\";s:27:\"aboutus/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=aboutus&paged=$matches[1]\";s:10:\"Partner/?$\";s:27:\"index.php?post_type=partner\";s:40:\"Partner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=partner&feed=$matches[1]\";s:35:\"Partner/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=partner&feed=$matches[1]\";s:27:\"Partner/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=partner&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"latestnew/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"latestnew/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"latestnew/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"latestnew/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"latestnew/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"latestnew/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"latestnew/([^/]+)/embed/?$\";s:42:\"index.php?latestnew=$matches[1]&embed=true\";s:30:\"latestnew/([^/]+)/trackback/?$\";s:36:\"index.php?latestnew=$matches[1]&tb=1\";s:50:\"latestnew/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?latestnew=$matches[1]&feed=$matches[2]\";s:45:\"latestnew/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?latestnew=$matches[1]&feed=$matches[2]\";s:38:\"latestnew/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?latestnew=$matches[1]&paged=$matches[2]\";s:45:\"latestnew/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?latestnew=$matches[1]&cpage=$matches[2]\";s:34:\"latestnew/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?latestnew=$matches[1]&page=$matches[2]\";s:26:\"latestnew/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"latestnew/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"latestnew/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"latestnew/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"latestnew/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"latestnew/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:47:\"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:42:\"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"Specialization/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"Specialization/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"Specialization/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"Specialization/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"Specialization/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"Specialization/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"Specialization/([^/]+)/embed/?$\";s:47:\"index.php?specialization=$matches[1]&embed=true\";s:35:\"Specialization/([^/]+)/trackback/?$\";s:41:\"index.php?specialization=$matches[1]&tb=1\";s:55:\"Specialization/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?specialization=$matches[1]&feed=$matches[2]\";s:50:\"Specialization/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?specialization=$matches[1]&feed=$matches[2]\";s:43:\"Specialization/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?specialization=$matches[1]&paged=$matches[2]\";s:50:\"Specialization/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?specialization=$matches[1]&cpage=$matches[2]\";s:39:\"Specialization/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?specialization=$matches[1]&page=$matches[2]\";s:31:\"Specialization/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"Specialization/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"Specialization/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"Specialization/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"Specialization/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"Specialization/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"aboutus/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"aboutus/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"aboutus/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"aboutus/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"aboutus/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"aboutus/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"aboutus/([^/]+)/embed/?$\";s:40:\"index.php?aboutus=$matches[1]&embed=true\";s:28:\"aboutus/([^/]+)/trackback/?$\";s:34:\"index.php?aboutus=$matches[1]&tb=1\";s:48:\"aboutus/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?aboutus=$matches[1]&feed=$matches[2]\";s:43:\"aboutus/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?aboutus=$matches[1]&feed=$matches[2]\";s:36:\"aboutus/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?aboutus=$matches[1]&paged=$matches[2]\";s:43:\"aboutus/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?aboutus=$matches[1]&cpage=$matches[2]\";s:32:\"aboutus/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?aboutus=$matches[1]&page=$matches[2]\";s:24:\"aboutus/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"aboutus/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"aboutus/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"aboutus/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"aboutus/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"aboutus/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"Partner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"Partner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"Partner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"Partner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"Partner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"Partner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"Partner/([^/]+)/embed/?$\";s:40:\"index.php?partner=$matches[1]&embed=true\";s:28:\"Partner/([^/]+)/trackback/?$\";s:34:\"index.php?partner=$matches[1]&tb=1\";s:48:\"Partner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?partner=$matches[1]&feed=$matches[2]\";s:43:\"Partner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?partner=$matches[1]&feed=$matches[2]\";s:36:\"Partner/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?partner=$matches[1]&paged=$matches[2]\";s:43:\"Partner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?partner=$matches[1]&cpage=$matches[2]\";s:32:\"Partner/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?partner=$matches[1]&page=$matches[2]\";s:24:\"Partner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"Partner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"Partner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"Partner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"Partner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"Partner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mynursery', 'yes'),
(41, 'stylesheet', 'mynursery', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1600167964', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'nurs_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1587333964;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587337564;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587380764;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587380782;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587380783;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584618734;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(154, 'current_theme', 'mynursery', 'yes'),
(155, 'theme_mods_mynursery', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(163, 'category_children', 'a:0:{}', 'yes'),
(268, 'recently_activated', 'a:1:{s:59:\"advanced-bootstrap-carousel/advanced-bootstrap-carousel.php\";i:1585045615;}', 'yes'),
(275, 'acf_version', '5.8.9', 'yes'),
(281, 'twabc_settings', 'a:17:{s:8:\"interval\";i:5000;s:12:\"showcontrols\";s:4:\"true\";s:13:\"showindicator\";s:4:\"true\";s:10:\"customprev\";s:0:\"\";s:10:\"customnext\";s:0:\"\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"ASC\";s:8:\"category\";s:0:\"\";s:12:\"before_title\";s:4:\"<h4>\";s:11:\"after_title\";s:5:\"</h4>\";s:14:\"before_caption\";s:3:\"<p>\";s:13:\"after_caption\";s:4:\"</p>\";s:10:\"image_size\";s:4:\"full\";s:2:\"id\";s:0:\"\";s:4:\"twbs\";i:3;s:24:\"use_javascript_animation\";s:1:\"1\";s:6:\"effect\";s:5:\"slide\";}', 'yes'),
(292, 'recovery_mode_email_last_sent', '1585778014', 'yes'),
(691, '_site_transient_timeout_browser_7882d5a5641293bd72253bfbda0286f6', '1587814396', 'no'),
(692, '_site_transient_browser_7882d5a5641293bd72253bfbda0286f6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.163\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(693, '_site_transient_timeout_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', '1587814397', 'no'),
(694, '_site_transient_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(718, '_site_transient_timeout_theme_roots', '1587305503', 'no'),
(719, '_site_transient_theme_roots', 'a:1:{s:9:\"mynursery\";s:7:\"/themes\";}', 'no'),
(720, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1587303705;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-04-17 14:28:30\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(721, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587303705;s:7:\"checked\";a:1:{s:9:\"mynursery\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(722, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587303706;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.9\";s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.1.4\";s:7:\"updated\";s:19:\"2020-03-18 11:33:51\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.4/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(723, '_site_transient_timeout_available_translations', '1587314952', 'no');
INSERT INTO `nurs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(724, '_site_transient_available_translations', 'a:121:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-05 08:33:42\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-29 17:14:25\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.13/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.12\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-20 05:00:26\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 19:20:00\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 19:05:13\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-27 14:39:02\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-13 11:39:25\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:45:17\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 08:02:09\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-24 17:29:56\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-16 07:58:55\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 08:02:56\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.3.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-24 17:26:42\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-10 10:14:21\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-23 21:50:21\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-06-20 10:05:05\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-14 09:40:29\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-14 09:42:12\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:04:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-14 12:06:57\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-23 23:02:03\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-06 05:52:53\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-04-19 06:57:02\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-04-17 07:21:39\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-11 04:39:12\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 17:46:33\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-08 17:55:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-03 22:42:09\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 09:08:55\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-04-16 22:07:17\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-04-17 14:28:30\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-01 17:58:42\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-20 16:09:08\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-24 15:34:57\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:22:10\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 22:54:51\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-20 17:02:39\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-02 04:22:13\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-25 11:03:02\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-28 21:59:12\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.13/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-05 01:54:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.12\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.12/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-26 13:54:23\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:22:22\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-12 09:57:15\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 19:42:41\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-18 18:30:50\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 08:20:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-04 11:20:43\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-08 13:01:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-09 12:17:54\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-04-18 07:10:21\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 16:11:46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 07:46:23\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 22:44:44\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 22:50:02\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-05 10:15:34\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-21 13:52:32\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-08 20:31:05\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.8\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-08 21:26:25\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-17 15:32:45\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `nurs_postmeta`
--

CREATE TABLE `nurs_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_postmeta`
--

INSERT INTO `nurs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(6, 6, '_edit_lock', '1585133953:1'),
(7, 6, '_wp_page_template', 'template-home.php'),
(8, 9, '_edit_lock', '1585148393:1'),
(9, 9, '_wp_page_template', 'template-connexion.php'),
(10, 11, '_edit_lock', '1585522440:1'),
(11, 11, '_wp_page_template', 'template-inscription.php'),
(12, 13, '_edit_lock', '1585148543:1'),
(13, 13, '_wp_page_template', 'template-profil.php'),
(14, 15, '_edit_lock', '1585148471:1'),
(15, 15, '_wp_page_template', 'template-contact.php'),
(16, 17, '_edit_lock', '1585864748:1'),
(17, 17, '_wp_page_template', 'template-addemploye.php'),
(18, 20, '_edit_last', '1'),
(19, 20, '_edit_lock', '1585042234:1'),
(20, 20, '_wp_trash_meta_status', 'publish'),
(21, 20, '_wp_trash_meta_time', '1585042412'),
(22, 20, '_wp_desired_post_slug', 'group_5e79cee50a6e1'),
(23, 21, '_wp_trash_meta_status', 'publish'),
(24, 21, '_wp_trash_meta_time', '1585042412'),
(25, 21, '_wp_desired_post_slug', 'field_5e79cf00d9a3c'),
(26, 22, '_wp_trash_meta_status', 'publish'),
(27, 22, '_wp_trash_meta_time', '1585042412'),
(28, 22, '_wp_desired_post_slug', 'field_5e79cf86d9a3d'),
(29, 23, '_wp_trash_meta_status', 'publish'),
(30, 23, '_wp_trash_meta_time', '1585042412'),
(31, 23, '_wp_desired_post_slug', 'field_5e79d38010b97'),
(37, 27, '_edit_last', '1'),
(38, 27, '_edit_lock', '1585137564:1'),
(39, 28, '_edit_last', '1'),
(40, 28, '_edit_lock', '1585137553:1'),
(41, 29, '_edit_last', '1'),
(42, 29, '_edit_lock', '1585137477:1'),
(43, 31, '_wp_attached_file', '2020/03/slider1.jpg'),
(44, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1740;s:6:\"height\";i:775;s:4:\"file\";s:19:\"2020/03/slider1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider1-300x134.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x456.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x342.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:342;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"slider1-1536x684.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 27, '_thumbnail_id', '31'),
(46, 32, '_wp_attached_file', '2020/03/slider2.jpg'),
(47, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1740;s:6:\"height\";i:775;s:4:\"file\";s:19:\"2020/03/slider2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider2-300x134.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x456.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x342.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:342;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"slider2-1536x684.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 28, '_thumbnail_id', '32'),
(49, 33, '_wp_attached_file', '2020/03/slider3.jpg'),
(50, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1740;s:6:\"height\";i:775;s:4:\"file\";s:19:\"2020/03/slider3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider3-300x134.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x456.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x342.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:342;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"slider3-1536x684.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 29, '_thumbnail_id', '33'),
(52, 34, '_edit_last', '1'),
(53, 34, '_edit_lock', '1585045433:1'),
(63, 41, '_edit_last', '1'),
(64, 41, '_edit_lock', '1585727419:1'),
(65, 6, '_edit_last', '1'),
(66, 6, 'titre_de_limage_1_du_slider', 'Bienvenue sur MyNursery.'),
(67, 6, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(68, 6, 'texte_de_limage_1_du_slider', 'Nous œuvrons pour les professionnels ainsi que les particuliers.'),
(69, 6, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(70, 6, 'titre_de_limage_2_du_slider', 'Pour les professionnels'),
(71, 6, '_titre_de_limage_2_du_slider', 'field_5e7b18e064679'),
(72, 6, 'texte_de_limage_2_du_slider', 'Nourrice où crèche, géolocalisation, factures, reservation.'),
(73, 6, '_texte_de_limage_2_du_slider', 'field_5e7b18ed6467a'),
(74, 6, 'titre_de_limage_3_du_slider', 'Pour les particuliers.'),
(75, 6, '_titre_de_limage_3_du_slider', 'field_5e7b18ef6467b'),
(76, 6, 'texte_de_limage_3_du_slider', 'Tous nos professionnels sont agréer, gage de qualité et de respect pour vos enfants.'),
(77, 6, '_texte_de_limage_3_du_slider', 'field_5e7b18f06467c'),
(78, 48, 'titre_de_limage_1_du_slider', 'Bienvenue sur MyNursery.'),
(79, 48, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(80, 48, 'texte_de_limage_1_du_slider', 'Nous œuvrons pour les professionnels ainsi que les particuliers.'),
(81, 48, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(82, 48, 'titre_de_limage_2_du_slider', ''),
(83, 48, '_titre_de_limage_2_du_slider', 'field_5e7b18e064679'),
(84, 48, 'texte_de_limage_2_du_slider', ''),
(85, 48, '_texte_de_limage_2_du_slider', 'field_5e7b18ed6467a'),
(86, 48, 'titre_de_limage_3_du_slider', ''),
(87, 48, '_titre_de_limage_3_du_slider', 'field_5e7b18ef6467b'),
(88, 48, 'texte_de_limage_3_du_slider', ''),
(89, 48, '_texte_de_limage_3_du_slider', 'field_5e7b18f06467c'),
(90, 49, 'titre_de_limage_1_du_slider', 'Bienvenue sur MyNursery.'),
(91, 49, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(92, 49, 'texte_de_limage_1_du_slider', 'Nous œuvrons pour les professionnels ainsi que les particuliers.'),
(93, 49, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(94, 49, 'titre_de_limage_2_du_slider', 'Pour les professionnels'),
(95, 49, '_titre_de_limage_2_du_slider', 'field_5e7b18e064679'),
(96, 49, 'texte_de_limage_2_du_slider', 'Nourrice où crèche, géolocalisation, factures, reservation.'),
(97, 49, '_texte_de_limage_2_du_slider', 'field_5e7b18ed6467a'),
(98, 49, 'titre_de_limage_3_du_slider', 'Pour les particuliers.'),
(99, 49, '_titre_de_limage_3_du_slider', 'field_5e7b18ef6467b'),
(100, 49, 'texte_de_limage_3_du_slider', 'Tous nos professionnels sont agréer, gage de qualité et de respect pour vos enfants.'),
(101, 49, '_texte_de_limage_3_du_slider', 'field_5e7b18f06467c'),
(102, 50, 'titre_de_limage_1_du_slider', 'Bienvenue sur MyNursery.'),
(103, 50, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(104, 50, 'texte_de_limage_1_du_slider', 'Nous œuvrons pour les professionnels ainsi que les particuliers.'),
(105, 50, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(106, 50, 'titre_de_limage_2_du_slider', 'Pour les professionnels'),
(107, 50, '_titre_de_limage_2_du_slider', 'field_5e7b18e064679'),
(108, 50, 'texte_de_limage_2_du_slider', 'Nourrice où crèche, géolocalisation, factures, reservation.'),
(109, 50, '_texte_de_limage_2_du_slider', 'field_5e7b18ed6467a'),
(110, 50, 'titre_de_limage_3_du_slider', 'Pour les particuliers.'),
(111, 50, '_titre_de_limage_3_du_slider', 'field_5e7b18ef6467b'),
(112, 50, 'texte_de_limage_3_du_slider', 'Tous nos professionnels sont agréer, gage de qualité et de respect pour vos enfants.'),
(113, 50, '_texte_de_limage_3_du_slider', 'field_5e7b18f06467c'),
(114, 51, '_edit_last', '1'),
(115, 51, '_edit_lock', '1585727590:1'),
(117, 52, '_edit_last', '1'),
(118, 52, '_edit_lock', '1585133070:1'),
(122, 54, '_edit_last', '1'),
(123, 54, '_thumbnail_id', '71'),
(124, 54, '_edit_lock', '1585133082:1'),
(125, 55, '_edit_last', '1'),
(126, 55, '_thumbnail_id', '67'),
(127, 55, '_edit_lock', '1585133111:1'),
(130, 51, '_thumbnail_id', '60'),
(131, 58, '_wp_attached_file', '2020/03/lock.png'),
(132, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2020/03/lock.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"lock-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"lock-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:16:\"lock-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:16:\"lock-470x470.png\";s:5:\"width\";i:470;s:6:\"height\";i:470;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:16:\"lock-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 59, '_wp_attached_file', '2020/03/placeholder.png'),
(134, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:23:\"2020/03/placeholder.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:23:\"placeholder-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:23:\"placeholder-470x470.png\";s:5:\"width\";i:470;s:6:\"height\";i:470;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:23:\"placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 60, '_wp_attached_file', '2020/03/user.png'),
(136, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2020/03/user.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"user-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"user-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:16:\"user-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:16:\"user-470x470.png\";s:5:\"width\";i:470;s:6:\"height\";i:470;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:16:\"user-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 61, '_edit_last', '1'),
(138, 61, '_edit_lock', '1585132983:1'),
(139, 61, '_thumbnail_id', '59'),
(140, 62, '_edit_last', '1'),
(141, 62, '_edit_lock', '1585132976:1'),
(142, 62, '_thumbnail_id', '58'),
(143, 64, '_wp_attached_file', '2020/03/creche1.png'),
(144, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:208;s:4:\"file\";s:19:\"2020/03/creche1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"creche1-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creche1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"creche1-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:18:\"creche1-150x78.png\";s:5:\"width\";i:150;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 65, '_wp_attached_file', '2020/03/creche2.png'),
(146, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:406;s:6:\"height\";i:323;s:4:\"file\";s:19:\"2020/03/creche2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"creche2-300x239.png\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creche2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"creche2-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:19:\"creche2-150x119.png\";s:5:\"width\";i:150;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 66, '_wp_attached_file', '2020/03/creche3.png'),
(148, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:384;s:4:\"file\";s:19:\"2020/03/creche3.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"creche3-300x115.png\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creche3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"creche3-768x295.png\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"creche3-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:19:\"creche3-470x384.png\";s:5:\"width\";i:470;s:6:\"height\";i:384;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:18:\"creche3-150x58.png\";s:5:\"width\";i:150;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 67, '_wp_attached_file', '2020/03/creche4.png'),
(150, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:148;s:4:\"file\";s:19:\"2020/03/creche4.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"creche4-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creche4-150x148.png\";s:5:\"width\";i:150;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"creche4-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:18:\"creche4-150x63.png\";s:5:\"width\";i:150;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 68, '_wp_attached_file', '2020/03/creche5.png'),
(152, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:272;s:4:\"file\";s:19:\"2020/03/creche5.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"creche5-300x159.png\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creche5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"creche5-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:19:\"creche5-470x272.png\";s:5:\"width\";i:470;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:18:\"creche5-150x80.png\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 69, '_wp_attached_file', '2020/03/creche6.png'),
(154, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2020/03/creche6.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"creche6-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creche6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"creche6-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:19:\"creche6-470x225.png\";s:5:\"width\";i:470;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:18:\"creche6-150x68.png\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 70, '_wp_attached_file', '2020/03/creche7.png'),
(156, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:19:\"2020/03/creche7.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"creche7-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creche7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"creche7-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"imgslider\";a:4:{s:4:\"file\";s:20:\"creche7-1000x775.png\";s:5:\"width\";i:1000;s:6:\"height\";i:775;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"creche7-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:19:\"creche7-470x470.png\";s:5:\"width\";i:470;s:6:\"height\";i:470;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:19:\"creche7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 71, '_wp_attached_file', '2020/03/creche8.png'),
(158, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:19:\"2020/03/creche8.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"creche8-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"creche8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"creche8-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:19:\"creche8-470x334.png\";s:5:\"width\";i:470;s:6:\"height\";i:334;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:19:\"creche8-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 52, '_thumbnail_id', '71'),
(160, 72, '_edit_last', '1'),
(161, 72, '_thumbnail_id', '68'),
(162, 72, '_edit_lock', '1585133121:1'),
(163, 74, '_edit_last', '1'),
(164, 74, '_thumbnail_id', '69'),
(165, 74, '_edit_lock', '1585133130:1'),
(166, 75, '_edit_last', '1'),
(167, 75, '_thumbnail_id', '64'),
(168, 75, '_edit_lock', '1585133138:1'),
(169, 76, '_edit_last', '1'),
(170, 76, '_thumbnail_id', '65'),
(171, 76, '_edit_lock', '1585133144:1'),
(172, 77, '_edit_last', '1'),
(173, 77, '_thumbnail_id', '66'),
(174, 77, '_edit_lock', '1585727581:1'),
(175, 79, '_wp_attached_file', '2020/03/about-us-family.jpg'),
(176, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:470;s:6:\"height\";i:470;s:4:\"file\";s:27:\"2020/03/about-us-family.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"about-us-family-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"about-us-family-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:27:\"about-us-family-112x112.jpg\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:27:\"about-us-family-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 78, '_edit_last', '1'),
(178, 78, '_edit_lock', '1585727585:1'),
(179, 78, '_thumbnail_id', '79'),
(180, 81, '_wp_attached_file', '2020/03/covid19.png'),
(181, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:465;s:4:\"file\";s:19:\"2020/03/covid19.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"covid19-300x181.png\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"covid19-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"covid19-768x464.png\";s:5:\"width\";i:768;s:6:\"height\";i:464;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"covid19-112x112.png\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:19:\"covid19-470x465.png\";s:5:\"width\";i:470;s:6:\"height\";i:465;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:18:\"covid19-150x91.png\";s:5:\"width\";i:150;s:6:\"height\";i:91;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 80, '_edit_last', '1'),
(183, 80, '_edit_lock', '1585668061:1'),
(184, 80, '_thumbnail_id', '81'),
(185, 83, '_wp_attached_file', '2020/03/creche.jpg'),
(186, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:480;s:4:\"file\";s:18:\"2020/03/creche.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"creche-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"creche-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:18:\"creche-112x112.jpg\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:18:\"creche-470x470.jpg\";s:5:\"width\";i:470;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:18:\"creche-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 82, '_edit_last', '1'),
(188, 82, '_edit_lock', '1585727572:1'),
(189, 82, '_thumbnail_id', '83'),
(190, 27, 'image_du_slider_1', '31'),
(191, 27, '_image_du_slider_1', 'field_5e7b4465b4d57'),
(192, 27, 'description_de_limage_1', 'Deux enfants se tenant la main'),
(193, 27, '_description_de_limage_1', 'field_5e7b44cfd4cfd'),
(194, 27, 'titre_de_limage_1_du_slider', ''),
(195, 27, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(196, 27, 'texte_de_limage_1_du_slider', ''),
(197, 27, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(198, 28, 'image_du_slider_1', '32'),
(199, 28, '_image_du_slider_1', 'field_5e7b4465b4d57'),
(200, 28, 'description_de_limage_1', ''),
(201, 28, '_description_de_limage_1', 'field_5e7b44cfd4cfd'),
(202, 28, 'titre_de_limage_1_du_slider', ''),
(203, 28, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(204, 28, 'texte_de_limage_1_du_slider', ''),
(205, 28, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(206, 29, 'image_du_slider_1', '33'),
(207, 29, '_image_du_slider_1', 'field_5e7b4465b4d57'),
(208, 29, 'description_de_limage_1', ''),
(209, 29, '_description_de_limage_1', 'field_5e7b44cfd4cfd'),
(210, 29, 'titre_de_limage_1_du_slider', ''),
(211, 29, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(212, 29, 'texte_de_limage_1_du_slider', ''),
(213, 29, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(214, 29, '_wp_trash_meta_status', 'publish'),
(215, 29, '_wp_trash_meta_time', '1585138156'),
(216, 29, '_wp_desired_post_slug', 'image-3-slider'),
(217, 28, '_wp_trash_meta_status', 'publish'),
(218, 28, '_wp_trash_meta_time', '1585138158'),
(219, 28, '_wp_desired_post_slug', 'image-2-slider'),
(220, 27, '_wp_trash_meta_status', 'publish'),
(221, 27, '_wp_trash_meta_time', '1585138159'),
(222, 27, '_wp_desired_post_slug', 'image-1-slider'),
(223, 95, '_edit_last', '1'),
(224, 95, 'image_du_slider_1', '31'),
(225, 95, '_image_du_slider_1', 'field_5e7b4465b4d57'),
(226, 95, 'description_de_limage_1', 'Deux enfants se tenant la main'),
(227, 95, '_description_de_limage_1', 'field_5e7b44cfd4cfd'),
(228, 95, 'titre_de_limage_1_du_slider', 'Bienvenue sur MyNursery'),
(229, 95, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(230, 95, 'texte_de_limage_1_du_slider', 'Un site pour les professionnels ainsi que les particuliers'),
(231, 95, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(232, 95, 'image_du_slider_2', '32'),
(233, 95, '_image_du_slider_2', 'field_5e7b48b2abf71'),
(234, 95, 'description_de_limage_2', 'Deux enfants souriant à moitié caché.'),
(235, 95, '_description_de_limage_2', 'field_5e7b48beabf73'),
(236, 95, 'titre_de_limage_2_du_slider', 'Pour les professionnels'),
(237, 95, '_titre_de_limage_2_du_slider', 'field_5e7b48ecabf77'),
(238, 95, 'texte_de_limage_2_du_slider', 'Une plate forme de géolocalisation, facturation, réservation, sécurité.'),
(239, 95, '_texte_de_limage_2_du_slider', 'field_5e7b4922f26f0'),
(240, 95, 'image_du_slider_3', '33'),
(241, 95, '_image_du_slider_3', 'field_5e7b48b7abf72'),
(242, 95, 'description_de_limage_3', 'deux enfants courant dans un champ de coquelicots.'),
(243, 95, '_description_de_limage_3', 'field_5e7b48c4abf74'),
(244, 95, 'titre_de_limage_3_du_slider', 'Pour les parents'),
(245, 95, '_titre_de_limage_3_du_slider', 'field_5e7b4916c7294'),
(246, 95, 'texte_de_limage_3_du_slider', 'Une vraie garde d\'enfant, des professionnels reconnues, et bienveillant.'),
(247, 95, '_texte_de_limage_3_du_slider', 'field_5e7b492f22964'),
(248, 95, '_edit_lock', '1585142570:1'),
(249, 95, '_thumbnail_id', '31'),
(250, 97, '_edit_last', '1'),
(251, 97, 'image_du_slider_1', ''),
(252, 97, '_image_du_slider_1', 'field_5e7b4465b4d57'),
(253, 97, 'description_de_limage_1', ''),
(254, 97, '_description_de_limage_1', 'field_5e7b44cfd4cfd'),
(255, 97, 'titre_de_limage_1_du_slider', ''),
(256, 97, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(257, 97, 'texte_de_limage_1_du_slider', ''),
(258, 97, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(259, 97, 'image_du_slider_2', ''),
(260, 97, '_image_du_slider_2', 'field_5e7b48b2abf71'),
(261, 97, 'description_de_limage_2', ''),
(262, 97, '_description_de_limage_2', 'field_5e7b48beabf73'),
(263, 97, 'titre_de_limage_2_du_slider', ''),
(264, 97, '_titre_de_limage_2_du_slider', 'field_5e7b48ecabf77'),
(265, 97, 'texte_de_limage_2_du_slider', ''),
(266, 97, '_texte_de_limage_2_du_slider', 'field_5e7b4922f26f0'),
(267, 97, 'image_du_slider_3', ''),
(268, 97, '_image_du_slider_3', 'field_5e7b48b7abf72'),
(269, 97, 'description_de_limage_3', ''),
(270, 97, '_description_de_limage_3', 'field_5e7b48c4abf74'),
(271, 97, 'titre_de_limage_3_du_slider', ''),
(272, 97, '_titre_de_limage_3_du_slider', 'field_5e7b4916c7294'),
(273, 97, 'texte_de_limage_3_du_slider', ''),
(274, 97, '_texte_de_limage_3_du_slider', 'field_5e7b492f22964'),
(275, 97, '_edit_lock', '1585142434:1'),
(276, 98, '_edit_last', '1'),
(277, 98, 'image_du_slider_1', ''),
(278, 98, '_image_du_slider_1', 'field_5e7b4465b4d57'),
(279, 98, 'description_de_limage_1', ''),
(280, 98, '_description_de_limage_1', 'field_5e7b44cfd4cfd'),
(281, 98, 'titre_de_limage_1_du_slider', ''),
(282, 98, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(283, 98, 'texte_de_limage_1_du_slider', ''),
(284, 98, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(285, 98, 'image_du_slider_2', ''),
(286, 98, '_image_du_slider_2', 'field_5e7b48b2abf71'),
(287, 98, 'description_de_limage_2', ''),
(288, 98, '_description_de_limage_2', 'field_5e7b48beabf73'),
(289, 98, 'titre_de_limage_2_du_slider', ''),
(290, 98, '_titre_de_limage_2_du_slider', 'field_5e7b48ecabf77'),
(291, 98, 'texte_de_limage_2_du_slider', ''),
(292, 98, '_texte_de_limage_2_du_slider', 'field_5e7b4922f26f0'),
(293, 98, 'image_du_slider_3', ''),
(294, 98, '_image_du_slider_3', 'field_5e7b48b7abf72'),
(295, 98, 'description_de_limage_3', ''),
(296, 98, '_description_de_limage_3', 'field_5e7b48c4abf74'),
(297, 98, 'titre_de_limage_3_du_slider', ''),
(298, 98, '_titre_de_limage_3_du_slider', 'field_5e7b4916c7294'),
(299, 98, 'texte_de_limage_3_du_slider', ''),
(300, 98, '_texte_de_limage_3_du_slider', 'field_5e7b492f22964'),
(301, 98, '_edit_lock', '1585140210:1'),
(302, 97, '_thumbnail_id', '32'),
(303, 98, '_thumbnail_id', '33'),
(304, 95, '_wp_trash_meta_status', 'publish'),
(305, 95, '_wp_trash_meta_time', '1585142714'),
(306, 95, '_wp_desired_post_slug', '95'),
(307, 97, '_wp_trash_meta_status', 'publish'),
(308, 97, '_wp_trash_meta_time', '1585142716'),
(309, 97, '_wp_desired_post_slug', '97'),
(310, 98, '_wp_trash_meta_status', 'publish'),
(311, 98, '_wp_trash_meta_time', '1585142718'),
(312, 98, '_wp_desired_post_slug', '98'),
(313, 99, '_edit_last', '1'),
(314, 99, '_edit_lock', '1586646455:1'),
(315, 99, '_thumbnail_id', '31'),
(316, 99, 'titre_de_limage_1_du_slider', 'Bienvenue sur MyNursery'),
(317, 99, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(318, 99, 'texte_de_limage_1_du_slider', 'Un site pour les professionnels ainsi que les particuliers'),
(319, 99, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(320, 99, 'titre_de_limage_2_du_slider', ''),
(321, 99, '_titre_de_limage_2_du_slider', 'field_5e7b48ecabf77'),
(322, 99, 'texte_de_limage_2_du_slider', ''),
(323, 99, '_texte_de_limage_2_du_slider', 'field_5e7b4922f26f0'),
(324, 99, 'titre_de_limage_3_du_slider', ''),
(325, 99, '_titre_de_limage_3_du_slider', 'field_5e7b4916c7294'),
(326, 99, 'texte_de_limage_3_du_slider', ''),
(327, 99, '_texte_de_limage_3_du_slider', 'field_5e7b492f22964'),
(328, 100, '_edit_last', '1'),
(329, 100, '_edit_lock', '1585667816:1'),
(330, 100, '_thumbnail_id', '32'),
(331, 100, 'titre_de_limage_1_du_slider', ''),
(332, 100, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(333, 100, 'texte_de_limage_1_du_slider', ''),
(334, 100, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(335, 100, 'titre_de_limage_2_du_slider', 'Pour les professionnels'),
(336, 100, '_titre_de_limage_2_du_slider', 'field_5e7b48ecabf77'),
(337, 100, 'texte_de_limage_2_du_slider', 'Une plate forme de géolocalisation, facturation, réservation, sécurité.'),
(338, 100, '_texte_de_limage_2_du_slider', 'field_5e7b4922f26f0'),
(339, 100, 'titre_de_limage_3_du_slider', ''),
(340, 100, '_titre_de_limage_3_du_slider', 'field_5e7b4916c7294'),
(341, 100, 'texte_de_limage_3_du_slider', ''),
(342, 100, '_texte_de_limage_3_du_slider', 'field_5e7b492f22964'),
(343, 101, '_edit_last', '1'),
(344, 101, '_edit_lock', '1586646322:1'),
(345, 101, '_thumbnail_id', '33'),
(346, 101, 'titre_de_limage_1_du_slider', ''),
(347, 101, '_titre_de_limage_1_du_slider', 'field_5e7b181564677'),
(348, 101, 'texte_de_limage_1_du_slider', ''),
(349, 101, '_texte_de_limage_1_du_slider', 'field_5e7b184a64678'),
(350, 101, 'titre_de_limage_2_du_slider', ''),
(351, 101, '_titre_de_limage_2_du_slider', 'field_5e7b48ecabf77'),
(352, 101, 'texte_de_limage_2_du_slider', ''),
(353, 101, '_texte_de_limage_2_du_slider', 'field_5e7b4922f26f0'),
(354, 101, 'titre_de_limage_3_du_slider', 'Pour les parents'),
(355, 101, '_titre_de_limage_3_du_slider', 'field_5e7b4916c7294'),
(356, 101, 'texte_de_limage_3_du_slider', 'Une vraie garde d\'enfant, des professionnels reconnues, et bienveillant.'),
(357, 101, '_texte_de_limage_3_du_slider', 'field_5e7b492f22964'),
(358, 101, 'image_slider', '33'),
(359, 101, '_image_slider', 'field_5e7b625d3c64f'),
(360, 101, 'description_image', 'Deux enfants se baladant dans un champ de coquelicots.'),
(361, 101, '_description_image', 'field_5e7b63298fb78'),
(362, 100, 'image_slider', '32'),
(363, 100, '_image_slider', 'field_5e7b625d3c64f'),
(364, 100, 'description_image', 'Deux enfants souriant étant à moitié chaché.'),
(365, 100, '_description_image', 'field_5e7b63298fb78'),
(366, 99, 'image_slider', '31'),
(367, 99, '_image_slider', 'field_5e7b625d3c64f'),
(368, 99, 'description_image', 'Deux enfants se tenant la main au couché de soleil.'),
(369, 99, '_description_image', 'field_5e7b63298fb78'),
(370, 99, 'titre_de_limage_du_slider', 'Bienvenue sur MyNursery'),
(371, 99, '_titre_de_limage_du_slider', 'field_5e7b181564677'),
(372, 99, 'texte_de_limage_du_slider', 'Un site pour les professionnels ainsi que les particuliers'),
(373, 99, '_texte_de_limage_du_slider', 'field_5e7b184a64678'),
(374, 100, 'titre_de_limage_du_slider', 'Pour les professionnels '),
(375, 100, '_titre_de_limage_du_slider', 'field_5e7b181564677'),
(376, 100, 'texte_de_limage_du_slider', 'Géolocalisation, sécurité, gestion des factures.'),
(377, 100, '_texte_de_limage_du_slider', 'field_5e7b184a64678'),
(378, 101, 'titre_de_limage_du_slider', 'Pour les parents'),
(379, 101, '_titre_de_limage_du_slider', 'field_5e7b181564677'),
(380, 101, 'texte_de_limage_du_slider', 'Des professionnels agréer, pour l\'occupation, et l\'accompagnement de vos enfants.'),
(381, 101, '_texte_de_limage_du_slider', 'field_5e7b184a64678'),
(382, 104, '_edit_lock', '1586436583:1'),
(383, 104, '_wp_page_template', 'template-about.php'),
(384, 109, '_wp_attached_file', '2020/03/unnamed.jpg'),
(385, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:288;s:4:\"file\";s:19:\"2020/03/unnamed.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"unnamed-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:19:\"unnamed-112x112.jpg\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:19:\"unnamed-470x288.jpg\";s:5:\"width\";i:470;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:18:\"unnamed-150x84.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 110, '_wp_attached_file', '2020/03/unnamed-1.jpg'),
(387, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:288;s:4:\"file\";s:21:\"2020/03/unnamed-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"unnamed-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"unnamed-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:21:\"unnamed-1-112x112.jpg\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:21:\"unnamed-1-470x288.jpg\";s:5:\"width\";i:470;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:20:\"unnamed-1-150x84.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(388, 112, '_edit_lock', '1585563363:1'),
(389, 112, '_wp_page_template', 'template-map.php'),
(392, 117, '_edit_lock', '1585651351:1'),
(393, 117, '_wp_page_template', 'template-deconnexion.php'),
(396, 121, '_edit_lock', '1585751512:1'),
(397, 121, '_wp_page_template', 'template-request.php'),
(398, 123, '_edit_lock', '1586436611:1'),
(399, 123, '_wp_page_template', 'template-delete.php'),
(401, 126, '_edit_lock', '1585906737:1'),
(402, 126, '_wp_page_template', 'template-edit.php'),
(403, 129, '_edit_lock', '1586436655:1'),
(404, 129, '_wp_page_template', 'template-forgetpassword.php'),
(405, 131, '_edit_lock', '1586341574:1'),
(406, 131, '_wp_page_template', 'template-updatepassword.php'),
(408, 134, '_edit_lock', '1586343816:1'),
(409, 134, '_wp_page_template', 'template-sucess.php'),
(410, 136, '_edit_lock', '1586353282:1'),
(411, 136, '_wp_page_template', 'template-agenda.php'),
(412, 138, '_edit_lock', '1586436571:1'),
(413, 138, '_wp_page_template', 'template-inscription_parent.php'),
(414, 140, '_edit_lock', '1586367678:1'),
(415, 140, '_wp_page_template', 'template-requestreservation.php'),
(416, 142, '_edit_lock', '1586545900:1'),
(417, 142, '_wp_page_template', 'template-updatepass.php'),
(418, 144, '_wp_attached_file', '2020/03/3.jpg'),
(419, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:13:\"2020/03/3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"3-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:14:\"3-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"imgslider\";a:4:{s:4:\"file\";s:14:\"3-1740x775.jpg\";s:5:\"width\";i:1740;s:6:\"height\";i:775;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"imgSpecialization\";a:4:{s:4:\"file\";s:13:\"3-112x112.jpg\";s:5:\"width\";i:112;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"imgabout-us\";a:4:{s:4:\"file\";s:13:\"3-470x470.jpg\";s:5:\"width\";i:470;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"imgPartner\";a:4:{s:4:\"file\";s:12:\"3-150x84.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"imgReseaux\";a:4:{s:4:\"file\";s:11:\"3-24x14.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:14;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Structure de la table `nurs_posts`
--

CREATE TABLE `nurs_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_posts`
--

INSERT INTO `nurs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-03-19 12:06:04', '2020-03-19 11:06:04', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-03-19 12:06:04', '2020-03-19 11:06:04', '', 0, 'http://localhost/mynursery/?p=1', 0, 'post', '', 1),
(3, 1, '2020-03-19 12:06:04', '2020-03-19 11:06:04', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/mynursery.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-03-19 12:06:04', '2020-03-19 11:06:04', '', 0, 'http://localhost/mynursery/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-03-19 12:51:34', '2020-03-19 11:51:34', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-03-25 10:08:29', '2020-03-25 09:08:29', '', 0, 'http://localhost/mynursery/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-03-19 12:51:34', '2020-03-19 11:51:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-03-19 12:51:34', '2020-03-19 11:51:34', '', 6, 'http://localhost/mynursery/2020/03/19/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-03-23 17:39:50', '2020-03-23 16:39:50', '', 'Connexion', '', 'publish', 'closed', 'closed', '', 'connexion', '', '', '2020-03-23 17:39:50', '2020-03-23 16:39:50', '', 0, 'http://localhost/mynursery/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-03-23 17:39:50', '2020-03-23 16:39:50', '', 'Connexion', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-03-23 17:39:50', '2020-03-23 16:39:50', '', 9, 'http://localhost/mynursery/non-classe/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-03-23 17:40:04', '2020-03-23 16:40:04', '', 'inscription', '', 'publish', 'closed', 'closed', '', 'inscription', '', '', '2020-03-29 23:33:33', '2020-03-29 21:33:33', '', 0, 'http://localhost/mynursery/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-03-23 17:40:04', '2020-03-23 16:40:04', '', 'Inscription', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-03-23 17:40:04', '2020-03-23 16:40:04', '', 11, 'http://localhost/mynursery/non-classe/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-03-23 17:40:17', '2020-03-23 16:40:17', '', 'Profil', '', 'publish', 'closed', 'closed', '', 'profil', '', '', '2020-03-23 17:40:17', '2020-03-23 16:40:17', '', 0, 'http://localhost/mynursery/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-03-23 17:40:17', '2020-03-23 16:40:17', '', 'Profil', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-03-23 17:40:17', '2020-03-23 16:40:17', '', 13, 'http://localhost/mynursery/non-classe/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-03-23 17:42:08', '2020-03-23 16:42:08', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-03-23 17:42:08', '2020-03-23 16:42:08', '', 0, 'http://localhost/mynursery/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-03-23 17:42:08', '2020-03-23 16:42:08', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-03-23 17:42:08', '2020-03-23 16:42:08', '', 15, 'http://localhost/mynursery/non-classe/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-03-23 17:42:36', '2020-03-23 16:42:36', '', 'Ajouter un employé', '', 'publish', 'closed', 'closed', '', 'ajouter-un-employe', '', '', '2020-03-23 17:42:36', '2020-03-23 16:42:36', '', 0, 'http://localhost/mynursery/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-03-23 17:42:36', '2020-03-23 16:42:36', '', 'Ajouter un employé', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-03-23 17:42:36', '2020-03-23 16:42:36', '', 17, 'http://localhost/mynursery/non-classe/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-03-24 10:18:23', '2020-03-24 09:18:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Image 1 Slider', 'image-1-slider', 'trash', 'closed', 'closed', '', 'group_5e79cee50a6e1__trashed', '', '', '2020-03-24 10:33:32', '2020-03-24 09:33:32', '', 0, 'http://localhost/mynursery/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2020-03-24 10:18:23', '2020-03-24 09:18:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phrase en gras sur le slider', 'phrase_en_gras_sur_le_slider', 'trash', 'closed', 'closed', '', 'field_5e79cf00d9a3c__trashed', '', '', '2020-03-24 10:33:32', '2020-03-24 09:33:32', '', 20, 'http://localhost/mynursery/?post_type=acf-field&#038;p=21', 0, 'acf-field', '', 0),
(22, 1, '2020-03-24 10:18:23', '2020-03-24 09:18:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phrase en miniscule sur le slider', 'phrase_en_miniscule_sur_le_slider', 'trash', 'closed', 'closed', '', 'field_5e79cf86d9a3d__trashed', '', '', '2020-03-24 10:33:32', '2020-03-24 09:33:32', '', 20, 'http://localhost/mynursery/?post_type=acf-field&#038;p=22', 1, 'acf-field', '', 0),
(23, 1, '2020-03-24 10:32:03', '2020-03-24 09:32:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'trash', 'closed', 'closed', '', 'field_5e79d38010b97__trashed', '', '', '2020-03-24 10:33:32', '2020-03-24 09:33:32', '', 20, 'http://localhost/mynursery/?post_type=acf-field&#038;p=23', 2, 'acf-field', '', 0),
(27, 1, '2020-03-24 10:49:53', '2020-03-24 09:49:53', 'Enfant se tenant la main', 'Image 1 Slider', 'Deux enfants se tenant la main', 'trash', 'open', 'closed', '', 'image-1-slider__trashed', '', '', '2020-03-25 13:09:19', '2020-03-25 12:09:19', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=27', 0, 'slider', '', 0),
(28, 1, '2020-03-24 10:50:11', '2020-03-24 09:50:11', 'Deux visages d\'enfants souriant.', 'Image 2 Slider', '', 'trash', 'open', 'closed', '', 'image-2-slider__trashed', '', '', '2020-03-25 13:09:18', '2020-03-25 12:09:18', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=28', 0, 'slider', '', 0),
(29, 1, '2020-03-24 10:50:21', '2020-03-24 09:50:21', '<pre>Enfants dans un champ de coquelicots</pre>', 'Image 3 Slider', '', 'trash', 'open', 'closed', '', 'image-3-slider__trashed', '', '', '2020-03-25 13:09:16', '2020-03-25 12:09:16', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=29', 0, 'slider', '', 0),
(30, 1, '2020-03-25 12:36:11', '2020-03-25 11:36:11', '', 'Image 1 Slider', 'Deux enfants se tenant la main', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2020-03-25 12:36:11', '2020-03-25 11:36:11', '', 27, 'http://localhost/mynursery/non-classe/27-autosave-v1/', 0, 'revision', '', 0),
(31, 1, '2020-03-24 11:07:18', '2020-03-24 10:07:18', '', 'slider1', '', 'inherit', 'open', 'closed', '', 'slider1', '', '', '2020-03-24 11:07:18', '2020-03-24 10:07:18', '', 27, 'http://localhost/mynursery/wp-content/uploads/2020/03/slider1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-03-24 11:13:23', '2020-03-24 10:13:23', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2020-03-24 11:13:23', '2020-03-24 10:13:23', '', 28, 'http://localhost/mynursery/wp-content/uploads/2020/03/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-03-24 11:15:49', '2020-03-24 10:15:49', '', 'slider3', '', 'inherit', 'open', 'closed', '', 'slider3', '', '', '2020-03-24 11:15:49', '2020-03-24 10:15:49', '', 29, 'http://localhost/mynursery/wp-content/uploads/2020/03/slider3.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-03-24 11:25:59', '2020-03-24 10:25:59', '', 'Slider Home Page', '', 'publish', 'closed', 'closed', '', 'slider-home-page', '', '', '2020-03-24 11:25:59', '2020-03-24 10:25:59', '', 0, 'http://localhost/mynursery/?post_type=twabc&#038;p=34', 0, 'twabc', '', 0),
(41, 1, '2020-03-25 09:42:56', '2020-03-25 08:42:56', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Champs de texte des sliders', 'champs-de-texte-des-sliders', 'publish', 'closed', 'closed', '', 'group_5e7b16347f9b2', '', '', '2020-03-25 15:13:23', '2020-03-25 14:13:23', '', 0, 'http://localhost/mynursery/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2020-03-25 09:42:56', '2020-03-25 08:42:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:53:\"Ici saisissez le titre qui est en gras sur le slider.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:38:\"A ne remplir que sur votre slider n°1\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:50;}', 'Titre en bas du slider', 'titre_de_limage_du_slider', 'publish', 'closed', 'closed', '', 'field_5e7b181564677', '', '', '2020-03-25 15:05:47', '2020-03-25 14:05:47', '', 41, 'http://localhost/mynursery/?post_type=acf-field&#038;p=42', 2, 'acf-field', '', 0),
(43, 1, '2020-03-25 09:42:56', '2020-03-25 08:42:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:53:\"Ici saisissez le texte qui est en gras sur le slider.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:38:\"A ne remplir que sur votre slider n°1\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:100;}', 'Texte en bas du slider', 'texte_de_limage_du_slider', 'publish', 'closed', 'closed', '', 'field_5e7b184a64678', '', '', '2020-03-25 15:05:53', '2020-03-25 14:05:53', '', 41, 'http://localhost/mynursery/?post_type=acf-field&#038;p=43', 3, 'acf-field', '', 0),
(48, 1, '2020-03-25 09:57:41', '2020-03-25 08:57:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-03-25 09:57:41', '2020-03-25 08:57:41', '', 6, 'http://localhost/mynursery/non-classe/6-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-03-25 10:08:22', '2020-03-25 09:08:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-03-25 10:08:22', '2020-03-25 09:08:22', '', 6, 'http://localhost/mynursery/non-classe/6-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-03-25 10:08:29', '2020-03-25 09:08:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-03-25 10:08:29', '2020-03-25 09:08:29', '', 6, 'http://localhost/mynursery/non-classe/6-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-03-25 11:30:12', '2020-03-25 10:30:12', 'CoucoucoucouCoucoucoucouCoucoucoucou\r\n\r\nCoucoucoucouCoucoucoucouCoucoucoucou', 'Coucoucoucou', '', 'publish', 'closed', 'closed', '', 'coucoucoucou', '', '', '2020-03-25 11:45:35', '2020-03-25 10:45:35', '', 0, 'http://localhost/mynursery/?post_type=specialization&#038;p=51', 0, 'specialization', '', 0),
(52, 1, '2020-03-25 11:30:51', '2020-03-25 10:30:51', '', 'CoucoucoucouCoucoucoucou', '', 'publish', 'closed', 'closed', '', 'coucoucoucoucoucoucoucou', '', '', '2020-03-25 11:46:52', '2020-03-25 10:46:52', '', 0, 'http://localhost/mynursery/?post_type=partner&#038;p=52', 0, 'partner', '', 0),
(54, 1, '2020-03-25 11:34:16', '2020-03-25 10:34:16', '', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2020-03-25 11:47:02', '2020-03-25 10:47:02', '', 0, 'http://localhost/mynursery/?post_type=partner&#038;p=54', 0, 'partner', '', 0),
(55, 1, '2020-03-25 11:34:30', '2020-03-25 10:34:30', '', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2020-03-25 11:47:14', '2020-03-25 10:47:14', '', 0, 'http://localhost/mynursery/?post_type=partner&#038;p=55', 0, 'partner', '', 0),
(58, 1, '2020-03-25 11:44:17', '2020-03-25 10:44:17', '', 'lock', '', 'inherit', 'open', 'closed', '', 'lock', '', '', '2020-03-25 11:44:17', '2020-03-25 10:44:17', '', 51, 'http://localhost/mynursery/wp-content/uploads/2020/03/lock.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-03-25 11:44:17', '2020-03-25 10:44:17', '', 'placeholder', '', 'inherit', 'open', 'closed', '', 'placeholder', '', '', '2020-03-25 11:44:17', '2020-03-25 10:44:17', '', 51, 'http://localhost/mynursery/wp-content/uploads/2020/03/placeholder.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2020-03-25 11:44:18', '2020-03-25 10:44:18', '', 'user', '', 'inherit', 'open', 'closed', '', 'user', '', '', '2020-03-25 11:44:18', '2020-03-25 10:44:18', '', 51, 'http://localhost/mynursery/wp-content/uploads/2020/03/user.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2020-03-25 11:44:42', '2020-03-25 10:44:42', 'Coucou2Coucou2Coucou2Coucou2Coucou2Coucou2Coucou2\r\n\r\nCoucou2Coucou2Coucou2Coucou2Coucou2Coucou2Coucou2Coucou2', 'Coucou2', '', 'publish', 'closed', 'closed', '', 'coucou2', '', '', '2020-03-25 11:45:26', '2020-03-25 10:45:26', '', 0, 'http://localhost/mynursery/?post_type=specialization&#038;p=61', 0, 'specialization', '', 0),
(62, 1, '2020-03-25 11:44:55', '2020-03-25 10:44:55', 'Coucou3Coucou3Coucou3Coucou3\r\n\r\nCoucou3Coucou3Coucou3Coucou3Coucou3Coucou3', 'Coucou3', '', 'publish', 'closed', 'closed', '', 'coucou3', '', '', '2020-03-25 11:45:16', '2020-03-25 10:45:16', '', 0, 'http://localhost/mynursery/?post_type=specialization&#038;p=62', 0, 'specialization', '', 0),
(64, 1, '2020-03-25 11:46:46', '2020-03-25 10:46:46', '', 'creche1', '', 'inherit', 'open', 'closed', '', 'creche1', '', '', '2020-03-25 11:46:46', '2020-03-25 10:46:46', '', 52, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche1.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2020-03-25 11:46:46', '2020-03-25 10:46:46', '', 'creche2', '', 'inherit', 'open', 'closed', '', 'creche2', '', '', '2020-03-25 11:46:46', '2020-03-25 10:46:46', '', 52, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche2.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2020-03-25 11:46:46', '2020-03-25 10:46:46', '', 'creche3', '', 'inherit', 'open', 'closed', '', 'creche3', '', '', '2020-03-25 11:46:46', '2020-03-25 10:46:46', '', 52, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche3.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2020-03-25 11:46:47', '2020-03-25 10:46:47', '', 'creche4', '', 'inherit', 'open', 'closed', '', 'creche4', '', '', '2020-03-25 11:46:47', '2020-03-25 10:46:47', '', 52, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche4.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2020-03-25 11:46:47', '2020-03-25 10:46:47', '', 'creche5', '', 'inherit', 'open', 'closed', '', 'creche5', '', '', '2020-03-25 11:46:47', '2020-03-25 10:46:47', '', 52, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche5.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2020-03-25 11:46:47', '2020-03-25 10:46:47', '', 'creche6', '', 'inherit', 'open', 'closed', '', 'creche6', '', '', '2020-03-25 11:46:47', '2020-03-25 10:46:47', '', 52, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche6.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2020-03-25 11:46:48', '2020-03-25 10:46:48', '', 'creche7', '', 'inherit', 'open', 'closed', '', 'creche7', '', '', '2020-03-25 11:46:48', '2020-03-25 10:46:48', '', 52, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche7.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2020-03-25 11:46:48', '2020-03-25 10:46:48', '', 'creche8', '', 'inherit', 'open', 'closed', '', 'creche8', '', '', '2020-03-25 11:46:48', '2020-03-25 10:46:48', '', 52, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche8.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2020-03-25 11:47:43', '2020-03-25 10:47:43', '', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2020-03-25 11:47:43', '2020-03-25 10:47:43', '', 0, 'http://localhost/mynursery/?post_type=partner&#038;p=72', 0, 'partner', '', 0),
(74, 1, '2020-03-25 11:47:54', '2020-03-25 10:47:54', '', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2020-03-25 11:47:54', '2020-03-25 10:47:54', '', 0, 'http://localhost/mynursery/?post_type=partner&#038;p=74', 0, 'partner', '', 0),
(75, 1, '2020-03-25 11:48:01', '2020-03-25 10:48:01', '', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2020-03-25 11:48:01', '2020-03-25 10:48:01', '', 0, 'http://localhost/mynursery/?post_type=partner&#038;p=75', 0, 'partner', '', 0),
(76, 1, '2020-03-25 11:48:07', '2020-03-25 10:48:07', '', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2020-03-25 11:48:07', '2020-03-25 10:48:07', '', 0, 'http://localhost/mynursery/?post_type=partner&#038;p=76', 0, 'partner', '', 0),
(77, 1, '2020-03-25 11:48:14', '2020-03-25 10:48:14', '', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2020-03-25 11:48:14', '2020-03-25 10:48:14', '', 0, 'http://localhost/mynursery/?post_type=partner&#038;p=77', 0, 'partner', '', 0),
(78, 1, '2020-03-25 11:49:24', '2020-03-25 10:49:24', 'je suis aboutus je suis aboutus\r\n\r\nje suis aboutus je suis aboutus', 'Bonjour je suis aboutus', '', 'publish', 'open', 'closed', '', 'bonjour-je-suis-aboutus', '', '', '2020-03-25 11:49:24', '2020-03-25 10:49:24', '', 0, 'http://localhost/mynursery/?post_type=aboutus&#038;p=78', 0, 'aboutus', '', 0),
(79, 1, '2020-03-25 11:49:05', '2020-03-25 10:49:05', '', 'about-us-family', '', 'inherit', 'open', 'closed', '', 'about-us-family', '', '', '2020-03-25 11:49:05', '2020-03-25 10:49:05', '', 78, 'http://localhost/mynursery/wp-content/uploads/2020/03/about-us-family.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-03-25 12:14:05', '2020-03-25 11:14:05', 'Coronavirus le pointCoronavirus le point\r\n\r\nCoronavirus le point\r\n\r\nCoronavirus le pointCoronavirus le pointCoronavirus le point', 'Coronavirus le point', '', 'publish', 'closed', 'closed', '', 'coronavirus-le-point', '', '', '2020-03-25 12:14:05', '2020-03-25 11:14:05', '', 0, 'http://localhost/mynursery/?post_type=latestnew&#038;p=80', 0, 'latestnew', '', 0),
(81, 1, '2020-03-25 12:13:35', '2020-03-25 11:13:35', '', 'covid19', '', 'inherit', 'open', 'closed', '', 'covid19', '', '', '2020-03-25 12:13:35', '2020-03-25 11:13:35', '', 80, 'http://localhost/mynursery/wp-content/uploads/2020/03/covid19.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2020-03-25 12:14:47', '2020-03-25 11:14:47', 'Le bien être de nos enfants Le bien être de nos enfants\r\n\r\nLe bien être de nos enfants\r\n\r\nLe bien être de nos enfantsLe bien être de nos enfants', 'Le bien être de nos enfants', '', 'publish', 'closed', 'closed', '', 'le-bien-etre-de-nos-enfants', '', '', '2020-03-25 12:14:47', '2020-03-25 11:14:47', '', 0, 'http://localhost/mynursery/?post_type=latestnew&#038;p=82', 0, 'latestnew', '', 0),
(83, 1, '2020-03-25 12:14:25', '2020-03-25 11:14:25', '', 'creche', '', 'inherit', 'open', 'closed', '', 'creche', '', '', '2020-03-25 12:14:25', '2020-03-25 11:14:25', '', 82, 'http://localhost/mynursery/wp-content/uploads/2020/03/creche.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2020-03-25 13:11:42', '2020-03-25 12:11:42', '', 'Mon Slider', '', 'trash', 'closed', 'closed', '', '95__trashed', '', '', '2020-03-25 14:25:14', '2020-03-25 13:25:14', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=95', 0, 'slider', '', 0),
(97, 1, '2020-03-25 13:42:19', '2020-03-25 12:42:19', '', '', '', 'trash', 'closed', 'closed', '', '97__trashed', '', '', '2020-03-25 14:25:16', '2020-03-25 13:25:16', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=97', 0, 'slider', '', 0),
(98, 1, '2020-03-25 13:42:24', '2020-03-25 12:42:24', '', '', '', 'trash', 'closed', 'closed', '', '98__trashed', '', '', '2020-03-25 14:25:18', '2020-03-25 13:25:18', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=98', 0, 'slider', '', 0),
(99, 1, '2020-03-25 14:25:57', '2020-03-25 13:25:57', '', 'Première image du slider', '', 'publish', 'closed', 'closed', '', 'premiere-image-du-slider', '', '', '2020-04-12 01:09:57', '2020-04-11 23:09:57', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=99', 0, 'slider', '', 0),
(100, 1, '2020-03-25 14:26:15', '2020-03-25 13:26:15', '', 'Seconde image du slider', '', 'publish', 'closed', 'closed', '', 'seconde-image-du-slider', '', '', '2020-03-25 15:08:28', '2020-03-25 14:08:28', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=100', 0, 'slider', '', 0),
(101, 1, '2020-03-25 14:26:34', '2020-03-25 13:26:34', '', 'Troisieme image du slider', '', 'publish', 'closed', 'closed', '', 'troisieme-image-du-slider', '', '', '2020-03-25 15:09:36', '2020-03-25 14:09:36', '', 0, 'http://localhost/mynursery/?post_type=slider&#038;p=101', 0, 'slider', '', 0),
(102, 1, '2020-03-25 14:56:51', '2020-03-25 13:56:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image du slider', 'image_slider', 'publish', 'closed', 'closed', '', 'field_5e7b625d3c64f', '', '', '2020-03-25 14:58:37', '2020-03-25 13:58:37', '', 41, 'http://localhost/mynursery/?post_type=acf-field&#038;p=102', 0, 'acf-field', '', 0),
(103, 1, '2020-03-25 14:57:48', '2020-03-25 13:57:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"Renseigner une brève description de l\'image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description de l\'image', 'description_image', 'publish', 'closed', 'closed', '', 'field_5e7b63298fb78', '', '', '2020-03-25 14:58:04', '2020-03-25 13:58:04', '', 41, 'http://localhost/mynursery/?post_type=acf-field&#038;p=103', 1, 'acf-field', '', 0),
(104, 1, '2020-03-25 15:52:52', '2020-03-25 14:52:52', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-03-25 15:52:52', '2020-03-25 14:52:52', '', 0, 'http://localhost/mynursery/?page_id=104', 0, 'page', '', 0),
(105, 1, '2020-03-25 15:52:52', '2020-03-25 14:52:52', '', 'About', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2020-03-25 15:52:52', '2020-03-25 14:52:52', '', 104, 'http://localhost/mynursery/non-classe/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-03-25 15:55:15', '2020-03-25 14:55:15', '', 'About', '', 'inherit', 'closed', 'closed', '', '104-autosave-v1', '', '', '2020-03-25 15:55:15', '2020-03-25 14:55:15', '', 104, 'http://localhost/mynursery/non-classe/104-autosave-v1/', 0, 'revision', '', 0),
(107, 1, '2020-03-29 23:33:36', '2020-03-29 21:33:36', '', 'Inscription', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2020-03-29 23:33:36', '2020-03-29 21:33:36', '', 11, 'http://localhost/mynursery/non-classe/11-autosave-v1/', 0, 'revision', '', 0),
(109, 1, '2020-03-26 21:05:11', '2020-03-26 20:05:11', '', 'unnamed', '', 'inherit', 'open', 'closed', '', 'unnamed', '', '', '2020-03-26 21:05:11', '2020-03-26 20:05:11', '', 99, 'http://localhost/mynursery/wp-content/uploads/2020/03/unnamed.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2020-03-26 21:05:27', '2020-03-26 20:05:27', '', 'unnamed', '', 'inherit', 'open', 'closed', '', 'unnamed-2', '', '', '2020-03-26 21:05:27', '2020-03-26 20:05:27', '', 99, 'http://localhost/mynursery/wp-content/uploads/2020/03/unnamed-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2020-03-29 23:33:33', '2020-03-29 21:33:33', '', 'inscription', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-03-29 23:33:33', '2020-03-29 21:33:33', '', 11, 'http://localhost/mynursery/non-classe/11-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-03-30 12:17:04', '2020-03-30 10:17:04', '', 'map', '', 'publish', 'closed', 'closed', '', 'map', '', '', '2020-03-30 12:17:04', '2020-03-30 10:17:04', '', 0, 'http://localhost/mynursery/?page_id=112', 0, 'page', '', 0),
(113, 1, '2020-03-30 12:17:04', '2020-03-30 10:17:04', '', 'map', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2020-03-30 12:17:04', '2020-03-30 10:17:04', '', 112, 'http://localhost/mynursery/non-classe/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-03-30 12:17:08', '2020-03-30 10:17:08', '', 'map', '', 'inherit', 'closed', 'closed', '', '112-autosave-v1', '', '', '2020-03-30 12:17:08', '2020-03-30 10:17:08', '', 112, 'http://localhost/mynursery/non-classe/112-autosave-v1/', 0, 'revision', '', 0),
(117, 1, '2020-03-31 12:44:54', '2020-03-31 10:44:54', '', 'deconnexion', '', 'publish', 'closed', 'closed', '', 'deconnexion', '', '', '2020-03-31 12:44:54', '2020-03-31 10:44:54', '', 0, 'http://localhost/mynursery/?page_id=117', 0, 'page', '', 0),
(118, 1, '2020-03-31 12:44:54', '2020-03-31 10:44:54', '', 'deconnexion', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-03-31 12:44:54', '2020-03-31 10:44:54', '', 117, 'http://localhost/mynursery/non-classe/117-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2020-04-01 11:53:40', '2020-04-01 09:53:40', '', 'Request', '', 'publish', 'closed', 'closed', '', 'request', '', '', '2020-04-01 11:53:40', '2020-04-01 09:53:40', '', 0, 'http://localhost/mynursery/?page_id=121', 0, 'page', '', 0),
(122, 1, '2020-04-01 11:53:40', '2020-04-01 09:53:40', '', 'Request', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2020-04-01 11:53:40', '2020-04-01 09:53:40', '', 121, 'http://localhost/mynursery/non-classe/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2020-04-03 10:31:55', '2020-04-03 08:31:55', '', 'delete', '', 'publish', 'closed', 'closed', '', 'delete', '', '', '2020-04-03 10:32:47', '2020-04-03 08:32:47', '', 0, 'http://localhost/mynursery/?page_id=123', 0, 'page', '', 0),
(124, 1, '2020-04-03 10:31:55', '2020-04-03 08:31:55', '', 'delete', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-04-03 10:31:55', '2020-04-03 08:31:55', '', 123, 'http://localhost/mynursery/non-classe/123-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2020-04-03 11:41:15', '2020-04-03 09:41:15', '', 'edit', '', 'publish', 'closed', 'closed', '', 'edit', '', '', '2020-04-03 11:41:15', '2020-04-03 09:41:15', '', 0, 'http://localhost/mynursery/?page_id=126', 0, 'page', '', 0),
(127, 1, '2020-04-03 11:41:15', '2020-04-03 09:41:15', '', 'edit', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2020-04-03 11:41:15', '2020-04-03 09:41:15', '', 126, 'http://localhost/mynursery/non-classe/126-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2020-04-08 12:28:24', '2020-04-08 10:28:24', '', 'oublie', '', 'publish', 'closed', 'closed', '', 'oublie', '', '', '2020-04-08 12:28:24', '2020-04-08 10:28:24', '', 0, 'http://localhost/mynursery/?page_id=129', 0, 'page', '', 0),
(130, 1, '2020-04-08 12:28:24', '2020-04-08 10:28:24', '', 'oublie', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2020-04-08 12:28:24', '2020-04-08 10:28:24', '', 129, 'http://localhost/mynursery/non-classe/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2020-04-08 12:28:37', '2020-04-08 10:28:37', '', 'update', '', 'publish', 'closed', 'closed', '', 'update', '', '', '2020-04-08 12:28:37', '2020-04-08 10:28:37', '', 0, 'http://localhost/mynursery/?page_id=131', 0, 'page', '', 0),
(132, 1, '2020-04-08 12:28:37', '2020-04-08 10:28:37', '', 'update', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2020-04-08 12:28:37', '2020-04-08 10:28:37', '', 131, 'http://localhost/mynursery/non-classe/131-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2020-04-08 12:57:18', '2020-04-08 10:57:18', '', 'success', '', 'publish', 'closed', 'closed', '', 'success', '', '', '2020-04-08 12:57:18', '2020-04-08 10:57:18', '', 0, 'http://localhost/mynursery/?page_id=134', 0, 'page', '', 0),
(135, 1, '2020-04-08 12:57:18', '2020-04-08 10:57:18', '', 'success', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2020-04-08 12:57:18', '2020-04-08 10:57:18', '', 134, 'http://localhost/mynursery/non-classe/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2020-04-08 15:43:44', '2020-04-08 13:43:44', '', 'agenda', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2020-04-08 15:43:44', '2020-04-08 13:43:44', '', 0, 'http://localhost/mynursery/?page_id=136', 0, 'page', '', 0),
(137, 1, '2020-04-08 15:43:44', '2020-04-08 13:43:44', '', 'agenda', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2020-04-08 15:43:44', '2020-04-08 13:43:44', '', 136, 'http://localhost/mynursery/non-classe/136-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2020-04-08 15:58:36', '2020-04-08 13:58:36', '', 'Inscription_parent', '', 'publish', 'closed', 'closed', '', 'inscription_parent', '', '', '2020-04-08 15:58:36', '2020-04-08 13:58:36', '', 0, 'http://localhost/mynursery/?page_id=138', 0, 'page', '', 0),
(139, 1, '2020-04-08 15:58:36', '2020-04-08 13:58:36', '', 'Inscription_parent', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2020-04-08 15:58:36', '2020-04-08 13:58:36', '', 138, 'http://localhost/mynursery/non-classe/138-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2020-04-08 19:43:41', '2020-04-08 17:43:41', '', 'RequestReservation', '', 'publish', 'closed', 'closed', '', 'requestreservation', '', '', '2020-04-08 19:43:41', '2020-04-08 17:43:41', '', 0, 'http://localhost/mynursery/?page_id=140', 0, 'page', '', 0),
(141, 1, '2020-04-08 19:43:41', '2020-04-08 17:43:41', '', 'RequestReservation', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2020-04-08 19:43:41', '2020-04-08 17:43:41', '', 140, 'http://localhost/mynursery/non-classe/140-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2020-04-10 20:15:50', '2020-04-10 18:15:50', '', 'getupdate', '', 'publish', 'closed', 'closed', '', 'getupdate', '', '', '2020-04-10 20:15:50', '2020-04-10 18:15:50', '', 0, 'http://localhost/mynursery/?page_id=142', 0, 'page', '', 0),
(143, 1, '2020-04-10 20:15:50', '2020-04-10 18:15:50', '', 'getupdate', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2020-04-10 20:15:50', '2020-04-10 18:15:50', '', 142, 'http://localhost/mynursery/non-classe/142-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2020-04-12 01:09:07', '2020-04-11 23:09:07', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2020-04-12 01:09:07', '2020-04-11 23:09:07', '', 99, 'http://localhost/mynursery/wp-content/uploads/2020/03/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2020-04-18 13:33:17', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-18 13:33:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/mynursery/?p=145', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `nurs_reservation`
--

CREATE TABLE `nurs_reservation` (
  `id_reservation` int(11) NOT NULL,
  `id_creche` int(11) NOT NULL,
  `id_enfant` int(11) NOT NULL,
  `id_responsable` int(11) NOT NULL,
  `date_resa` datetime NOT NULL,
  `fin_resa` datetime NOT NULL,
  `creche_id_creche` int(11) NOT NULL,
  `enfant_id_enfant` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_responsable_legal_enfant`
--

CREATE TABLE `nurs_responsable_legal_enfant` (
  `idresponsable_legale` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telephone` int(11) NOT NULL,
  `num_rue` int(11) NOT NULL,
  `supp_rue` varchar(45) DEFAULT NULL,
  `nom_rue` varchar(45) NOT NULL,
  `codepostal` int(11) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `sexe` varchar(45) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_termmeta`
--

CREATE TABLE `nurs_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_terms`
--

CREATE TABLE `nurs_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_terms`
--

INSERT INTO `nurs_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `nurs_term_relationships`
--

CREATE TABLE `nurs_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_term_relationships`
--

INSERT INTO `nurs_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `nurs_term_taxonomy`
--

CREATE TABLE `nurs_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_term_taxonomy`
--

INSERT INTO `nurs_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `nurs_usermeta`
--

CREATE TABLE `nurs_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_usermeta`
--

INSERT INTO `nurs_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'webapsy'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'nurs_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'nurs_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'nurs_dashboard_quick_press_last_post_id', '145'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"ca78d6006cf3b8f846cfbf94b21ba2b1a04f568ec7491cb85d3170e562ecd288\";a:4:{s:10:\"expiration\";i:1587547328;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586337728;}}'),
(19, 1, 'nurs_user-settings', 'editor=tinymce&libraryContent=browse&mfold=o'),
(20, 1, 'nurs_user-settings-time', '1586646462'),
(21, 1, 'closedpostboxes_twabc', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(22, 1, 'metaboxhidden_twabc', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(23, 1, 'meta-box-order_twabc', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:54:\"submitdiv,twabc_categorydiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:19:\"postexcerpt,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_twabc', '2'),
(25, 1, 'meta-box-order_slider', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:48:\"postexcerpt,commentstatusdiv,commentsdiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_slider', '2'),
(27, 1, 'closedpostboxes_slider', 'a:0:{}'),
(28, 1, 'metaboxhidden_slider', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(43, 3, 'nickname', 'admin'),
(44, 3, 'first_name', 'admin'),
(45, 3, 'last_name', 'admin'),
(46, 3, 'description', ''),
(47, 3, 'rich_editing', 'true'),
(48, 3, 'syntax_highlighting', 'true'),
(49, 3, 'comment_shortcuts', 'false'),
(50, 3, 'admin_color', 'fresh'),
(51, 3, 'use_ssl', '0'),
(52, 3, 'show_admin_bar_front', 'true'),
(53, 3, 'locale', ''),
(54, 3, 'nurs_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(55, 3, 'nurs_user_level', '10'),
(56, 3, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Structure de la table `nurs_users`
--

CREATE TABLE `nurs_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nurs_users`
--

INSERT INTO `nurs_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'webapsy', '$P$BWNnBg5Hzh/HOgGn6ZcUcEt4czV/Q81', 'webapsy', 'wpgestionadm@gmail.com', '', '2020-03-19 11:06:04', '', 0, 'webapsy'),
(3, 'admin', '$P$Bz5yFmbsVoOMSu8xkFIeLbkxBUfU/j1', 'admin', 'webapsy@gmail.com', '', '2020-04-08 09:24:31', '1586337873:$P$BPqqoxMRPjnB2QIPpn5Qk9Dj4eTeVe/', 0, 'admin admin');

-- --------------------------------------------------------

--
-- Structure de la table `nurs_vaccin`
--

CREATE TABLE `nurs_vaccin` (
  `id_vaccin` int(11) NOT NULL,
  `nom_vaccin` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nurs_vaccin_has_enfant`
--

CREATE TABLE `nurs_vaccin_has_enfant` (
  `vaccin_id_vaccin` int(11) NOT NULL,
  `enfant_id_enfant` int(11) NOT NULL,
  `enfant_responsablelegal_enfant_idresponsable_legale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `nurs_allergies`
--
ALTER TABLE `nurs_allergies`
  ADD PRIMARY KEY (`id_allergies`);

--
-- Index pour la table `nurs_autre_responsable`
--
ALTER TABLE `nurs_autre_responsable`
  ADD PRIMARY KEY (`id_autre_responsable`);

--
-- Index pour la table `nurs_autre_responsable_has_enfant`
--
ALTER TABLE `nurs_autre_responsable_has_enfant`
  ADD PRIMARY KEY (`autre_responsable_id_autre_responsable`,`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`),
  ADD KEY `fk_autre_responsable_has_enfant_enfant1_idx` (`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`),
  ADD KEY `fk_autre_responsable_has_enfant_autre_responsable1_idx` (`autre_responsable_id_autre_responsable`);

--
-- Index pour la table `nurs_commentmeta`
--
ALTER TABLE `nurs_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `nurs_comments`
--
ALTER TABLE `nurs_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `nurs_contact`
--
ALTER TABLE `nurs_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nurs_creche`
--
ALTER TABLE `nurs_creche`
  ADD PRIMARY KEY (`id_creche`);

--
-- Index pour la table `nurs_creche_has_employee_creche`
--
ALTER TABLE `nurs_creche_has_employee_creche`
  ADD PRIMARY KEY (`creche_id_creche`,`employee_creche_id_employee`),
  ADD KEY `fk_creche_has_employee_creche_employee_creche1_idx` (`employee_creche_id_employee`),
  ADD KEY `fk_creche_has_employee_creche_creche1_idx` (`creche_id_creche`);

--
-- Index pour la table `nurs_documents_responsablelegal`
--
ALTER TABLE `nurs_documents_responsablelegal`
  ADD PRIMARY KEY (`id_document`),
  ADD KEY `fk_documents_responsablelegal_responsablelegal_enfant1_idx` (`responsablelegal_enfant_idresponsable_legale`);

--
-- Index pour la table `nurs_employee_creche`
--
ALTER TABLE `nurs_employee_creche`
  ADD PRIMARY KEY (`id_employee`);

--
-- Index pour la table `nurs_enfant`
--
ALTER TABLE `nurs_enfant`
  ADD PRIMARY KEY (`id_enfant`,`responsablelegal_enfant_idresponsable_legale`),
  ADD KEY `fk_enfant_responsablelegal_enfant1_idx` (`responsablelegal_enfant_idresponsable_legale`);

--
-- Index pour la table `nurs_enfant_has_allergies`
--
ALTER TABLE `nurs_enfant_has_allergies`
  ADD PRIMARY KEY (`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`,`allergies_id_allergies`),
  ADD KEY `fk_enfant_has_allergies_allergies1_idx` (`allergies_id_allergies`),
  ADD KEY `fk_enfant_has_allergies_enfant1_idx` (`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`);

--
-- Index pour la table `nurs_facture`
--
ALTER TABLE `nurs_facture`
  ADD PRIMARY KEY (`id_facture`,`creche_id_creche`),
  ADD KEY `fk_facture_creche1_idx` (`creche_id_creche`);

--
-- Index pour la table `nurs_links`
--
ALTER TABLE `nurs_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `nurs_notes`
--
ALTER TABLE `nurs_notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nurs_options`
--
ALTER TABLE `nurs_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `nurs_postmeta`
--
ALTER TABLE `nurs_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `nurs_posts`
--
ALTER TABLE `nurs_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `nurs_reservation`
--
ALTER TABLE `nurs_reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `fk_reservation_creche1_idx` (`creche_id_creche`),
  ADD KEY `fk_reservation_enfant1_idx` (`enfant_id_enfant`);

--
-- Index pour la table `nurs_responsable_legal_enfant`
--
ALTER TABLE `nurs_responsable_legal_enfant`
  ADD PRIMARY KEY (`idresponsable_legale`);

--
-- Index pour la table `nurs_termmeta`
--
ALTER TABLE `nurs_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `nurs_terms`
--
ALTER TABLE `nurs_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `nurs_term_relationships`
--
ALTER TABLE `nurs_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `nurs_term_taxonomy`
--
ALTER TABLE `nurs_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `nurs_usermeta`
--
ALTER TABLE `nurs_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `nurs_users`
--
ALTER TABLE `nurs_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `nurs_vaccin`
--
ALTER TABLE `nurs_vaccin`
  ADD PRIMARY KEY (`id_vaccin`);

--
-- Index pour la table `nurs_vaccin_has_enfant`
--
ALTER TABLE `nurs_vaccin_has_enfant`
  ADD PRIMARY KEY (`vaccin_id_vaccin`,`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`),
  ADD KEY `fk_vaccin_has_enfant_enfant1_idx` (`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`),
  ADD KEY `fk_vaccin_has_enfant_vaccin1_idx` (`vaccin_id_vaccin`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `nurs_allergies`
--
ALTER TABLE `nurs_allergies`
  MODIFY `id_allergies` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nurs_autre_responsable`
--
ALTER TABLE `nurs_autre_responsable`
  MODIFY `id_autre_responsable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `nurs_commentmeta`
--
ALTER TABLE `nurs_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nurs_comments`
--
ALTER TABLE `nurs_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `nurs_contact`
--
ALTER TABLE `nurs_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `nurs_creche`
--
ALTER TABLE `nurs_creche`
  MODIFY `id_creche` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `nurs_documents_responsablelegal`
--
ALTER TABLE `nurs_documents_responsablelegal`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nurs_employee_creche`
--
ALTER TABLE `nurs_employee_creche`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `nurs_enfant`
--
ALTER TABLE `nurs_enfant`
  MODIFY `id_enfant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `nurs_facture`
--
ALTER TABLE `nurs_facture`
  MODIFY `id_facture` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nurs_links`
--
ALTER TABLE `nurs_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nurs_notes`
--
ALTER TABLE `nurs_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `nurs_options`
--
ALTER TABLE `nurs_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=733;

--
-- AUTO_INCREMENT pour la table `nurs_postmeta`
--
ALTER TABLE `nurs_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT pour la table `nurs_posts`
--
ALTER TABLE `nurs_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT pour la table `nurs_reservation`
--
ALTER TABLE `nurs_reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `nurs_responsable_legal_enfant`
--
ALTER TABLE `nurs_responsable_legal_enfant`
  MODIFY `idresponsable_legale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `nurs_termmeta`
--
ALTER TABLE `nurs_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nurs_terms`
--
ALTER TABLE `nurs_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `nurs_term_taxonomy`
--
ALTER TABLE `nurs_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `nurs_usermeta`
--
ALTER TABLE `nurs_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `nurs_users`
--
ALTER TABLE `nurs_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `nurs_vaccin`
--
ALTER TABLE `nurs_vaccin`
  MODIFY `id_vaccin` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `nurs_autre_responsable_has_enfant`
--
ALTER TABLE `nurs_autre_responsable_has_enfant`
  ADD CONSTRAINT `fk_autre_responsable_has_enfant_autre_responsable1` FOREIGN KEY (`autre_responsable_id_autre_responsable`) REFERENCES `nurs_autre_responsable` (`id_autre_responsable`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_autre_responsable_has_enfant_enfant1` FOREIGN KEY (`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`) REFERENCES `nurs_enfant` (`id_enfant`, `responsablelegal_enfant_idresponsable_legale`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nurs_creche_has_employee_creche`
--
ALTER TABLE `nurs_creche_has_employee_creche`
  ADD CONSTRAINT `fk_creche_has_employee_creche_creche1` FOREIGN KEY (`creche_id_creche`) REFERENCES `nurs_creche` (`id_creche`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_creche_has_employee_creche_employee_creche1` FOREIGN KEY (`employee_creche_id_employee`) REFERENCES `nurs_employee_creche` (`id_employee`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nurs_documents_responsablelegal`
--
ALTER TABLE `nurs_documents_responsablelegal`
  ADD CONSTRAINT `fk_documents_responsablelegal_responsablelegal_enfant1` FOREIGN KEY (`responsablelegal_enfant_idresponsable_legale`) REFERENCES `nurs_responsable_legal_enfant` (`idresponsable_legale`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nurs_enfant`
--
ALTER TABLE `nurs_enfant`
  ADD CONSTRAINT `fk_enfant_responsablelegal_enfant1` FOREIGN KEY (`responsablelegal_enfant_idresponsable_legale`) REFERENCES `nurs_responsable_legal_enfant` (`idresponsable_legale`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nurs_enfant_has_allergies`
--
ALTER TABLE `nurs_enfant_has_allergies`
  ADD CONSTRAINT `fk_enfant_has_allergies_allergies1` FOREIGN KEY (`allergies_id_allergies`) REFERENCES `nurs_allergies` (`id_allergies`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_enfant_has_allergies_enfant1` FOREIGN KEY (`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`) REFERENCES `nurs_enfant` (`id_enfant`, `responsablelegal_enfant_idresponsable_legale`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nurs_facture`
--
ALTER TABLE `nurs_facture`
  ADD CONSTRAINT `fk_facture_creche1` FOREIGN KEY (`creche_id_creche`) REFERENCES `nurs_creche` (`id_creche`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nurs_reservation`
--
ALTER TABLE `nurs_reservation`
  ADD CONSTRAINT `fk_reservation_creche1` FOREIGN KEY (`creche_id_creche`) REFERENCES `nurs_creche` (`id_creche`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_reservation_enfant1` FOREIGN KEY (`enfant_id_enfant`) REFERENCES `nurs_enfant` (`id_enfant`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nurs_vaccin_has_enfant`
--
ALTER TABLE `nurs_vaccin_has_enfant`
  ADD CONSTRAINT `fk_vaccin_has_enfant_enfant1` FOREIGN KEY (`enfant_id_enfant`,`enfant_responsablelegal_enfant_idresponsable_legale`) REFERENCES `nurs_enfant` (`id_enfant`, `responsablelegal_enfant_idresponsable_legale`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vaccin_has_enfant_vaccin1` FOREIGN KEY (`vaccin_id_vaccin`) REFERENCES `nurs_vaccin` (`id_vaccin`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
