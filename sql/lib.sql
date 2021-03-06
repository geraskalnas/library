-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql102.byetcluster.com
-- Generation Time: 2020 m. Lap 03 d. 05:06
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_26660199_v1lib`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `registredIn` datetime NOT NULL,
  `blocked` int(1) NOT NULL DEFAULT '0',
  `pdfPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `year`, `registredIn`, `blocked`, `pdfPath`, `imgPath`) VALUES
(1, 'Gilės nuotykiai Ydų šalyje', 'Vytautas Petkevičius', 2009, '2018-10-29 00:00:00', 0, NULL, 'http://www.almalittera.lt/image.php?image=/img/uploads/virseliai/Giles-nuotykiai-Ydu-salyje.jpg'),
(3, 'Doriano Grėjaus Portretas', 'Oskaras Vaildas', 1890, '2018-12-21 18:54:29', 0, NULL, 'https://www.knyguklubas.lt/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/0/0/000000000002112284-59de80f297644-asset-knyguklubas-cdb_doriano-grejaus-portretas-virselis_p1.jpg'),
(4, 'Kuprelis', 'Ignas Šeinius', 1913, '2018-12-21 18:55:20', 0, 'http://www.xn--altiniai-4wb.info/files/literatura/LH00/Ignas_%C5%A0einius._Kuprelis.LHM800.pdf', 'http://www.patogupirkti.lt/out/pictures/1/9986-06-037-0(2).gif'),
(5, 'Mažasis Princas', 'Antanas de Sent Egziuperi', 1943, '2018-12-21 18:56:34', 0, 'http://ebiblioteka.mkp.emokykla.lt/kuriniai/mazasis_princas/,format.pdf', 'https://www.knyguklubas.lt/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/0/0/000000000001101494-59de81b9e41b6-asset-knyguklubas-cdb_ma%C5%BEasis-princas_p1.jpg'),
(6, 'Broliai Liūtaširdžiai', 'Astrid Lindgren', 1973, '2018-12-24 18:55:46', 0, NULL, 'https://www.knyguklubas.lt/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/0/0/000000000002118430-59de821cbc76c-asset-knyguklubas-cdb_broliai-liutasirdziai_p1.jpg'),
(7, 'Ronja Plėšiko Duktė', 'Astrid Lingren', 1981, '2018-12-24 18:59:27', 0, NULL, 'http://www.almalittera.lt/image.php?image=/img/uploads/virseliai/Ronja-plesiko-dukte.jpg'),
(8, 'Poliana', 'Eleanor Emily Hodgman', 1913, '2018-12-24 19:02:13', 0, 'http://ebiblioteka.mkp.emokykla.lt/kuriniai/poliana/,format.pdf', 'https://www.knyguklubas.lt/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/0/0/000000000001106191-65106-asset-knyguklubas-cdb_kk_07eb59922d5561a1cec0039047b36926_p1.jpg'),
(9, 'Baltaragio malūnas', 'Kazys Boruta', 1945, '2019-02-07 22:02:04', 0, 'http://ebiblioteka.mkp.emokykla.lt/kuriniai/baltaragio_malunas_arba_kas_dejosi_anuo_metu_paudruves_kraste/,format.pdf', 'http://mariuskl.blogas.lt/files/2009/10/baltaragis.jpg'),
(10, 'Penkiolikos metų kapitonas', 'Žiulis Vernas', 1878, '2019-02-07 22:05:05', 0, 'http://ebiblioteka.mkp.emokykla.lt/kuriniai/penkiolikos_metu_kapitonas/,format.pdf', 'https://www.knyguklubas.lt/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/0/0/000000000002159449-59de836672e77-asset-knyguklubas-cdb_9786098105094_penkiolikos_metu_kapitonas_p1.jpg'),
(11, 'Romeo ir Džuljeta', 'Viljamas Šekspyras', 1597, '2019-02-07 22:06:53', 0, 'http://ebiblioteka.mkp.emokykla.lt/kuriniai/romeo_ir_dzuljeta/,format.pdf', 'https://thumb.knygos-static.lt/aTtS5YPErt0bzioc1_9cVYqYpk0=/fit-in/800x800/filters:cwatermark(static/wm.png,500,75,30)/images/books/5368/1462873987_romeo-ir-dzuljeta.jpg'),
(12, 'Robinzonas Kruzas', 'Daniel Defoe', 1719, '2019-02-07 22:08:34', 0, 'http://ebiblioteka.mkp.emokykla.lt/kuriniai/robinzonas_kruzas/,format.pdf', 'http://www.almalittera.lt/image.php?image=/img/uploads/virseliai/Robinzonas-Kruzas.jpg'),
(13, 'Užrašai apie Šerloką Holmsą', 'Arthur Conan Doyle', 1927, '2019-02-07 22:10:18', 0, 'http://ebiblioteka.mkp.emokykla.lt/kuriniai/uzrasai_apie_serloka_holmsa/,format.pdf', 'https://thumb.knygos-static.lt/1hXm4NlPFXdrk3hl8bdo563uA4s=/fit-in/2048x2048/filters:cwatermark(static/wm.png,500,75,30)/images/books/1018434/1462889879_img0030-001.jpg');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `lr`
--

CREATE TABLE `lr` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ltype` int(1) NOT NULL DEFAULT '1',
  `dat` date NOT NULL,
  `tim` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `lr`
--

INSERT INTO `lr` (`id`, `uid`, `ip`, `ltype`, `dat`, `tim`) VALUES
(1, 1, '127.0.0.1', 1, '2019-01-02', '18:45:21'),
(2, 1, '127.0.0.1', 1, '2019-01-02', '20:04:41'),
(3, 1, '127.0.0.1', 1, '2019-01-09', '21:36:47'),
(4, 1, '127.0.0.1', 1, '2019-02-07', '20:55:56'),
(5, 1, '127.0.0.1', 1, '2019-02-07', '21:57:51');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `registredIn` date NOT NULL,
  `type` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `users`
--

INSERT INTO `users` (`id`, `name`, `hash`, `registredIn`, `type`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-11-23', 'admin'),
(2, 'asda', '7815696ecbf1c96e6894b779456d330e', '2018-12-12', 'normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lr`
--
ALTER TABLE `lr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lr`
--
ALTER TABLE `lr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
