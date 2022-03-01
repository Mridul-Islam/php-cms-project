-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 06:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(5) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Procedural PHP'),
(2, 'Laravel'),
(3, 'Vue.Js'),
(5, 'React'),
(18, 'Android'),
(41, 'Python'),
(42, 'Java'),
(43, 'IOS');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(5) NOT NULL,
  `comment_post_id` int(5) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL DEFAULT 'un-approved',
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(18, 15, 'shad', 'shad@gmai.com', 'Now this is working.. There are many variations of passages of Lorem Ipsum available, but the majority have suffere', 'un-approve', '2022-02-27'),
(19, 15, 'Aziz', 'Aziz@gmail.com', 'Now this is working.. There are many variations of passages of Lorem Ipsum available, but the majority have suffere', 'un-approve', '2022-02-27'),
(20, 17, '', '', '', 'un-approve', '2022-02-28'),
(21, 22, 'sgsdgdsg', 'sgsdgdsgds@gsgsdgdsg', '', 'un-approve', '2022-03-01'),
(22, 22, 'sgsdgdg', 'sgsdgdsg@sgdsgdg', '', 'un-approve', '2022-03-01'),
(23, 22, '', '', 'Hi ', 'un-approve', '2022-03-01'),
(24, 22, 'sgdg', 'sgdg@gsgdg', '', 'un-approve', '2022-03-01'),
(25, 22, 'shad', 'shad@gmai.com', 'Hi, This is Shad..', 'un-approve', '2022-03-01'),
(26, 22, 'Aziz', 'Aziz@gmail.com', '', 'un-approve', '2022-03-01'),
(27, 22, 'Srijon', 'srijon@gmail.com', '', 'un-approve', '2022-03-01'),
(28, 24, 'Arfan', 'arfan@gmail.com', 'Hi , This is Arfan and you did a excellent job..', 'un-approve', '2022-03-01'),
(29, 24, 'shad', 'shad@gmai.com', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', 'un-approve', '2022-03-01'),
(30, 28, 'Srijon', 'srijon@gmail.com', 'Hi from srijon.', 'un-approve', '2022-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(5) NOT NULL,
  `post_category_id` int(5) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(50) NOT NULL,
  `post_comment_count` int(5) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(4, 1, 'The PHP Beginner Course.', 'Mridul Islam', '2022-03-01', 'Black audi.jpg', 'This is a greate course for those persons who just started to Learn PHP. And i just love PHP. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 0, 'published'),
(14, 5, 'React Course', 'Mridul Islam', '2022-02-27', 'react_logo.png', 'React is a very popular front-end technology framework. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'React', 0, 'published'),
(15, 2, 'Laravel', 'Mridul Islam', '2022-02-27', 'blue audi.jpg', 'Now this is working.. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Laravel', 2, 'published'),
(17, 5, 'React Native', 'Showrab', '2022-02-28', 'react-native-logo.jpg', 'React Native is an open-source UI software framework created by Meta Platforms, Inc. It is used to develop applications for Android, Android TV, iOS, macOS, tvOS, Web, Windows and UWP by enabling developers to use the React framework along with native platform capabilities', 'React', 1, 'draft'),
(22, 3, 'ninja smoothies', 'Mridul Islam', '2022-02-28', 'vue.js-logo.png', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is availabl', 'ninja smoothies, vue.js', 7, 'published'),
(23, 2, 'cms', 'Mridul Islam', '2022-03-01', 'black rolls-royce.jpg', 'This project is created by Mridul Islam..', 'cms, laravel', 0, 'draft'),
(24, 2, 'Car House', 'Mridul Islam', '2022-03-01', 'Black audi.jpg', '', 'Car house, Laravel, car showroom', 2, 'published'),
(25, 18, 'Green Bangladesh', 'Mridul Islam', '2022-03-01', 'green-bangladesh.jpg', 'Bangladesh Charity Challenges - Land of unspoiled Nature Bangladesh creates an unforgettable impression of a land of peace, tranquility and enormous beauty; Bangladesh is the land of hundreds of serpentine rivers, crystal clear water lakes surrounded by evergreen hills, luxuriant tropical rain forests, beautiful cascades of green tea gardens.', 'Android, green Bangladesh', 0, 'published'),
(26, 1, 'Dhaka city', 'Mridul Islam', '2022-03-01', 'dhaka-city.jpg', 'Dhaka is the capital city of Bangladesh, in southern Asia. Set beside the Buriganga River, it’s at the center of national government, trade and culture. The 17th-century old city was the Mughal capital of Bengal, and many palaces and mosques remain. American architect Louis Khan’s National Parliament House complex typifies the huge, fast-growing modern metropolis', 'Dhaka, PHP', 0, 'published'),
(27, 2, 'Keypad Develper', 'Shad', '2022-03-01', 'asp-net-mvc-logo-.jpg', 'Laravel is very good to develop any web application..', 'Keypad, Laravel', 0, 'published'),
(28, 5, 'Something to test', 'Showrab', '2022-03-01', 'AngularJS_logo.svg.png', 'Dhaka is the capital city of Bangladesh, in southern Asia. Set beside the Buriganga River, it’s at the center of national government, trade and culture. The 17th-century old city was the Mughal capital of Bengal, and many palaces and mosques remain. American architect Louis Khan’s National Parliament House complex typifies the huge, fast-growing modern metropolis', 'Test', 1, 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_email`, `user_firstname`, `user_lastname`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'Mridul Islam', '12345', 'md.mridulislam12345@mridul.com', 'Mridul', 'Islam', 'IMG_2038.JPG', 'Admin', ''),
(2, 'Shad', '12345', 'ShadKhan@gmail.com', 'Shad', 'Khan', 'IMG_1828.JPG', 'Subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
