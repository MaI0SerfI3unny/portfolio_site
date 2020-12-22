-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Гру 23 2020 р., 00:03
-- Версія сервера: 10.4.14-MariaDB
-- Версія PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `october_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2020-12-19 13:14:11', '2020-12-19 13:14:11');

-- --------------------------------------------------------

--
-- Структура таблиці `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'MadSerf', 'Bunny', 'admin', 'example@gmail.com', '$2y$10$KfO0TZ.gOG5OS/zfCMkud.Lv4Fp7SW8jUQLoqYjsbqb/xeVPMfHd2', NULL, '$2y$10$7g5W7RLpj2eoO3uM5e3UPey2EGUvSLdgV6Y9ySLhf6YjL6l1MMiZW', NULL, '', 1, 2, NULL, '2020-12-19 13:14:10', '2020-12-17 23:42:55', '2020-12-22 18:55:59', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2020-12-17 23:42:55', '2020-12-17 23:42:55', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"ocWidgetWidth\":7}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"ocWidgetWidth\":7}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"title\":\"Website\",\"ocWidgetWidth\":5,\"ocWidgetNewRow\":null}}}'),
(2, 1, 'jorgeandrade_subscribe', 'subscribers', 'lists', '{\"visible\":[\"id\",\"name\",\"surname\",\"email\",\"country\",\"code\",\"status\"],\"per_page\":\"20\"}'),
(3, 1, 'backend', 'hints', 'hidden', '{\"hint_subscribeformplus\":1,\"backend_accesslogs_hint\":1}');

-- --------------------------------------------------------

--
-- Структура таблиці `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2020-12-17 23:42:55', '2020-12-17 23:42:55'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2020-12-17 23:42:55', '2020-12-17 23:42:55');

-- --------------------------------------------------------

--
-- Структура таблиці `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `martin_forms_records`
--

CREATE TABLE `martin_forms_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '(Empty)',
  `form_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2020-12-19 21:01:20', '2020-12-19 21:01:20'),
(2, 'Portfolio', 'portfolio', NULL, '', NULL, 3, 4, 0, '2020-12-19 21:08:22', '2020-12-19 21:08:22'),
(3, 'Clients', 'clients', NULL, '', NULL, 5, 6, 0, '2020-12-20 00:24:00', '2020-12-20 00:24:00');

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`) VALUES
(1, 1, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2020-12-19 21:01:20', 1, '2020-12-19 21:01:20', '2020-12-19 21:01:20', NULL),
(2, 1, 'My first site on October', 'my-first-site-on-october', '', 'Look for this description Illon Mask', '<p>Look for this description Illon Mask</p>', '2020-12-20 01:10:00', 1, '2020-12-19 21:17:36', '2020-12-20 00:18:54', NULL),
(3, 1, 'Paikis Palam', 'paikis-palam', 'Creative Director', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>', '2020-12-20 00:25:19', 1, '2020-12-20 00:25:21', '2020-12-20 00:32:32', NULL),
(4, 1, 'Zambo', 'zambo', 'UI/UX Designer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>', '2020-12-20 00:37:02', 0, '2020-12-20 00:37:56', '2020-12-20 00:53:44', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(2, 2),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_forum_channels`
--

CREATE TABLE `rainlab_forum_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT 0,
  `count_posts` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `is_moderated` tinyint(1) NOT NULL DEFAULT 0,
  `embed_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guarded` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `rainlab_forum_channels`
--

INSERT INTO `rainlab_forum_channels` (`id`, `parent_id`, `title`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `count_topics`, `count_posts`, `created_at`, `updated_at`, `is_hidden`, `is_moderated`, `embed_code`, `is_guarded`) VALUES
(1, NULL, 'Channel Orange', 'channel-orange', 'A root level forum channel', 1, 12, 0, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0),
(2, 1, 'Autumn Leaves', 'autumn-leaves', 'Discussion about the season of falling leaves.', 2, 9, 1, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0),
(3, 2, 'September', 'september', 'The start of the fall season.', 3, 4, 2, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0),
(4, 2, 'October', 'october', 'The middle of the fall season.', 5, 6, 2, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0),
(5, 2, 'November', 'november', 'The end of the fall season.', 7, 8, 2, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0),
(6, 1, 'Summer Breeze', 'summer-breeze', 'Discussion about the wind at the ocean.', 10, 11, 1, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0),
(7, NULL, 'Channel Green', 'channel-green', 'A root level forum channel', 13, 18, 0, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0),
(8, 7, 'Winter Snow', 'winter-snow', 'Discussion about the frosty snow flakes.', 14, 15, 1, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0),
(9, 7, 'Spring Trees', 'spring-trees', 'Discussion about the blooming gardens.', 16, 17, 1, 0, 0, '2020-12-19 21:01:23', '2020-12-19 21:01:23', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_forum_members`
--

CREATE TABLE `rainlab_forum_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT 0,
  `count_topics` int(11) NOT NULL DEFAULT 0,
  `last_active_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_moderator` tinyint(1) NOT NULL DEFAULT 0,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_forum_posts`
--

