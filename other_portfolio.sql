-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 08:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `other_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE `about_me` (
  `id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `intro` varchar(300) NOT NULL,
  `details` text NOT NULL,
  `fb_link` varchar(100) NOT NULL,
  `twitter_link` varchar(100) NOT NULL,
  `linkedin_link` varchar(100) NOT NULL,
  `github_link` varchar(100) NOT NULL,
  `photo` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_me`
--

INSERT INTO `about_me` (`id`, `name`, `intro`, `details`, `fb_link`, `twitter_link`, `linkedin_link`, `github_link`, `photo`) VALUES
(1, 'Khalid Hasan Shafi', 'I am a professional web developer. I have the knowledge to develop websites and software By using Html || CSS || Bootstrap || JavaScript ||  PHP || Laravel || MySQL || C || C++ || Java.', 'I am a hardworking and ambitious individual with a great passion for computer programming. I am currently in my eighth semester (industrial training) of studying BSC in Computer Engineering at Dhaka International University (DIU).\r\n\r\nI am good at programming. I have a good knowledge in C, C++, JavaScript, PHP, Laravel, MySQL, SQL and Java. Professional at PHP-Laravel and MySQL.\r\n \r\nGive me the opportunity to spend my skills on the welfare of your company', 'https://www.facebook.com/khalidhasan.shafi.77', 'https://x.com/KhalidHasa37194', 'https://www.linkedin.com/in/khalid-hasan-shafi-ab4464246', 'https://github.com/Pix3lPirate', '9.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` int(1) NOT NULL,
  `small_text` text NOT NULL,
  `office` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `small_text`, `office`, `address`, `phone`, `email`) VALUES
(1, 'We are always here for you. Fell free to Contact.', 'Dhaka, Bangladesh', 'Shatarkul, Uttor Badda, Dhaka', '+8801774915189', 'khalidhasanshafi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `education_informations`
--

CREATE TABLE `education_informations` (
  `id` int(1) NOT NULL,
  `degree_name` varchar(100) NOT NULL,
  `year` int(5) NOT NULL,
  `progressbar` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_informations`
--

INSERT INTO `education_informations` (`id`, `degree_name`, `year`, `progressbar`) VALUES
(3, 'BSC in CSE', 2028, 78),
(4, 'H.S.C', 2022, 75),
(6, 'SSC', 2020, 85);

-- --------------------------------------------------------

--
-- Table structure for table `guest_messages`
--

CREATE TABLE `guest_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_messages`
--

INSERT INTO `guest_messages` (`id`, `name`, `email`, `message`, `status`) VALUES
(1, 'Rakib', 'r@gmail.com', 'ki bolbo ?!', 2),
(2, 'rAKIB', 'r@gmail.com', 'dkjfdjkd', 2),
(3, 'Rakib', 'r@g.c', 'djfkdjfkd', 2),
(4, 'djfkdjks', 'a@d.d', 'djkfdkjdk', 2),
(5, 'Rakib', 'a@gmail.com', 'Kobi Nirob!!', 2),
(6, 'djkfjdks', 'a@gmail.com', 'dkfjdkjkkkkkkkkkj', 2),
(7, 'dkjfkd', 'a@dd.cdd', 'dfjdjj', 2),
(8, 'lol', 'lol@gmail.com', 'Nothing', 2),
(9, 'localhost', 'localhost@gmail.com', 'This is a message', 2),
(10, 'Nipa', 'rumana@gmail.com', 'To make a portfolio website', 2);

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(3) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `photo`) VALUES
(23, '20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `my_best_works`
--

CREATE TABLE `my_best_works` (
  `id` int(2) NOT NULL,
  `works_name` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `photo` varchar(110) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_best_works`
--

INSERT INTO `my_best_works` (`id`, `works_name`, `catagory`, `photo`) VALUES
(4, 'Todo List', 'Admin Add page', 'admin_panel2.jpeg'),
(5, 'Result Management System', 'Admin Dashboard', 'admin_panel1.jpeg'),
(16, 'Luminary Loot', 'Online Shop', 'online_shop2.jpeg'),
(17, 'My Admin', 'Admin Panel', 'another_admin.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(3) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `some_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `some_text`) VALUES
(14, 'fas fa-file-code', 'PSD TO HTML', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution'),
(15, 'fab fa-php', 'Dynamic Website with php', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution'),
(16, 'fab fa-laravel', 'Dynamic Website with laravel', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution'),
(17, 'fab fa-instagram', 'Website development', 'I have develop your any kind of websites and web pages'),
(18, 'fab fa-laravel', 'Laravel web develop', 'Dynamic and artistic Laravel web application Develop.');

-- --------------------------------------------------------

--
-- Table structure for table `stastistics`
--

CREATE TABLE `stastistics` (
  `id` int(1) NOT NULL,
  `feature_item` int(11) NOT NULL,
  `active_products` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `clients` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stastistics`
--

INSERT INTO `stastistics` (`id`, `feature_item`, `active_products`, `experience`, `clients`) VALUES
(1, 5, 20, 6, 180);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(3) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_desegnation` varchar(100) NOT NULL,
  `customer_comment` text NOT NULL,
  `photo` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `customer_name`, `customer_desegnation`, `customer_comment`, `photo`) VALUES
(12, 'Rakib5', 'Manager at TOTO Company', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '12.jpg'),
(17, 'Khalid Hasan', 'Manager at TOTO Company', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '17.JPG'),
(19, 'Ratul', 'Toto company limited', 'I want to work with your team.', '19.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `photo` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `email`, `password`, `status`, `photo`) VALUES
(4, 'khalid hasan shafi', 'khalidhasanshafi@gmail.com', 'shafi23', 1, 'default.png'),
(5, 'Khalid Shafi', 'khs@gmail.com', '$2y$10$7/MDccfiBUfA9kU1VQ7eQOPKbyS3dzLBEslzdJF0T/kUXk3U1Qzli', 2, '5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_informations`
--
ALTER TABLE `education_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_messages`
--
ALTER TABLE `guest_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_best_works`
--
ALTER TABLE `my_best_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stastistics`
--
ALTER TABLE `stastistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_me`
--
ALTER TABLE `about_me`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education_informations`
--
ALTER TABLE `education_informations`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guest_messages`
--
ALTER TABLE `guest_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `my_best_works`
--
ALTER TABLE `my_best_works`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `stastistics`
--
ALTER TABLE `stastistics`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
