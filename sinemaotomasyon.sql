-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 23 Oca 2018, 12:43:10
-- Sunucu sürümü: 10.1.29-MariaDB
-- PHP Sürümü: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sinemaotomasyon`
--
CREATE DATABASE IF NOT EXISTS `sinemadb` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `sinemadb`;

DELIMITER $$
--
-- Yordamlar
--
DROP PROCEDURE IF EXISTS `yenikullanicikayit`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `yenikullanicikayit` (IN `adi` VARCHAR(50), `soyadi` VARCHAR(50), `email` VARCHAR(50), `telefon` VARCHAR(15), `dogumtarihi` VARCHAR(10), `sifre` VARCHAR(50))  BEGIN
	INSERT INTO `kullanici` (`kID`, `kAdi`, `kSoyadi`, `kEmail`, `kTelefon`, `kDogumTarihi`, `kSifre`) VALUES (null, adi, soyadi, email, telefon, dogumtarihi, sifre);

END$$

DELIMITER ;
-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `kID` int(11) NOT NULL AUTO_INCREMENT,
  `kAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kSoyadi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kEmail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kTelefon` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `kDogumTarihi` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `kSifre` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`kID`),
  UNIQUE KEY `kEmail` (`kEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kID`, `kAdi`, `kSoyadi`, `kEmail`, `kTelefon`, `kDogumTarihi`, `kSifre`) VALUES
(1, 'emre', 'kaya', 'emre@kaya.com', '1231564564', '15456465', '211245'),
(3, 'Emre', 'KAYA', 'asd@asd.com', '12315646', '2156465132', '89746513'),
(4, 'asrdtfgjklÅ', '<sdfgjkl', 'wertyukÄ±o', '(123) 456-7892', '23/04/2056', '795d0c3fbb73a3cefe9980e04801d455');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;