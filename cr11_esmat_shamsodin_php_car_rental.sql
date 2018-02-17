-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2018 at 04:43 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_esmat_shamsodin_php_car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `agancy`
--

CREATE TABLE `agancy` (
  `agency-id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `address` varchar(100) NOT NULL,
  `office_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agancy`
--

INSERT INTO `agancy` (`agency-id`, `name`, `address`, `office_id_fk`) VALUES
(1, 'EsmatRentalCarCompany', 'Herzgasse79/38', 1),
(2, 'EsmatRentalCompany', 'Herzgasse79/38', 2),
(3, 'EsmatRentalCarCompany', 'Herzgasse79/38', 3),
(4, 'EsmatRentalCompany', 'Herzgasse79/38', 4),
(5, 'EsmatRentalCarCompany', 'Herzgasse79/38', 5),
(6, 'EsmatRentalCompany', 'Herzgasse79/38', 6);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(30) NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `author_lastname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_lastname`) VALUES
(1, 'Santana', ''),
(2, 'Madona', ''),
(3, 'Eagles', ''),
(4, 'Metallica', ''),
(5, 'Dire Straits', ''),
(6, 'J. K. Rowling', ''),
(7, 'Darlyn Dimposn', ''),
(8, 'Gem Stomson', ''),
(9, 'Smith Bernars', ''),
(10, 'Albert Einstein', ''),
(11, 'Hitler', '');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `day_price` int(55) NOT NULL,
  `month_price` int(55) NOT NULL,
  `type_id_fk` int(11) NOT NULL,
  `location_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `capacity`, `day_price`, `month_price`, `type_id_fk`, `location_id_fk`) VALUES
(1, 4, 40, 1000, 1, 1),
(2, 4, 20, 600, 2, 2),
(3, 2, 10, 300, 1, 1),
(4, 4, 40, 1000, 3, 1),
(5, 4, 40, 1000, 6, 1),
(6, 4, 30, 800, 4, 1),
(7, 4, 50, 1300, 4, 2),
(8, 4, 25, 800, 3, 2),
(9, 4, 60, 1500, 2, 2),
(10, 4, 30, 900, 3, 3),
(11, 2, 20, 500, 6, 3),
(13, 2, 25, 700, 2, 3),
(14, 4, 10, 300, 5, 4),
(15, 2, 25, 600, 4, 4),
(16, 4, 40, 1100, 4, 4),
(17, 2, 30, 850, 5, 4),
(18, 4, 50, 1465, 2, 4),
(19, 4, 40, 1200, 6, 5),
(20, 5, 60, 1750, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(50) NOT NULL,
  `city_name` varchar(40) DEFAULT NULL,
  `fk_country_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `fk_country_id`) VALUES
(1, 'budapest', NULL),
(2, 'vienna', NULL),
(3, 'bratislava', NULL),
(4, 'prag', NULL),
(5, 'city_name', NULL),
(6, 'budapest', NULL),
(7, 'vienna', NULL),
(8, 'bratislava', NULL),
(9, 'prag', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(20) NOT NULL,
  `country_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'hungary'),
