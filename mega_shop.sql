-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 12:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mega_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `line1`, `line2`, `city`, `state`, `country`, `phone`, `pincode`, `user_id`) VALUES
(1, 'Test Address', 'Test Address', 'New Delhi', 'Delhi', 'India', '9855698981', 110045, 1),
(2, 'Test Address 2', 'Gollahalli, Electronic City', 'Bangalore', 'Karnataka', 'India', '9855698981', 560100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Music'),
(2, 'Electronic and Gadgets'),
(3, 'Cars and Vehicles'),
(4, 'Foods and Drinks'),
(5, 'Games and Fitness');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(6, 2),
(42, 2),
(43, 2),
(44, 2),
(63, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(4, 7, 4, 1),
(6, 8, 5, 1),
(45, 39, 1, 3),
(49, 40, 1, 2),
(54, 42, 1, 2),
(59, 43, 1, 2),
(62, 44, 1, 2),
(66, 52, 4, 1),
(67, 53, 7, 1),
(68, 54, 1, 1),
(69, 55, 3, 6),
(70, 56, 1, 1),
(71, 56, 4, 1),
(72, 56, 7, 1),
(73, 56, 6, 1),
(74, 57, 2, 1),
(75, 57, 3, 1),
(76, 58, 3, 1),
(77, 58, 2, 1),
(78, 59, 2, 1),
(79, 59, 3, 1),
(80, 60, 2, 1),
(81, 60, 3, 1),
(82, 61, 2, 1),
(83, 61, 3, 1),
(84, 62, 1, 1),
(85, 62, 4, 1),
(86, 63, 1, 2),
(90, 64, 1, 1),
(91, 64, 2, 1),
(92, 65, 2, 1),
(93, 65, 3, 1),
(94, 66, 2, 1),
(95, 67, 3, 2),
(96, 67, 2, 3),
(97, 68, 8, 2),
(98, 68, 7, 1),
(99, 69, 5, 2),
(100, 69, 6, 1),
(101, 70, 2, 1),
(102, 70, 3, 1),
(103, 71, 2, 1),
(104, 71, 1, 2),
(105, 71, 4, 6),
(106, 71, 3, 3),
(107, 72, 1, 1),
(108, 72, 3, 1),
(109, 73, 6, 2),
(110, 73, 4, 1),
(111, 74, 5, 1),
(112, 75, 6, 1),
(113, 76, 2, 1),
(114, 77, 2, 1),
(115, 77, 3, 1),
(116, 78, 1, 1),
(117, 78, 2, 1),
(118, 79, 6, 2),
(119, 79, 8, 1),
(120, 79, 7, 1),
(121, 80, 1, 1),
(122, 80, 2, 3),
(123, 81, 4, 3),
(124, 81, 2, 6),
(125, 81, 3, 6),
(126, 82, 2, 1),
(127, 82, 3, 1),
(128, 83, 5, 1),
(129, 85, 3, 3),
(130, 85, 6, 4),
(131, 85, 4, 1),
(132, 86, 2, 1),
(133, 87, 4, 3),
(134, 87, 6, 1),
(135, 89, 7, 4),
(136, 89, 4, 2),
(137, 89, 5, 3),
(138, 89, 6, 8),
(139, 90, 4, 4),
(140, 91, 2, 1),
(141, 93, 2, 1),
(142, 93, 3, 1),
(143, 94, 2, 1),
(144, 94, 3, 3),
(145, 95, 5, 1),
(146, 95, 3, 1),
(147, 95, 2, 1),
(148, 96, 2, 8),
(149, 96, 4, 1),
(150, 96, 3, 1),
(151, 97, 6, 1),
(152, 97, 5, 1),
(153, 98, 3, 6),
(154, 98, 4, 3),
(155, 99, 2, 14),
(156, 99, 5, 2),
(157, 100, 2, 5),
(158, 101, 3, 1),
(159, 102, 3, 3),
(160, 103, 2, 1),
(161, 103, 4, 3),
(162, 104, 1, 2),
(166, 105, 1, 2),
(171, 106, 1, 2),
(174, 107, 1, 2),
(178, 108, 2, 1),
(179, 109, 2, 1),
(180, 110, 5, 1),
(181, 110, 4, 1),
(182, 111, 6, 4),
(183, 111, 7, 1),
(184, 112, 5, 1),
(185, 112, 2, 1),
(186, 112, 3, 1),
(187, 113, 2, 1),
(188, 114, 3, 1),
(189, 115, 2, 1),
(190, 115, 3, 1),
(191, 116, 3, 1),
(192, 116, 5, 6),
(193, 117, 4, 1),
(194, 117, 5, 1),
(195, 118, 2, 1),
(196, 119, 3, 1),
(197, 120, 1, 2),
(201, 121, 3, 1),
(202, 122, 3, 1),
(203, 123, 3, 1),
(204, 124, 2, 3),
(205, 124, 3, 1),
(206, 125, 5, 1),
(207, 125, 6, 1),
(208, 126, 3, 2),
(209, 126, 10, 1),
(210, 126, 2, 1),
(211, 126, 1, 5),
(212, 127, 3, 1),
(213, 128, 2, 1),
(214, 129, 3, 1),
(215, 130, 2, 1),
(216, 130, 3, 1),
(217, 130, 5, 1),
(218, 131, 5, 3),
(219, 131, 4, 4),
(220, 132, 2, 1),
(221, 133, 1, 1),
(222, 134, 2, 1),
(223, 135, 1, 1),
(224, 136, 2, 1),
(225, 137, 7, 4),
(226, 138, 1, 2),
(227, 139, 3, 5),
(228, 140, 2, 3),
(229, 140, 5, 2),
(230, 140, 3, 4),
(231, 141, 3, 1),
(232, 141, 2, 1),
(233, 142, 1, 1),
(234, 143, 1, 1),
(235, 144, 2, 1),
(236, 145, 2, 5),
(237, 146, 2, 1),
(238, 147, 3, 5),
(239, 148, 2, 1),
(240, 149, 3, 1),
(241, 150, 5, 5),
(242, 151, 4, 1),
(243, 152, 2, 4),
(244, 153, 4, 5),
(245, 154, 2, 5),
(246, 155, 8, 4),
(247, 156, 1, 4),
(248, 157, 2, 1),
(249, 158, 2, 1),
(250, 159, 2, 4),
(251, 160, 3, 1),
(252, 161, 3, 6),
(253, 161, 2, 7),
(254, 162, 2, 1),
(255, 162, 1, 1),
(256, 163, 1, 6),
(257, 164, 1, 14),
(258, 165, 2, 3),
(259, 165, 3, 1),
(260, 166, 2, 4),
(261, 167, 3, 2),
(262, 167, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'Fender Telecaster', 'https://media.sketchfab.com/models/f2b583f97def4b1d954bda871f65eaf2/thumbnails/c80f2bdda96b4a56aab98528e5416cdd/2df6508c89614031a782d618cdadb058.jpeg', 'https://sketchfab.com/models/f2b583f97def4b1d954bda871f65eaf2/embed', 'Acoustic Guitars 38 inches with Truss Rod Fingerboard:ABS\r\nKnobe:Open Guitar\r\nEdge:Draw Line\r\nFinish: Matt\r\nWith Truss Rod', 375, 64, 'Music', 1),
(2, 'Apple AirPods Pro', 'https://media.sketchfab.com/models/d670b14fcb044b928ab7b5f57e13ec2f/thumbnails/6f585c8714f9400da0de8b3df8114432/cdeb25bde7414ee5a2896fcd1f3aea69.jpeg', 'https://sketchfab.com/models/d670b14fcb044b928ab7b5f57e13ec2f/embed', 'Driven by the custom Apple W1 chip, AirPods use optical sensors and a motion accelerometer to detect when they\'re in your ears. Whether you\'re using both AirPods or just one, the W1 chip automatically routes the audio and engages the microphone.', 700, 65, 'Electronics', 2),
(3, 'Cartoon Car Kobra', 'https://media.sketchfab.com/models/3ca98253a8774248b15e33047edd9364/thumbnails/4b2b6544c0b049b19150ff503bf993f5/86060ae417794946863d4f6960fcb60e.jpeg', 'https://sketchfab.com/models/3ca98253a8774248b15e33047edd9364/embed', 'Lightning Fast Cartoon R/C Race Car for Toddlers and Children. Removable Race Car Driver Action Figure\r\nHonking Sounds, Music and Flashing LED Headlights (Can be turned on/off). 2 Channels: forward, reverse left.\r\nMade of high-quality non-toxic plastic. Safe and durable. Recommended for low-carpet or tile floors.', 250, 34, 'Cars and Vehicles', 3),
(4, 'Pilatus PC-7 Mk-I SAFRedWhite', 'https://media.sketchfab.com/models/6f2ea84ade754834a2f74aa9d2f2c311/thumbnails/6d63a8e68cb548caa2a1ae5f7752516b/90456c797112409b83443fa294eb595a.jpeg', 'https://sketchfab.com/models/6f2ea84ade754834a2f74aa9d2f2c311/embed', 'Made of high-quality non-toxic plastic. Safe and durable. Recommended for low-carpet or tile floors.\r\nRequires 5 x 1.5V “AA” size batteries. For ages 18 months and up.\r\nNOTE: This R/C product comes in 49 MHz frequency and may interfere other 49 MHz frequency R/C radio-controlled products if played simultaneously.', 2340, 68, 'Cars and Vehicles', 3),
(5, 'DualSense 5 PS5 Controller', 'https://media.sketchfab.com/models/49138c28de334c84955719ffcb4e7aab/thumbnails/75128d37972248998836ee86fed8715d/8682fe7776c64bde86ea825e28472fbd.jpeg', 'https://sketchfab.com/models/49138c28de334c84955719ffcb4e7aab/embed', 'PlayStation invites you to a digital showcase of extraordinary games coming to PS5 culminating in the official unveiling of the highly anticipated PlayStation 5 console', 2800, 71, 'Electronics', 2),
(6, 'Skateboard', 'https://media.sketchfab.com/models/d057e3e430824fe9bb302396b6e6fe5c/thumbnails/8b118ab181d54286bc3d516830c8442f/26d5e13f2b6f40d5b9e0699c1eecf2b0.jpeg', 'https://sketchfab.com/models/d057e3e430824fe9bb302396b6e6fe5c/embed', '9-Ply laminated hardwood with double kick tail and grip tape\r\n5\" Aluminum Trucks\r\n50mm x 30mm Injection PU wheels\r\nBevo Silver 5 Race Rated Bearings', 900, 0, 'Electronics', 2),
(7, 'Headphones', 'https://media.sketchfab.com/models/9cb17a119aec4bb78e408c0eac670886/thumbnails/183301c035584ceb844534c693612143/dc858e771a8d4885832fea70de919ec8.jpeg', 'https://sketchfab.com/models/9cb17a119aec4bb78e408c0eac670886/embed', '30 millimeter drivers for rich, full frequency response\r\nLightweight and comfortable on ear design\r\nSwivel design for portability\r\n47 ¼ inch (1.2 meter) tangle free, Y type cord', 1500, 91, 'Electronics', 2),
(8, 'Hershel Little America', 'https://media.sketchfab.com/models/f4d7a0ed8af2453e9adc632278c9aa50/thumbnails/a7de42c15dfc4586bcf75eb69024af6d/a376d84d310d4cab878b3604d1e5f917.jpeg', 'https://sketchfab.com/models/f4d7a0ed8af2453e9adc632278c9aa50/embed', 'High Gloss is a specially developed lip gloss with special pearl pigments based on Mica providing the lips with extraordinary radiance. High Gloss is available in a range of vivid shades for the modern look.Gift pack assortment has a variety of vehicles to keep kids entertained for hours!\r\nContains 1 exclusive vehicle with decos you can\'t find anywhere else in the line!\r\n9 stunning cars come in each set!\r\nCollect all the sets and showcase the ultimate fleet (each sold separately)!', 200, 96, 'Cars and Vehicles', 3),
(9, 'Dumbbells and Roll Mat set', 'https://media.sketchfab.com/models/806df434f4cd4e4ebdf31a26d74ac6e6/thumbnails/c5797519a3ee48c7804856016fc2bebc/e08b5c9e204644eeadeb0ebdd2fa33d2.jpeg', 'https://sketchfab.com/models/806df434f4cd4e4ebdf31a26d74ac6e6/embed', 'Versatile: Dumbbells offer the ability to target specific muscle groups or get a full body workout\r\nConstruction: Iron core made from ASTM A48 Grade 20 grey iron then precision dipped in 3 millimeters of neoprene for safety and comfort\r\nFeatures: Original Hex Shaped heads prevent rolling; The medium diameter handle provides essential grip and security during use; Neoprene coating is durable and protective\r\nFunctional: Perfect for training individual muscle groups or major muscle groups, HIIT training and walking', 749, 100, 'Games and Fitness', 5),
(10, 'Bonzini Foosball Table', 'https://media.sketchfab.com/models/7fe734b1a5f44aff85e6032b30b15f59/thumbnails/c547413008bc4e699a9353def002e990/d46b6b715a8c435783d24e2ec5f9de78.jpeg', 'https://sketchfab.com/models/7fe734b1a5f44aff85e6032b30b15f59/embed', 'NEVERENDING ENTERTAINMENT: This classic game is popular because it’s fun! Popular and easy to play, the interactive family game is great for the whole family to play. It’s perfect for an innocent family game-night or adult drinking games.\r\nSIMPLE TO ASSEMBLE, FUN TO PLAY: Our full size 56” foosball soccer set requires little assembly, no electricity or batteries, and doesn’t involve complicated instructions or rules. It encourages multiplayer, socializing, dynamic strategy and smiles.\r\nPRO LEVEL: Whether you’re playing in tournaments or recreationally, our hand soccer table is for everyone. With a smooth turf, ergonomic handles, weighted “players”, and a solid wood bead scorer, there is nothing amateur about our table football set.', 900, 99, 'Games and Fitness', 5),
(11, 'Donut Vending Machine', 'https://media.sketchfab.com/models/f1b136499d614afc95e1349b8cf9dfc7/thumbnails/4e3eece06a18441bb6f87b3af998ec8a/b8efc7b4a8404f2289b70591b991653f.jpeg', 'https://sketchfab.com/models/f1b136499d614afc95e1349b8cf9dfc7/embed', 'Sturdy plastic construction with chrome accents\r\nHolds 200 round toothpicks (not included)\r\nApproximate size: 4 1/8\" X 3 1/2\" X 2 1/2\"\r\nStylish addition to any kitchen or table', 2420, 100, 'Foods and Drinks', 4),
(12, 'Burger Combo B28', 'https://media.sketchfab.com/models/a9c4d593480c4f5f9dc796149e8954b0/thumbnails/b9adc0470fc94f949dff892feb496ea1/c22e13dc84d1494ba9e4ef0e296806e4.jpeg', 'https://sketchfab.com/models/a9c4d593480c4f5f9dc796149e8954b0/embed', 'Frosted Gold is the most amazing nail color one could ever find.8 (5 oz.) Gourmet Burgers\r\n1 (1 oz. jar) Signature Seasoning\r\nDelivered To You - Hand-packed with dry ice - your delivery will stay frozen and food safety is assured.\r\nAs FIFTH generation family owners, we promise every ounce of Omaha Steaks you serve your family is of the best quality & safety.', 700, 100, 'Foods and Drinks', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT 'not set',
  `lname` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT 18,
  `role` int(10) DEFAULT 555,
  `photoUrl` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'john', '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'john@gmail.com', 'Indranil', 'Mukherjee', 31, 777, '', 'local'),
(2, 'shane', '$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG', 'shane123@gmail.com', 'Navoneel', 'Mukherjee', 27, 555, '', 'local'),
(11, 'mike', '$2b$10$vIS0W3LKhbx2tFh1GMYWhul7GWtIg4jnKU2C/NGux1pUG3QKMdNzO', 'mike-doe@excellent.com', 'Mike', 'Leming', 40, 555, 'https://i.pinimg.com/originals/dc/55/a0/dc55a0fec14d93d9cf6fa32c32f7c7f2.jpg', 'local'),
(14, 'indramukh', '$2b$10$po91FRkYQIfPDN6G1BxG0uIV7Z54GbJRkJw2t9wRec9uqmRKillqa', 'indramukh@hotmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(19, 'test', '$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK', 'test@gmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(20, 'bhaikaju', '$2b$10$P9X8c/MC39.Zxr2k5SfxK.lwbcj6PNou2ueqod29CFZrmuDUCvlfe', 'bhaikaju@gmail.com', 'Programming\'s Fun', 'not set', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14GiPx0OQHJOCy-fSfNmKr1vbnM-Rp7CgS_jx_6oY=s96-c', 'social'),
(21, 'shreyamukherjee07', '$2b$10$SOw/LSErH0IbZ96h7pop.O6NJreOD3HjRGiZZmKnqiXiuUPCl8b8W', 'shreyamukherjee07@gmail.com', 'Shreya', 'Mukherjee', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14Gg2Be7kKwqsUbQwyuCGToyZcCQ3ZDDWNkvSbQJVHA=s96-c', 'social');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
