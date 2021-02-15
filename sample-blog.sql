-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 04:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample-blog`
--
CREATE DATABASE IF NOT EXISTS `sample-blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sample-blog`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `description` tinytext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `type`, `month`, `date`, `year`) VALUES
(1, 'Generating Dummy Data', 'generating-dummy-data', 'Sed in elit eget risus finibus efficitur at sed quam. Duis augue sem, congue quis sagittis ut, vehicula ac mi. Sed blandit nisi quis dapibus rutrum. Nunc ut blandit massa, ut accumsan ligula. Cras tellus magna, vulputate quis risus vel, pellentesque molli', '<p>Suspendisse ornare dolor ut ante tincidunt tincidunt eget consequat risus. Mauris et ligula nec risus mollis sollicitudin. Integer nec tellus diam. Praesent justo quam, pretium non ex ut, sagittis scelerisque quam. Praesent vitae sapien ut felis facilisis sagittis id et risus. Fusce auctor diam nunc, non ullamcorper nulla pretium quis. Aenean tristique sem tristique, ornare nisl vitae, tempor risus. Ut dapibus neque risus, sit amet condimentum lorem condimentum quis. Donec malesuada, nulla quis aliquet commodo, mauris nisi lacinia felis, id ultrices erat lacus eget eros. Integer eu felis hendrerit, convallis nunc eget, consectetur sapien. Integer rutrum feugiat elit vitae consectetur. Cras vel mauris eu lacus porta congue. Duis vitae imperdiet lacus. Aliquam erat volutpat.</p>\r\n\r\n<p>Ut at malesuada lorem, sed sagittis eros. Praesent at pulvinar libero, nec dapibus risus. Mauris sodales mi vitae nibh congue sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam pellentesque, eros eu congue mattis, nulla libero faucibus metus, sit amet venenatis metus felis sollicitudin purus. Curabitur arcu urna, ultrices a ipsum id, consequat mattis justo. Nullam finibus tortor ante, eget blandit risus tristique cursus. In ac dapibus velit, in ultrices leo. Etiam porta velit suscipit mauris ultrices commodo. Suspendisse aliquam, lectus in ornare tempor, massa sem vulputate augue, vitae pharetra urna nisi ac magna. Phasellus dolor est, malesuada quis porttitor quis, sagittis at magna. Suspendisse potenti. Morbi in imperdiet erat, at auctor elit.</p>\r\n\r\n<p>In luctus, massa ut efficitur lobortis, justo neque ornare odio, eget lobortis mi felis gravida leo. Pellentesque viverra facilisis dolor, in imperdiet purus mattis eget. Donec porta dui ac nunc lobortis sollicitudin. Etiam diam quam, ullamcorper sit amet sagittis sed, rutrum et ipsum. Nullam dignissim sem nec nisl maximus, hendrerit congue mi accumsan. Donec sit amet sollicitudin est, vel placerat dolor. Aliquam erat volutpat.</p>\r\n\r\n<p>Pellentesque accumsan efficitur diam, non ultricies turpis viverra sed. Aenean quis cursus urna, ut ultrices nisi. Integer consectetur nisl libero, ut fermentum orci aliquet ut. Nulla facilisi. Phasellus et nisl nibh. Duis tempor consectetur turpis, ac malesuada dolor egestas a. Ut in velit pellentesque, efficitur ligula ut, consectetur elit. Fusce libero elit, malesuada vel lobortis ac, pretium rutrum eros. Aenean id iaculis augue. Integer nec fringilla est. Aenean nisl nunc, aliquet quis tempus vel, vestibulum in nisi. Sed ligula tortor, pellentesque vel tortor ut, dignissim blandit metus.</p>', 'post', 'February', '14th', '2021'),
(2, 'Hello World!', 'hello-world', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet luctus dui, nec consequat ligula. Etiam sit amet justo risus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam semper, ex vitae aliquet tempus,', '<p>Suspendisse ornare dolor ut ante tincidunt tincidunt eget consequat risus. Mauris et ligula nec risus mollis sollicitudin. Integer nec tellus diam. Praesent justo quam, pretium non ex ut, sagittis scelerisque quam. Praesent vitae sapien ut felis facilisis sagittis id et risus. Fusce auctor diam nunc, non ullamcorper nulla pretium quis. Aenean tristique sem tristique, ornare nisl vitae, tempor risus. Ut dapibus neque risus, sit amet condimentum lorem condimentum quis. Donec malesuada, nulla quis aliquet commodo, mauris nisi lacinia felis, id ultrices erat lacus eget eros. Integer eu felis hendrerit, convallis nunc eget, consectetur sapien. Integer rutrum feugiat elit vitae consectetur. Cras vel mauris eu lacus porta congue. Duis vitae imperdiet lacus. Aliquam erat volutpat.</p>', 'post', 'February', '14th', '2021'),
(3, 'Opening a 1 Terabyte Text File', 'opening-1tb', 'Sed in elit eget risus finibus efficitur at sed quam. Duis augue sem, congue quis sagittis ut, vehicula ac mi. Sed blandit nisi quis dapibus rutrum. Nunc ut blandit massa, ut accumsan ligula. Cras tellus magna, vulputate quis risus vel, pellentesque molli', '<p>Suspendisse ornare dolor ut ante tincidunt tincidunt eget consequat risus. Mauris et ligula nec risus mollis sollicitudin. Integer nec tellus diam. Praesent justo quam, pretium non ex ut, sagittis scelerisque quam. Praesent vitae sapien ut felis facilisis sagittis id et risus. Fusce auctor diam nunc, non ullamcorper nulla pretium quis. Aenean tristique sem tristique, ornare nisl vitae, tempor risus. Ut dapibus neque risus, sit amet condimentum lorem condimentum quis. Donec malesuada, nulla quis aliquet commodo, mauris nisi lacinia felis, id ultrices erat lacus eget eros. Integer eu felis hendrerit, convallis nunc eget, consectetur sapien. Integer rutrum feugiat elit vitae consectetur. Cras vel mauris eu lacus porta congue. Duis vitae imperdiet lacus. Aliquam erat volutpat.</p>', 'post', 'February', '14th', '2021'),
(4, 'Sample Blog Home', 'home', '', '', 'page', 'February', '14th', '2021'),
(5, 'About Sample Blog', 'about', '', '<p>Suspendisse ornare dolor ut ante tincidunt tincidunt eget consequat risus. Mauris et ligula nec risus mollis sollicitudin. Integer nec tellus diam. Praesent justo quam, pretium non ex ut, sagittis scelerisque quam. Praesent vitae sapien ut felis facilisis sagittis id et risus. Fusce auctor diam nunc, non ullamcorper nulla pretium quis. Aenean tristique sem tristique, ornare nisl vitae, tempor risus. Ut dapibus neque risus, sit amet condimentum lorem condimentum quis. Donec malesuada, nulla quis aliquet commodo, mauris nisi lacinia felis, id ultrices erat lacus eget eros. Integer eu felis hendrerit, convallis nunc eget, consectetur sapien. Integer rutrum feugiat elit vitae consectetur. Cras vel mauris eu lacus porta congue. Duis vitae imperdiet lacus. Aliquam erat volutpat.</p>\r\n\r\n<p>Ut at malesuada lorem, sed sagittis eros. Praesent at pulvinar libero, nec dapibus risus. Mauris sodales mi vitae nibh congue sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam pellentesque, eros eu congue mattis, nulla libero faucibus metus, sit amet venenatis metus felis sollicitudin purus. Curabitur arcu urna, ultrices a ipsum id, consequat mattis justo. Nullam finibus tortor ante, eget blandit risus tristique cursus. In ac dapibus velit, in ultrices leo. Etiam porta velit suscipit mauris ultrices commodo. Suspendisse aliquam, lectus in ornare tempor, massa sem vulputate augue, vitae pharetra urna nisi ac magna. Phasellus dolor est, malesuada quis porttitor quis, sagittis at magna. Suspendisse potenti. Morbi in imperdiet erat, at auctor elit.</p>\r\n\r\n<p>In luctus, massa ut efficitur lobortis, justo neque ornare odio, eget lobortis mi felis gravida leo. Pellentesque viverra facilisis dolor, in imperdiet purus mattis eget. Donec porta dui ac nunc lobortis sollicitudin. Etiam diam quam, ullamcorper sit amet sagittis sed, rutrum et ipsum. Nullam dignissim sem nec nisl maximus, hendrerit congue mi accumsan. Donec sit amet sollicitudin est, vel placerat dolor. Aliquam erat volutpat.</p>\r\n\r\n<p>Pellentesque accumsan efficitur diam, non ultricies turpis viverra sed. Aenean quis cursus urna, ut ultrices nisi. Integer consectetur nisl libero, ut fermentum orci aliquet ut. Nulla facilisi. Phasellus et nisl nibh. Duis tempor consectetur turpis, ac malesuada dolor egestas a. Ut in velit pellentesque, efficitur ligula ut, consectetur elit. Fusce libero elit, malesuada vel lobortis ac, pretium rutrum eros. Aenean id iaculis augue. Integer nec fringilla est. Aenean nisl nunc, aliquet quis tempus vel, vestibulum in nisi. Sed ligula tortor, pellentesque vel tortor ut, dignissim blandit metus.</p>', 'page', 'February', '14th', '2021'),
(6, 'Contact Us', 'contact', '', '', 'page', 'February', '14th', '2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
