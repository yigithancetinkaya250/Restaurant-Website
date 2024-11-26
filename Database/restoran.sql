-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Kas 2024, 18:50:01
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `restoran`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_tablo`
--

CREATE TABLE `admin_tablo` (
  `ID` int(11) NOT NULL,
  `isim` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `admin_tablo`
--

INSERT INTO `admin_tablo` (`ID`, `isim`, `email`, `sifre`) VALUES
(1, 'admin1', 'admin1@gmail.com', 'admin1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici_tablo`
--

CREATE TABLE `kullanici_tablo` (
  `ID` int(11) NOT NULL,
  `isim` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kullanici_tablo`
--

INSERT INTO `kullanici_tablo` (`ID`, `isim`, `email`, `sifre`) VALUES
(1, 'deneme2', 'deneme2@gmail.com', '$2a$10$KQuWWjsSO8v0PaVqwRaG6um0UD5oCYsH7RlMulxyle6VVhcUWgoGW'),
(2, 'sevda', 'sevda@gmail.com', '$2a$10$/O64b6.wv5xUX57UTpUWvuIChiM79sjLnVFn4rZnwiScNPLR0wjSC'),
(3, 'deneme3', 'deneme3@gmail.com', '$2a$10$13duI4Xi8kmNMWkS5mtmmO0LZocCdzDxtLhOaf8wY/x6Mbl.cJpTO');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezervasyon_tablo`
--

CREATE TABLE `rezervasyon_tablo` (
  `ID` int(11) NOT NULL,
  `isim` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tarih` date NOT NULL,
  `masa` varchar(255) NOT NULL,
  `saat` time NOT NULL,
  `iskender` varchar(255) DEFAULT NULL,
  `doner` varchar(255) DEFAULT NULL,
  `adana` varchar(255) DEFAULT NULL,
  `tavuksis` varchar(255) DEFAULT NULL,
  `beyti` varchar(255) DEFAULT NULL,
  `kola` varchar(255) DEFAULT NULL,
  `fanta` varchar(255) DEFAULT NULL,
  `ayran` varchar(255) DEFAULT NULL,
  `toplam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_tablo`
--
ALTER TABLE `admin_tablo`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `kullanici_tablo`
--
ALTER TABLE `kullanici_tablo`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `rezervasyon_tablo`
--
ALTER TABLE `rezervasyon_tablo`
  ADD PRIMARY KEY (`ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin_tablo`
--
ALTER TABLE `admin_tablo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici_tablo`
--
ALTER TABLE `kullanici_tablo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `rezervasyon_tablo`
--
ALTER TABLE `rezervasyon_tablo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
