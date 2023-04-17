CREATE DATABASE `cheatcode`;

USE `test`;

CREATE TABLE `student` (
    `id` int AUTO-INCREMENT PRIMARY KEY,
    `naam` text NOT NULL,
    `klas` varchar(16) NOT NULL,
);

INSERT INTO `student` (`id`,`naam`,`klas`) VALUES
(1, `Alan`, `Havo4a`),
(2, `Bob`, `Havo4b`);