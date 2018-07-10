-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 10/07/2018 às 07:34
-- Versão do servidor: 5.5.57-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `railscms_development`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$11$XY.2bJWtMYj.SQ3vwkLz0uR08QC3E.b/MfHLmlXPqLGwJIndM5PIe', NULL, NULL, NULL, 3, '2018-07-10 05:35:13', '2018-07-10 04:58:22', '179.111.116.158', '179.111.116.158', '2018-07-10 01:11:48', '2018-07-10 05:35:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `position` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `show_title` tinyint(1) DEFAULT NULL,
  `class_suffix` varchar(255) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `blocks`
--

INSERT INTO `blocks` (`id`, `title`, `body`, `position`, `display`, `show_title`, `class_suffix`, `is_published`, `created_at`, `updated_at`, `order`) VALUES
(1, 'Block One', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu tincidunt ipsum, quis porta lorem. Morbi erat ligula, malesuada sed arcu at, sollicitudin tristique urna. Maecenas pellentesque nisi ac orci varius, imperdiet efficitur libero egestas.\r\n</p>', 'block', 'home', 1, '', 1, '2018-07-10 01:41:18', '2018-07-10 01:41:18', 1),
(2, 'Jumbotron Block', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu tincidunt ipsum, quis porta lorem.</p>\r\n<a target="_blank"> Read More</a>', 'jumbotron', 'home', 1, '', 1, '2018-07-10 06:02:47', '2018-07-10 06:17:45', 1),
(3, 'Block Two', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu tincidunt ipsum, quis porta lorem. Morbi erat ligula, malesuada sed arcu at, sollicitudin tristique urna. Maecenas pellentesque nisi ac orci varius, imperdiet efficitur libero egestas. </p>', 'block', 'home', 1, '', 1, '2018-07-10 06:12:42', '2018-07-10 06:17:14', 2),
(4, 'Block Three', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu tincidunt ipsum, quis porta lorem. Morbi erat ligula, malesuada sed arcu at, sollicitudin tristique urna. Maecenas pellentesque nisi ac orci varius, imperdiet efficitur libero egestas. </p>', 'block', 'home', 1, '', 1, '2018-07-10 06:12:58', '2018-07-10 06:17:21', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `body` text,
  `order` int(11) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `menu_display` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `pages`
--

INSERT INTO `pages` (`id`, `title`, `section_id`, `body`, `order`, `is_published`, `menu_display`, `created_at`, `updated_at`, `featured`) VALUES
(1, 'About Us', 1, '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu tincidunt ipsum, quis porta lorem. Morbi erat ligula, malesuada sed arcu at, sollicitudin tristique urna. Maecenas pellentesque nisi ac orci varius, imperdiet efficitur libero egestas. Nulla pulvinar risus massa, vitae ullamcorper orci facilisis sed. Donec egestas et diam cursus dignissim. Donec rhoncus vitae purus vitae pulvinar. Praesent a dolor tellus. Nunc vestibulum quis justo eu vulputate. Nam volutpat felis at eros hendrerit consectetur. Nam quis lorem at magna ultricies porta eu at elit. Aliquam erat volutpat. Maecenas non lacinia lorem. Aliquam vitae elementum nisi. Praesent odio augue, fringilla id dolor nec, eleifend pretium ex. Quisque id leo sem. Pellentesque mollis leo volutpat dolor venenatis, vitae blandit tellus euismod.\r\n</p>\r\n<p>\r\nFusce aliquam posuere libero, vitae eleifend purus accumsan ac. Vestibulum sit amet leo vitae augue mattis eleifend. In sagittis massa quis sapien porttitor viverra. Duis sed dui id lorem pharetra volutpat. Donec malesuada consectetur dui nec tempus. Aliquam vel mattis sem, quis imperdiet risus. Cras in tellus vitae nisi finibus lobortis a nec tellus. Nullam ornare metus in nibh feugiat accumsan. Donec ipsum sapien, pretium vitae massa et, cursus luctus orci. Cras ut dolor ut odio vehicula varius.\r\n</p>', 1, 1, 1, '2018-07-10 01:21:28', '2018-07-10 05:39:44', 0),
(2, 'Web Design', 2, '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu tincidunt ipsum, quis porta lorem. Morbi erat ligula, malesuada sed arcu at, sollicitudin tristique urna. Maecenas pellentesque nisi ac orci varius, imperdiet efficitur libero egestas. Nulla pulvinar risus massa, vitae ullamcorper orci facilisis sed. Donec egestas et diam cursus dignissim. Donec rhoncus vitae purus vitae pulvinar. Praesent a dolor tellus. Nunc vestibulum quis justo eu vulputate. Nam volutpat felis at eros hendrerit consectetur. Nam quis lorem at magna ultricies porta eu at elit. Aliquam erat volutpat. Maecenas non lacinia lorem. Aliquam vitae elementum nisi. Praesent odio augue, fringilla id dolor nec, eleifend pretium ex. Quisque id leo sem. Pellentesque mollis leo volutpat dolor venenatis, vitae blandit tellus euismod.\r\n</p>\r\n<p>\r\nFusce aliquam posuere libero, vitae eleifend purus accumsan ac. Vestibulum sit amet leo vitae augue mattis eleifend. In sagittis massa quis sapien porttitor viverra. Duis sed dui id lorem pharetra volutpat. Donec malesuada consectetur dui nec tempus. Aliquam vel mattis sem, quis imperdiet risus. Cras in tellus vitae nisi finibus lobortis a nec tellus. Nullam ornare metus in nibh feugiat accumsan. Donec ipsum sapien, pretium vitae massa et, cursus luctus orci. Cras ut dolor ut odio vehicula varius.\r\n</p>\r\n<p>\r\nIn hac habitasse platea dictumst. Etiam ultrices ultricies aliquet. Nunc eu dolor in arcu vehicula ultrices. Praesent laoreet nulla ut magna convallis viverra. Cras ac pellentesque odio, id aliquam leo. Maecenas non tincidunt ipsum. Nullam tempor malesuada nunc, ac sagittis quam egestas id. Aenean ac massa ultricies, tristique nisi eu, posuere nunc. Maecenas sodales dui eu mollis interdum. Sed vel volutpat libero. Sed nec convallis turpis, eu hendrerit quam. Donec malesuada eget quam id lacinia. Integer vel vestibulum dolor. Suspendisse potenti. In id sollicitudin sem. Curabitur tincidunt mauris tellus, quis scelerisque neque consectetur in.\r\n</p>', 2, 1, 1, '2018-07-10 01:24:28', '2018-07-10 01:24:28', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180709014418'),
('20180709014704'),
('20180709014927'),
('20180709093036'),
('20180709093042'),
('20180710013903'),
('20180710053408');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `sections`
--

INSERT INTO `sections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Company', '2018-07-10 01:12:25', '2018-07-10 01:12:25'),
(2, 'Services', '2018-07-10 01:24:01', '2018-07-10 01:24:01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