CREATE TABLE `rainlab_forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `delete_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `count_links` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_forum_topics`
--

CREATE TABLE `rainlab_forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `start_member_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  `last_post_member_id` int(11) DEFAULT NULL,
  `last_post_at` datetime DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_sticky` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `count_posts` int(11) NOT NULL DEFAULT 0,
  `count_views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `embed_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_forum_topic_followers`
--

CREATE TABLE `rainlab_forum_topic_followers` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `saurabhdhariwal_comments_posts`
--

CREATE TABLE `saurabhdhariwal_comments_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Cms\\Classes\\CmsException: The content file \'header.htm\' is not found. in C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php:1154\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\twig\\Extension.php(113): Cms\\Classes\\Controller->renderContent(\'header.htm\', Array)\n#1 C:\\xampp\\htdocs\\Portfolio\\storage\\cms\\twig\\b5\\b5299e872254bb0237d31d0c8d6dff198818202c1600705a661ad6f948789ddf.php(80): Cms\\Twig\\Extension->contentFunction(\'header.htm\', Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_611959ab40f5bbbd5dfed9a33b238d22c8240699d9e30df55f0d964f6a83862d->doDisplay(Array, Array)\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#5 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(435): Twig\\Template->render(Array)\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The content file \'header.htm\' is not found.\") in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/layouts/default.htm\" at line 12. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(435): Twig\\Template->render(Array)\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-12-19 19:53:53', '2020-12-19 19:53:53'),
(2, 'error', 'ErrorException: Division by zero in C:\\xampp\\htdocs\\Portfolio\\storage\\cms\\twig\\7c\\7c51390dbd6da37c64560d959be1136b470f37fbe6250f53f7e86a8f5451f420.php:82\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\storage\\cms\\twig\\7c\\7c51390dbd6da37c64560d959be1136b470f37fbe6250f53f7e86a8f5451f420.php(82): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Division by zer...\', \'C:\\\\xampp\\\\htdocs...\', 82, Array)\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_1cddd694048cbeb57067bcf4d0aaff896fed9d67a70299b7f581d778ca2446df->doDisplay(Array, Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(425): Twig\\Template->render(Array)\n#5 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Division by zero\") in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/home.htm\" at line 16. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(425): Twig\\Template->render(Array)\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-12-19 20:10:40', '2020-12-19 20:10:40'),
(3, 'error', 'Twig\\Error\\SyntaxError: Unknown \"partials\" tag. Did you mean \"partial\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/layouts/default.htm\" at line 12? in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php:175\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#5 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(434): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2020-12-19 20:49:19', '2020-12-19 20:49:19');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(4, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"operator\" of value \"%\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/clients.htm\" at line 50. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php:285\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#9 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'clients\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'clients\')\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2020-12-19 22:00:36', '2020-12-19 22:00:36'),
(5, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"string\" of value \"portfolio_content\" (\"end of print statement\" expected) in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/portfolio.htm\" at line 11. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\TokenStream.php:76\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(143): Twig\\TokenStream->expect(4)\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio\')\n#9 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio\')\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', NULL, '2020-12-19 22:09:22', '2020-12-19 22:09:22'),
(6, 'error', 'Twig\\Error\\SyntaxError: Unexpected character \";\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/portfolio.htm\" at line 11. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php:365\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(292): Twig\\Lexer->lexExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(186): Twig\\Lexer->lexVar()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio\')\n#9 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio\')\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', NULL, '2020-12-19 22:09:32', '2020-12-19 22:09:32'),
(7, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"operator\" of value \"%\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/portfolio.htm\" at line 11. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php:285\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#9 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio\')\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2020-12-19 22:09:57', '2020-12-19 22:09:57'),
(8, 'error', 'Twig\\Error\\SyntaxError: Unexpected character \";\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/portfolio_content.htm\" at line 9. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php:365\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(281): Twig\\Lexer->lexExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(182): Twig\\Lexer->lexBlock()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'blogPosts\', Array, true)\n#8 C:\\xampp\\htdocs\\Portfolio\\storage\\cms\\twig\\f3\\f361ae64ceca19bccc52f966ab46f70deeb97a47265cfd9ff28bd0ee451b4e68.php(78): Cms\\Twig\\Extension->partialFunction(\'portfolio_conte...\', Array, true)\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_09de70fbe67f28b89d4c4e39c88ae24e21e16814f4642f694c8f67653273fd51->doDisplay(Array, Array)\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#12 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(425): Twig\\Template->render(Array)\n#13 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio\')\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 {main}', NULL, '2020-12-19 22:23:22', '2020-12-19 22:23:22');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(9, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalThrowableError: Parse error: syntax error, unexpected \'@\', expecting \']\' in C:\\xampp\\htdocs\\Portfolio\\config\\mail.php:85\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Config\\FileLoader.php(245): Illuminate\\Filesystem\\Filesystem->getRequire(\'C:\\\\xampp\\\\htdocs...\')\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Config\\FileLoader.php(77): October\\Rain\\Config\\FileLoader->getRequire(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Config\\Repository.php(206): October\\Rain\\Config\\FileLoader->load(\'dev\', \'mail\', NULL)\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Config\\Repository.php(107): October\\Rain\\Config\\Repository->load(\'mail\', NULL, \'*::mail\')\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\system\\models\\MailSetting.php(58): October\\Rain\\Config\\Repository->get(\'mail.driver\', \'mail\')\n#5 C:\\xampp\\htdocs\\Portfolio\\modules\\system\\behaviors\\SettingsModel.php(77): System\\Models\\MailSetting->initSettingsData()\n#6 [internal function]: System\\Behaviors\\SettingsModel->instance()\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(414): call_user_func_array(Array, Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Database\\Model.php(647): October\\Rain\\Database\\Model->extendableCall(\'instance\', Array)\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1489): October\\Rain\\Database\\Model->__call(\'instance\', Array)\n#10 C:\\xampp\\htdocs\\Portfolio\\modules\\system\\controllers\\Settings.php(168): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'instance\', Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\modules\\system\\controllers\\Settings.php(85): System\\Controllers\\Settings->createModel(Object(stdClass))\n#12 [internal function]: System\\Controllers\\Settings->update(\'october\', \'system\', \'mail_settings\')\n#13 C:\\xampp\\htdocs\\Portfolio\\modules\\backend\\classes\\Controller.php(405): call_user_func_array(Array, Array)\n#14 C:\\xampp\\htdocs\\Portfolio\\modules\\backend\\classes\\Controller.php(296): Backend\\Classes\\Controller->execPageAction(\'update\', Array)\n#15 C:\\xampp\\htdocs\\Portfolio\\modules\\backend\\classes\\BackendController.php(165): Backend\\Classes\\Controller->run(\'update\', Array)\n#16 [internal function]: Backend\\Classes\\BackendController->run(\'system/settings...\')\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#45 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}', NULL, '2020-12-22 17:25:11', '2020-12-22 17:25:11'),
(10, 'error', 'October\\Rain\\Exception\\SystemException: Class name is not registered for the component \"formSubscribe\". Check the component plugin. in C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\ComponentManager.php:204\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(1431): Cms\\Classes\\ComponentManager->makeComponent(\'formSubscribe\', Object(Cms5fe2573821454785251779_8673b9a62fb22d2d082fa715a65c8dd5Class), Array, false)\n#1 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(662): Cms\\Classes\\Controller->addComponent(\'formSubscribe\', \'formSubscribe\', Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(334): Cms\\Classes\\Controller->initComponents()\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'contacts\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'contacts\')\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-12-22 18:29:44', '2020-12-22 18:29:44'),
(11, 'error', 'October\\Rain\\Exception\\SystemException: Class name is not registered for the component \"formSubscribe\". Check the component plugin. in C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\ComponentManager.php:204\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(1431): Cms\\Classes\\ComponentManager->makeComponent(\'formSubscribe\', Object(Cms5fe2573821454785251779_8673b9a62fb22d2d082fa715a65c8dd5Class), Array, false)\n#1 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(662): Cms\\Classes\\Controller->addComponent(\'formSubscribe\', \'formSubscribe\', Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(334): Cms\\Classes\\Controller->initComponents()\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'contacts\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'contacts\')\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-12-22 18:29:44', '2020-12-22 18:29:44'),
(12, 'error', 'October\\Rain\\Exception\\SystemException: Class name is not registered for the component \"formSubscribe\". Check the component plugin. in C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\ComponentManager.php:204\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(1431): Cms\\Classes\\ComponentManager->makeComponent(\'formSubscribe\', Object(Cms5fe2576af070f289495069_7929f9cf3c7aba2857007ecb147dfbcfClass), Array, false)\n#1 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(662): Cms\\Classes\\Controller->addComponent(\'formSubscribe\', \'formSubscribe\', Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(334): Cms\\Classes\\Controller->initComponents()\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'contacts\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'contacts\')\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-12-22 18:30:35', '2020-12-22 18:30:35'),
(13, 'error', 'October\\Rain\\Exception\\SystemException: Class name is not registered for the component \"formSubscribe\". Check the component plugin. in C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\ComponentManager.php:204\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(1431): Cms\\Classes\\ComponentManager->makeComponent(\'formSubscribe\', Object(Cms5fe2576af070f289495069_7929f9cf3c7aba2857007ecb147dfbcfClass), Array, false)\n#1 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(662): Cms\\Classes\\Controller->addComponent(\'formSubscribe\', \'formSubscribe\', Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(334): Cms\\Classes\\Controller->initComponents()\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'contacts\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'contacts\')\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-12-22 18:30:35', '2020-12-22 18:30:35');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(14, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"operator\" of value \"%\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/contact.htm\" at line 13. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php:285\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#9 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'contacts\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'contacts\')\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2020-12-22 18:33:35', '2020-12-22 18:33:35'),
(15, 'error', 'Twig\\Error\\SyntaxError: Unexpected character \"!\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/post.htm\" at line 4. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php:365\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(292): Twig\\Lexer->lexExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(186): Twig\\Lexer->lexVar()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio/my-fi...\')\n#9 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio/my-fi...\')\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', NULL, '2020-12-22 19:53:09', '2020-12-22 19:53:09'),
(16, 'error', 'Twig\\Error\\SyntaxError: Unexpected character \"!\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/post.htm\" at line 4. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php:365\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(292): Twig\\Lexer->lexExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(186): Twig\\Lexer->lexVar()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio/my-fi...\')\n#9 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio/my-fi...\')\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', NULL, '2020-12-22 19:53:53', '2020-12-22 19:53:53'),
(17, 'error', 'Twig\\Error\\SyntaxError: Unexpected character \"!\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/post.htm\" at line 4. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php:365\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(292): Twig\\Lexer->lexExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Lexer.php(186): Twig\\Lexer->lexVar()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio/my-fi...\')\n#9 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio/my-fi...\')\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', NULL, '2020-12-22 19:53:59', '2020-12-22 19:53:59'),
(18, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"operator\" of value \"%\" in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/post.htm\" at line 4. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php:285\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#4 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#9 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio/my-fi...\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio/my-fi...\')\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2020-12-22 19:55:51', '2020-12-22 19:55:51');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(19, 'error', 'ErrorException: Array to string conversion in C:\\xampp\\htdocs\\Portfolio\\storage\\cms\\twig\\33\\3338955a8892340db66cc409aa2c4f2962d1290eda913f4d85c556862825397a.php:65\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\storage\\cms\\twig\\33\\3338955a8892340db66cc409aa2c4f2962d1290eda913f4d85c556862825397a.php(65): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Array to string...\', \'C:\\\\xampp\\\\htdocs...\', 65, Array)\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_365e76204d164480e73b7f5f07aca4e25a95de2489f61451343379d5fcdd8c39->doDisplay(Array, Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#3 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(425): Twig\\Template->render(Array)\n#5 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio/my-fi...\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio/my-fi...\')\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Array to string conversion\") in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/post.htm\" at line 2. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(425): Twig\\Template->render(Array)\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio/my-fi...\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio/my-fi...\')\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-12-22 19:59:11', '2020-12-22 19:59:11'),
(20, 'error', 'RuntimeException: Failed to write cache file \"C:\\xampp\\htdocs\\Portfolio\\storage/cms/twig/2a/2a9b2ebf9f299aeb09c7584d7d9a720f90a943a066418efad49e47293a0ad20f.php\". in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Cache\\FilesystemCache.php:80\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(409): Twig\\Cache\\FilesystemCache->write(\'C:\\\\xampp\\\\htdocs...\', \'<?php\\n\\nuse Twig...\')\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'blogPosts\', Array, true)\n#4 C:\\xampp\\htdocs\\Portfolio\\storage\\cms\\twig\\f3\\f361ae64ceca19bccc52f966ab46f70deeb97a47265cfd9ff28bd0ee451b4e68.php(79): Cms\\Twig\\Extension->partialFunction(\'portfolio_conte...\', Array, true)\n#5 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_09de70fbe67f28b89d4c4e39c88ae24e21e16814f4642f694c8f67653273fd51->doDisplay(Array, Array)\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(425): Twig\\Template->render(Array)\n#9 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio\')\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Failed to write cache file \"C:\\xampp\\htdocs\\Portfolio\\storage/cms/twig/2a/2a9b2ebf9f299aeb09c7584d7d9a720f90a943a066418efad49e47293a0ad20f.php\".\") in \"C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/portfolio.htm\" at line 12. in C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\xampp\\htdocs\\Portfolio\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(425): Twig\\Template->render(Array)\n#3 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\Portfolio\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'portfolio\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'portfolio\')\n#6 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Portfolio\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\Portfolio\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Portfolio\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-12-22 20:54:12', '2020-12-22 20:54:12');

-- --------------------------------------------------------

--
-- Структура таблиці `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(3, '5fde89e58e0f9354352741.png', 'theme-preview.png', 265764, 'image/png', NULL, NULL, 'featured_images', '2', 'RainLab\\Blog\\Models\\Post', 1, 3, '2020-12-19 21:16:53', '2020-12-19 21:17:36'),
(4, '5fdeb60515ecc582048814.png', 'client.png', 1937, 'image/png', NULL, NULL, 'featured_images', '3', 'RainLab\\Blog\\Models\\Post', 1, 4, '2020-12-20 00:25:09', '2020-12-20 00:25:22'),
(5, '5fdeb8db3f4db818140553.png', 'Person.png', 31709, 'image/png', NULL, NULL, 'featured_images', '4', 'RainLab\\Blog\\Models\\Post', 1, 5, '2020-12-20 00:37:15', '2020-12-20 00:37:56');

-- --------------------------------------------------------

--
-- Структура таблиці `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2020-12-17 23:42:55', '2020-12-17 23:42:55'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2020-12-17 23:42:55', '2020-12-17 23:42:55');

-- --------------------------------------------------------

--
-- Структура таблиці `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_mail_partials`
--

INSERT INTO `system_mail_partials` (`id`, `name`, `code`, `content_html`, `content_text`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'header', '<tr>\n    <td class=\"header\">\n        {% if url %}\n            <a href=\"{{ url }}\">\n                {{ body }}\n            </a>\n        {% else %}\n            <span>\n                {{ body }}\n            </span>\n        {% endif %}\n    </td>\n</tr>', '*** {{ body|trim }} <{{ url }}>', 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(2, 'Footer', 'footer', '<tr>\n    <td>\n        <table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n            <tr>\n                <td class=\"content-cell\" align=\"center\">\n                    {{ body|md_safe }}\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>', '-------------------\n{{ body|trim }}', 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(3, 'Button', 'button', '<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td align=\"center\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                            <tr>\n                                <td>\n                                    <a href=\"{{ url }}\" class=\"button button-{{ type ?: \'primary\' }}\" target=\"_blank\">\n                                        {{ body }}\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }} <{{ url }}>', 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(4, 'Panel', 'panel', '<table class=\"panel break-all\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td class=\"panel-content\">\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td class=\"panel-item\">\n                        {{ body|md_safe }}\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(5, 'Table', 'table', '<div class=\"table\">\n    {{ body|md_safe }}\n</div>', '{{ body|trim }}', 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(6, 'Subcopy', 'subcopy', '<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '-----\n{{ body|trim }}', 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(7, 'Promotion', 'promotion', '<table class=\"promotion break-all\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29');

-- --------------------------------------------------------

--
-- Структура таблиці `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_mail_templates`
--

INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'rainlab.forum::mail.topic_reply', NULL, NULL, NULL, NULL, 1, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(2, 'rainlab.forum::mail.member_report', NULL, NULL, NULL, NULL, 1, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(3, 'rainlab.user::mail.activate', NULL, 'Activate a new user', NULL, NULL, 1, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(4, 'rainlab.user::mail.welcome', NULL, 'User confirmed their account', NULL, NULL, 1, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(5, 'rainlab.user::mail.restore', NULL, 'User requests a password reset', NULL, NULL, 1, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(6, 'rainlab.user::mail.new_user', NULL, 'Notify admins of a new sign up', NULL, NULL, 2, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(7, 'rainlab.user::mail.reactivate', NULL, 'User has reactivated their account', NULL, NULL, 1, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(8, 'rainlab.user::mail.invite', NULL, 'Invite a new user to the website', NULL, NULL, 1, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(13, 'backend::mail.invite', NULL, 'Invite new admin to the site', NULL, NULL, 2, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(14, 'backend::mail.restore', NULL, 'Reset an admin password', NULL, NULL, 2, 0, '2020-12-22 17:26:29', '2020-12-22 17:26:29'),
(15, 'martin.forms::mail.notification', NULL, NULL, NULL, NULL, 1, 0, '2020-12-22 18:48:26', '2020-12-22 18:48:26'),
(16, 'martin.forms::mail.autoresponse', NULL, NULL, NULL, NULL, 1, 0, '2020-12-22 18:48:26', '2020-12-22 18:48:26');

-- --------------------------------------------------------

--
-- Структура таблиці `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '\"09e97b374096a78701452e3faa8ceba1\"'),
(3, 'system', 'core', 'build', '\"471\"'),
(4, 'system', 'update', 'retry', '1608743548'),
(5, 'cms', 'theme', 'active', '\"portfolio\"'),
(6, 'system', 'theme', 'history', '{\"RainLab.Vanilla\":\"rainlab-vanilla\"}');

-- --------------------------------------------------------

--
-- Структура таблиці `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(2, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2020-12-19 21:01:19'),
(3, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2020-12-19 21:01:20'),
(4, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2020-12-19 21:01:20'),
(5, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2020-12-19 21:01:20'),
(6, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2020-12-19 21:01:20'),
(7, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2020-12-19 21:01:20'),
(8, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2020-12-19 21:01:20'),
(9, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2020-12-19 21:01:20'),
(10, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2020-12-19 21:01:20'),
(11, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2020-12-19 21:01:20'),
(12, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2020-12-19 21:01:20'),
(13, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2020-12-19 21:01:20'),
(14, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2020-12-19 21:01:20'),
(15, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2020-12-19 21:01:20'),
(16, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2020-12-19 21:01:20'),
(17, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2020-12-19 21:01:20'),
(18, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2020-12-19 21:01:20'),
(19, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2020-12-19 21:01:20'),
(20, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2020-12-19 21:01:20'),
(21, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2020-12-19 21:01:20'),
(22, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2020-12-19 21:01:20'),
(23, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2020-12-19 21:01:20'),
(24, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2020-12-19 21:01:20'),
(25, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2020-12-19 21:01:20'),
(26, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2020-12-19 21:01:20'),
(27, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2020-12-19 21:01:20'),
(28, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2020-12-19 21:01:20'),
(29, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2020-12-19 21:01:20'),
(30, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2020-12-19 21:01:20'),
(31, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2020-12-19 21:01:20'),
(32, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2020-12-19 21:01:20'),
(33, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2020-12-19 21:01:20'),
(34, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2020-12-19 21:01:20'),
(35, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2020-12-19 21:01:20'),
(36, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2020-12-19 21:01:20'),
(37, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2020-12-19 21:01:20'),
(38, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2020-12-19 21:01:20'),
(39, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2020-12-19 21:01:20'),
(40, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2020-12-19 21:01:20'),
(41, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2020-12-19 21:01:20'),
(42, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2020-12-19 21:01:20'),
(43, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2020-12-19 21:01:20'),
(44, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2020-12-19 21:01:20'),
(45, 'RainLab.Blog', 'script', '1.3.0', 'posts_add_metadata.php', '2020-12-19 21:01:20'),
(46, 'RainLab.Blog', 'comment', '1.3.0', 'Added metadata column for plugins to store data in', '2020-12-19 21:01:20'),
(47, 'RainLab.Blog', 'comment', '1.3.1', 'Fixed metadata column not being jsonable', '2020-12-19 21:01:20'),
(48, 'RainLab.Blog', 'comment', '1.3.2', 'Allow custom slug name for components, add 404 handling for missing blog posts, allow exporting of blog images.', '2020-12-19 21:01:20'),
(49, 'RainLab.Blog', 'comment', '1.3.3', 'Fixed \'excluded categories\' filter from being run when value is empty.', '2020-12-19 21:01:20'),
(50, 'RainLab.Blog', 'comment', '1.3.4', 'Allow post author to be specified. Improved translations.', '2020-12-19 21:01:20'),
(51, 'RainLab.Blog', 'comment', '1.3.5', 'Fixed missing user info from breaking initial seeder in migrations. Fixed a PostgreSQL issue with blog exports.', '2020-12-19 21:01:20'),
(52, 'RainLab.Blog', 'comment', '1.3.6', 'Improved French translations.', '2020-12-19 21:01:20'),
(53, 'RainLab.Blog', 'comment', '1.4.0', 'Stability improvements. Rollback custom slug names for components', '2020-12-19 21:01:20'),
(54, 'RainLab.Blog', 'comment', '1.4.1', 'Fixes potential security issue with unsafe Markdown. Allow blog bylines to be translated.', '2020-12-19 21:01:20'),
(55, 'RainLab.Blog', 'comment', '1.4.2', 'Fix 404 redirects for missing blog posts. Assign current category to the listed posts when using the Posts component on a page with the category parameter available.', '2020-12-19 21:01:20'),
(56, 'RainLab.Blog', 'comment', '1.4.3', 'Fixes incompatibility with locale switching when plugin is used in conjunction with the Translate plugin. Fixes undefined category error.', '2020-12-19 21:01:20'),
(57, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2020-12-19 21:01:20'),
(58, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2020-12-19 21:01:20'),
(59, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2020-12-19 21:01:20'),
(60, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2020-12-19 21:01:20'),
(61, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2020-12-19 21:01:20'),
(62, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2020-12-19 21:01:20'),
(63, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2020-12-19 21:01:20'),
(64, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2020-12-19 21:01:21'),
(65, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2020-12-19 21:01:21'),
(66, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2020-12-19 21:01:21'),
(67, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2020-12-19 21:01:21'),
(68, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2020-12-19 21:01:21'),
(69, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2020-12-19 21:01:21'),
(70, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2020-12-19 21:01:21'),
(71, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2020-12-19 21:01:21'),
(72, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2020-12-19 21:01:22'),
(73, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2020-12-19 21:01:22'),
(74, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2020-12-19 21:01:22'),
(75, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2020-12-19 21:01:22'),
(76, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2020-12-19 21:01:22'),
(77, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2020-12-19 21:01:22'),
(78, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2020-12-19 21:01:22'),
(79, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2020-12-19 21:01:22'),
(80, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2020-12-19 21:01:22'),
(81, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2020-12-19 21:01:22'),
(82, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2020-12-19 21:01:22'),
(83, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2020-12-19 21:01:22'),
(84, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2020-12-19 21:01:22'),
(85, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2020-12-19 21:01:22'),
(86, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2020-12-19 21:01:22'),
(87, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2020-12-19 21:01:22'),
(88, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2020-12-19 21:01:22'),
(89, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2020-12-19 21:01:22'),
(90, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2020-12-19 21:01:22'),
(91, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2020-12-19 21:01:22'),
(92, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2020-12-19 21:01:22'),
(93, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2020-12-19 21:01:22'),
(94, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2020-12-19 21:01:22'),
(95, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2020-12-19 21:01:22'),
(96, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2020-12-19 21:01:22'),
(97, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2020-12-19 21:01:22'),
(98, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2020-12-19 21:01:22'),
(99, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2020-12-19 21:01:22'),
(100, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2020-12-19 21:01:22'),
(101, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2020-12-19 21:01:22'),
(102, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2020-12-19 21:01:22'),
(103, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2020-12-19 21:01:22'),
(104, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2020-12-19 21:01:22'),
(105, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2020-12-19 21:01:22'),
(106, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2020-12-19 21:01:22'),
(107, 'RainLab.User', 'comment', '1.4.0', '!!! The Notifications tab in User settings has been removed.', '2020-12-19 21:01:22'),
(108, 'RainLab.User', 'comment', '1.4.1', 'Added support for user impersonation.', '2020-12-19 21:01:22'),
(109, 'RainLab.User', 'comment', '1.4.2', 'Fixes security bug in Password Reset component.', '2020-12-19 21:01:22'),
(110, 'RainLab.User', 'comment', '1.4.3', 'Fixes session handling for AJAX requests.', '2020-12-19 21:01:22'),
(111, 'RainLab.User', 'comment', '1.4.4', 'Fixes bug where impersonation touches the last seen timestamp.', '2020-12-19 21:01:22'),
(112, 'RainLab.User', 'comment', '1.4.5', 'Added token fallback process to Account / Reset Password components when parameter is missing.', '2020-12-19 21:01:22'),
(113, 'RainLab.User', 'comment', '1.4.6', 'Fixes Auth::register method signature mismatch with core OctoberCMS Auth library', '2020-12-19 21:01:22'),
(114, 'RainLab.User', 'comment', '1.4.7', 'Fixes redirect bug in Account component / Update translations and separate user and group management.', '2020-12-19 21:01:22'),
(115, 'RainLab.User', 'comment', '1.4.8', 'Fixes a bug where calling MailBlocker::removeBlock could remove all mail blocks for the user.', '2020-12-19 21:01:22'),
(116, 'RainLab.User', 'comment', '1.5.0', '!!! Required password length is now a minimum of 8 characters. Previous passwords will not be affected until the next password change.', '2020-12-19 21:01:22'),
(117, 'RainLab.User', 'script', '1.5.1', 'users_add_ip_address.php', '2020-12-19 21:01:22'),
(118, 'RainLab.User', 'comment', '1.5.1', 'User IP addresses are now logged. Introduce registration throttle.', '2020-12-19 21:01:22'),
(119, 'RainLab.User', 'comment', '1.5.2', 'Whitespace from usernames is now trimmed, allowed for username to be added to Reset Password mail templates.', '2020-12-19 21:01:22'),
(120, 'RainLab.User', 'comment', '1.5.3', 'Fixes a bug in the user update functionality if password is not changed. Added highlighting for banned users in user list.', '2020-12-19 21:01:22'),
(121, 'RainLab.User', 'comment', '1.5.4', 'Multiple translation improvements. Added view events to extend user preview and user listing toolbars.', '2020-12-19 21:01:22'),
(122, 'RainLab.Forum', 'script', '1.0.1', 'create_channels_table.php', '2020-12-19 21:01:22'),
(123, 'RainLab.Forum', 'script', '1.0.1', 'create_posts_table.php', '2020-12-19 21:01:23'),
(124, 'RainLab.Forum', 'script', '1.0.1', 'create_topics_table.php', '2020-12-19 21:01:23'),
(125, 'RainLab.Forum', 'script', '1.0.1', 'create_members_table.php', '2020-12-19 21:01:23'),
(126, 'RainLab.Forum', 'script', '1.0.1', 'seed_all_tables.php', '2020-12-19 21:01:23'),
(127, 'RainLab.Forum', 'comment', '1.0.1', 'First version of Forum', '2020-12-19 21:01:23'),
(128, 'RainLab.Forum', 'script', '1.0.2', 'create_topic_watches_table.php', '2020-12-19 21:01:23'),
(129, 'RainLab.Forum', 'comment', '1.0.2', 'Add unread flags to topics', '2020-12-19 21:01:23'),
(130, 'RainLab.Forum', 'script', '1.0.3', 'members_add_mod_and_ban.php', '2020-12-19 21:01:23'),
(131, 'RainLab.Forum', 'comment', '1.0.3', 'Users can now be made moderators or be banned', '2020-12-19 21:01:23'),
(132, 'RainLab.Forum', 'script', '1.0.4', 'channels_add_hidden_and_moderated.php', '2020-12-19 21:01:23'),
(133, 'RainLab.Forum', 'comment', '1.0.4', 'Channels can now be hidden or moderated', '2020-12-19 21:01:23'),
(134, 'RainLab.Forum', 'script', '1.0.5', 'add_embed_code.php', '2020-12-19 21:01:23'),
(135, 'RainLab.Forum', 'comment', '1.0.5', 'Introduced topic and channel embedding', '2020-12-19 21:01:23'),
(136, 'RainLab.Forum', 'script', '1.0.6', 'create_channel_watches_table.php', '2020-12-19 21:01:24'),
(137, 'RainLab.Forum', 'comment', '1.0.6', 'Add unread flags to channels', '2020-12-19 21:01:24'),
(138, 'RainLab.Forum', 'script', '1.0.7', 'create_topic_followers_table.php', '2020-12-19 21:01:24'),
(139, 'RainLab.Forum', 'comment', '1.0.7', 'Forum members can now follow topics', '2020-12-19 21:01:24'),
(140, 'RainLab.Forum', 'comment', '1.0.8', 'Added Channel name to the Topics component view', '2020-12-19 21:01:24'),
(141, 'RainLab.Forum', 'comment', '1.0.9', 'Updated the Settings page', '2020-12-19 21:01:24'),
(142, 'RainLab.Forum', 'comment', '1.0.10', 'Users can now report spammers who can be banned by moderators.', '2020-12-19 21:01:24'),
(143, 'RainLab.Forum', 'comment', '1.0.11', 'Users can now quote other posts.', '2020-12-19 21:01:24'),
(144, 'RainLab.Forum', 'comment', '1.0.12', 'Improve support for CDN asset hosting.', '2020-12-19 21:01:24'),
(145, 'RainLab.Forum', 'comment', '1.0.13', 'Fixes a bug where channels cannot be selected in the Embed component inspector.', '2020-12-19 21:01:24'),
(146, 'RainLab.Forum', 'comment', '1.0.14', 'Improve the pagination code used in the component default markup.', '2020-12-19 21:01:24'),
(147, 'RainLab.Forum', 'comment', '1.0.15', 'When a User is deleted, their Member profile and posts is also deleted.', '2020-12-19 21:01:24'),
(148, 'RainLab.Forum', 'comment', '1.0.16', 'Posting topics is now throttled allowing 3 new topics every 15 minutes.', '2020-12-19 21:01:24'),
(149, 'RainLab.Forum', 'comment', '1.0.17', 'Update channel reorder page to new system reordering feature.', '2020-12-19 21:01:24'),
(150, 'RainLab.Forum', 'comment', '1.0.18', 'Minor fix to embed topic component.', '2020-12-19 21:01:24'),
(151, 'RainLab.Forum', 'script', '1.0.19', 'update_timestamp_nullable.php', '2020-12-19 21:01:24'),
(152, 'RainLab.Forum', 'comment', '1.0.19', 'Database maintenance. Updated all timestamp columns to be nullable.', '2020-12-19 21:01:24'),
(153, 'RainLab.Forum', 'script', '1.1.0', 'drop_watches_tables.php', '2020-12-19 21:01:24'),
(154, 'RainLab.Forum', 'comment', '1.1.0', 'Major performance enhancements', '2020-12-19 21:01:24'),
(155, 'RainLab.Forum', 'comment', '1.1.1', 'Fixes bug throwing error when a forum topic has no posts.', '2020-12-19 21:01:24'),
(156, 'RainLab.Forum', 'comment', '1.1.2', 'Add button for administrators to purge all posts by a member.', '2020-12-19 21:01:24'),
(157, 'RainLab.Forum', 'script', '1.2.0', 'members_add_spam_guard.php', '2020-12-19 21:01:24'),
(158, 'RainLab.Forum', 'comment', '1.2.0', 'Added spam guarding features.', '2020-12-19 21:01:24'),
(159, 'RainLab.Forum', 'comment', '1.2.1', 'Made plugin compatible with PHP 7.3. Improved translations.', '2020-12-19 21:01:24'),
(160, 'RainLab.Forum', 'comment', '1.2.2', 'The default CSS can now be disabled for all components. Changed `getChannelSlugOptions` method in EmbedChannel component from protected to public.', '2020-12-19 21:01:24'),
(320, 'Martin.Forms', 'script', '1.0.0', 'create_records_table.php', '2020-12-22 18:16:57'),
(321, 'Martin.Forms', 'comment', '1.0.0', 'First version of Magic Forms', '2020-12-22 18:16:57'),
(322, 'Martin.Forms', 'comment', '1.0.1', 'Added CSRF protection', '2020-12-22 18:16:57'),
(323, 'Martin.Forms', 'comment', '1.1.0', 'Added reCAPTCHA', '2020-12-22 18:16:57'),
(324, 'Martin.Forms', 'comment', '1.1.1', 'Fix when using reCAPTCHA + allowed fields', '2020-12-22 18:16:57'),
(325, 'Martin.Forms', 'script', '1.1.2', 'add_group_field.php', '2020-12-22 18:16:57'),
(326, 'Martin.Forms', 'comment', '1.1.2', 'Filter forms records', '2020-12-22 18:16:57'),
(327, 'Martin.Forms', 'comment', '1.1.2', 'Search inside stored data', '2020-12-22 18:16:57'),
(328, 'Martin.Forms', 'comment', '1.1.2', 'Organize your forms on custom groups', '2020-12-22 18:16:57'),
(329, 'Martin.Forms', 'comment', '1.2.0', 'Export stored data in CSV format', '2020-12-22 18:16:57'),
(330, 'Martin.Forms', 'comment', '1.2.1', 'Auto-response email on form submit', '2020-12-22 18:16:57'),
(331, 'Martin.Forms', 'comment', '1.2.1', 'Added Turkish language', '2020-12-22 18:16:57'),
(332, 'Martin.Forms', 'comment', '1.2.2', 'Override notifications and auto-response email subjects', '2020-12-22 18:16:57'),
(333, 'Martin.Forms', 'comment', '1.2.3', 'New option to reset form after successfully submit', '2020-12-22 18:16:57'),
(334, 'Martin.Forms', 'comment', '1.2.3', 'Fixed Empty AJAX Form template', '2020-12-22 18:16:57'),
(335, 'Martin.Forms', 'comment', '1.2.3', 'Support for Translate plugin', '2020-12-22 18:16:57'),
(336, 'Martin.Forms', 'comment', '1.2.3', 'Added plugin documentation', '2020-12-22 18:16:57'),
(337, 'Martin.Forms', 'comment', '1.2.4', 'Added detailed reCAPTCHA help', '2020-12-22 18:16:57'),
(338, 'Martin.Forms', 'comment', '1.3.0', 'AJAX file uploads', '2020-12-22 18:16:57'),
(339, 'Martin.Forms', 'comment', '1.3.1', 'Added lang pt-br', '2020-12-22 18:16:57'),
(340, 'Martin.Forms', 'comment', '1.3.2', 'Fixed multiples reCAPTCHAs on same page', '2020-12-22 18:16:57'),
(341, 'Martin.Forms', 'comment', '1.3.3', 'Fixed record detail page when form data contains an array', '2020-12-22 18:16:57'),
(342, 'Martin.Forms', 'comment', '1.3.3', 'Updated documentations', '2020-12-22 18:16:57'),
(343, 'Martin.Forms', 'comment', '1.3.4', 'New \"Anonymize IP\" option', '2020-12-22 18:16:57'),
(344, 'Martin.Forms', 'comment', '1.3.5', 'New option \"Redirect on successful submit\"', '2020-12-22 18:16:57'),
(345, 'Martin.Forms', 'comment', '1.3.6', 'French translation', '2020-12-22 18:16:57'),
(346, 'Martin.Forms', 'comment', '1.3.6', 'Support Translate plugin on reCAPTCHA', '2020-12-22 18:16:57'),
(347, 'Martin.Forms', 'comment', '1.3.6', 'reCAPTCHA validation enhancements', '2020-12-22 18:16:57'),
(348, 'Martin.Forms', 'comment', '1.3.7', 'Displaying errors with fields (inline errors)', '2020-12-22 18:16:57'),
(349, 'Martin.Forms', 'comment', '1.3.7', 'Show uploads as list', '2020-12-22 18:16:57'),
(350, 'Martin.Forms', 'comment', '1.3.8', 'Fixed handling arrays (radio inputs) in notification email', '2020-12-22 18:16:57'),
(351, 'Martin.Forms', 'comment', '1.3.9', 'Use custom mail templates', '2020-12-22 18:16:57'),
(352, 'Martin.Forms', 'comment', '1.3.9', 'Execute custom JavaScript on form success or error', '2020-12-22 18:16:57'),
(353, 'Martin.Forms', 'comment', '1.4.0', 'Added Events (please, refer to docs) [thanks to therealkevinard]', '2020-12-22 18:16:57'),
(354, 'Martin.Forms', 'comment', '1.4.1', 'New option \"Reply To\"', '2020-12-22 18:16:57'),
(355, 'Martin.Forms', 'comment', '1.4.2', 'Escape HTML characters on the view records page [thanks to Andre]', '2020-12-22 18:16:57'),
(356, 'Martin.Forms', 'comment', '1.4.2', 'New option to sanitize form data (check security docs for more info)', '2020-12-22 18:16:57'),
(357, 'Martin.Forms', 'comment', '1.4.2', 'Added option to send blind carbon copy in notifications email', '2020-12-22 18:16:57'),
(358, 'Martin.Forms', 'script', '1.4.3', 'add_unread_field.php', '2020-12-22 18:16:57'),
(359, 'Martin.Forms', 'comment', '1.4.3', 'Fixes related to October Build 420', '2020-12-22 18:16:57'),
(360, 'Martin.Forms', 'comment', '1.4.3', 'Added \"Unread Records\" counter', '2020-12-22 18:16:57'),
(361, 'Martin.Forms', 'comment', '1.4.3', 'Fixed errors when only BCC addresses are supplied', '2020-12-22 18:16:57'),
(362, 'Martin.Forms', 'comment', '1.4.3', 'New setting \"hide navigation item\"', '2020-12-22 18:16:57'),
(363, 'Martin.Forms', 'comment', '1.4.4', 'Use custom partials for Success and Error messages', '2020-12-22 18:16:57'),
(364, 'Martin.Forms', 'comment', '1.4.4.1', 'Fix with notifications emails', '2020-12-22 18:16:57'),
(365, 'Martin.Forms', 'comment', '1.4.5', 'Mail class code refactoring', '2020-12-22 18:16:57'),
(366, 'Martin.Forms', 'comment', '1.4.5', 'Access submited data on auto-response email template', '2020-12-22 18:16:57'),
(367, 'Martin.Forms', 'comment', '1.4.5.1', 'Store form data without escaping unicode [thanks to panakour]', '2020-12-22 18:16:57'),
(368, 'Martin.Forms', 'comment', '1.4.6', 'New option to skip saving forms data on database.', '2020-12-22 18:16:57'),
(369, 'Martin.Forms', 'comment', '1.4.6', 'Possibility to change the text on the remove file popup [thanks to ShiroeSama]', '2020-12-22 18:16:57'),
(370, 'Martin.Forms', 'comment', '1.4.6.1', 'Changed database field from json to text to support MySQL 5.5', '2020-12-22 18:16:57'),
(371, 'Martin.Forms', 'comment', '1.4.7', 'you can use your form variables on notification mail subject [thanks to Alex360hd]', '2020-12-22 18:16:57'),
(372, 'Martin.Forms', 'comment', '1.4.7', 'fix custom subject on email template [Thanks to matteotrubini]', '2020-12-22 18:16:57'),
(373, 'Martin.Forms', 'comment', '1.4.7', 'fix email bug when not storing on db [Thanks JurekRaben]', '2020-12-22 18:16:57'),
(374, 'Martin.Forms', 'comment', '1.4.7', 'skip url redirect validation [Thanks to EleRam]', '2020-12-22 18:16:57'),
(375, 'Martin.Forms', 'comment', '1.4.8', 'added GDPR cleanup feature [thanks to Alex360hd]', '2020-12-22 18:16:57'),
(376, 'Martin.Forms', 'comment', '1.4.9', 'fix on replaceToken function when replacement is null [thanks to leonaze]', '2020-12-22 18:16:57'),
(377, 'Martin.Forms', 'comment', '1.4.9.1', 'fix a nullable type error on PHP 7.0', '2020-12-22 18:16:57'),
(378, 'Martin.Forms', 'comment', '1.4.9.2', 'bugfix when a form field array has more than 2 levels of depth', '2020-12-22 18:16:57'),
(379, 'Martin.Forms', 'comment', '1.4.10', 'improvements related to event functionality', '2020-12-22 18:16:57'),
(380, 'Martin.Forms', 'comment', '1.4.11', 'added Laravel custom attributes to form validation [thanks to geekfil]', '2020-12-22 18:16:57'),
(381, 'Martin.Forms', 'comment', '1.4.11', 'updated french translation [thanks to FelixINX]', '2020-12-22 18:16:57'),
(382, 'Martin.Forms', 'comment', '1.4.12', 'use form variables on auto-response mail subject [thanks to jiargei]', '2020-12-22 18:16:57'),
(383, 'Martin.Forms', 'comment', '1.4.13', 'pass an array with form errors to JavaScript [thanks to multiwebinc]', '2020-12-22 18:16:57'),
(384, 'Martin.Forms', 'comment', '1.4.14', 'fixed error with empty auto-response subject', '2020-12-22 18:16:57'),
(385, 'Martin.Forms', 'comment', '1.4.15', 'enhancements related to saving record and events [thanks to boxxroom]', '2020-12-22 18:16:57'),
(386, 'Martin.Forms', 'comment', '1.4.16', 'added chinese translation [thanks to everyx]', '2020-12-22 18:16:57'),
(387, 'Martin.Forms', 'comment', '1.4.17', 'allowing sanitize to work recursively [thanks to multiwebinc]', '2020-12-22 18:16:57'),
(388, 'Martin.Forms', 'comment', '1.4.18', 'export records enhancements [thanks to Fosphatic]', '2020-12-22 18:16:57'),
(389, 'Martin.Forms', 'comment', '1.4.18', 'recaptcha locale fix [thanks to MaTToX3]', '2020-12-22 18:16:57'),
(390, 'Martin.Forms', 'comment', '1.4.19', 'added russian translation [thanks to FlusherDock1]', '2020-12-22 18:16:57'),
(391, 'Martin.Forms', 'comment', '1.4.19', 'sort records by date fix [thanks to mjauvin]', '2020-12-22 18:16:57'),
(392, 'Martin.Forms', 'comment', '1.4.20', 'added invisible reCAPTCHA [thanks to mjauvin]', '2020-12-22 18:16:57'),
(393, 'Martin.Forms', 'comment', '1.4.20', 'new option to set custom date format on emails subject', '2020-12-22 18:16:57'),
(394, 'Martin.Forms', 'comment', '1.5.0', 'fixes related to October Build 469 [thanks to mjauvin]', '2020-12-22 18:16:57'),
(395, 'Martin.Forms', 'comment', '1.5.0', 'fix when CSRF check is disabled [thanks to rechik]', '2020-12-22 18:16:57'),
(396, 'Martin.Forms', 'comment', '1.5.0', 'php linting and cleanup', '2020-12-22 18:16:57'),
(397, 'Martin.Forms', 'comment', '1.5.1', 'email templates improvemenrs [thanks to mjauvin]', '2020-12-22 18:16:57'),
(398, 'Martin.Forms', 'comment', '1.5.1', 'added german translation [thanks to Fosphatic]', '2020-12-22 18:16:57'),
(399, 'Vdomah.BlogViews', 'script', '1.0.0', 'create_post_views_table.php', '2020-12-22 19:15:06'),
(400, 'Vdomah.BlogViews', 'comment', '1.0.0', 'First version of BlogViews', '2020-12-22 19:15:06'),
(401, 'Vdomah.BlogViews', 'comment', '1.0.1', 'Limit and link params fixed', '2020-12-22 19:15:06'),
(402, 'Vdomah.BlogViews', 'comment', '1.0.2', 'Added \'views\' dynamic property to Post model', '2020-12-22 19:15:06'),
(403, 'Vdomah.BlogViews', 'comment', '1.0.3', 'Improve the translation. Add MIT license. Pull request by gergo85', '2020-12-22 19:15:06'),
(404, 'Vdomah.BlogViews', 'comment', '1.0.4', 'Default value to 0 in getViewsAttribute (thanks to hambern)', '2020-12-22 19:15:06'),
(405, 'Vdomah.BlogViews', 'comment', '1.0.5', 'Add support for whatever slug url name parameter like {{ :slug_some_custom_url_parameter }}', '2020-12-22 19:15:06'),
(406, 'Vdomah.BlogViews', 'comment', '1.0.6', 'Ability to choose blog category for Popular posts', '2020-12-22 19:15:06'),
(407, 'Vdomah.BlogViews', 'comment', '1.0.7', 'Dynamic category slug url parameter. Only published posts in Popular component', '2020-12-22 19:15:06'),
(408, 'Vdomah.BlogViews', 'comment', '1.0.8', 'Fixed error using blogviews with sitemap: check if Controller instantiated before extend', '2020-12-22 19:15:06'),
(409, 'Vdomah.BlogViews', 'comment', '1.0.9', 'Get url parameters directly from Controller instance without component. Using Cookie instead of Session', '2020-12-22 19:15:06'),
(410, 'Vdomah.BlogViews', 'comment', '1.0.10', 'Fix bug when post is not found.', '2020-12-22 19:15:06'),
(411, 'Vdomah.BlogViews', 'comment', '1.0.11', 'Don\'t count web crawler bots visits.', '2020-12-22 19:15:06'),
(412, 'Vdomah.BlogViews', 'comment', '1.0.12', 'blogviews.before.track  added with trackPrevent and trackBot options.', '2020-12-22 19:15:06'),
(413, 'Vdomah.BlogViews', 'comment', '1.0.13', 'Both Cookie and Session methods available to prevent doubletracking', '2020-12-22 19:15:06'),
(414, 'Vdomah.BlogViews', 'comment', '1.0.14', 'Fix: bot detection if no HTTP_USER_AGENT is present in request', '2020-12-22 19:15:06'),
(415, 'SaurabhDhariwal.Comments', 'script', '1.0.1', 'builder_table_create_saurabhd_comments_posts.php', '2020-12-22 20:17:47'),
(416, 'SaurabhDhariwal.Comments', 'comment', '1.0.1', 'Initialize plugin.', '2020-12-22 20:17:47'),
(417, 'SaurabhDhariwal.Comments', 'script', '1.0.2', 'builder_table_update_saurabhd_comments_posts.php', '2020-12-22 20:17:47'),
(418, 'SaurabhDhariwal.Comments', 'comment', '1.0.2', 'Updated table saurabhdhariwal_comments_posts', '2020-12-22 20:17:47'),
(419, 'SaurabhDhariwal.Comments', 'script', '1.0.3', 'builder_table_update_saurabhd_comments_posts_2.php', '2020-12-22 20:17:48'),
(420, 'SaurabhDhariwal.Comments', 'comment', '1.0.3', 'Updated table saurabhdhariwal_comments_posts', '2020-12-22 20:17:48'),
(421, 'SaurabhDhariwal.Comments', 'script', '1.0.4', 'builder_table_update_saurabhd_comments_posts_3.php', '2020-12-22 20:17:48'),
(422, 'SaurabhDhariwal.Comments', 'comment', '1.0.4', 'Updated table saurabhdhariwal_comments_posts', '2020-12-22 20:17:48');

-- --------------------------------------------------------

--
-- Структура таблиці `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(2, 'RainLab.Blog', '1.4.3', '2020-12-19 21:01:20', 0, 0),
(3, 'RainLab.User', '1.5.4', '2020-12-19 21:01:22', 0, 0),
(4, 'RainLab.Forum', '1.2.2', '2020-12-19 21:01:24', 0, 0),
(8, 'Martin.Forms', '1.5.1', '2020-12-22 18:16:57', 0, 0),
(9, 'Vdomah.BlogViews', '1.0.14', '2020-12-22 19:15:06', 0, 0),
(10, 'SaurabhDhariwal.Comments', '1.0.4', '2020-12-22 20:17:48', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'janvince_smallcontactform_settings', '{\"form_css_class\":\"\",\"form_success_msg\":\"\",\"form_error_msg\":\"\",\"form_hide_after_success\":\"0\",\"form_use_placeholders\":\"1\",\"form_disable_browser_validation\":\"0\",\"form_allow_ajax\":\"1\",\"form_allow_confirm_msg\":\"1\",\"form_send_confirm_msg\":\"\",\"add_assets\":\"0\",\"add_css_assets\":\"0\",\"add_js_assets\":\"0\",\"send_btn_wrapper_css\":\"\",\"send_btn_css_class\":\"\",\"send_btn_text\":\"\",\"allow_redirect\":\"0\",\"redirect_url\":\"\",\"redirect_url_external\":\"0\",\"autoreply_email_field\":\"\",\"autoreply_name_field\":\"\",\"autoreply_message_field\":\"\",\"add_google_recaptcha\":\"0\",\"google_recaptcha_version\":\"v2checkbox\",\"google_recaptcha_site_key\":\"\",\"google_recaptcha_secret_key\":\"\",\"google_recaptcha_error_msg\":\"\",\"google_recaptcha_wrapper_css\":\"\",\"google_recaptcha_scripts_allow\":\"0\",\"google_recaptcha_locale_allow\":\"0\",\"add_antispam\":\"0\",\"antispam_delay\":null,\"antispam_delay_error_msg\":\"\",\"antispam_label\":\"\",\"antispam_error_msg\":\"\",\"add_ip_protection\":\"0\",\"add_ip_protection_count\":null,\"add_ip_protection_error_too_many_submits\":\"\",\"allow_email_queue\":\"0\",\"allow_autoreply\":\"0\",\"email_address_from\":\"\",\"email_address_from_name\":\"\",\"email_address_replyto\":\"\",\"email_subject\":\"\",\"email_template\":\"\",\"allow_notifications\":\"0\",\"notification_address_from_form\":\"0\",\"notification_address_to\":\"\",\"notification_template\":\"\",\"ga_success_event_allow\":\"0\",\"ga_success_event_category\":\"\",\"ga_success_event_action\":\"\",\"ga_success_event_label\":\"\",\"privacy_disable_messages_saving\":\"0\",\"form_fields\":[{\"name\":\"Name\",\"type\":\"text\",\"label\":\"Name\",\"field_custom_code\":\"\",\"field_custom_code_twig\":\"0\",\"field_custom_content\":\"\\r\\n\",\"field_styling\":\"0\",\"autofocus\":\"0\",\"wrapper_css\":\"\",\"label_css\":\"\",\"field_css\":\"\",\"field_validation\":\"0\",\"field_values\":[],\"validation\":[]},{\"name\":\"Email\",\"type\":\"email\",\"label\":\"Email\",\"field_custom_code\":\"\",\"field_custom_code_twig\":\"0\",\"field_custom_content\":\"\\r\\n\",\"field_styling\":\"0\",\"autofocus\":\"0\",\"wrapper_css\":\"\",\"label_css\":\"\",\"field_css\":\"\",\"field_validation\":\"0\",\"field_values\":[],\"validation\":[]}]}'),
(2, 'system_mail_settings', '{\"send_mode\":\"sendmail\",\"sender_name\":\"OctoberCMS\",\"sender_email\":\"example@gmail.com\",\"sendmail_path\":\"\\/usr\\/sbin\\/sendmail -bs\",\"smtp_address\":\"smtp.mailgun.org\",\"smtp_port\":\"587\",\"smtp_user\":\"\",\"smtp_password\":\"\",\"smtp_authorization\":\"0\",\"smtp_encryption\":\"tls\",\"mailgun_domain\":\"\",\"mailgun_secret\":\"\",\"mandrill_secret\":\"\",\"ses_key\":\"\",\"ses_secret\":\"\",\"ses_region\":\"\",\"sparkpost_secret\":\"\"}'),
(3, 'martin_forms_settings', '{\"global_hide_button\":\"0\",\"recaptcha_site_key\":\"\",\"recaptcha_secret_key\":\"\",\"gdpr_enable\":\"0\",\"gdpr_days\":\"120\"}'),
(4, 'saurabhdhariwal_comments_settings', '{\"allow_guest\":\"1\",\"status\":\"1\",\"recaptcha_enabled\":\"0\",\"site_key\":\"\",\"secret_key\":\"\"}');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0,
  `created_ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', 'Default group for guest users.', '2020-12-19 21:01:22', '2020-12-19 21:01:22'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2020-12-19 21:01:22', '2020-12-19 21:01:22');

-- --------------------------------------------------------

--
-- Структура таблиці `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `vdomah_blogviews_views`
--

CREATE TABLE `vdomah_blogviews_views` (
  `views` int(11) NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `vdomah_blogviews_views`
--

INSERT INTO `vdomah_blogviews_views` (`views`, `post_id`) VALUES
(1, 2);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Індекси таблиці `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Індекси таблиці `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Індекси таблиці `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Індекси таблиці `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Індекси таблиці `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Індекси таблиці `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Індекси таблиці `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Індекси таблиці `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Індекси таблиці `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Індекси таблиці `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Індекси таблиці `martin_forms_records`
--
ALTER TABLE `martin_forms_records`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Індекси таблиці `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Індекси таблиці `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Індекси таблиці `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_channels_slug_unique` (`slug`),
  ADD KEY `rainlab_forum_channels_parent_id_index` (`parent_id`),
  ADD KEY `rainlab_forum_channels_embed_code_index` (`embed_code`);

--
-- Індекси таблиці `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_members_user_id_index` (`user_id`),
  ADD KEY `rainlab_forum_members_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_members_count_topics_index` (`count_topics`),
  ADD KEY `rainlab_forum_members_last_active_at_index` (`last_active_at`),
  ADD KEY `rainlab_forum_members_is_moderator_index` (`is_moderator`),
  ADD KEY `rainlab_forum_members_is_approved_index` (`is_approved`);

--
-- Індекси таблиці `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_posts_topic_id_index` (`topic_id`),
  ADD KEY `rainlab_forum_posts_member_id_index` (`member_id`);

--
-- Індекси таблиці `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_topics_slug_unique` (`slug`),
  ADD KEY `sticky_post_time` (`is_sticky`,`last_post_at`),
  ADD KEY `rainlab_forum_topics_channel_id_index` (`channel_id`),
  ADD KEY `rainlab_forum_topics_start_member_id_index` (`start_member_id`),
  ADD KEY `rainlab_forum_topics_last_post_at_index` (`last_post_at`),
  ADD KEY `rainlab_forum_topics_is_private_index` (`is_private`),
  ADD KEY `rainlab_forum_topics_is_locked_index` (`is_locked`),
  ADD KEY `rainlab_forum_topics_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_topics_count_views_index` (`count_views`),
  ADD KEY `rainlab_forum_topics_embed_code_index` (`embed_code`);

--
-- Індекси таблиці `rainlab_forum_topic_followers`
--
ALTER TABLE `rainlab_forum_topic_followers`
  ADD PRIMARY KEY (`topic_id`,`member_id`);

--
-- Індекси таблиці `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Індекси таблиці `saurabhdhariwal_comments_posts`
--
ALTER TABLE `saurabhdhariwal_comments_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saurabhdhariwal_comments_posts_parent_id_foreign` (`parent_id`),
  ADD KEY `saurabhdhariwal_comments_posts_url_index` (`url`);

--
-- Індекси таблиці `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Індекси таблиці `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Індекси таблиці `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Індекси таблиці `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Індекси таблиці `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Індекси таблиці `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Індекси таблиці `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Індекси таблиці `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Індекси таблиці `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`);

--
-- Індекси таблиці `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Індекси таблиці `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Індекси таблиці `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- Індекси таблиці `vdomah_blogviews_views`
--
ALTER TABLE `vdomah_blogviews_views`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `vdomah_blogviews_views_post_id_index` (`post_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `martin_forms_records`
--
ALTER TABLE `martin_forms_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблиці `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `saurabhdhariwal_comments_posts`
--
ALTER TABLE `saurabhdhariwal_comments_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблиці `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблиці `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT для таблиці `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `saurabhdhariwal_comments_posts`
--
ALTER TABLE `saurabhdhariwal_comments_posts`
  ADD CONSTRAINT `saurabhdhariwal_comments_posts_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `saurabhdhariwal_comments_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
