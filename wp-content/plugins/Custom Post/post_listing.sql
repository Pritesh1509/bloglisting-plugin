-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 04:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-12-19 04:19:23', '2024-12-19 04:19:23', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-12-19 04:43:19', '2024-12-19 04:43:19', '', 0, 'http://localhost/goldmines/?p=1', 0, 'post', '', 1),
(2, 1, '2024-12-19 04:19:23', '2024-12-19 04:19:23', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/goldmines/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-12-19 04:19:23', '2024-12-19 04:19:23', '', 0, 'http://localhost/goldmines/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-12-19 04:19:23', '2024-12-19 04:19:23', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/goldmines.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-12-19 04:19:23', '2024-12-19 04:19:23', '', 0, 'http://localhost/goldmines/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-12-19 04:19:25', '2024-12-19 04:19:25', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-12-19 04:19:25', '2024-12-19 04:19:25', '', 0, 'http://localhost/goldmines/2024/12/19/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-12-19 04:19:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-12-19 04:19:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/goldmines/?p=5', 0, 'post', '', 0),
(7, 1, '2024-12-19 04:42:56', '2024-12-19 04:42:56', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'lorem ipsum data', '', 'publish', 'open', 'open', '', 'lorem-ipsum-data', '', '', '2024-12-19 04:44:42', '2024-12-19 04:44:42', '', 0, 'http://localhost/goldmines/?p=7', 0, 'post', '', 0),
(8, 1, '2024-12-19 04:42:14', '2024-12-19 04:42:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'dubline texas lorem text', '', 'publish', 'open', 'open', '', 'dubline-texas-lorem-text', '', '', '2024-12-19 04:44:34', '2024-12-19 04:44:34', '', 0, 'http://localhost/goldmines/?p=8', 0, 'post', '', 0),
(9, 1, '2024-12-19 04:41:16', '2024-12-19 04:41:16', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'texas sublin lorem text', '', 'publish', 'open', 'open', '', 'texas-sublin-lorem-text', '', '', '2024-12-19 04:44:25', '2024-12-19 04:44:25', '', 0, 'http://localhost/goldmines/?p=9', 0, 'post', '', 0),
(10, 1, '2024-12-19 04:42:07', '2024-12-19 04:42:07', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'ipsum text', '', 'publish', 'open', 'open', '', 'ipsum-text', '', '', '2024-12-19 04:44:17', '2024-12-19 04:44:17', '', 0, 'http://localhost/goldmines/?p=10', 0, 'post', '', 0),
(11, 1, '2024-12-19 04:41:09', '2024-12-19 04:41:09', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Lorem Text', '', 'publish', 'open', 'open', '', 'lorem-text', '', '', '2024-12-19 04:43:32', '2024-12-19 04:43:32', '', 0, 'http://localhost/goldmines/?p=11', 0, 'post', '', 0),
(12, 1, '2024-12-19 04:36:19', '2024-12-19 04:36:19', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Lorem Text', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-12-19 04:36:19', '2024-12-19 04:36:19', '', 11, 'http://localhost/goldmines/?p=12', 0, 'revision', '', 0),
(13, 1, '2024-12-19 04:36:36', '2024-12-19 04:36:36', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'ipsum text', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-12-19 04:36:36', '2024-12-19 04:36:36', '', 10, 'http://localhost/goldmines/?p=13', 0, 'revision', '', 0),
(14, 1, '2024-12-19 04:37:08', '2024-12-19 04:37:08', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'texas sublin lorem text', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2024-12-19 04:37:08', '2024-12-19 04:37:08', '', 9, 'http://localhost/goldmines/?p=14', 0, 'revision', '', 0),
(15, 1, '2024-12-19 04:37:22', '2024-12-19 04:37:22', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'dubline texas lorem text', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-12-19 04:37:22', '2024-12-19 04:37:22', '', 8, 'http://localhost/goldmines/?p=15', 0, 'revision', '', 0),
(16, 1, '2024-12-19 04:37:37', '2024-12-19 04:37:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'lorem ipsum data', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2024-12-19 04:37:37', '2024-12-19 04:37:37', '', 7, 'http://localhost/goldmines/?p=16', 0, 'revision', '', 0),
(17, 1, '2024-12-19 04:39:57', '2024-12-19 04:39:57', '', 'no-images', '', 'inherit', 'open', 'closed', '', 'no-images', '', '', '2024-12-19 04:39:57', '2024-12-19 04:39:57', '', 0, 'http://localhost/goldmines/wp-content/uploads/2024/12/no-images.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2024-12-19 04:40:27', '2024-12-19 04:40:27', '', 'no-image-leaf', '', 'inherit', 'open', 'closed', '', 'no-image-leaf', '', '', '2024-12-19 04:40:27', '2024-12-19 04:40:27', '', 0, 'http://localhost/goldmines/wp-content/uploads/2024/12/no-image-leaf.jpeg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2024-12-19 04:43:02', '2024-12-19 04:43:02', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2024-12-19 04:43:02', '2024-12-19 04:43:02', '', 0, 'http://localhost/goldmines/2024/12/19/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(20, 1, '2024-12-19 04:43:19', '2024-12-19 04:43:19', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-12-19 04:43:19', '2024-12-19 04:43:19', '', 1, 'http://localhost/goldmines/?p=20', 0, 'revision', '', 0),
(21, 1, '2024-12-19 04:46:52', '2024-12-19 04:46:52', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'lorem dummpy', '', 'publish', 'open', 'open', '', 'lorem-dummpy', '', '', '2024-12-19 04:46:56', '2024-12-19 04:46:56', '', 0, 'http://localhost/goldmines/?p=21', 0, 'post', '', 0),
(22, 1, '2024-12-19 04:46:46', '2024-12-19 04:46:46', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'lorem dummpy', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2024-12-19 04:46:46', '2024-12-19 04:46:46', '', 21, 'http://localhost/goldmines/?p=22', 0, 'revision', '', 0),
(23, 1, '2024-12-19 15:25:25', '2024-12-19 15:25:25', '[pixlogix_show_posts]', 'blog listing', '', 'publish', 'closed', 'closed', '', 'blog-listing', '', '', '2024-12-19 15:25:25', '2024-12-19 15:25:25', '', 0, 'http://localhost/goldmines/blog-listing/', 0, 'page', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;