-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 04:57 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'After Hours', 1, 4, 'assets/images/artwork/weekend.jpg'),
(2, 'MONTERO', 2, 10, 'assets/images/artwork/nas.jpg'),
(3, '=', 3, 2, 'assets/images/artwork/ed.jpg'),
(4, 'V', 4, 3, 'assets/images/artwork/maroon5.jpg'),
(5, 'Girlfriend', 5, 2, 'assets/images/artwork/avril.jpg'),
(6, 'A\'s Doll House', 6, 4, 'assets/images/artwork/ailee1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'The Weekend'),
(2, 'Lil Nas X'),
(3, 'Ed Sheeran'),
(4, 'Maroon 5'),
(5, 'Avril Lavigne'),
(6, 'AILEE');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Sacrifice', 1, 1, 8, '3:09', 'assets/music/Sacrifice.mp3', 1, 0),
(2, 'Blinding Lights', 1, 1, 1, '3:23', 'assets/music/Blinding Lights.mp3', 2, 2),
(3, 'INDUSTRY BABY', 2, 2, 2, '2:33', 'assets/music/INDUSTRY BABY.mp3', 1, 0),
(4, 'THATS WHAT I WANT', 2, 2, 3, '2:02', 'assets/music/THATS WHAT I WANT.mp3', 2, 0),
(5, 'MONTERO', 2, 2, 4, '1:29', 'assets/music/MONTERO.mp3', 3, 2),
(6, 'HOLIDAY', 2, 2, 1, '4:04', 'assets/music/HOLIDAY.mp3', 4, 2),
(7, 'Shivers', 3, 3, 2, '3:07', 'assets/music/Shivers.mp3', 1, 7),
(8, 'Bad Habits', 3, 3, 3, '3:08', 'assets/music/Bad Habits.mp3', 2, 3),
(9, 'Shape Of You', 3, 3, 4, '8:03', 'assets/music/Shape Of You.mp3', 3, 3),
(10, 'Overpass Graffiti', 3, 3, 5, '2:58', 'assets/music/Overpass Graffiti.mp3', 4, 5),
(11, 'Sugar', 4, 4, 6, '2:59', 'assets/music/Sugar.mp3', 1, 2),
(12, 'Unkiss Me', 4, 4, 7, '2:03', 'assets/music/Unkiss Me.mp3', 2, 0),
(13, 'Leaving California', 4, 4, 8, '3:23', 'assets/music/Leaving California.mp3', 3, 2),
(14, 'New Love', 4, 4, 9, '3:17', 'assets/music/New Love.mp3', 4, 5),
(15, 'Feelings', 4, 4, 10, '3:15', 'assets/music/Feelings.mp3', 5, 1),
(16, 'My Heart Is Open', 4, 4, 1, '3:57', 'assets/music/My Heart Is Open.mp3', 6, 2),
(17, 'Girlfriend', 5, 5, 2, '3:37', 'assets/music/Girlfriend.mp3', 1, 5),
(18, 'I Can Do Better', 5, 5, 1, '2:43', 'assets/music/I Can Do Better.mp3', 2, 0),
(19, 'Runaway', 5, 5, 2, '3:32', 'assets/music/Runaway.mp3', 3, 3),
(20, 'Everything Back But You', 5, 5, 3, '4:58', 'assets/music/Everything Back But You.mp3', 4, 0),
(21, 'Innocence', 5, 5, 2, '2:42', 'assets/music/Innocence.mp3', 5, 0),
(22, 'Alone', 5, 5, 5, '3:36', 'assets/music/Alone.mp3', 6, 1),
(23, 'U & I', 6, 6, 2, '3:15', 'assets/music/U & I.mp3', 1, 2),
(24, 'No No No', 6, 6, 2, '3:20', 'assets/music/No No No.mp3', 2, 5),
(25, 'Rainy Day', 6, 6, 2, '3:42', 'assets/music/Rainy Day.mp3', 3, 6),
(26, '이런 법이 어딨어', 6, 6, 2, '3:42', 'assets/music/이런 법이 어딨어.mp3', 4, 5),
(27, '열애설', 6, 6, 2, '4:02', 'assets/music/열애설.mp3', 5, 1),
(28, 'I`ll Be OK', 6, 6, 2, '3:38', 'assets/music/I`ll Be OK.mp3', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profile` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `signUpDate`, `profile`) VALUES
(1, 'tommy12', 'tommy', 'car', 'tommy@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '2022-01-08 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