(2, 'austria'),
(3, 'slovakia'),
(4, 'chek republic'),
(5, 'chile'),
(6, 'slovenia'),
(7, 'austria'),
(8, 'mexico'),
(9, 'germany'),
(10, 'sweden'),
(11, 'argentina');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `fk_ISBN` int(50) NOT NULL,
  `fk_user_id` int(50) NOT NULL,
  `pickup_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `fk_ISBN`, `fk_user_id`, `pickup_date`) VALUES
(1, 42, 12, '2018-02-12 13:36:00'),
(2, 44, 12, '2018-02-12 13:43:39'),
(3, 40, 12, '2018-02-12 13:43:42'),
(4, 39, 12, '2018-02-12 13:43:44'),
(5, 42, 12, '2018-02-12 14:08:22'),
(6, 44, 12, '2018-02-12 14:08:23'),
(7, 40, 12, '2018-02-12 14:12:27'),
(8, 42, 12, '2018-02-12 14:13:11'),
(9, 44, 12, '2018-02-12 14:13:13'),
(10, 40, 12, '2018-02-12 14:14:35'),
(11, 39, 12, '2018-02-12 14:14:38'),
(12, 38, 12, '2018-02-12 14:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `cordination` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `cordination`) VALUES
(1, 'mariahilfstrasse101,1070 wien'),
(2, 'Taubstummengasse 11,1040 wien'),
(3, 'Stiftgasse 145,1010 wien'),
(4, 'Lindengasse 56, 1070 Wien'),
(5, 'Westbahnstr./Kaiserstr,1150 wien'),
(6, 'Hasnerstraße 43, 1160 Wien'),
(7, 'Gudeljevic Slavica KEG, Hasnerstraße 88, 1160 Wien'),
(8, 'Wiesberggasse 14, 1160 Wien'),
(9, 'Unnamed Road, 1160 Wien'),
(10, 'Unnamed Road, 1140 Wien'),
(11, 'Antaeusgasse 62, 1140 Wien'),
(12, 'Frimbergergasse 4-10, 1130 Wien');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `ISBN` int(30) NOT NULL,
  `fk_type_id` int(50) DEFAULT NULL,
  `media_name` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `fk_author_id` int(50) DEFAULT NULL,
  `fk_publisher_id` int(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`ISBN`, `fk_type_id`, `media_name`, `description`, `fk_author_id`, `fk_publisher_id`, `publish_date`) VALUES
(27, 5, 'The immaculate Collection', 'Pop, Trend', 2, 1, '2013-06-12'),
(28, 5, 'Supernatural', 'Rock, Hispano', 1, 1, '2013-06-13'),
(29, 5, 'Hotel California', 'Rock', 3, 1, '2013-06-14'),
(30, 5, 'Metallica', 'Rock, Mas Vendidos', 4, 1, '2013-06-15'),
(31, 5, 'Brothers in Arms', 'Exito', 5, 1, '2013-06-16'),
(32, 1, 'Harry Potter y la piedra filosofal', ' Mundo magico', 6, 8, '1997-02-02'),
(33, 1, 'Harry Potter y la camara secreta', 'Gran pelicula', 6, 8, '1997-02-03'),
(34, 1, 'Harry Potter y el prisionero de Azkaban', 'Al contrario que en novelas como las de Las Cronicas de Narnia', 6, 8, '1997-02-04'),
(35, 1, 'Harry Potter y el caliz de fuego', 'Los libros evitan ubicar la historia en algun ano en particular', 6, 8, '1997-02-05'),
(36, 1, 'Harry Potter y la Orden del Fenix', 'Interesante', 6, 8, '1997-02-06'),
(37, 3, 'Muy Interesant', 'Animals', 1, 2, '2017-03-06'),
(38, 3, 'Muy Interesant', 'History', 1, 2, '2017-03-07'),
(39, 3, 'Muy Interesant', 'Inventions', 1, 2, '2017-03-08'),
(40, 3, 'Muy Interesant', 'Delitante', 1, 2, '2017-03-09'),
(41, 3, 'Muy Interesant', 'The biggest experiment in 2015', 1, 2, '2017-03-10'),
(42, 2, 'The Hours', 'Bravo', 7, 3, '2017-03-11'),
(43, 5, 'IT', 'The Clown', 8, 4, '2017-03-12'),
(44, 2, 'Fast and Furios', 'Cárs', 9, 5, '2017-03-13'),
(45, 4, 'Avenger', 'Marvel', 10, 6, '2017-03-14'),
(46, 6, 'Barny', 'Education and a Dino', 11, 7, '2017-03-15'),
(47, 7, 'The New York Times', 'Enero', 5, 9, '2017-03-16'),
(48, 7, 'The New York Times', 'June', 5, 9, '2017-03-17'),
(49, 7, 'The New York Times', 'July', 5, 9, '2017-03-18'),
(50, 7, 'The New York Times', 'Agosto', 5, 9, '2017-03-19'),
(51, 7, 'The New York Times', 'September', 5, 9, '2017-03-20'),
(52, 7, 'The New York Times', 'Octorber', 5, 9, '2017-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `office_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `location_id_fk` int(11) NOT NULL,
  `phonenumber` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`office_id`, `name`, `location_id_fk`, `phonenumber`) VALUES
(1, 'CarRental1', 1, 688960011),
(2, 'CarRental2', 2, 688961156),
(3, 'carRental3', 3, 556231456),
(4, 'CarRental4', 4, 455689975),
(5, 'CarRental5', 5, 147852369),
(6, 'CarRental6', 6, 477895646);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(30) NOT NULL,
  `publisher_name` varchar(50) DEFAULT NULL,
  `publisher_lastname` varchar(50) NOT NULL,
  `publisher_adress` varchar(100) DEFAULT NULL,
  `fk_city_id` int(20) DEFAULT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`, `publisher_lastname`, `publisher_adress`, `fk_city_id`, `size`) VALUES
(1, 'Awesome Editorial', 'Inc', 'Pazmaniteng 24-9 ', 1, 'big'),
(2, 'Universal', 'Inc', 'Hauptstraße 10/A/4/15', 1, 'small'),
(3, 'Verison', 'Inc', 'Straße 10/A/4/15', 2, 'medium'),
(4, 'Funex', 'Inc', 'Orinoco 99', 3, 'small'),
(5, 'Records', 'Inc', 'Esteban Dell Orto', 4, 'medium'),
(6, 'Funtional Edit', 'Inc', 'Santa Teresita 5511', 5, 'medium'),
(7, 'Delox', 'Inc', 'Bernardo O\'Higgins 123', 6, 'big'),
(8, 'Bloomsbury Publishing', 'Inc', 'United Street 4515', 7, 'medium'),
(9, 'The New York Times', 'Inc', 'Adam Concert 4512, California', 3, 'big');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(30) NOT NULL,
  `user_id_fk` int(11) NOT NULL,
  `car_id_fk` int(11) NOT NULL,
  `pick_date` date NOT NULL,
  `return_date` date NOT NULL,
  `pick_time` time NOT NULL,
  `return_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `model` varchar(55) NOT NULL,
  `brand` varchar(55) NOT NULL,
  `picture` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `name`, `model`, `brand`, `picture`) VALUES
