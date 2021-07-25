-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 02:54 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funcaba`
--

-- --------------------------------------------------------

--
-- Table structure for table `calls_action`
--

CREATE TABLE `calls_action` (
  `id` int(11) NOT NULL,
  `call_action_1_title` varchar(20) NOT NULL,
  `call_action_2_title` varchar(20) NOT NULL,
  `call_action_3_title` varchar(20) NOT NULL,
  `call_action_1_txt` text NOT NULL,
  `call_action_2_txt` text NOT NULL,
  `call_action_3_txt` text NOT NULL,
  `call_action_1_img` varchar(255) NOT NULL,
  `call_action_2_img` varchar(255) NOT NULL,
  `call_action_3_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_name`
--

CREATE TABLE `category_name` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_name`
--

INSERT INTO `category_name` (`id`, `category_name`) VALUES
(0, 'Nuevas Causas'),
(1, 'Eventos al aire libre');

-- --------------------------------------------------------

--
-- Table structure for table `cat_post`
--

CREATE TABLE `cat_post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `reply_to_comment_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personalization`
--

CREATE TABLE `personalization` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `feature_image_url` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `type` int(11) NOT NULL,
  `date_start` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_end` timestamp NULL DEFAULT NULL,
  `meta` float DEFAULT NULL,
  `recaudado` float DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `feature_image_url`, `slug`, `title`, `content`, `type`, `date_start`, `date_end`, `meta`, `recaudado`, `author_id`, `status`) VALUES
(6, 'images/blog/Design.png', '', 'Prueba desde administracion', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>\r\n', 1, '0000-00-00 00:00:00', NULL, 0, NULL, 7, 'aproved'),
(7, 'images/blog/efficiency.jpg', '', 'Ejemplo', '<p>Euclides siempre est&aacute; feliz.</p>\r\n', 1, '2021-07-07 00:50:13', NULL, 0, NULL, 6, 'aproved'),
(19, 'images/events/angel.png', '', 'Prueba de desarrollo', '<p>Test for Arati</p>\r\n', 2, '2021-07-15 02:42:00', NULL, NULL, NULL, 6, 'pending'),
(22, 'images/causes/banner-03.jpg', '', 'Prueba de causa', '<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n', 3, '2021-07-19 21:20:00', '2021-07-23 00:00:00', 20000, 0, 6, 'pending'),
(23, 'images/causes/guerit-logo.png', '', 'Prueba', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;</p>\r\n', 3, '2021-07-20 13:30:00', '2021-07-23 15:30:00', 30000, 10000, 6, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `post_types`
--

CREATE TABLE `post_types` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_types`
--

INSERT INTO `post_types` (`id`, `type`) VALUES
(1, 'historia'),
(2, 'evento'),
(3, 'causa');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `url_image_profile` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `firm_image_url` varchar(255) DEFAULT NULL,
  `excerpt` varchar(500) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'offline'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `url_image_profile`, `email`, `username`, `password`, `name`, `position`, `firm_image_url`, `excerpt`, `biography`, `role`, `status`) VALUES
(3, 'img/profile.jpg', 'camilobautista@gmail.com', 'camilo', 'camilo123*', 'Camilo Bautista', 'Fundador', NULL, '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tem', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', 3, 'offline'),
(6, NULL, 'soyreynald@outlook.com', 'reynald', 'c32385397c45d880b9f82eb46daae6dad94145c2', 'reynald ramirez', NULL, NULL, NULL, NULL, NULL, 'offline'),
(7, NULL, 'euclides@gmail.com', 'euclides', '12a447ea5d8d51ba71af472106e2f76a46ca7c21', 'Euclides', NULL, NULL, NULL, NULL, NULL, 'offline'),
(8, NULL, 'arati@gmail.com', 'arati', '531eef4eedd31e69fdfd111f3f9e130ccb8013f4', 'Arati Jadhavar', NULL, NULL, NULL, NULL, NULL, 'offline');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slogan` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `first_btn_txt` varchar(50) DEFAULT NULL,
  `first_btn_link` varchar(50) DEFAULT NULL,
  `second_btn_txt` varchar(50) DEFAULT NULL,
  `second_btn_link` varchar(50) DEFAULT NULL,
  `slide_img` varchar(40) NOT NULL,
  `slogan_animation` varchar(100) NOT NULL,
  `title_animation` varchar(100) NOT NULL,
  `description_animation` varchar(100) NOT NULL,
  `first_button_animation` varchar(100) NOT NULL,
  `second_button_animation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slogan`, `title`, `description`, `first_btn_txt`, `first_btn_link`, `second_btn_txt`, `second_btn_link`, `slide_img`, `slogan_animation`, `title_animation`, `description_animation`, `first_button_animation`, `second_button_animation`) VALUES
(1, 'Únete Hoy', 'Da un poco. Cambia mucho.', 'Ayudanos hoy porque mañana podrías ser tú quien necesite ayuda<br/>\r\nolvídate de lo que puedes obtener y mira lo que puedes dar.', 'Únete a nosotro', '#', 'Donar ahora', '#', 'slider-1.jpg', 'fadeInBottom', 'leFadeInRight sequence', 'fadeInTop', 'fadeInBottom', 'fadeInBottom'),
(2, '', 'Mejor vida para las personas', 'Ayudanos hoy porque mañana podrías ser tú quien necesite la ayuda', 'Únete a nosotro', '#', 'Donar ahora', '#', 'slider-2.jpg', '', 'fadeInTop', 'fadeInBottom', 'fadeInBottom', 'fadeInBottom'),
(3, 'Únetenos hoy', 'Juntos podemos hacer la diferencia', 'Ayudanos hoy porque mañana podrías ser tú quien necesite ayuda<br/>\r\nolvídate de lo que puedes obtener y mira lo que puedes dar.', 'Únete a nosotro', '#', 'Donar ahora', '#', 'slider-3.jpg', 'fadeInBottom', 'lePushReleaseFrom sequence', 'fadeInBottom', 'fadeInBottom', 'fadeInBottom'),
(4, 'Un dia a la vez', 'Handel esta dando vueltas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Únete a nosotros', '#', 'Donar ahora', '#', 'slider-2.jpg', 'fadeInBottom', 'lePushReleaseFrom sequence', 'fadeInBottom', 'fadeInBottom', 'fadeInBottom');

-- --------------------------------------------------------

--
-- Table structure for table `users_type`
--

CREATE TABLE `users_type` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_type`
--

INSERT INTO `users_type` (`id`, `role`) VALUES
(1, 'editor'),
(2, 'subscriber'),
(3, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_name`
--
ALTER TABLE `category_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `cat_post`
--
ALTER TABLE `cat_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `author_id` (`author_id`,`reply_to_comment_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`,`status`);

--
-- Indexes for table `post_types`
--
ALTER TABLE `post_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_type`
--
ALTER TABLE `users_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat_post`
--
ALTER TABLE `cat_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `post_types`
--
ALTER TABLE `post_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_type`
--
ALTER TABLE `users_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cat_post`
--
ALTER TABLE `cat_post`
  ADD CONSTRAINT `cat_post_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cat_post_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_name` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`type`) REFERENCES `post_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`role`) REFERENCES `users_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
