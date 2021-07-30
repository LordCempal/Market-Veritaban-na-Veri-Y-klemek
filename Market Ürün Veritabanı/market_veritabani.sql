-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 May 2021, 17:27:29
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `market_veritabani`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `arac_no` int(12) NOT NULL,
  `plaka` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `nitelik` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yolcu_sayisi` int(2) DEFAULT NULL,
  `yuk_miktari` float DEFAULT NULL,
  `model` varchar(4) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kasko_no` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `araclar`
--

INSERT INTO `araclar` (`arac_no`, `plaka`, `nitelik`, `yolcu_sayisi`, `yuk_miktari`, `model`, `kasko_no`) VALUES
(111, '34-kgj-85', 'otobÃ¼s', 45, 2000, '2004', 'hjhd-5416516'),
(112, '34-kj-456', 'minibus', 20, 500, '2005', 'dfgd-4582625'),
(113, '34-rt-154', 'panelvan', 2, 2500, '1999', 'gdfr-9625652'),
(114, '34-sde-65', 'kamyonet', 2, 4000, '2002', 'kloh-7852132'),
(115, '34-hyu-56', 'soguk_tÄ±r', 2, 7000, '2004', 'sdfe-9258632'),
(116, '34-ghf-45', 'minibÃ¼s', 20, 200, '2009', 'sdff-6358667');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_suruculeri`
--

CREATE TABLE `arac_suruculeri` (
  `surucu_no` int(12) NOT NULL,
  `arac_no` int(12) DEFAULT NULL,
  `calisan_no` int(12) DEFAULT NULL,
  `ehliyet_sinifi` char(2) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ehliyet_no` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arac_suruculeri`
--

INSERT INTO `arac_suruculeri` (`surucu_no`, `arac_no`, `calisan_no`, `ehliyet_sinifi`, `ehliyet_no`) VALUES
(600, 114, 4, 'e', 'gb/3262651'),
(601, 113, 12, 'e', 'we/8752121'),
(602, 112, 7, 'e', 'er/2132132'),
(603, 111, 1, 'e', 'fd/5521321');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calisanlar`
--

