-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 03:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midterm`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Apple'),
(2, 'ASUS'),
(3, 'DELL'),
(4, 'SAMSUNG');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Máy tính bảng');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `user`, `created_at`) VALUES
(10, '06ccfa67-9525-4386-8b37-d565387ba388', '2023-04-02 15:52:24'),
(11, '06ccfa67-9525-4386-8b37-d565387ba388', '2023-04-02 16:19:08'),
(12, '06ccfa67-9525-4386-8b37-d565387ba388', '2023-04-02 16:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`) VALUES
(7, 10, 8),
(8, 10, 61),
(9, 11, 4),
(10, 11, 14),
(11, 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `category`, `brand`, `color`, `detail`, `quantity`, `price`) VALUES
(1, 'Apple Macbook Air (MLY03SA/A) (Apple M2/8C CPU/10C GPU/8GB RAM/512GB SSD/13.6/Mac OS/Bạc) (2022)', 'https://hanoicomputercdn.com/media/product/68763_apple_macbook_air_9.png', 2, 1, ' Bạc', 'CPU: Apple M2 || RAM: 8GB || Ổ cứng: 512GB SSD || VGA: Onboard || Màn hình: 13.6 inch Retina IPS || HĐH: Mac OS || Màu: Bạc', 100, 34699000),
(2, 'Apple Macbook Air (MLXX3SA/A) (Apple M2/8C CPU/10C GPU/8GB RAM/512GB SSD/13.6 inch/Mac OS/Xám) (2022)', 'https://hanoicomputercdn.com/media/product/68762_apple_macbook_air_8.png', 2, 1, ' Xám', 'CPU: Apple M2 || RAM: 8GB || Ổ cứng: 512GB SSD || VGA: Onboard || Màn hình: 13.6 inch Retina IPS || HĐH: Mac OS || Màu: Xám', 100, 34699000),
(3, 'Apple Macbook Air (MLXY3SA/A) (Apple M2/8C CPU/8C GPU/8GB RAM/256GB SSD/13.6 inch IPS/Mac OS/Bạc) (2022)', 'https://hanoicomputercdn.com/media/product/67778_apple_macbook_air_7.png', 2, 1, ' Bạc', 'CPU: Apple M2 || RAM: 8GB || Ổ cứng: 256GB SSD || VGA: Onboard || Màn hình: 13.6 inch Retina IPS || HĐH: Mac OS || Màu: Bạc', 100, 27499000),
(4, 'Apple Macbook Air 13 (MGND3SA/A) (Apple M1/8GB RAM/256GB SSD/13.3 inch IPS/Mac OS/Vàng) (NEW)', 'https://hanoicomputercdn.com/media/product/56563_macbook_air_m1__4_.png', 2, 1, ' Vàng', 'CPU: Apple M1 || RAM: 8GB || Ổ cứng: 256GB SSD || VGA: Onboard || Màn hình: 13.3 inch Retina IPS || HĐH: Mac OS || Màu: Vàng', 100, 18999000),
(5, 'Apple Macbook Pro 13 (MNEH3SA/A) (Apple M2/8GB RAM/256GB SSD/13.3 inch IPS/Mac OS/Xám) ', 'https://hanoicomputercdn.com/media/product/66888_hacom_macbook_pro_13_7.png', 2, 1, ' Xám', 'CPU: Apple M2 || RAM: 8GB || Ổ cứng: 256GB SSD || VGA: Onboard || Màn hình: 13.3 inch Retina IPS || HĐH: Mac OS || Màu: Xám || ', 100, 29999000),
(6, 'Laptop Apple Macbook Pro 13 (Z16S00034/Z16R0003X) (Apple M2 /8C CPU/10C GPU/16GB/512GB SSD/13.3/Mac OS/Xám)', 'https://hanoicomputercdn.com/media/product/67349_hacom_macbook_pro_13_14.png', 2, 1, ' Xám', 'CPU: Apple M2 || RAM: 16GB || Ổ cứng: 512GB SSD || VGA: Onboard || Màn hình: 13.3 inch Retina IPS || HĐH: Mac OS || Màu: Xám || ', 100, 41599000),
(7, 'Apple Macbook Air 13 (MGN63SA/A) (Apple M1/8GB RAM/256GB SSD/13.3 inch IPS/Mac OS/Xám) (NEW)', 'https://hanoicomputercdn.com/media/product/56561_mba__4_.png', 2, 1, ' Xám', 'CPU: Apple M1 || RAM: 8GB || Ổ cứng: 256GB SSD || VGA: Onboard || Màn hình: 13.3 inch Retina IPS || HĐH: Mac OS || Màu: Xám', 100, 18999000),
(8, 'Apple Macbook Air (MLY33SA/A) (Apple M2/8C CPU/8C GPU/8GB RAM/256GB SSD/13.6 inch IPS/Mac OS/Đen) (2022)', 'https://hanoicomputercdn.com/media/product/67775_apple_macbook_air_7.png', 2, 1, ' Đen', 'CPU: Apple M2 || RAM: 8GB || Ổ cứng: 256GB SSD || VGA: Onboard || Màn hình: 13.6 inch Retina IPS || HĐH: Mac OS || Màu: Đen', 100, 27499000),
(9, 'Apple Macbook Pro 14” (MKGR3SA/A) (Apple M1 Pro/16GB RAM/512GB SSD/14.2 inch/Mac OS/Bạc) (2021)', 'https://hanoicomputercdn.com/media/product/61326_apple_macbook_pro_14_4.jpg', 2, 1, ' Bạc', 'CPU: Apple M1 Pro || RAM: 16GB || Ổ cứng: 512GB SSD || VGA: M1 || Màn hình: 14.2 inch Retina || Bàn phím: có đèn led || HĐH: Mac OS || Màu: Bạc', 100, 44999000),
(10, 'Apple Macbook Air (MLXW3SA/A) (Apple M2/8C CPU/8C GPU/8GB RAM/256GB SSD/13.6 inch IPS/Mac OS/Xám) (2022)', 'https://hanoicomputercdn.com/media/product/67777_apple_macbook_air_7.png', 2, 1, ' Xám', 'CPU: Apple M2 || RAM: 8GB || Ổ cứng: 256GB SSD || VGA: Onboard || Màn hình: 13.6 inch Retina IPS || HĐH: Mac OS || Màu: Xám', 100, 27499000),
(11, 'Apple Macbook Air 13 (MGN93SA/A) (Apple M1/8GB RAM/256GB SSD/13.3 inch IPS/Mac OS/Bạc) (NEW)', 'https://hanoicomputercdn.com/media/product/56562_mba__4_.png', 2, 1, ' Bạc', 'CPU: Apple M1 || RAM: 8GB || Ổ cứng: 256GB SSD || VGA: Onboard || Màn hình: 13.3 inch Retina IPS || HĐH: Mac OS || Màu: Bạc', 100, 18999000),
(12, 'Apple Macbook Pro 16 (MNWC3SA/A) (Apple M2 Pro 12C CPU/19C GPU/16GB RAM/512GB SSD/16.0 inch/Mac OS/Bạc) (2023)', 'https://hanoicomputercdn.com/media/product/71141_apple_macbook_pro_16_silver_5.png', 2, 1, ' Bạc', 'CPU: Apple M2 Pro (12C CPU/19C GPU) || RAM: 16GB || Ổ cứng: 512GB SSD || VGA: M2 || Màn hình: 16.2 inch Retina 120Hz || HĐH: Mac OS || Màu: Bạc', 100, 61999000),
(13, 'Apple Macbook Pro 16 (MNW83SA/A) (Apple M2 Pro 12C CPU/19C GPU/16GB RAM/512GB SSD/16.0 inch/Mac OS/Xám) (2023)', 'https://hanoicomputercdn.com/media/product/71140_apple_macbook_pro_16_grey_5.png', 2, 1, ' Xám', 'CPU: Apple M2 Pro (12C CPU/19C GPU) || RAM: 16GB || Ổ cứng: 512GB SSD || VGA: M2 || Màn hình: 16.2 inch Retina 120Hz || HĐH: Mac OS || Màu: Xám', 100, 61999000),
(14, 'Apple Macbook Pro 14 (MPHK3SA/A) (Apple M2 Max 12C CPU/30C GPU/32GB RAM/1TB SSD/14.2 inch/Mac OS/Bạc) (2023)', 'https://hanoicomputercdn.com/media/product/71139_apple_macbook_pro_14_silver_5.png', 2, 1, ' Bạc', 'CPU: Apple M2 Max (12C CPU/30C GPU) || RAM: 32GB || Ổ cứng: 1TB SSD || VGA: M2 || Màn hình: 14.2 inch Retina 120Hz || HĐH: Mac OS || Màu: Bạc', 100, 75499000),
(15, 'Apple Macbook Pro 14 (MPHG3SA/A) (Apple M2 Max 12C CPU/30C GPU/32GB RAM/1TB SSD/14.2 inch/Mac OS/Xám) (2023)', 'https://hanoicomputercdn.com/media/product/71138_apple_macbook_pro_14_gray_5.png', 2, 1, ' Xám', 'CPU: Apple M2 Max (12C CPU/30C GPU) || RAM: 32GB || Ổ cứng: 1TB SSD || VGA: M2 || Màn hình: 14.2 inch Retina 120Hz || HĐH: Mac OS || Màu: Xám', 100, 75499000),
(16, 'Asus Vivobook 15 OLED A1505VA-L1114 (i5 13500H/16GB RAM/512GB SSD/15.6 Oled/Win11/Đen)', 'https://hanoicomputercdn.com/media/product/71158_a1505va_l1114w.png', 2, 2, ' Đen', 'CPU: Intel® Core™ i5 13500H (upto 4.70GHz, 18MB) || RAM: 16GB || Ổ cứng: 512GB M.2 NVMe™ PCIe® 3.0 || VGA: Intel® Iris Xe Graphics || Màn hình: 15.6inch FHD (1920 x 1080) OLED 16:9, 400nits, 100% DCI-P3 || Màu: Đen || Tính năng: Bảo mật vân tay || OS: Windows 11', 100, 19999000),
(17, 'Laptop Asus ExpertBook B1500CBA-BQ0249W (i5 1235U/8GB RAM/512GB SSD/15.6 FHD/Win11/Đen)', 'https://hanoicomputercdn.com/media/product/71393_expertbook_b1500cba_13.png', 2, 2, ' Đen', 'CPU: Intel Core i5-1235U (up to 4.4Ghz, 12MB) || RAM: 8GB DDR4 on board, tối đa 40GB || Ổ cứng: 256GB M.2 NVMe™ PCIe® 4.0 || VGA: || Đồ họa Intel Iris Xᵉ (có sẵn choi5/i7/i9 bộ nhớ kênh đôi) || Màn hình: 15.6 inch FHD (1920 x 1080) IPS, LED, 250nits, NTSC: 45% || Tính năng: Bảo mật vân tay, Đèn nền bàn phím || Màu sắc: Đen || OS: Windows 11 Home', 100, 16499000),
(18, 'Laptop Asus ExpertBook B1400CBA-EB0641W (i5 1235U/8GB RAM/512GB SSD/14 FHD/Win11/Đen)', 'https://hanoicomputercdn.com/media/product/71394_expertbook_b1400cba_14.png', 2, 2, ' Đen', 'CPU: Intel® Core™ i5-1235U (12M Cache, up to 4.4 GHz) || RAM: 8GB DDR4 on board, nâng cấp tối đa 40GB || Ổ cứng: 512GB M.2 NVMe™ PCIe® 4.0 || VGA: Đồ họa Intel® Iris® Xe || Màn hình: 14.0-inch, FHD (1920 x 1080) 16:9, LED, 220nits, NTSC: 45% || Tính năng: Bảo mật vân tay || Màu sắc: Đen || OS: Windows 11 Home', 100, 16499000),
(19, 'Laptop Asus VivoBook TN3402YA-LZ026W (R5 7530U/16GB RAM/512GB SSD/14 Cảm ứng/Win11/Bạc)', 'https://hanoicomputercdn.com/media/product/71266_tn3402ya_lz026w.png', 2, 2, ' Bạc', 'Cpu: AMD Ryzen™ 5 7530U Processor (16MB, upto 4.50GHz) || Ram: 16GB (8GB DDR4 onboard + 8GB DDR4 cắm rời) || Ổ cứng: 512GB M.2 NVMe™ PCIe® 3.0 || Màn hình: 14inch WUXGA (1920 x 1200) cảm ứng || VGA: AMD Radeon ™ Graphics || Màu: Bạc || Vỏ Aluminum || OS Windows 11 Home SL', 100, 17999000),
(20, 'Laptop Asus Gaming TUF FX507VV4-LP382W (i9 19300H/16GB RAM/512GB SSD/15.6 FHD 144hz/RTX 4060 8GB/Win11/Xám)', 'https://hanoicomputercdn.com/media/product/70957_laptop_asus_gaming_tuf_fx507_23_19.png', 2, 2, ' Xám', 'CPU: Intel® Core™ i9-13900H Processor 2.6 GHz (24M Cache, up to 5.4 GHz) || RAM: 16GB khe rời DDR4 3200MHz (2 khe, tối đa 32GB) || Ổ cứng: 512GB PCIe® 4.0 NVMe™ M.2 SSD || VGA: NVIDIA® GeForce RTX 4060 8GB || Màn hình: 15.6 inch FHD(1920 x 1080) IPS 144Hz 100%sRRGB || Tính năng: Đèn bàn phím || Màu : Xám || OS: Windows 11 Home', 100, 40999000),
(21, 'Laptop Asus Gaming TUF FX507ZU4-LP520W (i7 12700H/8GB RAM/512GB SSD/15.6 FHD 144hz/RTX 4050 6GB/Win11/Xám)', 'https://hanoicomputercdn.com/media/product/70958_laptop_asus_gaming_tuf_fx507_23_17.png', 2, 2, ' Xám', 'CPU: Intel® Core™ i7-12700H 2.3 GHz (24M Cache, up to 4.7 GHz) || RAM: 8GB khe rời DDR4 3200MHz (2 khe, tối đa 32GB) || Ổ cứng: 512GB PCIe® 4.0 NVMe™ M.2 SSD || VGA: NVIDIA® GeForce RTX 4050 6GB || Màn hình: 15.6 inch FHD(1920 x 1080) IPS 144Hz 100%sRRGB || Tính năng: Đèn bàn phím || Màu : Xám || OS: Windows 11 Home', 100, 32499000),
(22, 'Laptop Asus Gaming TUF FX517ZE-HN888W (i7 12650H/8GB RAM/512GB SSD/15.6 FHD 144hz/RTX 3050Ti 4GB/Win11/Đen)', 'https://hanoicomputercdn.com/media/product/70067_hacom_asus_gaming_tuf_fx517_14.png', 2, 2, ' Đen', 'CPU: Intel core i7 12650H || RAM: 8GB || Ổ cứng: 512GB SSD || VGA: NVIDIA RTX 3050Ti 4GB || Màn hình: 15.6 FHD 144hz || HĐH: Win 11 home || Màu: Đen', 100, 26499000),
(23, 'Laptop Asus Gaming TUF FX517ZC-HN077W (i5 12450H/8GB RAM/512GB SSD/15.6 FHD 144hz/RTX 3050 4GB/Win11/Đen)', 'https://hanoicomputercdn.com/media/product/66320_laptop_asus_gaming_tuf_fx517_94.png', 2, 2, ' Đen', 'CPU: Intel core i5 12450H || RAM: 8GB || Ổ cứng: 512GB SSD || VGA: NVIDIA RTX 3050 4GB || Màn hình: 15.6 FHD 144hz || HĐH: Win 11 || Màu: Đen', 100, 22499000),
(24, 'Laptop Asus VivoBook A1503ZA-L1421W (i5 12500H/8GB RAM/512GB SSD/15.6 Oled/Win11/Bạc/Balo)', 'https://hanoicomputercdn.com/media/product/67199_a1403_a1503_silver.jpg', 2, 2, ' Bạc', 'CPU Intel® Core™ i5-12500H Processor (18MB cache, up to 4.5GHz) || RAM 8GB DDR4 Onboard ( còn 1 khe ram trống) || SSD 512GB M.2 NVMe™ PCIe® 3.0 || VGA Intel® Iris® Xe Graphics || Màn hình 15.6Inch OLED FHD || Backlit Chiclet Keyboard || Màu: Bạc || OS Windows 11 Home SL', 100, 17499000),
(25, 'Laptop Asus VivoBook A1503ZA-L1422W (i5 12500H/8GB RAM/512GB SSD/15.6 Oled/Win11/Xanh/Balo)', 'https://hanoicomputercdn.com/media/product/66398_a1403_a1503.jpg', 2, 2, 'Xanh', 'CPU Intel® Core™ i5-12500H Processor (18MB cache, up to 4.5GHz) || Ram 8GB DDR4 Onboard (còn 1 khe ram trống) || SSD 512GB M.2 NVMe™ PCIe® 3.0 || VGA Intel® Iris® Xe Graphics || Display 15.6Inch OLED FHD || Backlit Chiclet Keyboard || Color Xanh || OS Windows 11 Home SL', 100, 17499000),
(26, 'Laptop Asus Gaming TUF FX506HF-HN014W (i5 11400H/8GB RAM/512GB SSD/15.6 FHD 144hz/RTX 2050 4GB/Win11/Xám)', 'https://hanoicomputercdn.com/media/product/71270_asus_gaming_tuf_fx506_19.jpg', 2, 2, ' Xám', 'CPU: Intel Core i5-11400H (upto 4.50GHz, 12MB) || RAM: 8GB DDR4 3200MHz (2x SO-DIMM, up to 32GB) || Ổ cứng: 512GB M.2 NVMe™ PCIe 3.0 || VGA: NVIDIA GeForce® RTX 2050 4GB || Màn hình: 15.6 inch FHD (1920x1080)IPS, 144Hz, 250nits, 62.5% sRGB || Màu sắc: Xám || OS: Windows 11 Home', 100, 20999000),
(27, 'Laptop Asus Gaming TUF FX507ZC-HN124W (i7 12700H/8GB RAM/512GB SSD/15.6 FHD 144hz/RTX 3050 4GB/Win11/Xám)', 'https://hanoicomputercdn.com/media/product/64502_laptop_asus_gaming_tuf_fx507zc_5.png', 2, 2, ' Xám', 'CPU: Intel Core i7 12700H || RAM: 8GB (2 khe ram) || Ổ cứng: 512GB SSD (trống 1 slot ssd nvme) || VGA: Nvidia RTX 3050 4GB || Màn hình: 15.6 inch FHD || HĐH: Win 11 || Màu: Xám || ', 100, 25999000),
(28, 'Laptop Asus Gaming TUF FX517ZC-HN079W (i5 12450H/8GB RAM/512GB SSD/15.6 FHD 144hz/RTX 3050 4GB/Win11/Trắng)', 'https://hanoicomputercdn.com/media/product/64858_laptop_asus_gaming_tuf_fx517zc_5.png', 2, 2, ' Trắng', 'CPU: Intel core i5 12450H || RAM: 8GB || Ổ cứng: 512GB SSD || VGA: NVIDIA RTX 3050 4GB || Màn hình: 15.6 FHD 144hz || HĐH: Win 11 || Màu: Trắng', 100, 22499000),
(29, 'Laptop Asus Gaming TUF FX507ZE-HN093W (i7 12700H/8GB RAM/512GB SSD/15.6 FHD 144hz/RTX 3050Ti 4GB/Win11/Xám)', 'https://hanoicomputercdn.com/media/product/66954_hacom_asus_gaming_tuf_fx507zc_126.png', 2, 2, ' Xám', 'CPU: Intel Core i7 12700H || RAM: 8GB || Ổ cứng: 512GB SSD (trống 1 slot ssd nvme) || VGA: Nvidia RTX 3050Ti 4GB/ || Màn hình: 15.6 inch FHD 144hz || HĐH: Win 11 || Màu: Xám || ', 100, 26999000),
(30, 'Laptop Asus Gaming TUF FX506LHB-HN188W (i5 10300H/8GB RAM/512GB SSD/15.6 FHD 144Hz /GTX 1650 4GB/Win11/Đen)', 'https://hanoicomputercdn.com/media/product/65287_laptop_asus_gaming_tuf_fx506lhb_14.jpeg', 2, 2, ' Đen', 'CPU: Intel® Core™ i5-10300H 2.5 GHZ (8M Cache, up to 4.5 GHz, 4 nhân 8 luồng) || RAM: 8GB DDR4 SO-DIMM 2933MHz || Ổ cứng: 512GB M.2 NVMe™ PCIe® 3.0 SSD || VGA: NVIDIA GTX 1650 4GB || Màn hình: 15.6-inch, FHD (1920 x 1080) 144hz, 16:9,NTSC: 45%, Độ sáng :250nits || Phím: có đèn led || HĐH: Win 11 || Màu: Đen', 100, 16699000),
(31, 'Laptop Dell Vostro 3400 (i3 1115G4 8GB RAM/256GB SSD/14.0 inch FHD/Ubuntu/Đen) (NK_Bảo hành tại HACOM)', 'https://hanoicomputercdn.com/media/product/71119_hacom_dell_vostro_3400_10.jpeg', 2, 3, ' Đen', 'CPU: Intel® Core™ i3-1115G4 (tối đa 4.10GHz, 6MB) || RAM: 8GB(8GBX1)DDR4 3200MHz (2 khe) || Ổ cứng: 256GB SSD M.2 PCIe NVMe || VGA: Intel HD Graphics || Màn hình: 14 inch FHD (1920 x 1080) 60Hz, WVA || Pin: 42Wh, 3 cell, || Màu sắc: Đen || OS: Ubuntu', 100, 9799000),
(32, 'Laptop Dell Inspiron 5620 (N6I7009W1) (i7 1255U 16GB RAM/512GB SSD/16.0 inch FHD+/Win11/Office HS21/Bạc)', 'https://hanoicomputercdn.com/media/product/71285_laptop_dell_inspiron_16_5625_19.png', 2, 3, ' Silver', 'CPU: Intel Core i7 1255U (Up to 4.7 Ghz, 18Mb) || RAM: 16GB (2*8) DDR4 3200Mhz (2 khe tối đa 32Gb) || Ổ cứng: 512Gb M.2 PCIe NVMe SSD || VGA: NVIDIA GeForce MX570 2GB DDR6 || Màn hình: 16inch FHD (1920 x 1200) Anti-Glare 300 nits || Màu sắc: Silver || OS: Windows 11 Home SL + Office Home and Student', 100, 25499000),
(33, 'Laptop Dell Vostro 13 5320 (M32DH1) (i5 1240P/8GB RAM/256GB SSD/13.3 inch FHD+/ Win11/Office HS21/Xám) ', 'https://hanoicomputercdn.com/media/product/67913_laptop_dell_vostro_13_5320_5.png', 2, 3, ' Xám', 'CPU: Intel® Core™ i5-1240P (up to 4.40 GHz, 18 MB) || RAM: 8GB LPDDR5 4800 MHz ( onboard) || Ổ cứng: 256GB M.2 PCIe NVMe SSD || VGA: Intel® Iris® Xe Graphics || Màn hình: 13.3 inch FHD+ (1920 x 1200) || Màu : Xám || OS: Windows 11 Home SL + Microsoft Office Home and Studen 2021', 100, 20999000),
(34, 'Laptop Dell Inspiron 3520 (71003264) (i3 1215U 8GB RAM/512GB SSD/15.6 inch FHD/Win11/OfficeHS21/Đen)', 'https://hanoicomputercdn.com/media/product/71329_laptop_dell_inspiron_3520_3.png', 2, 3, ' Đen', 'CPU: Intel Core i3-1215U(Up to 4.40 GHz, 10MB) || RAM: 8GB (1x8GB) DDR4 2666MHz (2 khe) || Ổ cứng: 512GB SSD NVMe || VGA: Intel UHD Graphic || Màn hình: 15.6 inch FHD (1920 x 1080) LED-Backlit, 250 nit || Màu: Đen || OS: Windows 11 Home SL + Office Home and Student 2021', 100, 13999000),
(35, 'Laptop Dell Inspiron 3501 (3692BLK) (i3 1115G4 8GB RAM/256GB SSD/15.6 inch FHD Cảm ứng/Win10/Đen) (NK_Bảo hành tại HACOM)', 'https://hanoicomputercdn.com/media/product/63675_laptop_dell_inspiron_3501_4.jpg', 2, 3, ' Đen', 'CPU: Intel Core i3 1115G4 || RAM: 8GB || Ổ cứng: 256GB SSD || VGA: Onboard || Màn hình: 15.6 inch FHD Cảm ứng || HĐH: Win10 || Màu: Đen', 100, 10599000),
(36, 'Laptop Dell Allienware Gaming M15 R6 (P109F001CBL) (i7 11800H/32GB RAM/1TB SSD/RTX3060 6G/15.6 inch QHD 240Hz/Win11/OfficeHS21/Xám đen) ', 'https://hanoicomputercdn.com/media/product/68934_allienware_gaming_m15_r5_01_19.jpeg', 2, 3, ' Xám Đen', 'CPU: Intel Core i7-11800H (24MB Cache, 2.30 GHz, Turbo Boost 4.6 GHz) || RAM: 32GB DDR4 3200Mhz (2*16GB) || Ổ cứng: 1TB SSD M.2 PCIe NVMe || VGA: Nvidia Geforce RTX3060 6G || Màn hình: 15.6 inch QHD (2560 x 1440) 240Hz 2ms, NVIDIA G-SYNC || Bàn phím: led RGB || HĐH: Win 11 + Office Home & Student 2021 || Màu: Xám Đen', 100, 44999000),
(37, 'Laptop Dell Inspiron 3520 (N3520-i5U085W11BLU) (i5 1235U 8GB RAM/512GB SSD/15.6 inch FHD/Win11/OfficeHS21/Đen)', 'https://hanoicomputercdn.com/media/product/68069_laptop_dell_inspiron_3520_3.png', 2, 3, ' Đen', 'CPU: Intel Core i5-1235U (Up to 4.40 GHz, 12MB) || RAM: 8GB (1x8GB) DDR4 2666MHz (2 khe) || Ổ cứng: 512GB SSD NVMe || VGA: Intel Iris Xe Graphics || Màn hình: 15.6 inch FHD (1920 x 1080) LED-Backlit, 250 nit || Màu: Đen || OS: Windows 11 Home SL + Office Home and Student 2021', 100, 17299000),
(38, 'Laptop Dell Vostro 5620 (70282719) (i5 1240P 16GB/512GB SSD/16.0FHD+/Win11/OfficeHS21/Xám)', 'https://hanoicomputercdn.com/media/product/66383_hacom_dell_vostro_5620_6.png', 2, 3, ' Xám', 'CPU: Intel® Core™ i5-1240P (3.30 GHz up to 4.20 GHz, 12MB) || RAM: 16GB (2x8GB) DDR4 3200MHz || Ổ cứng: 512GB M.2 PCIe NVMe SSD || VGA: Intel® Iris® Xe Graphics || Màn hình: 16.0-inch 16:10 FHD+ (1920 x 1200) Anti-Glare Non-Touch 250nits || Màu sắc: Xám || OS: Win 11 Home', 100, 22599000),
(39, 'Laptop Dell Inspiron 5620 (N5620-i5P165W11SLU) (i5 1240P 16GB RAM/512GB SSD/16.0 inch FHD+/Win11/Office HS21/Bạc)', 'https://hanoicomputercdn.com/media/product/68067_laptop_dell_inspiron_5620_14.png', 2, 3, ' Bạc', 'CPU: Intel® Core™ i5 1240P (up to 4.40 GHz, 12MB) || RAM: 16GB DDR4 3200MHz || Ổ cứng: 512GB M.2 PCIe NVMe SSD || VGA: Intel Iris XE || Màn hình: 16.0 inch FHD+ WVA Anti-glare 16:10 || Tính nắng: Bảo mật vân tay || Màu : Bạc || OS: Windows 11 Home + Office HS 2021', 100, 22599000),
(40, 'Laptop Dell Inspiron 5620 (N6I7110W1) (i7 1255U 8GB RAM/512GB SSD/16.0 inch FHD+/Win11/Office HS21/Bạc)', 'https://hanoicomputercdn.com/media/product/67916_laptop_dell_inspiron_16_5625_12.png', 2, 3, ' Silver', 'CPU: Intel Core i7 1255U (Up to 4.7 Ghz, 18Mb) || RAM: 8GB DDR4 3200Mhz (2 khe tối đa 32Gb) || Ổ cứng: 512Gb M.2 PCIe NVMe SSD || VGA: Intel Iris XE graphic || Màn hình: 16inch FHD (1920 x 1200) Anti-Glare 300 nits || Màu sắc: Silver || OS: Windows 11 Home SL + Office Home and Student', 100, 22699000),
(41, 'Laptop Dell Vostro 3420 (V4I7310W1) (i7 1255U 8GB RAM/512GB SSD/MX550 2G/14.0FHD/Win11/OfficeHS21/Xám)', 'https://hanoicomputercdn.com/media/product/70105_hacom_dell_vostro_3420_6.png', 2, 3, ' Xám', 'CPU: Intel® Core™ i7 1255U || RAM: 8GB (8GBx1) DDR4 3200MHz ( 2 khe) || Ổ cứng: 512GB M.2 PCIe NVMe SSD || VGA: Nvidia MX550 2G || Màn hình: 14-inch, FHD (1920x1080), 60Hz || Màu sắc: Xám || OS: Win 11 Home SL + Office Home and Student 2021', 100, 22499000),
(42, 'Laptop Dell Inspiron T7420 2 in 1 (N4I5021W) (i5 1235U/8GB RAM/512GB SSD/14.0inch FHD+/Cảm ứng/Bút/Win11/Office HS21/Bạc)', 'https://hanoicomputercdn.com/media/product/67022_laptop_dell_inspiron_t7420_4.png', 2, 3, ' Bạc', 'CPU: Intel® Core™ i5-1235U ( up to 4.40 GHz, 12 MB) || RAM: 8GB LPDDR4 3200Mhz onboard || Ổ cứng: 512GB SSD NVMe || VGA: Integrated Intel® Iris® XE Graphics || Màn hình: 14 inch FHD (1920 x 1200) Truelife - cảm ứng || Màu sắc: Bạc || OS: Windows 11 Home SL + Microsoft Office Home and Studen 2021', 100, 21899000),
(43, 'Laptop Dell Inspiron 7420 2 in 1 (1YT85) (i7 1255U/16GB RAM/512GB SSD/MX550 2G//14.0inch FHD+/Cảm ứng/Win11/Office HS21/Bạc) ', 'https://hanoicomputercdn.com/media/product/67551_laptop_dell_inspiron_7420_16.jpg', 2, 3, ' Bạc', 'CPU: Intel® Core™ i7-1255U (3.50GHz upto 4.70GHz, 12MB) || RAM: 16GB LPDDR4 3200Mhz onboard || Ổ cứng: 512GB SSD M.2 2230 PCIe || VGA: NVIDIA MX550 2GB GDDR6 || Màn hình: 14.0inch FHD+(1920 x 1200) 60Hz, Touch, WVA, TrueLife™, Narrow Border, Pen Support || Tính năng: Bảo mật vân tay, Đèn bàn phím, có kèm bút || Màu: Bạc || OS: Windows 11 Home SL + Microsoft Office Home and Studen 2021', 100, 30699000),
(44, 'Laptop Dell Inspiron 5420 (DGDCG2) (i7 1255U/8GB/512GB SSD/14.0FHD+/Win11/Office HS21/Bạc)', 'https://hanoicomputercdn.com/media/product/68550_laptop_dell_inspiron_14_5420_9.png', 2, 3, ' Bạc', 'CPU: Intel Core i7-1255U (3.50 GHz upto 4.70 GHz, 12MB) || RAM: 8GB DDR4 3200 MHz || Ổ cứng: 512GB SSD || VGA: Intel ỉris Xe || Màn hình: 14.0-inch 16:10 FHD+ (1920 x 1200) || Màu : Bạc || OS: Windows 11 Home SL + Office Home Student 2021', 100, 22999000),
(45, 'Laptop Dell Vostro 5620 (70296963) (i5 1240P 8GB/512GB SSD/MX570 2GB/16.0FHD+/Win11/OfficeHS21/Xám)', 'https://hanoicomputercdn.com/media/product/67794_hacom_dell_vostro_5620_13.png', 2, 3, ' Xám', 'CPU: Intel® Core™ i5-1240P (up to 4.40 GHz, 12MB) || RAM: 8GB DDR4 3200MHz || Ổ cứng: 512GB M.2 PCIe NVMe SSD || VGA: NVIDIA GeForce MX570 2GB GDDR6 || Màn hình: 16.0 inch FHD+ WVA Anti-glare 16:10 || Tính nắng: Bảo mật vân tay || Màu : Xám || OS: Windows 11 Home + Office HS 2021', 100, 22999000),
(46, 'Máy tính bảng Apple Ipad Gen 9 10.2 (MK2L3ZA/A) (64GB/Wifi/10.2 inch/Bạc/2021)', 'https://hanoicomputercdn.com/media/product/64422_may_tinh_bang_apple_ipad_gen_9_10_2_2.png', 3, 1, 'Bạc', 'Chip: A13 Bionic chip with 64-bit architecture || Dung lượng:64GB || Mầu sắc: Silver || Màn hình: Retina 10.2-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 8MP Wide || Wi-Fi, Bluetooth 4.2 || Hỗ trợ: Bút Apple Pencil (Gen 1) || Cân nặng: 487gr || Hệ điều hành: iPadOS 15 || Phụ kiện: củ sạc + cáp (bên trong hộp máy)', 100, 7899000),
(47, 'Máy tính bảng Apple Ipad Gen 9 10.2 (MK2K3ZA/A) (64GB/Wifi/10.2 inch/Xám/2021)', 'https://hanoicomputercdn.com/media/product/64423_may_tinh_bang_apple_ipad_gen_9_10_2_2.png', 3, 1, 'Xám', 'Chip: A13 Bionic chip with 64-bit architecture || Dung lượng: 64GB || Mầu sắc: Dark Gray || Màn hình: Retina 10.2-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 8MP Wide || Wi-Fi, Bluetooth 4.2 || Hỗ trợ: Bút Apple Pencil (Gen 1) || Cân nặng: 487gr || Hệ điều hành: iPadOS 15 || Phụ kiện: củ sạc + cáp (bên trong hộp máy)', 100, 7899000),
(48, 'Máy tính bảng Apple Ipad mini 8.3 (MK7P3ZA/A) (64GB/Wifi/8.3 inch/Bạc/2021)', 'https://hanoicomputercdn.com/media/product/64509_may_tinh_bang_apple_ipad_mini_8_3_3.png', 3, 1, 'Bạc', 'Chip: A15 Bionic chip with 64-bit architecture || Dung lượng: 64GB || Mầu sắc: Bạc || Mạng không dây: Wifi || Màn hình: Liquid Retina 8.3\"-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 12MP Wide', 100, 12899000),
(49, 'Máy tính bảng Apple Ipad Gen 9 10.2 (MK4H3ZA/A) (256GB/Wifi/10.2 inch/4G/Bạc/2021)', 'https://hanoicomputercdn.com/media/product/64418_may_tinh_bang_apple_ipad_gen_9_10_2_2.png', 3, 1, 'Bạc', 'Chip: A13 Bionic chip with 64-bit architecture || Dung lượng: 256GB || Mầu sắc: Silver || Màn hình: Retina 10.2-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 8MP Wide || Wi-Fi, Bluetooth 4.2, LTE || Hỗ trợ: Bút Apple Pencil (Gen 1) || Cân nặng: 487gr || Hệ điều hành: iPadOS 15 || Phụ kiện: củ sạc + cáp (bên trong hộp máy)', 100, 16299000),
(50, 'Máy tính bảng Apple Ipad Gen 9 10.2 (MK493ZA/A) (64GB/Wifi/10.2 inch/4G/Bạc/2021)', 'https://hanoicomputercdn.com/media/product/64424_may_tinh_bang_apple_ipad_gen_9_10_2_2.png', 3, 1, 'Bạc', 'Chip: A13 Bionic chip with 64-bit architecture || Dung lượng: 64GB || Mầu sắc: Silver || Màn hình: Retina 10.2-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 8MP Wide || Wi-Fi, Bluetooth 4.2, LTE || Hỗ trợ: Bút Apple Pencil (Gen 1) || Cân nặng: 487gr || Hệ điều hành: iPadOS 15 || Phụ kiện: củ sạc + cáp (bên trong hộp máy)', 100, 12499000),
(51, 'Máy tính bảng Apple Ipad Gen 9 10.2 (MK473ZA/A) (64GB/Wifi/10.2 inch/4G/Xám/2021)', 'https://hanoicomputercdn.com/media/product/64425_may_tinh_bang_apple_ipad_gen_9_10_2_2.png', 3, 1, 'Xám', 'Chip: A13 Bionic chip with 64-bit architecture || Dung lượng: 64GB || Mầu sắc: Dark Gray || Màn hình: Retina 10.2-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 8MP Wide || Wi-Fi, Bluetooth 4.2, LTE || Hỗ trợ: Bút Apple Pencil (Gen 1) || Cân nặng: 487gr || Hệ điều hành: iPadOS 15 || Phụ kiện: củ sạc + cáp (bên trong hộp máy)', 100, 12499000),
(52, 'Máy Tính Bảng Apple Ipad Pro 12.9 M1 (MHR83ZA/A) (512GB/12.9 inch/Wifi/5G/Xám/2021)', 'https://hanoicomputercdn.com/media/product/59149_may_tinh_bang_apple_ipad_pro_12_9_m1_xam_2021_0000_1.jpg', 3, 1, ' Xám', 'Kích thước màn hình: 12.9 inch || Dung lượng bộ nhớ: 512GB || LTE 4G(khe sim): Có || Màu: Xám', 100, 38999000),
(53, 'Máy Tính Bảng Apple Ipad Pro 12.9 M1 (MHR93ZA/A) (512GB/12.9 inch/Wifi/5G/Bạc/2021)', 'https://hanoicomputercdn.com/media/product/59150_may_tinh_bang_apple_ipad_pro_12_9_m1_bac_2021_0000_1.jpg', 3, 1, 'Bạc', 'Kích thước màn hình: 12.9 inch || Dung lượng bộ nhớ: 512GB || LTE 4G(khe sim): Có || Màu: bạc || ', 100, 38899000),
(54, 'Máy Tính Bảng Apple Ipad Pro 12.9 M1 (MHNF3ZA/A) (128GB/12.9 inch/Wifi/Xám/2021)', 'https://hanoicomputercdn.com/media/product/59137_may_tinh_bang_apple_ipad_pro_12_9_m1_xam_2021_0000_1.jpg', 3, 1, ' Bạc', 'Kích thước màn hình: 12.9 inch || Dung lượng bộ nhớ: 1TB || LTE 4G(khe sim): Không || Màu: Bạc', 100, 27799000),
(55, 'Máy Tính Bảng Apple Ipad Pro 12.9 M1 (MHNG3ZA/A) (128GB/12.9 inch/Wifi/Bạc/2021)', 'https://hanoicomputercdn.com/media/product/59138_may_tinh_bang_apple_ipad_pro_12_9_m1_bac_2021_0000_1.jpg', 3, 1, ' Bạc', 'Kích thước màn hình: 12.9 inch || Dung lượng bộ nhớ: 128GB || LTE 4G(khe sim): Không || Màu: Bạc', 100, 27799000),
(56, 'Máy tính bảng Apple Ipad mini 8.3 (MLX93ZA/A) (256GB/Wifi/5G/8.3 inch/Hồng/2021)', 'https://hanoicomputercdn.com/media/product/64523_may_tinh_bang_apple_ipad_mini_8_3_3.png', 3, 1, 'Hồng', 'Chip: A15 Bionic chip with 64-bit architecture || Dung lượng: 256GB || Mầu sắc: Hồng || Mạng không dây: Wifi/5G || Màn hình: Liquid Retina 8.3\"-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 12MP Wide', 100, 22499000),
(57, 'Máy tính bảng Apple Ipad mini 8.3 (MLX43ZA/A) (64GB/Wifi/5G/8.3 inch/Hồng/2021)', 'https://hanoicomputercdn.com/media/product/64519_may_tinh_bang_apple_ipad_mini_8_3_3.png', 3, 1, 'Hồng', 'Chip: A15 Bionic chip with 64-bit architecture || Dung lượng: 64GB || Mầu sắc: Hồng || Mạng không dây: Wifi/5G || Màn hình: Liquid Retina 8.3\"-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 12MP Wide', 100, 17999000),
(58, 'Máy tính bảng Apple Ipad mini 8.3 (MLWR3ZA/A) (256GB/Wifi/8.3 inch/Hồng/2021)', 'https://hanoicomputercdn.com/media/product/64515_may_tinh_bang_apple_ipad_mini_8_3_3.png', 3, 1, 'Hồng', 'Chip: A15 Bionic chip with 64-bit architecture || Dung lượng: 256GB || Mầu sắc: Hồng || Mạng không dây: Wifi || Màn hình: Liquid Retina 8.3\"-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 12MP Wide', 100, 17999000),
(59, 'Máy tính bảng Apple Ipad mini 8.3 (MLWL3ZA/A) (64GB/Wifi/8.3 inch/Hồng/2021)', 'https://hanoicomputercdn.com/media/product/64511_may_tinh_bang_apple_ipad_mini_8_3_3.png', 3, 1, 'Hồng', 'Chip: A15 Bionic chip with 64-bit architecture || Dung lượng: 64GB || Mầu sắc: Hồng || Mạng không dây: Wifi || Màn hình: Liquid Retina 8.3\"-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 12MP Wide', 100, 13999000),
(60, 'Máy tính bảng Apple Ipad mini 8.3 (MK8K3ZA/A) (256GB/Wifi/5G/8.3 inch/Tím/2021)', 'https://hanoicomputercdn.com/media/product/64522_may_tinh_bang_apple_ipad_mini_8_3_3.png', 3, 1, 'Tím', 'Chip: A15 Bionic chip with 64-bit architecture || Dung lượng: 256GB || Mầu sắc: Tím || Mạng không dây: Wifi/5G || Màn hình: Liquid Retina 8.3\"-inch LED-Blacklit Multi-Touch, IPS technology || Camera: 12MP Wide', 100, 22499000),
(61, 'Máy tính bảng Samsung Galaxy Tab A8 X205 (64GB/10.5 inch/Wifi/4G/Android 11/Xám) (2022)', 'https://hanoicomputercdn.com/media/product/65742_may_tinh_bang_samsung_galaxy_tab_a8_2.png', 3, 4, 'Xám', 'Thiết kế hiện đại, nhỏ gọn - Vẻ ngoài mỏng nhẹ, sang trọng, cầm nắm chắc chắn || Màn hình rộng, hiển thị rõ nét - Màn hình TFT 10.5 inch cùng khung viền mỏng || Hiệu năng ổn định - Vi xử lý Octa-cor, RAM 4 GB dung lượng lớn 64GB || Pin dung lượng 7040 mAh, thoải mái sử dụng', 100, 6999000),
(62, 'Máy tính bảng Samsung Galaxy Tab S7 FE (64GB/12.4 inch/Wifi/4G/Android 11/ Bút cảm ứng/Đen) (2021)', 'https://hanoicomputercdn.com/media/product/60375_may_tinh_bang_samsung_galaxy_tab_s7_fe_64gb_den_2021.png', 3, 4, ' Đen', 'Màn hình 12.4 inch || Bộ nhớ: 64GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: Đen', 100, 12299000),
(63, 'Máy tính bảng Samsung Galaxy Tab A8 X205 (64GB/10.5 inch/Wifi/4G/Android 11/Bạc) (2022)', 'https://hanoicomputercdn.com/media/product/65741_may_tinh_bang_samsung_galaxy_tab_a8_1.png', 3, 4, 'Bạc', 'Thiết kế hiện đại, nhỏ gọn - Vẻ ngoài mỏng nhẹ, sang trọng, cầm nắm chắc chắn || Màn hình rộng, hiển thị rõ nét - Màn hình TFT 10.5 inch cùng khung viền mỏng || Hiệu năng ổn định - Vi xử lý Octa-cor, RAM 4 GB dung lượng lớn 64GB || Pin dung lượng 7040 mAh, thoải mái sử dụng', 100, 7099000),
(64, 'Máy tính bảng Samsung Galaxy Tab A7 Lite (T225) (32GB/8.7 inch/Wifi/4G/Android 11/Xám) (2021)', 'https://hanoicomputercdn.com/media/product/60368_may_tinh_bang_samsung_galaxy_tab_a7_lite_t225_xam_2021_4.png', 3, 4, ' Xám', 'Màn hình 8.7 inch || Bộ nhớ: 32GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: Xám', 100, 3999000),
(65, 'Máy tính bảng Samsung Galaxy Tab A8 (T295) (32GB/8 inch/Wifi/4G/Android 9.0/Bạc) (2019)', 'https://hanoicomputercdn.com/media/product/52585_may_tinh_bang_samsung_galaxy_tab_a8_t295_32gb_8_inch_wifi_4g_android_9_0_bac_2019____1_.jpg', 3, 4, 'Bạc', '', 100, 3099000),
(66, 'Máy tính bảng Samsung Galaxy Tab A8 (T295) (32GB/8 inch/Wifi/4G/Android 9.0/Đen) (2019)', 'https://hanoicomputercdn.com/media/product/52582_may_tinh_bang_samsung_galaxy_tab_a8_t295_32gb_8_inch_wifi_4g_android_9_0_den_2019__1_.jpg', 3, 4, 'Đen', '', 100, 3099000),
(67, 'Máy tính bảng Samsung Galaxy Tab A7 Lite (T225) (32GB/8.7 inch/Wifi/4G/Android 11/Bạc) (2021)', 'https://hanoicomputercdn.com/media/product/60369_may_tinh_bang_samsung_galaxy_tab_a7_lite_t225_bac_2021_5.png', 3, 4, 'Bạc', 'Màn hình 8.7 inch || Bộ nhớ: 32GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: bạc', 100, 4099000),
(68, 'Máy tính bảng Samsung Galaxy Tab A7 (T505) (64GB/10.4 inch/Wifi/4G/Android 10/Vàng) (2020)', 'https://hanoicomputercdn.com/media/product/60366_may_tinh_bang_samsung_galaxy_tab_a7_t505_64gb_2020_4.png', 3, 4, 'Vàng', 'Màn hình 10.4 inch || Bộ nhớ: 64GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: vàng', 100, 7869000),
(69, 'Máy tính bảng Samsung Galaxy Tab A7 (T505) (64GB/10.4 inch/Wifi/4G/Android 10/Xám) (2020)', 'https://hanoicomputercdn.com/media/product/60367_may_tinh_bang_samsung_galaxy_tab_a7_t505_64gb_xam_2020_5.png', 3, 4, ' Xám', 'Màn hình 10.4 inch || Bộ nhớ: 64GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: Xám', 100, 7869000),
(70, 'Máy tính bảng Samsung Galaxy Tab S7 Plus (128GB/12.4 inch/Wifi/4G/Android 10/Bút cảm ứng/Đen) ', 'https://hanoicomputercdn.com/media/product/60370_may_tinh_bang_samsung_galaxy_tab_s7_plus_128gb_den.png', 3, 4, ' Đen', 'Màn hình 12.4 inch || Bộ nhớ: 128GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: Đen', 100, 23509000),
(71, 'Máy tính bảng Samsung Galaxy Tab S7 Plus (128GB/12.4 inch/Wifi/4G/Android 10/Bút cảm ứng/Vàng đồng) ', 'https://hanoicomputercdn.com/media/product/60371_may_tinh_bang_samsung_galaxy_tab_s7_plus_128gb_vang.png', 3, 4, ' Vàng đồng', 'Màn hình 12.4 inch || Bộ nhớ: 128GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: Vàng đồng', 100, 23509000),
(72, 'Máy tính bảng Samsung Galaxy Tab S7 (128GB/11 inch/Wifi/4G/Android 10/Bút cảm ứng/Đen) ', 'https://hanoicomputercdn.com/media/product/60372_may_tinh_bang_samsung_galaxy_tab_s7_128gb_den.png', 3, 4, ' Đen', 'Màn hình 11 inch || Bộ nhớ: 128GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: Đen', 100, 23509000),
(73, 'Máy tính bảng Samsung Galaxy Tab S7 (128GB/11 inch/Wifi/4G/Android 10/Bút cảm ứng/Vàng)', 'https://hanoicomputercdn.com/media/product/60373_may_tinh_bang_samsung_galaxy_tab_s7_128gb_vang.png', 3, 4, 'Vàng', 'Màn hình 11 inch || Bộ nhớ: 128GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: vàng', 100, 18169000),
(74, 'Máy tính bảng Samsung Galaxy Tab S7 FE (64GB/12.4 inch/Wifi/4G/Android 11/Bút cảm ứng/Xanh lá) (2021)', 'https://hanoicomputercdn.com/media/product/60374_may_tinh_bang_samsung_galaxy_tab_s7_fe_64gb_xanh_2021.png', 3, 4, ' Xanh', 'Màn hình 12.4 inch || Bộ nhớ: 64GB || Hỗ trợ mạng: Wifi + 4G || Hệ điều hành: Android || Màu: Xanh', 100, 14129000),
(75, 'iPhone 12 128GB Xanh lá (MGJF3VN/A)', 'https://hanoicomputercdn.com/media/product/64657_iphone_12_2.jpg', 1, 1, 'Xanh', 'Công nghệ màn hình: OLED || Độ phân giải: 1170 x 2532 Pixels, 2 camera 12 MP, 12 MP || Màn hình rộng: 6.1\" || Hệ điều hành: iOS 14 || Chip xử lý (CPU): Apple A14 Bionic 6 nhân || Bộ nhớ trong (ROM): 128GB || RAM: 4 GB || Mạng di động: Hỗ trợ 5G || Số khe sim: 1 Nano SIM & 1 eSIM || Trọng lượng: 164 g || Dung lượng pin: 2815 mAh', 100, 17999000),
(76, 'iPhone 13 Pro Max 256GB Vàng (MLLD3VN/A)', 'https://hanoicomputercdn.com/media/product/64710_iphone_13_pro_max_2.png', 1, 1, 'Vàng', 'Công nghệ màn hình: OLED || Độ phân giải: 1284 x 2778 Pixels, 3 camera 12 MP, 12 MP || Hệ điều hành: iOS 15 || Chip xử lý (CPU): Apple A15 Bionic 6 nhân || Bộ nhớ trong (ROM): 256GB || RAM: 6 GB || Mạng di động: Hỗ trợ 5G || Số khe sim: 1 Nano SIM & 1 eSIM', 100, 32999000),
(77, 'iPhone 14 Plus 256GB Trắng', 'https://hanoicomputercdn.com/media/product/67894_iphone_14_plus_3.png', 1, 1, 'Trắng', '', 100, 28299000),
(78, 'iPhone 14 256GB Đỏ', 'https://hanoicomputercdn.com/media/product/67910_iphone_14_3.png', 1, 1, 'Đỏ', '', 100, 25599000),
(79, 'iPhone 14 Plus 256GB Đỏ', 'https://hanoicomputercdn.com/media/product/67895_iphone_14_plus_3.png', 1, 1, 'Đỏ', '', 100, 28299000),
(80, 'iPhone 14 256GB Tím', 'https://hanoicomputercdn.com/media/product/67911_iphone_14_3.png', 1, 1, 'Tím', '', 100, 25599000),
(81, 'iPhone 14 Plus 256GB Tím', 'https://hanoicomputercdn.com/media/product/67896_iphone_14_plus_3.png', 1, 1, 'Tím', '', 100, 28299000),
(82, 'iPhone 14 256GB Xanh', 'https://hanoicomputercdn.com/media/product/67912_iphone_14_9.png', 1, 1, 'Xanh', '', 100, 25599000),
(83, 'iPhone 14 Plus 256GB Xanh', 'https://hanoicomputercdn.com/media/product/67897_iphone_14_plus_3.png', 1, 1, 'Xanh', '', 100, 28299000),
(84, 'iPhone 14 Plus 512GB Đen', 'https://hanoicomputercdn.com/media/product/67898_iphone_14_plus_3.png', 1, 1, 'Đen', '', 100, 33799000),
(85, 'iPhone 14 Plus 512GB Trắng', 'https://hanoicomputercdn.com/media/product/67899_iphone_14_plus_3.png', 1, 1, 'Trắng', '', 100, 33799000),
(86, 'iPhone 14 Plus 512GB Đỏ', 'https://hanoicomputercdn.com/media/product/67900_iphone_14_plus_3.png', 1, 1, 'Đỏ', '', 100, 33799000),
(87, 'iPhone 14 Plus 512GB Tím', 'https://hanoicomputercdn.com/media/product/67901_iphone_14_plus_3.png', 1, 1, 'Tím', '', 100, 33799000),
(88, 'iPhone 14 Pro 256GB Vàng', 'https://hanoicomputercdn.com/media/product/67886_iphone_14_pro_3.png', 1, 1, 'Vàng', '', 100, 34399000),
(89, 'iPhone 14 Plus 512GB Xanh', 'https://hanoicomputercdn.com/media/product/67902_iphone_14_plus_3.png', 1, 1, 'Xanh', '', 100, 33799000),
(90, 'Điện thoại Asus ROG Phone 6 S8+ G1/12/256 Đen (AI2201-1A005WW)', 'https://hanoicomputercdn.com/media/product/67704_dien_thoai_asus_rog_phone_6_12.png', 1, 2, 'Đen', 'Màn hình 6.78 inch, AMOLED, FHD+, 2448 x 1080 Pixels || Camera sau 50.0 MP + 13.0 MP + 5.0 MP || Camera Selfie 12.0 MP || RAM 12 GB || Bộ nhớ trong 256 GB || CPU Snapdragon 8+ Gen 1 || GPU Adreno 730 || Dung lượng pin 6000 mAh', 100, 21499000),
(91, 'Điện thoại Asus ROG Phone 6 S8+ G1/12/256 Trắng (AI2201-1A006WW)', 'https://hanoicomputercdn.com/media/product/67705_dien_thoai_asus_rog_phone_6_12.png', 1, 2, 'Trắng', 'Màn hình 6.78 inch, AMOLED, FHD+, 2448 x 1080 Pixels || Camera sau 50.0 MP + 13.0 MP + 5.0 MP || Camera Selfie 12.0 MP || RAM 12 GB || Bộ nhớ trong 256 GB || CPU Snapdragon 8+ Gen 1 || GPU Adreno 730 || Dung lượng pin 6000 mAh', 100, 21499000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`) VALUES
('06ccfa67-9525-4386-8b37-d565387ba388', 'Lê Hồ Bảo Khang', 'khangle', '123456', 0),
('627cdf06-1f6e-4027-b1b6-0b70928dff2b', 'Khang Le', 'khangle123', '123456', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`,`product`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