(1, 'BMW', '2009', 'S500', 'https://dmi-eddirect.edmunds-media.com/inventory/mercedes_benz/s_class/2009/wddng71x89a270855/size_640x480/2009_mercedes_benz_s_class_s550_1.jpg'),
(2, 'BMW', '2011', 'I8', 'https://images.hgmsites.net/hug/bmw-i8-concept-live-photos-2011-frankfurt-auto-show_100362961_h.jpg'),
(3, 'BMW', '2014', 'X6', 'https://i.ytimg.com/vi/JdgXijurjC4/maxresdefault.jpg'),
(4, 'Volvo', '2015', 'XC90', 'https://res.cloudinary.com/carsguide/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_large/v1/editorial/Volvo-XC90-2015-revealed-%282%29.jpg'),
(5, 'BMW', '2008', 'C200', 'http://japanqualityexports.com/wp-content/uploads/cars/299b.jpg'),
(6, 'sonata', '2012', 'NewYF', 'http://www.indiandrives.com/wp-content/uploads/2012/02/2012-Hyundai-Sonata-More-details-emerges.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(4) NOT NULL,
  `description` char(50) DEFAULT NULL,
  `data` longblob,
  `filename` char(50) DEFAULT NULL,
  `filesize` char(50) DEFAULT NULL,
  `filetype` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(6) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(2, 'Javier', 'Garcia', 'javier@garcia.com', '0e1e847b6d1dfa0382c082a9850febd05bebad869f61e8c39e12992f9b87c0ff'),
(3, 'Corinna', 'Ibesich Garcia2', 'corinna@garcia.com', '472bbe83616e93d3c09a79103ae47d8f71e3d35a966d6e8b22f743218d04171d'),
(12, 'Marian', 'Garcia Peters', 'mgarciapeters@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(15, 'Code', 'Factory', 'code@factory.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(16, 'Timo', 'Ibesich Garcia', 'monstercito@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(17, 'Camila', 'Peters', 'camila@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(19, 'Primoz', 'Lala', 'primoz@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(20, 'qeijfoqeff', 'ewfwefwe', '1@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(21, 'Marian Camila', 'Garcia', '2@gmail.com', '472bbe83616e93d3c09a79103ae47d8f71e3d35a966d6e8b22f743218d04171d'),
(22, 'qweqwe', 'qweqwe', '3@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(23, 'qweqwee', 'qweqwe', '4@gmail.com', '472bbe83616e93d3c09a79103ae47d8f71e3d35a966d6e8b22f743218d04171d');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(1, 'ali', 'a@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(2, 'ali', 'ali@yahoo.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(3, 'ddd', 'd@yahoo.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agancy`
--
ALTER TABLE `agancy`
  ADD PRIMARY KEY (`agency-id`),
  ADD KEY `office_id_fk` (`office_id_fk`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `type_id_fk` (`type_id_fk`),
  ADD KEY `location_id_fk` (`location_id_fk`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `fk_country_id` (`fk_country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `fk_ISBN` (`fk_ISBN`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `fk_type_id` (`fk_type_id`),
  ADD KEY `fk_author_id` (`fk_author_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`office_id`),
  ADD KEY `location_id_fk` (`location_id_fk`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD KEY `fk_city_id` (`fk_city_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `ISBN` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agancy`
--
ALTER TABLE `agancy`
  ADD CONSTRAINT `agancy_ibfk_1` FOREIGN KEY (`office_id_fk`) REFERENCES `office` (`office_id`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`type_id_fk`) REFERENCES `type` (`type_id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`location_id_fk`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`fk_country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`fk_ISBN`) REFERENCES `media` (`ISBN`),
  ADD CONSTRAINT `history_ibfk_3` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `office`
--
ALTER TABLE `office`
  ADD CONSTRAINT `office_ibfk_1` FOREIGN KEY (`location_id_fk`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`fk_city_id`) REFERENCES `city` (`city_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
