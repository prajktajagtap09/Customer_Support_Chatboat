-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2026 at 09:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatboat`
--

-- --------------------------------------------------------

--
-- Table structure for table `support_responses`
--

CREATE TABLE `support_responses` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_responses`
--

INSERT INTO `support_responses` (`id`, `keyword`, `response`) VALUES
(1, 'hi', 'Hello! Welcome to our customer support service. How may I assist you today?'),
(2, 'hello', 'Hi there! Thank you for contacting support. How can I help you today?'),
(3, 'what are your support timings', 'Our customer support team is available from 9:00 AM to 6:00 PM, Monday through Saturday.'),
(4, 'how can i contact support', 'You can reach us via email at support@example.com or call us on +91 9876543210.'),
(5, 'how do i request a refund', 'Refund requests are usually processed within 5 to 7 working days after approval.'),
(6, 'where is my order', 'Please share your order ID so that we can check the current status of your order.'),
(7, 'what is the price', 'Please let us know the product name or product code so we can provide accurate pricing details.'),
(8, 'how to place an order', 'You can place an order by selecting the product and clicking on the Buy Now or Add to Cart button.'),
(9, 'what payment methods do you accept', 'We accept UPI, debit cards, credit cards, net banking, and cash on delivery where available.'),
(10, 'do you offer cash on delivery', 'Yes, cash on delivery is available for selected locations. Please enter your PIN code to check availability.'),
(11, 'how long does delivery take', 'Delivery usually takes 3 to 5 business days depending on your location.'),
(12, 'can i cancel my order', 'Yes, you can cancel your order before it is shipped from the warehouse.'),
(13, 'how can i track my order', 'Please share your order ID and we will help you track the shipment status.'),
(14, 'what is your return policy', 'Products can be returned within 7 days of delivery if they are unused and in original condition.'),
(15, 'is there any discount available', 'Yes, we regularly offer discounts and promotional coupons. Please check the offers section on our website.'),
(16, 'how can i change my address', 'You can update your delivery address from the My Account > Address section before placing an order.'),
(17, 'thank you', 'You are welcome! We are always happy to assist you.'),
(18, 'bye', 'Thank you for contacting customer support. Have a wonderful day!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `support_responses`
--
ALTER TABLE `support_responses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `support_responses`
--
ALTER TABLE `support_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
