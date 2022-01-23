-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 05, 2013 at 04:49 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `osikie`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(1, 'yosie', 'yosie_yasinta@yahoo.co.id', 'ask', 'Alhamdulillah Ya Allah Ya zaljalali Walikrom.. :*', '2013-06-03'),
(2, 'alhamdulillah', 'adindasugana@gmail.com', 'ask', 'Alhamdulillah ya allah bisa jalan contact us nya :)', '2013-06-03'),
(3, 'adinda hidayatullah sugana', 'azharfadillah@yahoo.co.id', 'ask', 'This very good', '2013-06-03'),
(4, 'dandy', 'dandy@yahoo.com', 'ask', 'how to booking??', '2013-06-03'),
(5, 'okisie', 'ochie.sugana@gmail.com', 'ask', 'Ya allah mudahkanlah hamba dalam menyelesaikan skripsi ini baik laporan maupun program. Amiin', '2013-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(2) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Graduation Photography'),
(2, 'Family Photography'),
(3, 'Prewedding Photography'),
(4, 'Wedding Photography'),
(15, 'Baby Photography');

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE IF NOT EXISTS `kustomer` (
  `id_kustomer` int(2) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telpon` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kota` varchar(20) NOT NULL,
  PRIMARY KEY (`id_kustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `id_kustomer` int(2) NOT NULL,
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `status_order` varchar(50) NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(3) NOT NULL,
  `jumlah_order` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(3) NOT NULL,
  `id_session` varchar(100) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `jam_order_temp` time NOT NULL,
  `tgl_order_temp` date NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `id_produk`, `id_session`, `jumlah`, `jam_order_temp`, `tgl_order_temp`) VALUES
(2, 9, '', 3, '00:03:46', '2013-06-04'),
(3, 5, '', 3, '00:04:01', '2013-06-04'),
(4, 1, '', 1, '00:05:31', '2013-06-04'),
(5, 8, '', 3, '00:44:35', '2013-06-04'),
(6, 10, '', 2, '22:58:09', '2013-06-04'),
(7, 7, '', 1, '01:23:06', '2013-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(3) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(2) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `gambar`, `deskripsi`, `harga`) VALUES
(1, 1, 'Wisuda A1', '5g1.jpg', '<p>\r\nFasilitas:\r\n</p>\r\n<ul>\r\n	<li> 2 X foto 1 orang uk. 10&quot; (20X25 cm) <br />\r\n	</li>\r\n	<li>\r\n	<div align="left">\r\n	1 X foto 2-5 orang uk.10&quot;(20X25cm) <br />\r\n	</div>\r\n	</li>\r\n</ul>\r\n<p>\r\nBonus:\r\n</p>\r\n<ul>\r\n	<li>1 album lipat tiga</li>\r\n</ul>\r\n', 400000),
(2, 1, 'Wisuda A2', '95g2.jpg', '<p>\r\nFasilitas:\r\n</p>\r\n<ul>\r\n	<li>Kebaya* (std) &amp; tata rias + rambut&nbsp; <br />\r\n	</li>\r\n	<li>2 X foto 1 orang uk. 10&quot; (20X25 cm) <br />\r\n	</li>\r\n	<li>1 X foto 2-5 orang ik. 10&quot; (20X25 cm) <br />\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>Bonus: 1 album lipat tiga\r\n	</li>\r\n</ul>\r\n', 800000),
(3, 2, 'Family Story', '46k1.jpg', 'Fasilitas :\r\nâ€¢  Pemotretan untuk 1 - 5 orang \r\nâ€¢  Pemotretan 5 pose (pilih 2 pose) \r\nâ€¢  1 X kanvas uk. 50X60cm + bingkai standard \r\nâ€¢  1 X foto uk.10"(20X25cm)+bingkai standard \r\nâ€¢  2 buah file dalam CD sesuai ukuran paket \r\nâ€¢  1 X peminjam gaun dan jas \r\nâ€¢  Make up dan hair do\r\n', 3000000),
(4, 2, 'Family Happy', '5k3.jpg', '<p>\r\nFasilitas : \r\n</p>\r\n<ul>\r\n	<li>  Pemotretan untuk 1 - 6 orang </li>\r\n	<li>Pemotretan 3 pose <br />\r\n	</li>\r\n	<li> 1 buah album lipat \r\n	tiga <br />\r\n	</li>\r\n	<li>3 buah file dalam CD sesuai ukuran paket </li>\r\n	<li>Paket belum termasuk \r\n	make up &amp; kostum </li>\r\n</ul>\r\n<p>\r\nBonus:&nbsp;\r\n</p>\r\n<ul>\r\n	<li>  1 buah kanvas keluarga uk. 40X50cm </li>\r\n	<li>1 bingkai standard\r\n	</li>\r\n</ul>\r\n', 5000000),
(5, 15, 'Baby Cute', '67baby2.jpg', '<p>\r\nFasilitas :\r\n</p>\r\n<ul>\r\n	<li> 12 Pose (5 Sheet), for baby only</li>\r\n	<li>1 buah album bambino uk. 15X15cm</li>\r\n	<li>1 CD berisi foto yang sudah dipilih <br />\r\n	</li>\r\n</ul>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 1500000),
(6, 3, 'Prewedding Outdor I', '6prewedd4.jpg', '', 3500000),
(7, 3, 'Prewedding Outdoor II', '72prewedd1.jpg', '<p>\r\nFasilitas\r\n</p>\r\n<ul>\r\n	<li>Make-up &amp; hair-do&nbsp;</li>\r\n	<li>\r\n	Touch-up selama pemotretan <br />\r\n	</li>\r\n	<li>1 fotografer &amp; pengarah gaya Lokasi Indoor &amp; Outdoor <br />\r\n	</li>\r\n	<li>Kamera standard &amp; infrared <br />\r\n	</li>\r\n	<li>1 album exclusive 20 x 25 cm full design\r\n	4x cetak 30x40 <br />\r\n	</li>\r\n	<li>CD foto (30 foto pilihan retouched)&nbsp;\r\n	</li>\r\n</ul>\r\n', 2000000),
(8, 4, 'Wedding I', '5wedd1.jpg', '<p>\r\nFasilitas\r\n</p>\r\n<ul>\r\n	<li>1 fotografer</li>\r\n	<li> \r\n	1 album 22 pages exclusive+box kulit\r\n	Ukuran 20x30, full design, laminated\r\n	Video + 2 master minidvd <br />\r\n	</li>\r\n	<li>1 DVD liputan, Intro &amp; Titling&nbsp;\r\n	</li>\r\n</ul>\r\n', 3800000),
(9, 4, 'Wedding II', '70wedd2.jpg', '<p>\r\nFasilitas\r\n</p>\r\n<ul>\r\n	<li>1 fotografe</li>\r\n	<li>\r\n	1 album 22 pages exclusive+box kulit\r\n	Ukuran 20x30</li>\r\n	<li> full design, laminated\r\n	Video + 2 master minidvd&nbsp;</li>\r\n	<li>1 DVD liputan, Intro &amp; Titling&nbsp;\r\n	</li>\r\n</ul>\r\n', 4900000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
