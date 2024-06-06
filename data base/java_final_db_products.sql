-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: java_final_db
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL,
  `product_description` text NOT NULL,
  `product_image_1` varchar(255) DEFAULT NULL,
  `product_image_2` varchar(255) DEFAULT NULL,
  `product_image_3` varchar(255) DEFAULT NULL,
  `product_image_4` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_category` enum('SMALL','MEDIUM','LARGE','NONE') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (10,'Buffed and ready with more power, robust cooling, and flexible I/O to scale up your rig at will. The ROG Maximus Z790 Hero puts it all at your disposal together with an arsenal of features and utilities to truly express the PC builder, overclocker, and gaming hero in you.','https://m.media-amazon.com/images/I/81CpgF-+P4L._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/91NRdqutJbL._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/81a4Zdfbs+L._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/91wH930uh9L._AC_SL1500_.jpg',' ASUS ROG MAXIMUS Z790 HERO Intel Z790 LGA 1700 ATX ',2599,'LARGE'),(11,'ROG Strix GeForce RTX 4090 24GB GDDR6X White Edition\nROG Strix GeForce RTX™ 4090 24GB GDDR6X White Edition with DLSS 3 and chart-topping thermal performance','https://m.media-amazon.com/images/I/71Bi6UsIoIL._AC_SL1500_.jpg','https://itnation.org/wp-content/uploads/2023/05/107490053_8722805966.jpg','https://itnation.org/wp-content/uploads/2023/05/107490053_3076933971.jpg','https://itnation.org/wp-content/uploads/2023/05/107490054_5321096617.jpg','ROG-STRIX-RTX4090-24G-WHITE ASUS ROG -STRIX-RTX4090-24G-WHITE graphics card NVIDIA GeForce RTX 4090 24 GB GDDR6X ',5999,'MEDIUM'),(12,'AMD Ryzen 9 7900X3D. Processor family: AMD Ryzen™ 9, Processor socket: Socket AM5, Processor lithography: 5 nm. Memory channels: Dual-channel, Maximum internal memory supported by processor: 128 GB, Memory types supported by processor: DDR5-SDRAM. On-board graphics card model: AMD Radeon Graphics, On-board graphics card base frequency: 400 MHz, On-board graphics card dynamic frequency (max): 2200 MHz. Supported instruction sets: AES, AVX, AVX 2.0, AVX-512, SSE, SSE2, SSE3, SSE4.1, SSE4.2, SSSE3, Compatible operating systems: Windows 11 – 64-Bit Edition Windows 10 – 64-Bit Edition RHEL x86 64-Bit Ubuntu x86 64-Bit','https://m.media-amazon.com/images/I/51fRtv4UyBL._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/51XuxSMsrzL._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/5104xbzzRvL._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/617qgPKos3L._AC_SL1500_.jpg','AMD Ryzen 9 7900X3D – AMD Ryzen™ 9 – Socket AM5 – 5 nm – AMD – 7900X3D – 4.4 GHz ',1799,'SMALL'),(13,'Blistering speed, endless victory\nExperience long-lasting fast performance of PCIe® 4.0. The in-house controller’s smart heat control delivers supreme power efficiency while maintaining speed and performance to help keep you on the top of your game.','https://itnation.org/wp-content/uploads/2023/10/94ed3499f468d012c7fd251fb425d212-scaled.jpg','https://m.media-amazon.com/images/I/71I+pAoPfCL._AC_SL1500_.jpg','https://itnation.org/wp-content/uploads/2023/10/23d45194c29a150251bdef9446552d5e-scaled.jpg','https://itnation.org/wp-content/uploads/2023/10/3489b2fd35ab7dc3509b364e2d3fcf6e-scaled.jpg','Samsung 990 PRO M.2 4 TB PCI Express 4.0 V-NAND MLC NVMe ',1399,'SMALL'),(14,'Corsair Vengeance CMH192GX5M4B5200C38. Component for: PC, Internal memory: 192 GB, Memory layout (modules x size): 4 x 48 GB, Internal memory type: DDR5, Memory clock speed: 5200 MHz, Memory form factor: 288-pin DIMM, CAS latency: 38','https://static3.evomag.ro/img?file=products%2F4113%2F4113123%2Fmemorie-corsair-vengeance-rgb-64e83b7eb96a4.jpg&width=600&height=600&extend=white','https://media.icdn.hu/product/GalleryMod/2023-03/897324/resp/2153843_corsair-96gb-vengeance-ddr5-5200mhz-cl38-kit-cmk96gx5m2b5200c38.webp','https://cdn.vexio.ro/images/products/img_202303161302/2097179/normal/memorie-corsair-vengeance-rgb-192gb-ddr5-5200mhz-cl38-quad-channel-3936751.jpg','https://cdn.vexio.ro/images/products/img_202303161302/2097187/normal/memorie-corsair-vengeance-192gb-ddr5-5200mhz-cl38-quad-channel-3936749.jpg','Corsair Vengeance – 192 GB – 4 x 48 GB – DDR5 – 5200 MHz – 288-pin DIM',3999,'SMALL'),(15,' 34-inch UWQHD (3440 x 1440) HDR curved gaming monitor with ultrafast 180Hz (overclocking) refresh rate designed for professional gamers and immersive gameplay.Specific uses for product - Gaming\nBrightness(Typ) is 360cd/m²\nASUS Fast IPS technology enables a 1ms response time (GTG) for sharp gaming visuals with high frame rates\nASUS Extreme Low Motion Blur Sync (ELMB SYNC) technology enables ELMB together with G-SYNC Compatible, eliminating ghosting and tearing for sharp gaming visuals with high frame rates. ','https://m.media-amazon.com/images/I/81rVBd+Q9eS._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/81GNltakv5S._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/71w9uuDOL5S._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/81BOmYd2n6S._AC_SL1500_.jpg','ASUS ROG Strix 34” Gaming Monitor (XG349C) - UWQHD (3440 x 1440), 180Hz, 1ms, Extreme Low Motion Blur Sync, 135% sRGB, G-Sync Compatible, DisplayHDR 400, Eye Care, USB-C, DisplayPort, HDMI, Black ',3599,'LARGE'),(16,' Fully Modular: Only connect the cables your system needs, making clean and tidy builds easier.\n135mm Magnetic Levitation Fan: Utilizes a magnetic levitation bearing and custom engineered rotors for high performance, low noise, and superior reliability. \n80 PLUS Gold Certified: High efficiency operation for lower power consumption, less noise, and cooler temperatures. ','https://m.media-amazon.com/images/I/710giQRHyQS._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/81Gu6OxaT8L._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/91sxMmKM4OL._AC_SL1500_.jpg','https://m.media-amazon.com/images/I/81iooZo-JVS._AC_SL1500_.jpg','Corsair RM1000x (2021) Fully Modular ATX Power Supply - 80 PLUS Gold - Low-Noise Fan - Zero RPM - Black ',800,'SMALL');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-06 20:22:16
