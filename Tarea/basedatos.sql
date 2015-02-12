-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2015 at 07:04 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `basedatos`
--

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
`id_estudiante` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'Andres', 'Abril', 'ab24@gmail.com'),
(2, 'Paula', 'Lopez', 'gamel@gmail.com'),
(3, 'Felipe ', 'Garcia Lopez', 'pipegarcial@hotmail.com'),
(4, 'Diana', 'Aristizabal', 'diana@gmail.com'),
(5, 'Paula', 'Tobar', 'paus@gmail.com'),
(6, 'Mario', 'Otalvaro', 'pandicornio@gmail.com'),
(7, 'Laura', 'Leal', 'lau@gmail.com'),
(8, 'Juan Camilo', 'Ramon', 'po@gmail.com'),
(9, 'Ana María', 'Garces', 'anita@gmail.com'),
(10, 'Maria Paula', 'Leal', 'mapala@gmail.com'),
(11, 'Santiago', 'Echeverry', 'santi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `estudiante_materia`
--

CREATE TABLE IF NOT EXISTS `estudiante_materia` (
`id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estudiante_materia`
--

INSERT INTO `estudiante_materia` (`id`, `id_estudiante`, `id_materia`) VALUES
(1, 3, 2),
(2, 4, 1),
(3, 10, 5),
(4, 4, 3),
(5, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
`id_materia` int(11) NOT NULL,
  `codigo_materia` int(11) NOT NULL,
  `nombre_materia` varchar(45) NOT NULL,
  `id_profesor` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materia`
--

INSERT INTO `materia` (`id_materia`, `codigo_materia`, `nombre_materia`, `id_profesor`) VALUES
(1, 11111, 'Modelado', 1),
(2, 11112, 'HCI II', 2),
(3, 11113, 'Ambientes', 3),
(4, 11114, 'Sobre la imagen', 4),
(5, 11115, 'Arte', 3),
(6, 11116, 'Web', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
`id_nota` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `porcentaje` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `nombre`, `porcentaje`) VALUES
(1, 'Quiz', 10),
(2, 'Parcial', 30),
(3, 'Exposiones individuales', 20),
(4, 'Proyecto', 30),
(5, 'Tareas', 10);

-- --------------------------------------------------------

--
-- Table structure for table `nota_estudiante`
--

CREATE TABLE IF NOT EXISTS `nota_estudiante` (
`id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
`id_profesor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'Diego', 'Bolaños', 'bolaños@gmail.com'),
(2, 'Carolina', 'Cuervo', 'caro@gmail.com'),
(3, 'Juan', 'Salamanca', 'juansa@gmail.com'),
(4, 'Diana', 'Giraldo', 'dianag@gmail.com'),
(5, 'Maricial', 'Q', 'marcial@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
 ADD PRIMARY KEY (`id_estudiante`);

--
-- Indexes for table `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
 ADD PRIMARY KEY (`id`), ADD KEY `id_estudiante_idx` (`id_estudiante`), ADD KEY `id_materia_idx` (`id_materia`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
 ADD PRIMARY KEY (`id_materia`), ADD KEY `id_profesor_idx` (`id_profesor`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
 ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `nota_estudiante`
--
ALTER TABLE `nota_estudiante`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
 ADD PRIMARY KEY (`id_profesor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estudiantes`
--
ALTER TABLE `estudiantes`
MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `materia`
--
ALTER TABLE `materia`
MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nota_estudiante`
--
ALTER TABLE `nota_estudiante`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
ADD CONSTRAINT `id_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `id_materia` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `materia`
--
ALTER TABLE `materia`
ADD CONSTRAINT `id_profesor` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
