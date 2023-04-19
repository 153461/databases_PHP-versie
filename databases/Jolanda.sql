CREATE DATABASE `Jolanda`;

USE `Jolanda`;

CREATE TABLE `student` (
    `id` int AUTO-INCREMENT PRIMARY KEY,
    `prijs` text NOT NULL,
    `type` varchar(16) NOT NULL,
);

INSERT INTO `product` (`id`,`naam`,`klas`) VALUES
(1, `shampoo`),
(2, `Conditioner`);