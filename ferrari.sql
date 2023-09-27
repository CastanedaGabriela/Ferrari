-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 08:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ferrari`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` int(15) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Cod_postal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`IdCliente`, `Nombre`, `Apellido`, `Fecha_nac`, `Telefono`, `Direccion`, `Email`, `Cod_postal`) VALUES
(215897642, 'Maribel', 'Gomez', '2023-04-05', 1254903579, 'Yepomera', 'paez0405@gmail.com', 3256),
(426987315, 'Daniel', 'Acosta', '2023-06-28', 1235076102, 'Portales', 'danii8274@hotmail.com', 3286),
(1065127920, 'Andrea', 'Paez', '0000-00-00', 1505971358, 'San Fernando', 'andrea2848@gmail.com', 1588),
(1285815879, 'Bernardo ', 'Castaneda', '0000-00-00', 1562289388, 'San miguel', 'castaneda0508@gmail.com', 32695);

-- --------------------------------------------------------

--
-- Table structure for table `compras`
--

CREATE TABLE `compras` (
  `IdVenta` varchar(50) NOT NULL,
  `IdCliente` varchar(50) NOT NULL,
  `IdEmpleado` varchar(50) NOT NULL,
  `FechaVenta` date NOT NULL,
  `PrecioTotal` int(5) NOT NULL,
  `Extras` int(15) NOT NULL,
  `IdVehiculo` varchar(15) NOT NULL,
  `Descuento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compras`
--

INSERT INTO `compras` (`IdVenta`, `IdCliente`, `IdEmpleado`, `FechaVenta`, `PrecioTotal`, `Extras`, `IdVehiculo`, `Descuento`) VALUES
('Venta#4451', '1285815879', '56HAUC374', '2023-09-03', 5050600, 10500, 'g17820', 0),
('Venta#6580', '1065127920', '57OAMF389', '2023-08-12', 6500200, 25000, 'se42036', 0),
('Venta#8472', '0215897642', '94UMGC264', '2023-07-25', 15500000, 0, 'i20786', 0),
('Venta#4785', '0426987315', '84IMGK295', '2023-09-09', 6500600, 12900, 'lf10987', 0);

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Clave` int(5) NOT NULL,
  `Sueldo` int(10) NOT NULL,
  `IdVenta` varchar(50) NOT NULL,
  `Puesto` varchar(50) NOT NULL,
  `Edad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `Nombre`, `Apellido`, `Clave`, `Sueldo`, `IdVenta`, `Puesto`, `Edad`) VALUES
('56HAUC374', 'Diego', 'Avitia', 7816, 2560, 'Venta#4451', 'vendedor', 21),
('57OAMF389', 'Gema', 'Vega', 40285, 15900, 'Venta#6580', 'gerente', 32),
('94UMGC264', 'Grecia', 'Barraza', 97523, 3200, 'Venta#8472', 'Vendedor', 25),
('84IMGK295', 'Melanie', 'Santos', 97560, 6520, 'Venta#4785', 'vendedor', 30);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `IdFabrica` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `NomEmpresa` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Transporte` varchar(50) NOT NULL,
  `FechaLlegada` date NOT NULL,
  `Correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`IdFabrica`, `Direccion`, `NomEmpresa`, `Ciudad`, `Estado`, `Transporte`, `FechaLlegada`, `Correo`) VALUES
('smt5738', 'California', 'Honeywell', 'Santa Monica', 'Califronia', 'Wheels', '2023-08-30', 'wheelscontact@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vehiculo`
--

CREATE TABLE `vehiculo` (
  `Vin` varchar(15) NOT NULL,
  `IdVehiculo` varchar(10) NOT NULL,
  `Transmision` varchar(15) NOT NULL,
  `Costo` int(10) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Cilindraje` varchar(20) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehiculo`
--

INSERT INTO `vehiculo` (`Vin`, `IdVehiculo`, `Transmision`, `Costo`, `Modelo`, `Cilindraje`, `Color`, `Descripcion`) VALUES
('38VBS9HJAM', 'se42036', 'automatica', 5250850, 'SF90 XX STRADALE', '10 lit 8.2', 'blanco', 'Las versiones especiales de ferrari llevan las prestaciones de sus modelos de serie a los limites.'),
('5N8SM69DV9', 'lf10987', 'estandar', 5690230, 'LAFERRARI', '8 lit 6.5', 'rojo', 'El primer hibrido en la historia de la marca consigue prestaciones de record'),
('5NCA91NG05', 'i20786', 'estandar', 10009000, 'DAYTONA SP3', 'v12', 'rojo', 'En las 24h de Daytona del ano 1967,los Ferrari 330 p3/4,330 P4 y 412P hicieron su desfile triunfal b'),
('G9B78D92JCS', 'g17820', 'automatica', 1600900, 'SF90 STRADALE', '8 lit 5.2', 'gris ', 'El nombre del automovil sintetiza el verdadero significado de todo lo que se ha logrado en terminos ');

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `IdVenta` varchar(20) NOT NULL,
  `IdCliente` int(15) NOT NULL,
  `IdVehiculo` varchar(10) NOT NULL,
  `IdEmpleado` varchar(50) NOT NULL,
  `PrecioTotal` int(10) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`IdVenta`, `IdCliente`, `IdVehiculo`, `IdEmpleado`, `PrecioTotal`, `Fecha`) VALUES
('Venta#4451', 1285815879, 'g17820', '56HAUC374', 5050600, '2023-09-21'),
('Venta#6580', 1065127920, 'se42036', '57OAMF389', 6500200, '2023-09-01'),
('Venta#8472', 215897642, 'i20786', '94UMGC264', 15500000, '2023-09-17'),
('Venta#4785', 426987315, 'lf10987', '84IMGK295', 6500600, '2023-09-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indexes for table `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`Vin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
