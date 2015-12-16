-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2015 at 10:48 AM
-- Server version: 5.5.42
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `casejoke_antibio`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_to_promocode`
--

CREATE TABLE `oc_customer_to_promocode` (
  `customer_promocode_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `promocode_id` varchar(255) NOT NULL,
  `status` int(4) NOT NULL,
  `place_id` int(11) NOT NULL,
  `value` int(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_customer_to_promocode`
--
ALTER TABLE `oc_customer_to_promocode`
  ADD PRIMARY KEY (`customer_promocode_id`),
  ADD UNIQUE KEY `customer_stat_id` (`customer_promocode_id`),
  ADD KEY `customer_id` (`customer_id`,`promocode_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_customer_to_promocode`
--
ALTER TABLE `oc_customer_to_promocode`
  MODIFY `customer_promocode_id` int(11) NOT NULL AUTO_INCREMENT;