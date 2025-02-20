-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 mai 2024 à 23:37
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ajax-project`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home & Kitchen');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 1,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `date`, `visible`, `category_id`) VALUES
(1, 'Top 10 Gadgets of 2024', 'As technology continues to evolve, so do the gadgets that shape our lives. Here are the top 10 gadgets of 2024 that are revolutionizing the way we live and work...', '2024-05-14 12:00:00', 1, 1),
(2, 'Fashion Trends for the Season', 'Discover the latest fashion trends for the season, from bold colors to statement accessories. Stay ahead of the curve with these must-have styles...', '2024-05-14 13:00:00', 1, 2),
(3, 'Book Recommendations for Spring Reading', 'Looking for your next great read? Check out our list of book recommendations for spring, featuring captivating novels, thought-provoking nonfiction, and much more...', '2024-05-14 14:00:00', 1, 3),
(4, 'Home Improvement Tips and Ideas', 'Transform your living space with these home improvement tips and ideas. From DIY projects to expert advice, discover how to make your home a more comfortable and stylish place to live...', '2024-05-14 15:00:00', 1, 4),
(5, 'How to Choose the Right Smartphone', 'With so many options on the market, choosing the right smartphone can be overwhelming. Learn how to navigate the features and specifications to find the perfect device for your needs...', '2024-05-14 16:00:00', 1, 1),
(6, 'The Art of Mixing and Matching Outfits', 'Unlock the secrets of mixing and matching outfits to create effortlessly chic looks for any occasion. From color coordination to layering techniques, discover how to elevate your style...', '2024-05-14 17:00:00', 1, 2),
(7, 'Exploring the Works of Classic Literature', 'Delve into the timeless works of classic literature and uncover the enduring themes and messages that continue to resonate with readers today...', '2024-05-14 18:00:00', 1, 3),
(8, 'Simple Tips for a Clutter-Free Home', 'Say goodbye to clutter and hello to a tidy, organized home with these simple tips and tricks. From decluttering strategies to storage solutions, reclaim your space and reduce stress...', '2024-05-14 19:00:00', 1, 4),
(9, 'Top 10 Gadgets of 2024', 'As technology continues to evolve, so do the gadgets that shape our lives. Here are the top 10 gadgets of 2024 that are revolutionizing the way we live and work...', '2024-05-14 12:00:00', 1, 1),
(10, 'Fashion Trends for the Season', 'Discover the latest fashion trends for the season, from bold colors to statement accessories. Stay ahead of the curve with these must-have styles...', '2024-05-14 13:00:00', 1, 2),
(11, 'Book Recommendations for Spring Reading', 'Looking for your next great read? Check out our list of book recommendations for spring, featuring captivating novels, thought-provoking nonfiction, and much more...', '2024-05-14 14:00:00', 1, 3),
(12, 'Home Improvement Tips and Ideas', 'Transform your living space with these home improvement tips and ideas. From DIY projects to expert advice, discover how to make your home a more comfortable and stylish place to live...', '2024-05-14 15:00:00', 1, 4),
(13, 'How to Choose the Right Smartphone', 'With so many options on the market, choosing the right smartphone can be overwhelming. Learn how to navigate the features and specifications to find the perfect device for your needs...', '2024-05-14 16:00:00', 1, 1),
(14, 'The Art of Mixing and Matching Outfits', 'Unlock the secrets of mixing and matching outfits to create effortlessly chic looks for any occasion. From color coordination to layering techniques, discover how to elevate your style...', '2024-05-14 17:00:00', 1, 2),
(15, 'Exploring the Works of Classic Literature', 'Delve into the timeless works of classic literature and uncover the enduring themes and messages that continue to resonate with readers today...', '2024-05-14 18:00:00', 1, 3),
(16, 'Simple Tips for a Clutter-Free Home', 'Say goodbye to clutter and hello to a tidy, organized home with these simple tips and tricks. From decluttering strategies to storage solutions, reclaim your space and reduce stress...', '2024-05-14 19:00:00', 1, 4),
(23, 'Test title', 'Test content', '2024-05-14 17:10:52', 1, 1),
(24, 'Title from js', 'Content from js', '2024-05-14 17:57:43', 1, 3),
(25, 'Title from js 2', 'Content from js 2', '2024-05-14 18:02:56', 1, 4),
(26, 'title', 'title5', '2024-05-15 21:28:32', 1, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
