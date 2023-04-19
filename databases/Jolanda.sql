DROP DATABASE IF EXISTS `Jolando`;

USE `Jolanda`;

CREATE TABLE `Haarpro` (
    `id` int AUTO-INCREMENT PRIMARY KEY,
    `Shampoo` text NOT NULL,
    `Conditioner` varchar(16) NOT NULL,
);

INSERT INTO `Haarpro` (`id`,`Shampoo`,`conditioner`) VALUES
(1, `shampoo`),
(2, `Conditioner`);