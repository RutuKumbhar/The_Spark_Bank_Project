

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction`(`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Avni', 'Rucha', 1000, '2021-08-09 12:42:03'),
(2, 'Aditya', 'Kartik', 400, '2021-08-09 15:32:50'),
(3, 'Omkar', 'Rudra', 300, '2021-08-09 17:28:25');


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Avni', 'avni@gmail.com', 70000),
(2, 'Rucha', 'rucha@gmail.com', 30000),
(3, 'Bhakti', 'bhakti@gmail.com', 40000),
(4, 'Aarohi', 'aarohi@gmail.com', 50000),
(5, 'Sanvi', 'sanvi@gmail.com', 60000),
(6, 'Omkar', 'omkar@gmail.com', 90000),
(7, 'Anushka', 'anushka@gmail.com', 58000),
(8, 'Kartik', 'kartik@gmail.com', 67000),
(9, 'Aditya', 'aditya@gmail.com', 38000),
(10, 'Samidha', 'samidha@gmail.com', 45000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

