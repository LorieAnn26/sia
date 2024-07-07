-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2024 at 04:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `supplier` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `quantity_ordered` int(11) DEFAULT NULL,
  `quantity_received` int(11) DEFAULT NULL,
  `quantity_remaining` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `batch` int(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `requested_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `supplier`, `product`, `quantity_ordered`, `quantity_received`, `quantity_remaining`, `status`, `batch`, `created_by`, `requested_by`, `created_at`, `updated_at`) VALUES
(13, 4, 3, 3, 3, 0, 'complete', 1707884042, 41, 'Jane', '2024-02-14 05:14:02', '2024-02-14 05:14:02'),
(14, 4, 2, 32, 32, 0, 'complete', 1707884042, 41, 'John', '2024-02-14 05:14:02', '2024-02-14 05:14:02'),
(15, 5, 2, 23, 23, 0, 'complete', 1707884042, 41, 'John', '2024-02-14 05:14:02', '2024-02-14 05:14:02'),
(16, 4, 9, 32, 32, 0, 'complete', 1711205068, 41, '', '2024-03-23 15:44:28', '2024-03-23 15:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_history`
--

CREATE TABLE `order_product_history` (
  `id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `qty_received` int(11) NOT NULL,
  `date_received` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product_history`
--

INSERT INTO `order_product_history` (`id`, `order_product_id`, `qty_received`, `date_received`, `date_updated`) VALUES
(5, 14, 23, '2024-02-14 05:14:41', '2024-02-14 05:14:41'),
(6, 13, 3, '2024-02-14 05:14:41', '2024-02-14 05:14:41'),
(7, 15, 23, '2024-02-14 05:14:41', '2024-02-14 05:14:41'),
(8, 14, 9, '2024-02-14 05:15:31', '2024-02-14 05:15:31'),
(9, 16, 32, '2024-03-23 15:44:41', '2024-03-23 15:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(191) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `img`, `price`, `stock`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Kopiko Blanco', ' Energy drink											<br />										', 'product-1708923614.png', '21.10', 21, 41, '2024-02-14 05:11:44', '2024-02-14 05:11:44'),
(3, 'Nescafe', ' Coffee								', 'product-1708923638.png', '71.10', 0, 41, '2024-02-14 05:12:09', '2024-02-14 05:12:09'),
(4, 'MIlo', 'Energy drink											\r\n										', 'product-1708923691.png', '31.00', 0, 41, '2024-02-26 06:01:31', '2024-02-26 06:01:31'),
(5, 'Nido', 'This is milk											\r\n										', 'product-1708923706.png', '25.00', 16, 41, '2024-02-26 06:01:46', '2024-02-26 06:01:46'),
(6, 'Coke Zero', 'This is coke											\r\n										', 'product-1708923872.png', '21.00', 0, 41, '2024-02-26 06:04:32', '2024-02-26 06:04:32'),
(7, 'Coke Mismo', 'Coke mismo											\r\n										', 'product-1708923908.png', '45.00', 30, 41, '2024-02-26 06:05:08', '2024-02-26 06:05:08'),
(9, 'Toblerone Chocolate', 'Tasty											\r\n										', 'product-1711205047.png', '32.52', 0, 41, '2024-03-23 15:44:07', '2024-03-23 15:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `productsuppliers`
--

CREATE TABLE `productsuppliers` (
  `id` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productsuppliers`
--

INSERT INTO `productsuppliers` (`id`, `supplier`, `product`, `updated_at`, `created_at`) VALUES
(6, 4, 2, '2024-02-26 06:00:14', '2024-02-26 06:00:14'),
(7, 5, 2, '2024-02-26 06:00:14', '2024-02-26 06:00:14'),
(8, 4, 3, '2024-02-26 06:00:38', '2024-02-26 06:00:38'),
(9, 4, 4, '2024-02-26 06:01:31', '2024-02-26 06:01:31'),
(10, 4, 5, '2024-02-26 06:01:46', '2024-02-26 06:01:46'),
(11, 5, 6, '2024-02-26 06:04:32', '2024-02-26 06:04:32'),
(12, 5, 7, '2024-02-26 06:05:08', '2024-02-26 06:05:08'),
(14, 4, 9, '2024-03-23 15:44:07', '2024-03-23 15:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `requested_by` varchar(150) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(191) NOT NULL,
  `supplier_location` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `supplier_location`, `email`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Nestle', 'PHI', 'nestle@supplier.com', 41, '2024-02-14 05:10:30', '2024-02-14 05:10:30'),
(5, 'Coca-cola', 'PHI', 'supplier@cocacola.com', 41, '2024-02-14 05:10:45', '2024-02-14 05:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(2000) NOT NULL,
  `email` varchar(50) NOT NULL,
  `permissions` varchar(5000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `email`, `permissions`, `created_at`, `updated_at`) VALUES
(41, 'Admin', 'Admin', '$2y$10$KhhP6aVuB1Cf4O.6fXDMOORrLJF14jdmtdRMXjW281Jni5G/proyG', 'admin@ims.com', 'dashboard_view,report_view,po_view,product_view,pos,user_view,supplier_view,po_create,product_create,supplier_create,user_create,supplier_edit,product_edit,po_edit,user_edit,supplier_delete,product_delete,user_delete', '2024-01-21 05:30:45', '2024-01-31 07:07:52'),
(43, 'John', 'Doe', '$2y$10$caPK3HLqiUqcUiNhEysYC.kztR5Yg.gJh8sBTrMkFfCbdpsDZ7OEK', 'johndoe@yahoo.com', 'po_view,product_view,supplier_view,user_view,pos,po_create,product_create,supplier_create,user_create,po_edit,product_edit,user_edit,supplier_edit', '2024-03-10 14:55:23', '2024-03-11 05:57:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier` (`supplier`),
  ADD KEY `product` (`product`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `order_product_history`
--
ALTER TABLE `order_product_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_id` (`order_product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`created_by`);

--
-- Indexes for table `productsuppliers`
--
ALTER TABLE `productsuppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`product`),
  ADD KEY `supplier` (`supplier`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_created_by` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_product_history`
--
ALTER TABLE `order_product_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productsuppliers`
--
ALTER TABLE `productsuppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