CREATE TABLE `calisanlar` (
  `calisan_no` int(12) NOT NULL,
  `departman_no` int(12) DEFAULT NULL,
  `sube_no` int(12) DEFAULT NULL,
  `isim` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyisim` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `dogum_tarihi` year(4) DEFAULT NULL,
  `dogum_yeri` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cinsiyet` varchar(5) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ise_giris_tarihi` date DEFAULT NULL,
  `gorev` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `vatandaslik_no` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sigorta_no` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `banka_hesap_no` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `maas` float DEFAULT NULL,
  `prim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `calisanlar`
--

INSERT INTO `calisanlar` (`calisan_no`, `departman_no`, `sube_no`, `isim`, `soyisim`, `dogum_tarihi`, `dogum_yeri`, `adres`, `telefon`, `cinsiyet`, `ise_giris_tarihi`, `gorev`, `vatandaslik_no`, `sigorta_no`, `banka_hesap_no`, `maas`, `prim`) VALUES
(1, 65, 10, 'veli', 'pekdemer', 1980, 'erzincan', 'zafer cad. no:21 daire 9 k.Ã§ekmece/ist', '5869354', 'erkek', '2021-02-02', 'departman_sorumlusu', '78546256', '654213458', 'njfnv789', 785, 1000),
(2, 80, 11, 'nazlÄ±', 'palazlÄ±', 1972, 'tunceli', 'kÃ¼Ã§Ã¼kpazar mah. pazarcÄ±lar yokuÅŸu no:12/8 fatih/ist', '3262022', 'kadÄ±', '2019-05-22', 'reyon_sorumlusu', '40420450', '100252468', 'dnrtb784', 1000, 1500),
(3, 75, 12, 'atilla', 'mendebur', 1979, 'sivas', 'halkalÄ± mah. dÃ¶ner cad. kanmaz sok. no:56 esenyurt/ist', '6985050', 'erkek', '2019-07-22', 'magaza_sorumlusu', '34676868', '895585522', 'qwerg302', 1500, 1200),
(4, 65, 12, 'mehmet', 'durmaz', 1982, 'erzincan', 'gÃ¼mÃ¼ÅŸpala mah. berker sok. muÅŸtu apt. daire 7 avcÄ±lar/ist', '5985645', 'erkek', '2005-08-29', 'iÅŸÃ§i', '34657477', '659325645', 'yutng254', 800, 1500),
(5, 75, 13, 'kerim', 'zÄ±rzÄ±roÄŸolu', 1983, 'istanbul', 'kÃ¼Ã§Ã¼kaÅŸÃ§Ä± cad. mertek sok. no:7 beyazÄ±t/ist', '5421025', 'erkek', '2013-05-09', 'kasap', '360486596', '125487965', 'edhrd784', 1100, 750),
(6, 75, 13, 'Ã§aÄŸrÄ±', 'arslan', 1984, 'tunceli', 'terzioÄŸlu mah. denli sok. berlis apt. no:9 yenibosna/ist', '6352014', 'erkek', '2012-06-05', 'manav', '65408899', '326589623', 'sdgfd265', 1100, 750),
(7, 65, 13, 'kemalettin', 'demir', 1982, 'istanbul', 'bakarsan cad. bolkan sok. tarif apt. daire 6 bakÄ±rkÃ¶y/ist', '4578546', 'erkek', '2001-10-10', 'temizlikci', '9810518', '789489512', 'cvxzv256', 800, 1300),
(8, 75, 14, 'berk', 'ataman', 1978, 'tunceli', 'nemlioÄŸlu cad. no:35/8 sefakÃ¶y/ist', '4563525', 'erkek', '2003-09-17', 'ÅŸarkÃ¼terici', '29436754', '658956210', 'zvdvv635', 1000, 1440),
(9, 75, 14, 'canan', 'salihli', 1978, 'istanbul', 'tatmaz cad. no:78/23 balat/ist', '6502050', 'kadÄ±', '2010-12-07', 'reyon_sorumlusu', '86657643', '320050588', 'dzvzvv875', 1000, 1100),
(10, 85, 11, 'alper', 'zal', 1980, 'sivas', 'temizoÄŸlu cad. no:10/1 merter/ist', '3250502', 'erkek', '0000-00-00', 'memur', '40650987', '563256985', 'mnnbv574', 1200, NULL),
(11, 85, 14, 'leyla', 'kolukÄ±ssa', 1981, 'giresun', 'tomris mah. dÃ¶nemec sok. kerim apt. daire 6', '5425054', 'kadÄ±', '0000-00-00', 'memur', '24558014', '210202052', 'sdfss698', 1200, NULL),
(12, 65, 11, 'mahmut', 'cesur', 1978, 'tunceli', 'inÃ¶nÃ¼ mah. garip sok. no 8/7 sefakÃ¶y/ist', '4580502', 'erkek', '0000-00-00', 'departman_sorumlusu', '68040215', '785412120', 'zwzaq235', 1500, NULL),
(13, 75, 12, 'zahide', 'Ã¶lmez', 1983, 'istanbul', 'kemalpaÅŸa mah. veletli cad. no:89/9 avcÄ±lar/ist', '7851236', 'kadÄ±', '0000-00-00', 'kasap', '16450789', '488751465', 'lytuj659', 1200, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `departmanlar`
--

CREATE TABLE `departmanlar` (
  `departman_no` int(12) NOT NULL,
  `departman_isim` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sorumluluk` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `departmanlar`
--

INSERT INTO `departmanlar` (`departman_no`, `departman_isim`, `sorumluluk`) VALUES
(50, 'satÄ±nalma', 'Ã¼rÃ¼n alÄ±mlarÄ±nÄ± gerÃ§ekleÅŸtirir'),
(55, 'muhasebe', 'mali kayÄ±tlarÄ± tutar'),
(60, 'analiz', 'satÄ±ÅŸ analizlerini yapar'),
(65, 'lojistik', 'mal nakil operasyonlarÄ±ndan sorumludur'),
(70, 'insan_kaynaklarÄ±', 'Ã§alÄ±ÅŸan yÃ¶netimini gerÃ§ekleÅŸtirir'),
(75, 'magaza', 'maÄŸaza operasyonlarÄ±ndan sorumludur'),
(80, 'satÄ±ÅŸ', 'Ã¼retici firmalar ile ortak Ã§alÄ±ÅŸmalar yapar'),
(85, 'bilgi_islem', 'gerekli bilgi altyapÄ±sÄ±nÄ± iÅŸler halde tutar'),
(90, 'reklam', 'reklam ve promosyon Ã§alÄ±ÅŸmalarÄ±ndan sorumludur');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteriler`
--

CREATE TABLE `musteriler` (
  `musteri_card_no` varchar(12) COLLATE utf8_turkish_ci NOT NULL,
  `isim` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyisim` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `dogum_tarihi` year(4) DEFAULT NULL,
  `adres` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `vatandaslik_no` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cinsiyet` varchar(5) COLLATE utf8_turkish_ci DEFAULT NULL,
  `meslek` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gelir_grubu` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ev` varchar(3) COLLATE utf8_turkish_ci DEFAULT NULL,
  `araba` varchar(3) COLLATE utf8_turkish_ci DEFAULT NULL,
  `medeni_durum` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cocuk_sayisi` int(5) DEFAULT NULL,
  `kart_alim_tarihi` date DEFAULT NULL,
  `toplam_puan` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteriler`
--

INSERT INTO `musteriler` (`musteri_card_no`, `isim`, `soyisim`, `dogum_tarihi`, `adres`, `telefon`, `email`, `vatandaslik_no`, `cinsiyet`, `meslek`, `gelir_grubu`, `ev`, `araba`, `medeni_durum`, `cocuk_sayisi`, `kart_alim_tarihi`, `toplam_puan`) VALUES
('90000', 'ahmet', 'seher', 1940, 'memetler mah. keriman cad. no=8/7 sultanahmet/ist', '7586525', 'ahmet@market.com.tr', '2543554578', 'erkek', 'doktor', 'orta_Ã¼st', 'var', 'var', 'evli', 1, '2020-10-13', 2563),
('90001', 'melek', 'kader', 1950, 'merkez mah. senemli cad no=5 bakÄ±rkÃ¶y/ist', '5695774', 'melek@market.com.tr', '5689575854', 'kadÄ±', 'ev_hanÄ±mÄ±', 'orta', 'yok', 'yok', 'bekar', 0, '2021-01-14', 1245),
('90002', 'hayri', 'tankut', 1980, 'kÃ¶ylÃ¼k mah. berdel sok. no=8/12 k.Ã§ekmece/ist', '4578542', 'hayri@market.com.tr', '1245785829', 'erkek', 'berber', 'dÃ¼ÅŸÃ¼k', 'yok', 'yok', 'evli', 2, '2021-03-10', 100),
('90003', 'sabri', 'alioÄŸlu', 1975, 'kulaksÄ±z mah. zafer sok no=7 sefakÃ¶y/ist', '7854256', 'sabri@market.com.tr', '5782655487', 'erkek', 'balÄ±kÃ§Ä±', 'dÃ¼ÅŸÃ¼k', 'yok', 'yok', 'evli', 2, '2021-05-01', 145),
('90004', 'hayriye', 'selamsÄ±z', 1980, 'kulmadar cad. no=33/10 balat/ist', '4586221', 'hayriye@market.com.tr', '8565254705', 'kadÄ±', 'yazar', 'Ã¼st', 'var', 'yok', 'evli', 3, '2021-03-08', 3586),
('90005', 'tanju', 'Ã§olak', 1910, 'Ã§olpan sok. no=99/8 avcÄ±lar/ist', '1247885', 'tanju@market.com.tr', '5058085404', 'erkek', 'mÃ¼hendis', 'orta_Ã¼st', 'var', 'var', 'bekar', 0, '2021-02-08', 2789),
('90006', 'rÄ±dvan', 'dilmen', 1965, 'merkez mah. kader sok. no=6/1 bakÄ±rkÃ¶y/ist', '8524454', 'rÄ±dvan@market.com.tr', '7458002836', 'erkek', 'diÅŸÃ§i', 'orta_Ã¼st', 'var', 'var', 'evli', 3, '2021-04-07', 2463),
('90007', 'cÃ¼neyt', 'arkÄ±n', 1975, 'merkez mah. nedim cad. sÄ±la sok. no=7/5 avcÄ±lar/ist', '2445356', 'cÃ¼neyt@market.com.tr', '2514118502', 'erkek', 'emekli', 'Ã§ok_dÃ¼ÅŸ', 'yok', 'var', 'bekar', 0, '2020-05-13', 1457),
('90008', 'tarÄ±k', 'akan', 1978, 'teyfikbey mah. gÃ¼neÅŸ sit. c2 blok daire 5 sefakÃ¶y/ist', '7535245', 'tarik@market.com.tr', '2451002586', 'erkek', 'Ã¶ÄŸretmen', 'Ã§ok_dÃ¼ÅŸ', 'yok', 'yok', 'bekar', 0, '2021-03-24', 1472),
('90009', 'hÃ¼lya', 'koÃ§yiÄŸit', 1974, 'kelmadar cad. no=55/4 balat/ist', '4785424', 'hulya@market.com.tr', '7585280728', 'kadÄ±', 'programcÄ±', 'orta', 'var', 'var', 'bekar', 0, '2019-05-08', 405),
('90010', 'jale', 'karabÃ¶cÃ¼k', 1966, 'memat mah. kelam sok no=9/7 bakÄ±rkÃ¶y/ist', '7698363', 'jale@market.com.tr', '1245120450', 'kadÄ±', 'kuafÃ¶r', 'orta', 'yok', 'yok', 'evli', 2, '2021-02-18', 2045),
('90011', 'aybars', 'kimsiz', 1980, 'kemal sok. no=1/12 avcÄ±lar/ist', '5487825', 'aybars@market.com.tr', '9654875412', 'erkek', 'camcÄ±', 'dÃ¼ÅŸÃ¼k', 'var', 'yok', 'bekar', 0, '2020-12-03', 1042),
('90012', 'memet', 'memetoÄŸlu', 1970, 'merkez mah. kuÅŸluk sok. no=1 sefakÃ¶y', '7522352', 'memet@market.com.tr', '1245820125', 'erkek', 'tellak', 'Ã¼st', 'var', 'yok', 'bekar', 0, '2020-10-21', 457),
('90013', 'Ã§aÄŸrÄ±', 'aksu', 1978, 'temelli mah. kedersiz sok. no=10/2 avcÄ±lar/ist', '2534585', 'Ã§agri@market.com.tr', '6985620145', 'erkek', 'iÅŸletmeci', 'Ã¼st', 'var', 'var', 'bekar', 0, '2021-01-28', 2895),
('90014', 'kader', 'Ã§Ä±kmaz', 1968, 'hasandaÄŸÄ± mah. merter cad. camlÄ± apt no=3 bakÄ±rkÃ¶y/ist', '5025450', 'kadercik@market.com.tr', '2302044508', 'kadÄ±', 'avukat', 'orta_Ã¼st', 'var', 'var', 'evli', 4, '2021-01-12', 2575),
('90015', 'murteza', 'hartan', 1976, 'adalÄ±lar mah. mahir sok. no 19/77 sefakÃ¶y/ist', '4572525', 'murteza@market.com.tr', '7858965547', 'erkek', 'Ã¶ÄŸretmen', 'dÃ¼ÅŸÃ¼k', 'var', 'yok', 'bekar', 0, '2017-05-17', 1200),
('90016', 'tarkan', 'kurtlu', 1981, 'fener sok. daimler apartmanÄ± daire 8 avcÄ±lar/ist,', '2452044', 'tarkan_kur@market.com.tr', '3798569874', 'erkek', 'veteriner', 'orta', 'yok', 'yok', 'bekar', 0, '2021-04-12', 1245),
('90017', 'cÃ¼neyt', 'malkoÃ§oÄŸlu', 1972, 'beylik cad. gÃ¶nÃ¼l sok. no=32/7 k.Ã§ekmece/ist', '4152020', 'cuneyt@market.com.tr', '1254896523', 'erkek', 'seyis', 'orta', 'var', 'yok', 'evli', 3, '2013-05-01', 2545),
('90018', 'kerem', 'kendindenbilir', 1970, 'haklÄ±lar sok. savaÅŸ apt. no 7 bakÄ±rkÃ¶y/ist', '7572250', 'keramettin@market.com.tr', '3300056698', 'erkek', 'dedektif', 'orta', 'yok', 'var', 'bekar', 0, '2019-04-10', 3210),
('90019', 'oya', 'kederli', 1965, 'cesaret mah. keramettin efendi sok. nadir apt daire 5 sefakÃ¶y/ist', '4752505', 'oya@market.com.tr', '1254405696', 'kadÄ±', 'mÃ¼hendis', 'orta_Ã¼st', 'yok', 'var', 'bekar', 0, '2020-08-20', 3452),
('90020', 'reÅŸat', 'altÄ±n', 1975, 'memleket cad. no=12/5 balat/ist', '5242508', 'resat@market.com.tr', '3256890250', 'erkek', 'kuyumcu', 'Ã¼st', 'var', 'var', 'bekar', 0, '2020-11-05', 1452),
('90021', 'nazif', 'kuyum', 1982, 'hayaran cad. kemalettin sok. no=8/1 sultanahmet/ist', '4520577', 'nazif@market.com.tr', '3604780456', 'erkek', 'tekstil_iÅŸÃ§isi', 'Ã§ok_dÃ¼ÅŸ', 'yok', 'yok', 'bekar', 0, '2020-12-28', 1422),
('90022', 'mahir', 'aydÄ±nyol', 1973, 'merdan mah. kafes sok. asker apt. no=8/7 avcÄ±lar/ist', '3564575', 'mahir@market.com.tr', '1256398520', 'erkek', 'son_Ã¼tÃ¼cÃ¼', 'Ã§ok_dÃ¼ÅŸ', 'yok', 'yok', 'evli', 3, '2021-03-23', 254),
('90023', 'tÃ¼rkan', 'ÅŸoray', 1982, 'kahraman mah. zafer sok. no=14/8 bakÄ±rkÃ¶y/ist', '1475825', 'turhan@market.com.tr', '3254011099', 'kadÄ±', 'overlokcu', 'Ã§ok_dÃ¼ÅŸ', 'yok', 'yok', 'bekar', 0, '2021-04-20', 1427),
('90024', 'fecihi', 'fenasi', 1983, 'masumlar cad. kader apt. no 8 balat/ist', '4565245', 'fecihi@market.com.tr', '5678587401', 'erkek', 'hammal', 'Ã§ok_dÃ¼ÅŸ', 'yok', 'yok', 'evli', 5, '2020-07-21', 1457),
('90025', 'haydar', 'Ã§amlÄ±bel', 1960, 'haklÄ±lar mah. feda cad. no=9/7 avcÄ±lar/ist', '4452582', 'haydar@market.com.tr', '9863254125', 'erkek', 'doktor', 'orta_Ã¼st', 'var', 'var', 'evli', 1, '0000-00-00', 124);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri_servis`
--

CREATE TABLE `musteri_servis` (
  `sefer_no` int(12) NOT NULL,
  `arac_no` int(12) DEFAULT NULL,
  `surucu_no` int(12) DEFAULT NULL,
  `sefer_saati` time DEFAULT NULL,
  `sefer_tarihi` date DEFAULT NULL,
  `guzergah` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteri_servis`
--

INSERT INTO `musteri_servis` (`sefer_no`, `arac_no`, `surucu_no`, `sefer_saati`, `sefer_tarihi`, `guzergah`) VALUES
(324, 115, 602, '10:00:00', '2021-04-01', 'k.Ã§ekmece-halkalÄ±'),
(325, 112, 600, '12:00:00', '2021-04-01', 'ÅŸiÅŸli-adatepe'),
(326, 113, 601, '16:00:00', '2021-04-02', 'Ã§amlÄ±ca-taksim'),
(327, 116, 603, '09:00:00', '2021-05-02', 'yenibosna-atakÃ¶y'),
(328, 111, 603, '15:00:00', '2021-05-02', 'avcÄ±lar-kasÄ±mpaÅŸa'),
(329, 112, 602, '14:00:00', '2021-05-03', 'bostancÄ±-kadÄ±kÃ¶y'),
(330, 113, 601, '13:00:00', '2021-05-03', 'kartal-pendik'),
(331, 114, 600, '11:00:00', '2021-05-03', 'balat-eminÃ¶nÃ¼'),
(332, 111, 601, '08:00:00', '2021-04-01', 'sefakÃ¶y-ÅŸirinevler'),
(333, 114, 600, '17:00:00', '2021-04-05', 'avcÄ±lar-kasÄ±mpaÅŸa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satislar`
--

CREATE TABLE `satislar` (
  `satis_no` int(12) NOT NULL,
  `urun_no` int(12) DEFAULT NULL,
  `calisan_no` int(12) DEFAULT NULL,
  `musteri_card_no` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sube_no` int(12) DEFAULT NULL,
  `satis_tarihi` date DEFAULT NULL,
  `alisveris_no` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `satislar`
--

INSERT INTO `satislar` (`satis_no`, `urun_no`, `calisan_no`, `musteri_card_no`, `sube_no`, `satis_tarihi`, `alisveris_no`) VALUES
(20, 1010, 2, '90000', 14, '0000-00-00', 1),
(21, 1011, 12, '90001', 12, '0000-00-00', 2),
(22, 1012, 3, '90002', 11, '0000-00-00', 3),
(23, 1013, 4, '90003', 10, '0000-00-00', 4),
(24, 1014, 6, '90004', 14, '0000-00-00', 5),
(25, 1015, 7, '90008', 11, '0000-00-00', 6),
(26, 1016, 8, '90006', 12, '0000-00-00', 7),
(27, 1011, 9, '90007', 11, '0000-00-00', 8),
(28, 1017, 11, '90009', 10, '0000-00-00', 9),
(29, 1018, 10, '90010', 13, '0000-00-00', 10),
(30, 1010, 12, '90000', 13, '0000-00-00', 11),
(31, 1012, 12, '90015', 10, '0000-00-00', 11),
(32, 1013, 13, '90020', 11, '0000-00-00', 12),
(33, 1014, 2, '90023', 11, '0000-00-00', 13),
(34, 1015, 3, '90022', 14, '0000-00-00', 15),
(35, 1016, 12, '90000', 10, '0000-00-00', 14),
(36, 1017, 8, '90005', 14, '0000-00-00', 16),
(38, 1018, 6, '90019', 12, '0000-00-00', 17),
(39, 1019, 5, '90025', 13, '0000-00-00', 18),
(40, 1010, 1, '90014', 11, '0000-00-00', 19);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stoklar`
--

CREATE TABLE `stoklar` (
  `stok_no` int(12) NOT NULL,
  `urun_no` int(12) DEFAULT NULL,
  `tedarikci_no` int(12) DEFAULT NULL,
  `sube_no` int(12) DEFAULT NULL,
  `giris_tarihi` date DEFAULT NULL,
  `urun_sayisi` int(6) DEFAULT NULL,
  `uretim_tarihi` date DEFAULT NULL,
  `raf_omru` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `stoklar`
--

INSERT INTO `stoklar` (`stok_no`, `urun_no`, `tedarikci_no`, `sube_no`, `giris_tarihi`, `urun_sayisi`, `uretim_tarihi`, `raf_omru`) VALUES
(440, 1010, 1, 10, '2019-05-01', 1500, '2019-04-03', 360),
(441, 1012, 2, 11, '2019-05-01', 1750, '2019-03-06', 360),
(442, 1013, 2, 12, '2019-05-01', 2430, '2019-04-04', 360),
(443, 1014, 3, 13, '2019-05-01', 4256, '2019-03-06', 360),
(444, 1015, 4, 14, '2019-05-01', 1254, '2019-04-05', 180),
(445, 1016, 5, 10, '2019-05-01', 3253, '2019-04-09', 180),
(446, 1017, 6, 11, '2019-05-01', 1478, '2019-09-03', 360),
(447, 1019, 4, 13, '2019-05-01', 2563, '2019-04-13', 120),
(448, 1011, 3, 14, '2019-05-01', 1478, '2019-07-03', 360),
(449, 1018, 5, 12, '2019-05-01', 2567, '2019-01-03', 120);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subeler`
--

CREATE TABLE `subeler` (
  `sube_no` int(12) NOT NULL,
  `sube_adi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `nitelik` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `metrekare` int(8) DEFAULT NULL,
  `calisan_sayisi` int(4) DEFAULT NULL,
  `urun_cesit_sayisi` int(6) DEFAULT NULL,
  `magaza_sinifi` char(1) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `subeler`
--

INSERT INTO `subeler` (`sube_no`, `sube_adi`, `nitelik`, `telefon`, `adres`, `metrekare`, `calisan_sayisi`, `urun_cesit_sayisi`, `magaza_sinifi`) VALUES
(10, 'AmbarlÄ±_Subesi', '2 kat mesken altÄ±', '4578522', ' ambarlÄ± mah. denizkÃ¶ÅŸler cad. no:67 avcÄ±lar/ist', 2800, 28, 5000, 'C'),
(11, 'Halic_Subesi', '1 kat alÄ±ÅŸveriÅŸ merkezi iÃ§i', '4578625', 'haliÃ§ cad. no:123 balat/ist', 3500, 35, 6100, 'B'),
(12, 'Hat_subesi', '1 kat mÃ¼stakil alan', '3695842', ' Hatboyu cad. no:89 bakÄ±rkÃ¶y/ist', 10000, 100, 8850, 'A'),
(13, 'Merkez_sube', '2 kat maÄŸaza ve bÃ¼rolar', '7895463', 'teyfikbey mah. sonerli cad. no:24 K.Ã‡ekmece/ist', 5000, 50, 7500, 'B'),
(14, 'BeyazÄ±t_Subesi', '1 kat mesken altÄ±', '2547856', 'DamÃ¶nÃ¼ cad. no:43 beyazÄ±t/ist', 1800, 18, 3500, 'D');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tedarikciler`
--

CREATE TABLE `tedarikciler` (
  `tedarikci_no` int(12) NOT NULL,
  `firma_isim` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(12) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tedarikciler`
--

INSERT INTO `tedarikciler` (`tedarikci_no`, `firma_isim`, `adres`, `telefon`, `email`) VALUES
(1, 'NET GIDA LTD. ŞTI', 'kuru gıdacılar hali kat:7 no:7 süleymaniye/ist', '7895214', 'info@netgida.com.tr'),
(2, 'KAR KURUYEMIŞ A.Ş.', 'kemaliye mah. no:87 mahmutlu/bursa', '5468925', 'info@karkuruyemis.com.tr'),
(3, 'YAYSAT DAĞITIM A.Ş.', 'Matbaacılar sitesi no:45 G.O.Paşa/ist', '4578123', 'info@yaysat.com.tr'),
(4, 'METTER TEMİZLİK ÜRÜNLERİ LTD. ŞTI.', 'Gümüşpala mah. zafer cad. no:13 avcılar/ist', '4578856', 'info@metter.com.tr'),
(5, 'FEZA KİMYA A.Ş.', 'dilovası/sakarya', '9653256', 'info@feza.com.tr'),
(6, 'FORZA GIDA A.Ş.', 'kandilli mah. derbez cad. no:9 kandilli mah. derbez cad. no:9 G.O.Paşa/ist', '6589325', 'info@forza.com.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `urun_no` int(12) NOT NULL,
  `tedarikci_no` int(12) DEFAULT NULL,
  `urun_adi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `marka` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gramaj` float DEFAULT NULL,
  `fiyat` float DEFAULT NULL,
  `puan` float DEFAULT NULL,
  `kategori` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `alt_kategori` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `stok_durum` varchar(5) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urun_no`, `tedarikci_no`, `urun_adi`, `marka`, `gramaj`, `fiyat`, `puan`, `kategori`, `alt_kategori`, `stok_durum`) VALUES
(1, 5, 'Gofret', 'Eti', 59, 2, 3, 'Atıştırmalıklar', 'Gofret', '1'),
(2, 2, 'SUCUK', 'ŞAHİN', 191, 25, 4, 'Şarküteri', 'Sucuk', '0'),
(3, 5, 'MISIR', 'DARDANEL', 456, 5, 10, 'Donmuş Gıda', 'Mısır', '1'),
(1010, NULL, 'kiraz', 'helvacÄ±oÄŸlu', 1000, 3, 5, NULL, NULL, NULL),
(1011, NULL, 'muz', 'bananas', 1000, 5, 4, NULL, NULL, NULL),
(1012, NULL, 'beyaz_peynir', 'pÄ±nar', 1000, 12, 7, NULL, NULL, NULL),
(1013, NULL, 'macar_salam', 'apikoglu', 500, 28, 8, NULL, NULL, NULL),
(1014, NULL, 'pirinc', 'reis', 2500, 5, 7, NULL, NULL, NULL),
(1015, NULL, 'makarna', 'piyale', 500, 1, 4, NULL, NULL, NULL),
(1016, NULL, 'cekirdek', 'tadÄ±m', 200, 5, 2, NULL, NULL, NULL),
(1017, NULL, 'fÄ±ndÄ±k', 'papagan', 250, 18, 3, NULL, NULL, NULL),
(1018, NULL, 'ekmek', 'ic_uretim', 460, 5, 1, NULL, NULL, NULL),
(1019, NULL, 'kurabiye', 'ic_uretim', 1000, 14, 10, NULL, NULL, NULL),
(1020, NULL, 'bira', 'efes', 330, 3, 7, NULL, NULL, NULL),
(1021, NULL, 'sarap', 'kavaklÄ±dere', 700, 32, 12, NULL, NULL, NULL),
(1022, NULL, 'kola', 'pepsi', 2500, 4, 1, NULL, NULL, NULL),
(1023, NULL, 'ayran', 'yayÄ±k', 150, 1, 1, NULL, NULL, NULL),
(1024, NULL, 'goflet', 'eti', 80, 1, 1, NULL, NULL, NULL),
(1025, NULL, 'fÄ±ndÄ±klÄ±_cikolata', 'milka', 100, 2, 1, NULL, NULL, NULL),
(1026, NULL, 'panco', 'doritos', 500, 4, 2, NULL, NULL, NULL),
(1027, NULL, 'cipso', 'kar', 500, 3, 1, NULL, NULL, NULL),
(1028, NULL, 'omo', 'henkel', 5000, 14, 11, NULL, NULL, NULL),
(1029, NULL, 'alo', 'uni_level', 3500, 12, 11, NULL, NULL, NULL),
(1030, NULL, 'yumos_yumuÅŸatÄ±cÄ±', 'henkel', 2500, 10, 9, NULL, NULL, NULL),
(1031, NULL, 'Ã§amaÅŸÄ±r_suyu', 'ace', 1000, 5, 8, NULL, NULL, NULL),
(1032, NULL, 'bahce_dergisi', 'dogan', 1000, 1, 1, NULL, NULL, NULL),
(1033, NULL, 'sabah_gazetesi', 'calik', 1200, 1, 1, NULL, NULL, NULL),
(1034, NULL, 'tavuk_but', 'senel', 1000, 6, 5, NULL, NULL, NULL),
(1035, NULL, 'dana_pirzola', 'ic_Ã¼retim', 1000, 35, 14, NULL, NULL, NULL),
(1036, NULL, 'bahce_makasÄ±', 'elmer', 1200, 19, 15, NULL, NULL, NULL),
(1037, NULL, 'sulama_hortumu', 'nazif', 1000, 12, 7, NULL, NULL, NULL),
(1038, NULL, 'matkap', 'bosh', 1000, 150, 25, NULL, NULL, NULL),
(1039, NULL, 'tornavida', 'suzar', 150, 15, 5, NULL, NULL, NULL),
(1040, NULL, 'piza', 'super_fresh', 1200, 10, 10, NULL, NULL, NULL),
(1041, NULL, 'balÄ±k_hamsi', 'kerevitas', 1000, 14, 11, NULL, NULL, NULL),
(1042, NULL, 'dezenfektan', 'saydem', 100, 5, 7, NULL, NULL, NULL),
(1043, NULL, 'dis_macunu', 'colgate', 450, 10, 6, NULL, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`arac_no`),
  ADD UNIQUE KEY `plaka` (`plaka`),
  ADD UNIQUE KEY `kasko_no` (`kasko_no`);

--
-- Tablo için indeksler `arac_suruculeri`
--
ALTER TABLE `arac_suruculeri`
  ADD PRIMARY KEY (`surucu_no`),
  ADD UNIQUE KEY `ehliyet_no` (`ehliyet_no`),
  ADD KEY `FK_ARAC_SUR_REFERENCE_ARACLAR` (`arac_no`),
  ADD KEY `FK_ARAC_SUR_REFERENCE_CALISANL` (`calisan_no`);

--
-- Tablo için indeksler `calisanlar`
--
ALTER TABLE `calisanlar`
  ADD PRIMARY KEY (`calisan_no`),
  ADD UNIQUE KEY `vatandaslik_no` (`vatandaslik_no`),
  ADD UNIQUE KEY `sigorta_no` (`sigorta_no`),
  ADD UNIQUE KEY `banka_hesap_no` (`banka_hesap_no`),
  ADD KEY `FK_CALISANL_REFERENCE_SUBELER` (`sube_no`),
  ADD KEY `FK_CALISANL_REFERENCE_DEPARTMA` (`departman_no`);

--
-- Tablo için indeksler `departmanlar`
--
ALTER TABLE `departmanlar`
  ADD PRIMARY KEY (`departman_no`);

--
-- Tablo için indeksler `musteriler`
--
ALTER TABLE `musteriler`
  ADD PRIMARY KEY (`musteri_card_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `vatandaslik_no` (`vatandaslik_no`);

--
-- Tablo için indeksler `musteri_servis`
--
ALTER TABLE `musteri_servis`
  ADD PRIMARY KEY (`sefer_no`),
  ADD KEY `FK_MUSTERI__REFERENCE_ARACLAR` (`arac_no`),
  ADD KEY `FK_MUSTERI__REFERENCE_ARAC_SUR` (`surucu_no`);

--
-- Tablo için indeksler `satislar`
--
ALTER TABLE `satislar`
  ADD PRIMARY KEY (`satis_no`),
  ADD KEY `FK_SATISLAR_REFERENCE_URUNLER` (`urun_no`),
  ADD KEY `FK_SATISLAR_REFERENCE_CALISANL` (`calisan_no`),
  ADD KEY `FK_SATISLAR_REFERENCE_SUBELER` (`sube_no`),
  ADD KEY `FK_SATISLAR_REFERENCE_MUSTERIL` (`musteri_card_no`);

--
-- Tablo için indeksler `stoklar`
--
ALTER TABLE `stoklar`
  ADD PRIMARY KEY (`stok_no`),
  ADD KEY `FK_STOKLAR_REFERENCE_TEDARIKC` (`tedarikci_no`),
  ADD KEY `FK_STOKLAR_REFERENCE_SUBELER` (`sube_no`),
  ADD KEY `FK_STOKLAR_REFERENCE_URUNLER` (`urun_no`);

--
-- Tablo için indeksler `subeler`
--
ALTER TABLE `subeler`
  ADD PRIMARY KEY (`sube_no`);

--
-- Tablo için indeksler `tedarikciler`
--
ALTER TABLE `tedarikciler`
  ADD PRIMARY KEY (`tedarikci_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`urun_no`),
  ADD KEY `FK_URUNLER_REFERENCE_TEDARİKCİLER` (`tedarikci_no`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `arac_suruculeri`
--
ALTER TABLE `arac_suruculeri`
  ADD CONSTRAINT `FK_ARAC_SUR_REFERENCE_ARACLAR` FOREIGN KEY (`arac_no`) REFERENCES `araclar` (`arac_no`),
  ADD CONSTRAINT `FK_ARAC_SUR_REFERENCE_CALISANL` FOREIGN KEY (`calisan_no`) REFERENCES `calisanlar` (`calisan_no`);

--
-- Tablo kısıtlamaları `calisanlar`
--
ALTER TABLE `calisanlar`
  ADD CONSTRAINT `FK_CALISANL_REFERENCE_DEPARTMA` FOREIGN KEY (`departman_no`) REFERENCES `departmanlar` (`departman_no`),
  ADD CONSTRAINT `FK_CALISANL_REFERENCE_SUBELER` FOREIGN KEY (`sube_no`) REFERENCES `subeler` (`sube_no`);

--
-- Tablo kısıtlamaları `musteri_servis`
--
ALTER TABLE `musteri_servis`
  ADD CONSTRAINT `FK_MUSTERI__REFERENCE_ARACLAR` FOREIGN KEY (`arac_no`) REFERENCES `araclar` (`arac_no`),
  ADD CONSTRAINT `FK_MUSTERI__REFERENCE_ARAC_SUR` FOREIGN KEY (`surucu_no`) REFERENCES `arac_suruculeri` (`surucu_no`);

--
-- Tablo kısıtlamaları `satislar`
--
ALTER TABLE `satislar`
  ADD CONSTRAINT `FK_SATISLAR_REFERENCE_CALISANL` FOREIGN KEY (`calisan_no`) REFERENCES `calisanlar` (`calisan_no`),
  ADD CONSTRAINT `FK_SATISLAR_REFERENCE_MUSTERIL` FOREIGN KEY (`musteri_card_no`) REFERENCES `musteriler` (`musteri_card_no`),
  ADD CONSTRAINT `FK_SATISLAR_REFERENCE_SUBELER` FOREIGN KEY (`sube_no`) REFERENCES `subeler` (`sube_no`),
  ADD CONSTRAINT `FK_SATISLAR_REFERENCE_URUNLER` FOREIGN KEY (`urun_no`) REFERENCES `urunler` (`urun_no`);

--
-- Tablo kısıtlamaları `stoklar`
--
ALTER TABLE `stoklar`
  ADD CONSTRAINT `FK_STOKLAR_REFERENCE_SUBELER` FOREIGN KEY (`sube_no`) REFERENCES `subeler` (`sube_no`),
  ADD CONSTRAINT `FK_STOKLAR_REFERENCE_TEDARIKC` FOREIGN KEY (`tedarikci_no`) REFERENCES `tedarikciler` (`tedarikci_no`),
  ADD CONSTRAINT `FK_STOKLAR_REFERENCE_URUNLER` FOREIGN KEY (`urun_no`) REFERENCES `urunler` (`urun_no`);

--
-- Tablo kısıtlamaları `urunler`
--
ALTER TABLE `urunler`
  ADD CONSTRAINT `FK_URUNLER_REFERENCE_TEDARİKCİLER` FOREIGN KEY (`tedarikci_no`) REFERENCES `tedarikciler` (`tedarikci_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
