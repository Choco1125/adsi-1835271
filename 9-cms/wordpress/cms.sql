-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-06-2020 a las 21:09:03
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Pokemon', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'chich@mal.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:33:\"preloader-plus/preloader-plus.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Pokemon', 'yes'),
(41, 'stylesheet', 'Pokemon', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'contributor', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(77, 'sticky_posts', 'a:1:{i:0;i:6;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1604722146', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_ES', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:19:\"primary-widget-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1591211348;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591243747;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591243748;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591243756;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591243761;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591675747;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589171683;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(157, 'new_admin_email', 'chich@mal.com', 'yes'),
(166, 'current_theme', 'Pokémon', 'yes'),
(167, 'theme_mods_Pokemon', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(169, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(212, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":0}', 'yes'),
(222, 'recently_activated', 'a:0:{}', 'yes'),
(233, 'preloader_plus_settings', 'a:12:{s:14:\"custom_content\";s:8:\"Pokémon\";s:16:\"enable_preloader\";s:1:\"1\";s:13:\"show_on_front\";s:1:\"1\";s:17:\"custom_icon_image\";s:63:\"http://localhost/wordpress/wp-content/uploads/2020/05/logos.png\";s:20:\"custom_img_animation\";s:4:\"fade\";s:10:\"icon_image\";s:7:\"Rolling\";s:15:\"prog_bar_height\";i:0;s:20:\"icon_image_dimension\";i:80;s:20:\"custom_img_dimension\";i:600;s:8:\"elements\";a:1:{i:0;s:12:\"custom_image\";}s:8:\"bg_color\";s:7:\"#7c7c7c\";s:10:\"text_color\";s:7:\"#000000\";}', 'yes'),
(266, 'category_children', 'a:0:{}', 'yes'),
(275, '_site_transient_timeout_theme_roots', '1591213019', 'no'),
(276, '_site_transient_theme_roots', 'a:4:{s:7:\"Pokemon\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(278, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1591211232;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(279, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591211232;s:7:\"checked\";a:4:{s:7:\"Pokemon\";s:6:\"2020.1\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(280, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591211233;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"preloader-plus/preloader-plus.php\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"preloader-plus/preloader-plus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/preloader-plus\";s:4:\"slug\";s:14:\"preloader-plus\";s:6:\"plugin\";s:33:\"preloader-plus/preloader-plus.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/preloader-plus/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/preloader-plus.2.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/preloader-plus/assets/icon-256x256.jpg?rev=1834671\";s:2:\"1x\";s:67:\"https://ps.w.org/preloader-plus/assets/icon-128x128.jpg?rev=1834671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/preloader-plus/assets/banner-1544x500.jpg?rev=1834671\";s:2:\"1x\";s:69:\"https://ps.w.org/preloader-plus/assets/banner-772x250.jpg?rev=1834671\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(281, '_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', '1591816034', 'no'),
(282, '_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(7, 6, '_edit_lock', '1589176780:1'),
(8, 7, '_wp_attached_file', '2020/05/welcome-1.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:21:\"2020/05/welcome-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"welcome-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"welcome-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"welcome-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"welcome-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"welcome-1-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_edit_lock', '1589176383:1'),
(15, 11, '_wp_attached_file', '2020/05/iniciales.jpg'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:21:\"2020/05/iniciales.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"iniciales-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"iniciales-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"iniciales-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"iniciales-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 13, '_edit_lock', '1589177173:1'),
(22, 15, '_wp_attached_file', '2020/05/pokemones.jpg'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:21:\"2020/05/pokemones.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pokemones-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"pokemones-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pokemones-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"pokemones-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 17, '_edit_lock', '1589391415:1'),
(27, 18, '_wp_attached_file', '2020/05/batalla.jpg'),
(28, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:19:\"2020/05/batalla.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"batalla-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"batalla-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"batalla-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"batalla-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"batalla-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 10, '_edit_last', '1'),
(34, 10, '_wp_page_template', 'default'),
(37, 13, '_edit_last', '1'),
(38, 13, '_wp_page_template', 'default'),
(41, 20, '_menu_item_type', 'custom'),
(42, 20, '_menu_item_menu_item_parent', '0'),
(43, 20, '_menu_item_object_id', '20'),
(44, 20, '_menu_item_object', 'custom'),
(45, 20, '_menu_item_target', ''),
(46, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 20, '_menu_item_xfn', ''),
(48, 20, '_menu_item_url', 'http://localhost/wordpress/'),
(49, 20, '_menu_item_orphaned', '1589171793'),
(65, 24, '_edit_lock', '1589171762:1'),
(66, 26, '_edit_lock', '1589171820:1'),
(67, 28, '_edit_lock', '1589171865:1'),
(68, 30, '_menu_item_type', 'custom'),
(69, 30, '_menu_item_menu_item_parent', '0'),
(70, 30, '_menu_item_object_id', '30'),
(71, 30, '_menu_item_object', 'custom'),
(72, 30, '_menu_item_target', ''),
(73, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 30, '_menu_item_xfn', ''),
(75, 30, '_menu_item_url', 'http://localhost/wordpress/'),
(86, 32, '_menu_item_type', 'post_type'),
(87, 32, '_menu_item_menu_item_parent', '0'),
(88, 32, '_menu_item_object_id', '26'),
(89, 32, '_menu_item_object', 'page'),
(90, 32, '_menu_item_target', ''),
(91, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 32, '_menu_item_xfn', ''),
(93, 32, '_menu_item_url', ''),
(95, 33, '_menu_item_type', 'post_type'),
(96, 33, '_menu_item_menu_item_parent', '0'),
(97, 33, '_menu_item_object_id', '24'),
(98, 33, '_menu_item_object', 'page'),
(99, 33, '_menu_item_target', ''),
(100, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 33, '_menu_item_xfn', ''),
(102, 33, '_menu_item_url', ''),
(104, 34, '_wp_trash_meta_status', 'publish'),
(105, 34, '_wp_trash_meta_time', '1589172087'),
(114, 17, '_edit_last', '1'),
(159, 69, '_wp_attached_file', '2020/05/logos.png'),
(160, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1364;s:6:\"height\";i:762;s:4:\"file\";s:17:\"2020/05/logos.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logos-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"logos-1024x572.png\";s:5:\"width\";i:1024;s:6:\"height\";i:572;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 70, '_edit_lock', '1589388902:1'),
(162, 70, '_wp_trash_meta_status', 'publish'),
(163, 70, '_wp_trash_meta_time', '1589388912'),
(164, 71, '_edit_lock', '1589388962:1'),
(165, 71, '_wp_trash_meta_status', 'publish'),
(166, 71, '_wp_trash_meta_time', '1589388982'),
(167, 72, '_wp_trash_meta_status', 'publish'),
(168, 72, '_wp_trash_meta_time', '1589389019'),
(169, 73, '_edit_lock', '1589389202:1'),
(170, 73, '_wp_trash_meta_status', 'publish'),
(171, 73, '_wp_trash_meta_time', '1589389236'),
(172, 74, '_edit_lock', '1589390968:1'),
(173, 75, '_wp_attached_file', '2020/05/welcome-2.jpg'),
(174, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:21:\"2020/05/welcome-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"welcome-2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"welcome-2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"welcome-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 74, '_wp_trash_meta_status', 'publish'),
(178, 74, '_wp_trash_meta_time', '1590006305'),
(179, 74, '_wp_desired_post_slug', 'bienvenido-2'),
(180, 78, '_edit_lock', '1590007239:1'),
(185, 81, '_wp_attached_file', '2020/05/1366_2000.jpeg'),
(186, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:658;s:4:\"file\";s:22:\"2020/05/1366_2000.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"1366_2000-300x193.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"1366_2000-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 83, '_menu_item_type', 'taxonomy'),
(190, 83, '_menu_item_menu_item_parent', '0'),
(191, 83, '_menu_item_object_id', '4'),
(192, 83, '_menu_item_object', 'category'),
(193, 83, '_menu_item_target', ''),
(194, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 83, '_menu_item_xfn', ''),
(196, 83, '_menu_item_url', ''),
(198, 84, '_edit_lock', '1590007589:1'),
(199, 85, '_wp_attached_file', '2020/05/dynamax-pokemon-max-geyser.jpg'),
(200, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:547;s:6:\"height\";i:308;s:4:\"file\";s:38:\"2020/05/dynamax-pokemon-max-geyser.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"dynamax-pokemon-max-geyser-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"dynamax-pokemon-max-geyser-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 84, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2020-05-11 04:19:03', '2020-05-11 04:19:03', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-1-1024x576.jpg\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->', 'Bienvenido', '', 'publish', 'closed', 'closed', '', 'bienvenido', '', '', '2020-05-11 00:56:10', '2020-05-11 05:56:10', '', 0, 'http://localhost/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2020-05-11 04:18:22', '2020-05-11 04:18:22', '', 'welcome-1', '', 'inherit', 'open', 'closed', '', 'welcome-1', '', '', '2020-05-11 04:18:22', '2020-05-11 04:18:22', '', 6, 'http://localhost/wordpress/wp-content/uploads/2020/05/welcome-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2020-05-11 04:19:03', '2020-05-11 04:19:03', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-1-1024x576.jpg\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->', 'Bienvenido', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-11 04:19:03', '2020-05-11 04:19:03', '', 6, 'http://localhost/wordpress/2020/05/11/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-05-11 04:22:56', '2020-05-11 04:22:56', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-1-1024x576.jpg\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<div id=\"msj-bienvenodo\"><p>¿Listo para iniciar la aventura?</p></div>\n<!-- /wp:html -->', 'Bienvenido', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-11 04:22:56', '2020-05-11 04:22:56', '', 6, 'http://localhost/wordpress/2020/05/11/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-05-11 04:26:56', '2020-05-11 04:26:56', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/iniciales-1024x576.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Elige tu compañero de aventura entrénalo y ve conociendo nuevos Pokemones una gran amistad se empieza a formar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/explorar/\" target=\"_blank\" rel=\"noreferrer noopener\">Explorar</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Explorar', '', 'publish', 'open', 'open', '', '10', '', '', '2020-05-11 00:55:15', '2020-05-11 05:55:15', '', 0, 'http://localhost/wordpress/?p=10', 0, 'post', '', 0),
(11, 1, '2020-05-11 04:26:46', '2020-05-11 04:26:46', '', 'iniciales', '', 'inherit', 'open', 'closed', '', 'iniciales', '', '', '2020-05-11 04:26:46', '2020-05-11 04:26:46', '', 10, 'http://localhost/wordpress/wp-content/uploads/2020/05/iniciales.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2020-05-11 04:26:56', '2020-05-11 04:26:56', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/iniciales-1024x576.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Elige tu compañero de aventura entrénalo y ve conociendo nuevos Pokemones una gran amistad se empieza a formar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Explorar</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', '', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-05-11 04:26:56', '2020-05-11 04:26:56', '', 10, 'http://localhost/wordpress/2020/05/11/10-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-05-11 04:28:29', '2020-05-11 04:28:29', '<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/crear/\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->', 'Crear', '', 'publish', 'open', 'open', '', '13', '', '', '2020-05-11 01:08:13', '2020-05-11 06:08:13', '', 0, 'http://localhost/wordpress/?p=13', 0, 'post', '', 0),
(14, 1, '2020-05-11 04:28:29', '2020-05-11 04:28:29', '<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crera</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', '', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 04:28:29', '2020-05-11 04:28:29', '', 13, 'http://localhost/wordpress/2020/05/11/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-05-11 04:28:46', '2020-05-11 04:28:46', '', 'pokemones', '', 'inherit', 'open', 'closed', '', 'pokemones', '', '', '2020-05-11 04:28:46', '2020-05-11 04:28:46', '', 13, 'http://localhost/wordpress/wp-content/uploads/2020/05/pokemones.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2020-05-11 04:28:54', '2020-05-11 04:28:54', '<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crera</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 04:28:54', '2020-05-11 04:28:54', '', 13, 'http://localhost/wordpress/2020/05/11/13-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-05-11 00:00:10', '2020-05-11 05:00:10', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"right\"} -->\n<div class=\"wp-block-buttons alignright\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/compartir/\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Compartir', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-05-11 01:08:54', '2020-05-11 06:08:54', '', 0, 'http://localhost/wordpress/?p=17', 0, 'post', '', 0),
(18, 1, '2020-05-11 04:30:06', '2020-05-11 04:30:06', '', 'batalla', '', 'inherit', 'open', 'closed', '', 'batalla', '', '', '2020-05-11 04:30:06', '2020-05-11 04:30:06', '', 17, 'http://localhost/wordpress/wp-content/uploads/2020/05/batalla.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-05-11 04:30:10', '2020-05-11 04:30:10', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', '', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 04:30:10', '2020-05-11 04:30:10', '', 17, 'http://localhost/wordpress/2020/05/11/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-05-10 23:36:33', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-10 23:36:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(24, 1, '2020-05-10 23:38:26', '2020-05-11 04:38:26', '<!-- wp:paragraph -->\n<p>Elige tu compañero de aventura entrénalo y ve conociendo nuevos Pokemones una gran amistad se empieza a formar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":11,\"width\":457,\"height\":257,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/iniciales-1024x576.jpg\" alt=\"\" class=\"wp-image-11\" width=\"457\" height=\"257\"/></figure></div>\n<!-- /wp:image -->', 'Explorar', '', 'publish', 'closed', 'closed', '', 'explorar', '', '', '2020-05-10 23:38:26', '2020-05-11 04:38:26', '', 0, 'http://localhost/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2020-05-10 23:38:26', '2020-05-11 04:38:26', '<!-- wp:paragraph -->\n<p>Elige tu compañero de aventura entrénalo y ve conociendo nuevos Pokemones una gran amistad se empieza a formar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":11,\"width\":457,\"height\":257,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/iniciales-1024x576.jpg\" alt=\"\" class=\"wp-image-11\" width=\"457\" height=\"257\"/></figure></div>\n<!-- /wp:image -->', 'Explorar', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-05-10 23:38:26', '2020-05-11 04:38:26', '', 24, 'http://localhost/wordpress/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-05-10 23:39:23', '2020-05-11 04:39:23', '<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'publish', 'closed', 'closed', '', 'crear', '', '', '2020-05-10 23:39:23', '2020-05-11 04:39:23', '', 0, 'http://localhost/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2020-05-10 23:39:23', '2020-05-11 04:39:23', '<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-05-10 23:39:23', '2020-05-11 04:39:23', '', 26, 'http://localhost/wordpress/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-05-10 23:39:58', '2020-05-11 04:39:58', '<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->', 'Compartir', '', 'publish', 'closed', 'closed', '', 'compartir', '', '', '2020-05-10 23:39:58', '2020-05-11 04:39:58', '', 0, 'http://localhost/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2020-05-10 23:39:58', '2020-05-11 04:39:58', '<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-05-10 23:39:58', '2020-05-11 04:39:58', '', 28, 'http://localhost/wordpress/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-05-10 23:40:52', '2020-05-11 04:40:52', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2020-05-20 15:45:26', '2020-05-20 20:45:26', '', 0, 'http://localhost/wordpress/?p=30', 1, 'nav_menu_item', '', 0),
(32, 1, '2020-05-10 23:40:52', '2020-05-11 04:40:52', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-05-20 15:45:26', '2020-05-20 20:45:26', '', 0, 'http://localhost/wordpress/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2020-05-10 23:40:52', '2020-05-11 04:40:52', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2020-05-20 15:45:26', '2020-05-20 20:45:26', '', 0, 'http://localhost/wordpress/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2020-05-10 23:41:27', '2020-05-11 04:41:27', '{\n    \"Pokemon::nav_menu_locations[main-menu]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-11 04:41:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '90c203ff-f5f9-4160-b38f-db88bf0cc1e6', '', '', '2020-05-10 23:41:27', '2020-05-11 04:41:27', '', 0, 'http://localhost/wordpress/90c203ff-f5f9-4160-b38f-db88bf0cc1e6/', 0, 'customize_changeset', '', 0),
(35, 1, '2020-05-10 23:47:09', '2020-05-11 04:47:09', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/iniciales-1024x576.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Elige tu compañero de aventura entrénalo y ve conociendo nuevos Pokemones una gran amistad se empieza a formar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/explorar/\" target=\"_blank\" rel=\"noreferrer noopener\">Explorar</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-05-10 23:47:09', '2020-05-11 04:47:09', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-05-11 00:12:07', '2020-05-11 05:12:07', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/iniciales-1024x576.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Elige tu compañero de aventura entrénalo y ve conociendo nuevos Pokemones una gran amistad se empieza a formar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/explorar/\" target=\"_blank\" rel=\"noreferrer noopener\">Explorar</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-05-11 00:12:07', '2020-05-11 05:12:07', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-05-11 00:12:41', '2020-05-11 05:12:41', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/iniciales-1024x576.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Elige tu compañero de aventura entrénalo y ve conociendo nuevos Pokemones una gran amistad se empieza a formar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/explorar/\" target=\"_blank\" rel=\"noreferrer noopener\">Explorar</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Explorar', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-05-11 00:12:41', '2020-05-11 05:12:41', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-05-11 00:13:06', '2020-05-11 05:13:06', '<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:13:06', '2020-05-11 05:13:06', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-05-11 00:13:18', '2020-05-11 05:13:18', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 00:13:18', '2020-05-11 05:13:18', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-05-11 00:31:56', '2020-05-11 05:31:56', '<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:31:56', '2020-05-11 05:31:56', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-05-11 00:35:56', '2020-05-11 05:35:56', '<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.<br>¿Listo para iniciar la aventura?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:35:56', '2020-05-11 05:35:56', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-05-11 00:37:07', '2020-05-11 05:37:07', '<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:37:07', '2020-05-11 05:37:07', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-05-11 00:38:54', '2020-05-11 05:38:54', '<!-- wp:html -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.<br><br></p>\n<button><a>Crear</a></button>\n<!-- /wp:html -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:38:54', '2020-05-11 05:38:54', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-05-11 00:40:47', '2020-05-11 05:40:47', '<!-- wp:html -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.<br><br></p>\n<br>\n<button><a>Crear</a></button>\n<!-- /wp:html -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:40:47', '2020-05-11 05:40:47', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-05-11 00:41:09', '2020-05-11 05:41:09', '<!-- wp:html -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.<br><br></p>\n<br><br>\n<button><a>Crear</a></button>\n<!-- /wp:html -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:41:09', '2020-05-11 05:41:09', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-05-11 00:42:06', '2020-05-11 05:42:06', '<!-- wp:html -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.<</p>\n<!-- /wp:html -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:42:06', '2020-05-11 05:42:06', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-05-11 00:43:28', '2020-05-11 05:43:28', '<!-- wp:paragraph {\"className\":\"parrafo\"} -->\n<p class=\"parrafo\">Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:43:28', '2020-05-11 05:43:28', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-05-11 00:45:31', '2020-05-11 05:45:31', '<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"className\":\"parrafo\"} -->\n<p class=\"parrafo\">Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 00:45:31', '2020-05-11 05:45:31', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-05-11 00:47:17', '2020-05-11 05:47:17', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 00:47:17', '2020-05-11 05:47:17', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-05-11 00:48:42', '2020-05-11 05:48:42', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 00:48:42', '2020-05-11 05:48:42', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-05-11 00:48:56', '2020-05-11 05:48:56', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 00:48:56', '2020-05-11 05:48:56', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-05-11 00:49:07', '2020-05-11 05:49:07', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 00:49:07', '2020-05-11 05:49:07', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-05-11 00:49:13', '2020-05-11 05:49:13', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 00:49:13', '2020-05-11 05:49:13', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-05-11 00:49:32', '2020-05-11 05:49:32', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 00:49:32', '2020-05-11 05:49:32', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-05-11 00:49:55', '2020-05-11 05:49:55', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-1-1024x576.jpg\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->', 'Bienvenido', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-11 00:49:55', '2020-05-11 05:49:55', '', 6, 'http://localhost/wordpress/6-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-05-11 00:50:51', '2020-05-11 05:50:51', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-1-1024x576.jpg\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Bienvenido', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-11 00:50:51', '2020-05-11 05:50:51', '', 6, 'http://localhost/wordpress/6-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-05-11 00:52:05', '2020-05-11 05:52:05', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"right\"} -->\n<div class=\"wp-block-buttons alignright\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 00:52:05', '2020-05-11 05:52:05', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-05-11 00:55:15', '2020-05-11 05:55:15', '<!-- wp:image {\"id\":11,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/iniciales-1024x576.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Elige tu compañero de aventura entrénalo y ve conociendo nuevos Pokemones una gran amistad se empieza a formar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/explorar/\" target=\"_blank\" rel=\"noreferrer noopener\">Explorar</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Explorar', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-05-11 00:55:15', '2020-05-11 05:55:15', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-05-11 00:55:41', '2020-05-11 05:55:41', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-1-1024x576.jpg\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Bienvenido', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-11 00:55:41', '2020-05-11 05:55:41', '', 6, 'http://localhost/wordpress/6-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-05-11 00:56:10', '2020-05-11 05:56:10', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-1-1024x576.jpg\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->', 'Bienvenido', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-11 00:56:10', '2020-05-11 05:56:10', '', 6, 'http://localhost/wordpress/6-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-05-11 01:02:27', '2020-05-11 06:02:27', '<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 01:02:27', '2020-05-11 06:02:27', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-05-11 01:02:56', '2020-05-11 06:02:56', '<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 01:02:56', '2020-05-11 06:02:56', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-05-11 01:03:22', '2020-05-11 06:03:22', '<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo para ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 01:03:22', '2020-05-11 06:03:22', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-05-11 01:03:39', '2020-05-11 06:03:39', '<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo ideal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 01:03:39', '2020-05-11 06:03:39', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-05-11 01:03:55', '2020-05-11 06:03:55', '<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 01:03:55', '2020-05-11 06:03:55', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-05-11 01:08:13', '2020-05-11 06:08:13', '<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/pokemones-1024x576.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Captura Pokemones durante tu camino y crea tu equipo ideal para ganar todos los gimnasios y ser el mejor entrenador de Galar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/crear/\">Crear</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:group -->', 'Crear', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-11 01:08:13', '2020-05-11 06:08:13', '', 13, 'http://localhost/wordpress/13-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-05-11 01:08:54', '2020-05-11 06:08:54', '<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/batalla-1024x576.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Desafía a otros entrenadores gana las batallas y ten mil momentos de diversión.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"right\"} -->\n<div class=\"wp-block-buttons alignright\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://localhost/wordpress/compartir/\">Compartir</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Compartir', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-11 01:08:54', '2020-05-11 06:08:54', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-05-13 11:54:51', '2020-05-13 16:54:51', '', 'logos', '', 'inherit', 'open', 'closed', '', 'logos', '', '', '2020-05-13 11:54:51', '2020-05-13 16:54:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/05/logos.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2020-05-13 11:55:12', '2020-05-13 16:55:12', '{\n    \"preloader_plus_settings[custom_content]\": {\n        \"value\": \"Pok\\u00e9mon\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:55:02\"\n    },\n    \"preloader_plus_settings[enable_preloader]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:55:02\"\n    },\n    \"preloader_plus_settings[show_on_front]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:55:02\"\n    },\n    \"preloader_plus_settings[custom_icon_image]\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2020/05/logos.png\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:55:02\"\n    },\n    \"preloader_plus_settings[custom_img_animation]\": {\n        \"value\": \"fade\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:55:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e3295f7-9e23-410c-9eb7-a53c197c1181', '', '', '2020-05-13 11:55:12', '2020-05-13 16:55:12', '', 0, 'http://localhost/wordpress/?p=70', 0, 'customize_changeset', '', 0),
(71, 1, '2020-05-13 11:56:22', '2020-05-13 16:56:22', '{\n    \"preloader_plus_settings[icon_image]\": {\n        \"value\": \"Dots\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:56:02\"\n    },\n    \"preloader_plus_settings[prog_bar_height]\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:56:02\"\n    },\n    \"preloader_plus_settings[icon_image_dimension]\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:56:22\"\n    },\n    \"preloader_plus_settings[custom_img_dimension]\": {\n        \"value\": \"80\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:56:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '618dbac3-ac10-435d-8566-0178c624d92a', '', '', '2020-05-13 11:56:22', '2020-05-13 16:56:22', '', 0, 'http://localhost/wordpress/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2020-05-13 11:56:59', '2020-05-13 16:56:59', '{\n    \"preloader_plus_settings[icon_image]\": {\n        \"value\": \"Rolling\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:56:59\"\n    },\n    \"preloader_plus_settings[icon_image_dimension]\": {\n        \"value\": \"80\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 16:56:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fb649473-7a1d-442a-bce2-6c05ea1805eb', '', '', '2020-05-13 11:56:59', '2020-05-13 16:56:59', '', 0, 'http://localhost/wordpress/fb649473-7a1d-442a-bce2-6c05ea1805eb/', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2020-05-13 12:00:36', '2020-05-13 17:00:36', '{\n    \"preloader_plus_settings[elements]\": {\n        \"value\": [\n            \"custom_image\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 17:00:02\"\n    },\n    \"preloader_plus_settings[bg_color]\": {\n        \"value\": \"#7c7c7c\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 17:00:36\"\n    },\n    \"preloader_plus_settings[custom_img_dimension]\": {\n        \"value\": \"600\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 17:00:02\"\n    },\n    \"preloader_plus_settings[text_color]\": {\n        \"value\": \"#000000\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-13 17:00:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7e604488-3d11-4cc8-aa15-cad01a36ccd5', '', '', '2020-05-13 12:00:36', '2020-05-13 17:00:36', '', 0, 'http://localhost/wordpress/?p=73', 0, 'customize_changeset', '', 0),
(74, 1, '2020-05-13 12:21:56', '2020-05-13 17:21:56', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":75,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-2-1024x576.jpg\" alt=\"\" class=\"wp-image-75\"/></figure>\n<!-- /wp:image -->', 'Bienvenido', '', 'trash', 'open', 'open', '', 'bienvenido-2__trashed', '', '', '2020-05-20 15:25:05', '2020-05-20 20:25:05', '', 0, 'http://localhost/wordpress/?p=74', 0, 'post', '', 0),
(75, 1, '2020-05-13 12:21:51', '2020-05-13 17:21:51', '', 'welcome-2', '', 'inherit', 'open', 'closed', '', 'welcome-2', '', '', '2020-05-13 12:21:51', '2020-05-13 17:21:51', '', 74, 'http://localhost/wordpress/wp-content/uploads/2020/05/welcome-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-05-13 12:21:56', '2020-05-13 17:21:56', '<!-- wp:paragraph -->\n<p>La región de Galar te espera con grandes aventura en compañía de tus pokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":75,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/welcome-2-1024x576.jpg\" alt=\"\" class=\"wp-image-75\"/></figure>\n<!-- /wp:image -->', 'Bienvenido', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-05-13 12:21:56', '2020-05-13 17:21:56', '', 74, 'http://localhost/wordpress/74-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-05-20 15:39:17', '2020-05-20 20:39:17', '<!-- wp:paragraph -->\n<p>Galar cuenta con una nueva guía de prokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":81,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/1366_2000.jpeg\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->', 'Nuevos pokémones', '', 'publish', 'open', 'open', '', 'nuevos-pokemones', '', '', '2020-05-20 15:41:52', '2020-05-20 20:41:52', '', 0, 'http://localhost/wordpress/?p=78', 0, 'post', '', 0),
(79, 1, '2020-05-20 15:39:17', '2020-05-20 20:39:17', '<!-- wp:paragraph -->\n<p>Galar cuenta con una nueva guía de prokemones.</p>\n<!-- /wp:paragraph -->', 'Nuevos pokémones', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-20 15:39:17', '2020-05-20 20:39:17', '', 78, 'http://localhost/wordpress/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-05-20 15:41:41', '2020-05-20 20:41:41', '<!-- wp:paragraph -->\n<p>Galar cuenta con una nueva guía de prokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'Nuevos pokémones', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2020-05-20 15:41:41', '2020-05-20 20:41:41', '', 78, 'http://localhost/wordpress/78-autosave-v1/', 0, 'revision', '', 0),
(81, 1, '2020-05-20 15:41:49', '2020-05-20 20:41:49', '', '1366_2000', '', 'inherit', 'open', 'closed', '', '1366_2000', '', '', '2020-05-20 15:41:49', '2020-05-20 20:41:49', '', 78, 'http://localhost/wordpress/wp-content/uploads/2020/05/1366_2000.jpeg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2020-05-20 15:41:52', '2020-05-20 20:41:52', '<!-- wp:paragraph -->\n<p>Galar cuenta con una nueva guía de prokemones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":81,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/1366_2000.jpeg\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->', 'Nuevos pokémones', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-05-20 15:41:52', '2020-05-20 20:41:52', '', 78, 'http://localhost/wordpress/78-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-05-20 15:45:26', '2020-05-20 20:45:26', '', 'Compartir', '', 'publish', 'closed', 'closed', '', 'compartir', '', '', '2020-05-20 15:45:26', '2020-05-20 20:45:26', '', 0, 'http://localhost/wordpress/?p=83', 4, 'nav_menu_item', '', 0),
(84, 1, '2020-05-20 15:47:51', '2020-05-20 20:47:51', '<!-- wp:paragraph -->\n<p>El Dynamax solo afectará a los combates, y algunos movimientos (llamados movimientos max) causarán efectos adicionales en el campo de batalla.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":85,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/dynamax-pokemon-max-geyser.jpg\" alt=\"\" class=\"wp-image-85\"/></figure>\n<!-- /wp:image -->', 'Dynamax y movimientos max', '', 'publish', 'open', 'open', '', 'dynamax-y-movimientos-max', '', '', '2020-05-20 15:48:44', '2020-05-20 20:48:44', '', 0, 'http://localhost/wordpress/?p=84', 0, 'post', '', 0),
(85, 1, '2020-05-20 15:47:44', '2020-05-20 20:47:44', '', 'dynamax-pokemon-max-geyser', '', 'inherit', 'open', 'closed', '', 'dynamax-pokemon-max-geyser', '', '', '2020-05-20 15:47:44', '2020-05-20 20:47:44', '', 84, 'http://localhost/wordpress/wp-content/uploads/2020/05/dynamax-pokemon-max-geyser.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2020-05-20 15:47:51', '2020-05-20 20:47:51', '<!-- wp:paragraph -->\n<p>Una de las principales características de la Octava Generación será el Dynamax, una mecánica que volverá gigantes a las criaturas y les añadirá nuevas y potentes características. El Dynamax solo afectará a los combates, y algunos movimientos (llamados movimientos max) causarán efectos adicionales en el campo de batalla.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":85,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/dynamax-pokemon-max-geyser.jpg\" alt=\"\" class=\"wp-image-85\"/></figure>\n<!-- /wp:image -->', 'Dynamax y movimientos max', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2020-05-20 15:47:51', '2020-05-20 20:47:51', '', 84, 'http://localhost/wordpress/84-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-05-20 15:48:44', '2020-05-20 20:48:44', '<!-- wp:paragraph -->\n<p>El Dynamax solo afectará a los combates, y algunos movimientos (llamados movimientos max) causarán efectos adicionales en el campo de batalla.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":85,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2020/05/dynamax-pokemon-max-geyser.jpg\" alt=\"\" class=\"wp-image-85\"/></figure>\n<!-- /wp:image -->', 'Dynamax y movimientos max', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2020-05-20 15:48:44', '2020-05-20 20:48:44', '', 84, 'http://localhost/wordpress/84-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'home', 'home', 0),
(3, 'Main', 'main', 0),
(4, 'share', 'share', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 2, 0),
(10, 2, 0),
(13, 2, 0),
(17, 2, 0),
(30, 3, 0),
(32, 3, 0),
(33, 3, 0),
(74, 1, 0),
(78, 4, 0),
(83, 3, 0),
(84, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '77'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1589171902'),
(23, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BoocF.aeCjEZdnETl5Ex1J7bbdBO84.', 'admin', 'chich@mal.com', 'http://localhost/wordpress', '2020-05-11 04:09:07', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
