-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2020 at 11:25 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btl`
--

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `id` int(11) NOT NULL,
  `maSV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenSV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maMon` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenMon` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diemThi` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diemQT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TKHP` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`id`, `maSV`, `tenSV`, `maMon`, `tenMon`, `diemThi`, `diemQT`, `TKHP`, `maGV`, `tenGV`) VALUES
(1, '175A071427', 'Đào Ninh Thái', '1A', 'Công nghệ web', '10', '10', '10', '175A', 'Đào Thị Tình'),
(2, '175A071421', 'Đào Thị Trang', '1A', 'Công nghệ web', '10', '10', '10', '175A', 'Đào Thị Tình'),
(4, '175A071425', 'Đào Thị Lý', '3A', 'CSS', '1', '1', '1', '175B', 'Đào Văn Thắng');

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `maGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diaChi` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`maGV`, `tenGV`, `email`, `diaChi`, `SDT`, `ngaySinh`) VALUES
('175A', 'Đào thị Tình', 'tinhtinh@gmail.com', 'Đống Đa', '012224466885', '2020-01-29'),
('175B', 'Đào Văn Thắng', 'thangdao1@gmail.com', 'Cầu Giấy', '0445657522', '2020-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `lophocphan`
--

CREATE TABLE `lophocphan` (
  `id` int(11) NOT NULL,
  `maSV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenSV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phongHoc` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SLdiem` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trongSo` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maMon` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenMon` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lophocphan`
--

INSERT INTO `lophocphan` (`id`, `maSV`, `tenSV`, `maGV`, `tenGV`, `phongHoc`, `SLdiem`, `trongSo`, `maMon`, `tenMon`, `token`) VALUES
(1, '175A071421', 'Đào Thị Trang', '175A', 'Đào Văn Công', '301B5', '3', '4/6', '1A', 'Công nghệ web', 'asdasdasd'),
(2, '175A071427', 'Đào Ninh Thái', '175A', 'Đào Văn Công', '301B5', '3', '4/6', '1A', 'Công nghệ web', 'iYRyf4lJuo'),
(38, '175A071425', 'Đào Thị Lý', '', '', '301B5', '', '', '', 'Công nghệ web', 'Vz8wBzDw1B');

-- --------------------------------------------------------

--
-- Table structure for table `menu_catalog`
--

CREATE TABLE `menu_catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_catalog`
--

INSERT INTO `menu_catalog` (`id`, `name`, `metaTitle`, `created`, `updated`) VALUES
(1, 'Công nghệ thông tin', 'Cong-nghe-thong-tin', '2018-01-15 16:45:47', '2020-01-05 09:24:05'),
(2, 'Nhà Trường', 'Nha-Truong', '2018-01-15 17:08:01', '2020-01-05 09:24:09'),
(3, 'Đối Ngoại', 'Doi-Ngoai', '2018-01-15 17:26:21', '2020-01-05 09:24:13'),
(4, 'Kinh nghiệm', 'Kinh-nghiem', '2018-01-19 14:35:22', '2020-01-10 06:36:27'),
(6, 'Sinh viên', 'Sinh-vien', '2019-12-27 14:23:52', '2020-01-05 09:24:25'),
(7, 'Giáo Viên', 'Giao-Vien', '2019-12-27 14:59:27', '2020-01-05 09:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_list_blog`
--

CREATE TABLE `menu_list_blog` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalog` int(2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot` int(1) NOT NULL DEFAULT 1,
  `new` int(1) NOT NULL DEFAULT 1,
  `dateTime` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_list_blog`
--

INSERT INTO `menu_list_blog` (`id`, `avatar`, `name`, `metaTitle`, `catalog`, `description`, `content`, `token`, `hot`, `new`, `dateTime`, `created`, `updated`) VALUES
(22, 'public/images/1578624884d1.jpg', 'Xác định điểm trúng tuyển vào Trường Đại học Thủy lợi', 'Xac-dinh-diem-trung-tuyen-vao-Truong-Dai-hoc-Thuy-loi', 2, '(TLU) Trường Đại học Thủy lợi xác định điểm trúng tuyển theo công thức (a) dựa trên tổ hợp 3 môn thí sinh nộp hồ sơ xét tuyển; điểm ưu tiên khu vực, đối tượng; điểm ưu tiên xét tuyển (nếu có)\r\nNgày 14/8 tới đây tất cả các trường Đại học trong cả nước sẽ c', '<p>(TLU) Trường Đại học Thủy lợi x&aacute;c định điểm tr&uacute;ng tuyển theo c&ocirc;ng thức (a) dựa tr&ecirc;n tổ hợp 3 m&ocirc;n th&iacute; sinh nộp hồ sơ x&eacute;t tuyển; điểm ưu ti&ecirc;n khu vực, đối tượng; điểm ưu ti&ecirc;n x&eacute;t tuyển (nếu c&oacute;)</p>\r\n\r\n<p>Ng&agrave;y 14/8 tới đ&acirc;y tất cả c&aacute;c trường Đại học trong cả nước sẽ c&ocirc;ng bố điểm tr&uacute;ng tuyển v&agrave;o trường của m&igrave;nh. Trong đ&oacute; c&oacute; c&aacute;c trường trong nh&oacute;m GX (nh&oacute;m 12 trường đại học h&agrave;ng đầu c&oacute; phương thức x&eacute;t tuyển theo nh&oacute;m ri&ecirc;ng). Nh&oacute;m GX thực hiện việc x&eacute;t tuyển dựa tr&ecirc;n kết quả của Kỳ thi Trung học phổ th&ocirc;ng&nbsp; quốc gia 2016 tại c&aacute;c cụm thi tr&ecirc;n cả nước do c&aacute;c trường đại học chủ tr&igrave;. Nh&oacute;m GX &aacute;p dụng chung một c&aacute;ch thức x&eacute;t tuyển giữa c&aacute;c nguyện vọng ng&agrave;nh (nh&oacute;m ng&agrave;nh) theo thứ tự ưu ti&ecirc;n trong Phiếu ĐKXT v&agrave; thực hiện bằng một phần mềm x&eacute;t tuyển chung. Ngo&agrave;i 2 phương thức ĐKXT do Bộ GDĐT quy định, nh&oacute;m GX bổ sung th&ecirc;m phương thức nhận trực tiếp Phiếu ĐKXT tại c&aacute;c trường thuộc nh&oacute;m. T&ugrave;y theo t&igrave;nh h&igrave;nh tuyển sinh của c&aacute;c trường, nh&oacute;m GX sẽ duy tr&igrave; phương thức x&eacute;t tuyển theo nh&oacute;m trường cho cả c&aacute;c đợt x&eacute;t tuyển bổ sung.</p>\r\n\r\n<p>Để x&aacute;c định điểm tr&uacute;ng tuyển của m&igrave;nh khi nộp hồ sơ x&eacute;t tuyển v&agrave;o c&aacute;c trường thuộc nh&oacute;m GX, c&aacute;c th&iacute; sinh cần lưu &yacute; c&aacute;ch t&iacute;nh điểm như sau:</p>\r\n\r\n<p>C&aacute;c trường trong nh&oacute;m GX x&eacute;t tuyển theo c&aacute;c nguyện vọng của th&iacute; sinh đ&atilde; đăng k&yacute; (xếp theo thứ tự ưu ti&ecirc;n tr&ecirc;n Phiếu ĐKXT): Mỗi nguyện vọng ứng với một m&atilde; x&eacute;t tuyển, nếu th&iacute; sinh tr&uacute;ng tuyển theo một&nbsp;nguyện vọng&nbsp;xếp tr&ecirc;n&nbsp;th&igrave;&nbsp;sẽ kh&ocirc;ng&nbsp;được x&eacute;t c&aacute;c nguyện vọng sau nữa. Điểm chuẩn tr&uacute;ng tuyển v&agrave;o một nh&oacute;m ng&agrave;nh chỉ căn cứ tr&ecirc;n kết quả&nbsp;<strong>Điểm x&eacute;t</strong>&nbsp;của th&iacute; sinh v&agrave; chỉ ti&ecirc;u đ&atilde; được ấn định, kh&ocirc;ng ph&acirc;n biệt nguyện vọng ghi ở thứ tự n&agrave;o (1, 2, 3 hay 4) giữa c&aacute;c th&iacute; sinh đ&atilde; đăng k&yacute; v&agrave;o nh&oacute;m ng&agrave;nh đ&oacute;.C&ocirc;ng thức t&iacute;nh Điểm x&eacute;t (ĐX):</p>\r\n\r\n<p><img alt=\"\" src=\"public/images/1.jpg\" /><img alt=\"\" src=\"C:xampphtdocsBTL2publicclientimages1.jpg\" /><img alt=\"\" src=\"../public/client/images/1.jpg\" style=\"height:500px; width:1440px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"C:xampphtdocsBTL2publicclientimages1.jpg\" style=\"margin-left:20px; margin-right:20px; width:250px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"public/client/images/1.jpg\" style=\"margin-left:20px; margin-right:20px; width:250px\" /></p>\r\n\r\n<p><strong>Ghi ch&uacute;:</strong>&nbsp;Điểm ưu ti&ecirc;n x&eacute;t tuyển d&agrave;nh cho th&iacute; sinh thuộc diện&nbsp;<em>ưu ti&ecirc;n x&eacute;t tuyển.</em>&nbsp;Mức điểm ưu ti&ecirc;n x&eacute;t tuyển do c&aacute;c trường quy định ri&ecirc;ng v&agrave; được c&ocirc;ng bố tr&ecirc;n website của trường. &nbsp;&nbsp;</p>\r\n\r\n<p><strong>Trường Đại học Thủy lợi x&aacute;c định điểm tr&uacute;ng tuyển theo c&ocirc;ng thức (a) dựa tr&ecirc;n tổ hợp 3 m&ocirc;n th&iacute; sinh nộp hồ sơ x&eacute;t tuyển; điểm ưu ti&ecirc;n khu vực, đối tượng; điểm ưu ti&ecirc;n x&eacute;t tuyển (nếu c&oacute;)</strong></p>\r\n\r\n<p><strong>V&iacute; dụ:</strong>&nbsp;Th&iacute; sinh c&oacute; SBD XDA00673&nbsp;<strong>M&ocirc;n 1: 7.50</strong>;&nbsp;<strong>M&ocirc;n 2: 6.75</strong>;&nbsp;<strong>M&ocirc;n 3: 8.00</strong>&nbsp;thuộc&nbsp;<strong>khu vực 2 (0.5 điểm)</strong>&nbsp;x&eacute;t v&agrave;o Trường Đại học Thủy lợi (c&ocirc;ng thức (a) kh&ocirc;ng c&oacute; m&ocirc;n ch&iacute;nh) sẽ c&oacute; điểm x&eacute;t tuyển:&nbsp;<strong>ĐX = (7.50+6.75+8)/3 + 0.5/3 + 0 = 7.42 + 0.17 = 7.59</strong></p>\r\n\r\n<p><strong>Điểm x&eacute;t tuyển l&agrave; 7.59</strong></p>\r\n\r\n<p>Trường Đại học Thủy lợi sẽ c&ocirc;ng bố điểm tr&uacute;ng tuyến v&agrave; danh s&aacute;ch tr&uacute;ng tuyển của c&aacute;c th&iacute; sinh tại website:&nbsp;<a href=\"http://www.tlu.edu.vn/\">www.tlu.edu.vn</a>&nbsp;v&agrave; qua fanpage tại địa chỉ&nbsp;<a href=\"https://www.facebook.com/daihocthuyloi1959/\">https://www.facebook.com/daihocthuyloi1959/</a>&nbsp;hoặc<a href=\"https://www.facebook.com/tuvanthiTLU/?fref=nf\" title=\"fb/tuvanthiTLU\">fb/tuvanthiTLU</a>&nbsp;v&agrave;o ng&agrave;y 14 th&aacute;ng 8. Điểm chuẩn tr&uacute;ng tuyển theo thang 10 ph&ugrave; hợp với c&ocirc;ng thức t&iacute;nh Điểm x&eacute;t, lấy đến hai chữ số sau dấu phẩy (v&iacute; dụ 6,85; 8,20 vv) như phần tr&ecirc;n đ&atilde; n&ecirc;u.</p>\r\n\r\n<p>Thực hiện: B&igrave;nh Dương</p>\r\n', 'Xi6PKA7xFZ', 1, 1, '10/01/2020', '2020-01-10 02:43:46', '2020-01-10 03:43:43'),
(23, 'public/images/1578626607d2.jpg', 'Quyết định điểm chuẩn năm 2019 tại cơ sở mở rộng phố hiến của trường đh thủy lợi', 'Quyet-dinh-diem-chuan-nam-2019-tai-co-so-mo-rong-pho-hien-cua-truong-dh-thuy-loi', 2, 'quyết định điểm chuẩn năm 2019 tại cơ sở mở rộng phố hiến của trường đh thủy lợi', '<p style=\"text-align:center\"><img alt=\"\" src=\"..public/client/images/2.jpg\" /><img alt=\"\" src=\"../public/client/images/2.jpg\" style=\"height:300px; width:850px\" /></p>\r\n\r\n<h1 style=\"text-align:center\"><u>Quyết định điểm chuẩn năm 2019 tại cơ sở mở rộng Phố Hiến của Trường ĐH Thủy lợi</u></h1>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Trường Đại học Thủy lợi Quyết định ph&ecirc; duyệt điểm chuẩn v&agrave; danh s&aacute;ch th&iacute; sinh tr&uacute;ng tuyển đợt 1 tr&igrave;nh độ đại học hệ ch&iacute;nh quy v&agrave;o Trường Đại học Thủy lợi năm 2019 (C&aacute;c ng&agrave;nh đ&agrave;o tạo tại Cơ sở mở rộng Phố Hiến, Hưng Y&ecirc;n)</p>\r\n\r\n<p><a href=\"http://daotao.tlu.edu.vn/ftp/p3/Upload/Tuyensinh/2019/DHCQ/PHA_QD_diem_chuan_nam_2019.pdf\">Xem chi tiết Quyết định</a></p>\r\n\r\n<p>Tra cứu kết quả tr&uacute;ng tuyển tại:&nbsp;<a href=\"http://kqts.tlu.edu.vn/\">http://kqts.tlu.edu.vn/</a></p>\r\n\r\n<p style=\"margin-left:80px; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:80px; text-align:center\">&nbsp;</p>\r\n', 'SBAjdYHdIu', 1, 1, '10/01/2020', '2020-01-10 03:23:27', '2020-01-10 03:24:51'),
(24, 'public/images/1578637166d3.jpg', 'Ngưỡng mộ thành tích Á Khoa đầu ra Khoa Môi trường -Trường Đại học Thủy lợi', 'Nguong-mo-thanh-tich-A-Khoa-dau-ra-Khoa-Moi-truong--Truong-Dai-hoc-Thuy-loi', 6, '(tlu) - sinh ra và lớn lên trong một gia đình thuần nông tại thanh hóa, trịnh thị hòa lớp 56mt1 khiến nhiều ngưỡng mộ khi tốt nghiệp với điểm số “cao” 3,7/4,0 trở thành á khoa của ngành kỹ thuật môi trường khoa môi trường trường đại học thủy lợi với tấm b', '<h1>Ngưỡng mộ th&agrave;nh t&iacute;ch &Aacute; Khoa đầu ra Khoa M&ocirc;i trường -Trường Đại học Thủy lợi</h1>\r\n\r\n<hr />\r\n<p>(TLU) - Sinh ra v&agrave; lớn l&ecirc;n trong một gia đ&igrave;nh thuần n&ocirc;ng tại Thanh H&oacute;a, Trịnh Thị H&ograve;a lớp 56MT1 khiến nhiều ngưỡng mộ khi tốt nghiệp với điểm số &ldquo;cao&rdquo; 3,7/4,0 trở th&agrave;nh &Aacute; khoa của ng&agrave;nh Kỹ thuật M&ocirc;i trường Khoa M&ocirc;i trường Trường Đại học Thủy Lợi với tấm bằng xuất sắc.</p>\r\n\r\n<p>Nh&igrave;n d&aacute;ng người xinh xắn, dịu d&agrave;ng, &iacute;t ai nghĩ H&ograve;a lại l&agrave; sinh vi&ecirc;n khối ng&agrave;nh kỹ thuật - ng&agrave;nh Kỹ thuật M&ocirc;i Trường Khoa M&ocirc;i trường Trường Đại học Thủy lợi. H&ograve;a chia sẻ, &ldquo;Em cảm thấy vui v&igrave; những cố gắng của bản th&acirc;n cuối c&ugrave;ng cũng thu được những kết quả xứng đ&aacute;ng. Nhận thấy m&igrave;nh đ&atilde; lựa chọn đ&uacute;ng ng&agrave;nh học, đ&uacute;ng m&ocirc;i trường m&agrave; m&igrave;nh mong muốn. Khoa M&ocirc;i trường - Trường Đại học Thủy lợi l&agrave; nơi em học hỏi được nhiều điều bổ &iacute;ch từ thầy c&ocirc;, bạn b&egrave; về những kiến thức chuy&ecirc;n ng&agrave;nh cũng như những kỹ năng sống cần thiết, nơi cho em nhiều những kỉ niệm.&rdquo;</p>\r\n\r\n<p>Từ nhỏ, Trịnh Thị H&ograve;a đ&atilde; &yacute; thức được việc học tập l&agrave; v&ocirc; c&ugrave;ng quan trọng. Với H&ograve;a, gia đ&igrave;nh lu&ocirc;n l&agrave; một điểm tựa tinh thần, l&agrave; động lực để em cố gắng học tập v&agrave; r&egrave;n luyện.</p>\r\n\r\n<p><img alt=\"\" src=\"public/client/images/31.jpg\" style=\"height:768px; width:576px\" /></p>\r\n\r\n<p>&nbsp; <strong><em>T&acirc;n kỹ sư Trịnh Thị H&ograve;a nhận bằng tốt nghiệp loại xuất sắc</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Theo H&ograve;a, nếu chỉ quan trọng điểm số th&ocirc;i th&igrave; chưa đủ. V&igrave; vậy, mỗi sinh vi&ecirc;n cần t&iacute;ch cực tham gia c&aacute;c hoạt động nghi&ecirc;n cứu, hoạt động x&atilde; hội để trau dồi bản th&acirc;n hơn nữa. Đặc biệt, nghi&ecirc;n cứu khoa học l&agrave; một hoạt động rất bổ &iacute;ch, sẽ gi&uacute;p sinh vi&ecirc;n nắm vững hơn v&agrave; c&oacute; cơ hội &aacute;p dụng những l&yacute; thuyết được học tr&ecirc;n lớp v&agrave;o thực tế.</p>\r\n\r\n<p>Chia sẻ về l&yacute; do chọn ng&agrave;nh học kh&aacute; &ldquo;nặng&rdquo;, H&ograve;a cho rằng, &ldquo;Với xu thế đất nước đang hội nhập v&agrave; ph&aacute;t triển, c&aacute;c ng&agrave;nh kinh tế x&atilde; hội được đẩy mạnh k&eacute;o theo m&ocirc;i trường cũng bị t&aacute;c động kh&ocirc;ng nhỏ. L&agrave; một người trẻ, được tiếp x&uacute;c với internet, truyền th&ocirc;ng th&igrave; bản th&acirc;n ch&uacute;ng ta đều c&oacute; thể biết được t&igrave;nh trạng m&ocirc;i trường hiện nay như thế n&agrave;o. V&igrave; vậy em mong muốn được g&oacute;p một phần v&agrave;o c&ocirc;ng cuộc giảm thiểu &ocirc; nhiễm m&ocirc;i trường.&rdquo;</p>\r\n\r\n<p>Ngo&agrave;i ra, ngay từ khi học trung học, H&ograve;a rất th&iacute;ch học m&ocirc;n h&oacute;a, th&iacute;ch l&agrave;m c&aacute;c th&iacute; nghiệm v&agrave; được biết Khoa M&ocirc;i Trường c&oacute; ph&ograve;ng th&iacute; nghiệm hiện đại n&ecirc;n đ&atilde; lựa chọn ng&agrave;nh Kỹ thuật M&ocirc;i trường của Trường Đại học Thủy lợi.</p>\r\n\r\n<p><img alt=\"\" src=\"../public/client/images/3.2.jpg\" style=\"height:768px; margin-left:250px; margin-right:250px; width:576px\" /><img alt=\"\" src=\"public/client/images/32.jpg\" style=\"height:768px; width:576px\" /></p>\r\n\r\n<p>&nbsp;<strong><em>T&acirc;n kỹ sư Trịnh Thị H&ograve;a chụp ảnh lưu niệm c&ugrave;ng gia đ&igrave;nh</em></strong></p>\r\n\r\n<p>H&ograve;a cho biết th&ecirc;m: &ldquo;Để học tập tốt ở đại học th&igrave; cần nhất l&agrave; việc đặt mục ti&ecirc;u. Đưa ra cho m&igrave;nh một mục ti&ecirc;u lớn nhất của to&agrave;n kh&oacute;a v&agrave; t&aacute;ch n&oacute; th&agrave;nh những mục ti&ecirc;u nhỏ trong từng năm học. Khi x&aacute;c định được mục ti&ecirc;u của bản th&acirc;n th&igrave; m&igrave;nh phải &yacute; thức v&agrave; đưa ra c&aacute;ch thực hiện n&oacute;. Sắp xếp thời gian học tập, hoạt động, giải tr&iacute; v&agrave; l&agrave;m th&ecirc;m một c&aacute;ch hợp l&yacute;. B&ecirc;n cạnh đ&oacute; cần chăm chỉ l&agrave;m b&agrave;i tập về nh&agrave; v&agrave; ngo&agrave;i việc học trong b&agrave;i giảng th&igrave; n&ecirc;n thường t&igrave;m đọc th&ecirc;m c&aacute;c gi&aacute;o tr&igrave;nh li&ecirc;n quan để nắm chắc kiến thức hơn v&igrave; b&agrave;i giảng chỉ l&agrave; phần t&oacute;m tắt.&rdquo;</p>\r\n\r\n<p>Ngo&agrave;i kết quả học tập xuất sắc, H&ograve;a c&ograve;n nhiệt t&igrave;nh tham gia c&aacute;c hoạt động t&igrave;nh nguyện m&ugrave;a h&egrave; xanh, tiếp sức m&ugrave;a thi, quảng b&aacute; tuyển sinh cho trường v&agrave; cho khoa, c&aacute;c hoạt động văn nghệ v&agrave; th&agrave;nh vi&ecirc;n ti&ecirc;u biểu của c&acirc;u lạc bộ Thanh H&oacute;a. Kh&ocirc;ng những thế, H&ograve;a c&ograve;n tham gia cuộc thi Olympic M&aacute;c-Lenin đạt giải 3 cấp trường, cuộc thi t&igrave;m hiểu về tư tưởng v&agrave; đạo đức Hồ Ch&iacute; Minh đạt giải nh&igrave; v&agrave; tham gia gia nghi&ecirc;n cứu khoa học với đề t&agrave;i: &ldquo;Xử l&yacute; nước thải chăn nu&ocirc;i bằng xỉ than tổ ong kết hợp vật liệu từ thủy tinh t&aacute;i chế SuperSol.&rdquo;</p>\r\n\r\n<p><img alt=\"\" src=\"../public/client/images/3.3jpg\" style=\"margin-left:250px; margin-right:250px\" /><img alt=\"\" src=\"../public/client/images/3.2.jpg\" style=\"height:768px; margin-left:250px; margin-right:250px; width:576px\" /><img alt=\"\" src=\"public/client/images/33.jpg\" style=\"height:768px; width:614px\" /></p>\r\n\r\n<p><strong><em>T&acirc;n kỹ sư Trịnh Thị H&ograve;a dự thi cuộc thi t&igrave;m hiểu về tư tưởng đạo đức c&aacute;ch mạng Hồ Ch&iacute; Minh</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;Dự định sau khi ra trường của H&ograve;a l&agrave; t&igrave;m được việc l&agrave;m đ&uacute;ng chuy&ecirc;n ng&agrave;nh để vận dụng những g&igrave; đ&atilde; được học tr&ecirc;n giảng đường, học hỏi th&ecirc;m kinh nghiệm thực tế. V&agrave; cải thiện tr&igrave;nh độ tiếng anh để c&oacute; nhiều cơ hội ph&aacute;t triển bản th&acirc;n.</p>\r\n\r\n<p>Với th&agrave;nh t&iacute;ch đ&aacute;ng ngưỡng mộ của c&ocirc; g&aacute;i nhỏ nhắn v&agrave; đầy nghị lực, lu&ocirc;n phấn đấu trong học tập v&agrave; ph&aacute;t huy được năng lực bản th&acirc;n của H&ograve;a, chắc chắn rằng rất nhiều sinh vi&ecirc;n đều mong muốn đạt được.</p>\r\n\r\n<p>&Aacute; khoa t&acirc;n kỹ sư Trịnh Thị H&ograve;a l&agrave; một trong những tấm gương xuất sắc của ng&agrave;nh Kỹ thuật M&ocirc;i Trường rất đ&aacute;ng ngưỡng mộ, rất đ&aacute;ng để cho c&aacute;c thế hệ sinh vi&ecirc;n kh&oacute;a sau học hỏi noi theo.</p>\r\n\r\n<p><strong>Theo Khoa M&ocirc;i trường</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', 'Z4DK0OOLe2', 1, 1, '10/01/2020', '2020-01-10 03:40:27', '2020-01-10 06:19:26'),
(25, 'public/images/15786374384.jpg', 'TƯ DUY VÀ ĐIỂM SỐ – CÁI NÀO QUAN TRỌNG HƠN?', 'TU-DUY-VA-DIEM-SO-–-CAI-NAO-QUAN-TRONG-HON', 6, '“Những con số có quyết định chất lượng của sản phẩm? Những bài hát triệu views, những ca sĩ triệu likes có đồng nghĩa với giá trị nghệ thuật và tài năng của họ?”\r\nViệc giáo dục, rèn luyện cho trẻ phát triển năng lực tư duy sáng tạo quan trọng hơn hay việc', '<p>Kh&ocirc;ng ai phủ nhận vai tr&ograve; của điểm số trong việc kiểm tra đ&aacute;nh gi&aacute; kết quả học tập của học sinh. Đ&oacute; l&agrave; c&aacute;ch thức được &aacute;p dụng tr&ecirc;n to&agrave;n thế giới trong tất cả c&aacute;c cấp học. Cũng giống như muốn đo được gi&aacute; trị của h&agrave;ng h&oacute;a th&igrave; phải sử dụng đến tiền bạc. Thay v&igrave; d&ugrave;ng hai mớ rau để đổi lấy một c&acirc;n th&oacute;c, người ta quy ra tiền v&agrave; d&ugrave;ng tiền l&agrave;m vật trung gian. Điểm số cũng c&oacute; chức năng trung gian như thế để đ&aacute;nh gi&aacute; gi&aacute; trị của một qu&aacute; tr&igrave;nh hay một sản phẩm học tập.</p>\r\n\r\n<p>Từ điểm số, người ta chia ra c&aacute;c cấp độ giỏi, kh&aacute;, trung b&igrave;nh, yếu, k&eacute;m. Học sinh nắm được vị tr&iacute;, năng lực của m&igrave;nh ở đ&acirc;u để phấn đấu. Cha mẹ nắm được t&igrave;nh h&igrave;nh học tập tr&ecirc;n lớp của con em, thầy c&ocirc; đ&aacute;nh gi&aacute; đ&uacute;ng thực chất khả năng của học sinh m&igrave;nh, nh&agrave; tuyển dụng c&oacute; thể từ đ&oacute; m&agrave; biết c&aacute;ch sử dụng nh&acirc;n sự sao cho ph&ugrave; hợp.</p>\r\n\r\n<p>Thậm ch&iacute;, với nhiều người, điểm số c&ograve;n quyết định sự th&agrave;nh bại của một con người trong những bước ngoặt quan trọng. Chỉ hơn nhau 0,25 điểm th&igrave; đ&atilde; c&oacute; người đỗ đại học, c&oacute; người trượt. V&igrave; điểm thi quan trọng như vậy n&ecirc;n mỗi học sinh c&agrave;ng cố gắng, nỗ lực để đạt được n&oacute;, tạo ra sự ganh đua, quyết liệt, s&ocirc;i nổi trong học tập.<img alt=\"\" src=\"public/client/images/4.jpg\" /></p>\r\n\r\n<p><strong><em>Điểm số c&oacute; phải l&agrave; tất cả để đ&aacute;nh gi&aacute; năng lực, khả năng của mỗi học sinh kh&ocirc;ng?</em></strong></p>\r\n\r\n<p>Thực tế cho thấy một học sinh c&oacute; điểm cao chưa chắc đ&atilde; biết vận dụng linh hoạt khi giải quyết một t&igrave;nh huống thực tiễn gặp phải. V&agrave; nhiều sinh vi&ecirc;n bằng giỏi ra trường đi l&agrave;m nhiều khi kh&ocirc;ng hiệu quả được như một sinh vi&ecirc;n chỉ c&oacute; trong tay bằng kh&aacute;&hellip;</p>\r\n\r\n<p><strong><u>Tư duy l&agrave; g&igrave;? Vai tr&ograve; của tư duy?</u></strong></p>\r\n\r\n<p>Theo gi&aacute;o sư de Bono, &ldquo;TƯ DUY l&agrave; kỹ năng vận h&agrave;nh của bộ n&atilde;o m&agrave; nhờ đ&oacute; tr&iacute; th&ocirc;ng minh được nu&ocirc;i dưỡng v&agrave; ph&aacute;t triển&rdquo; v&agrave; &ldquo; kh&ocirc;ng phải ai cũng tư duy c&oacute; phương ph&aacute;p&rdquo;.<br />\r\n<strong>Kỹ năng tư duy</strong>&nbsp;l&agrave; 1 phần rất quan trọng trong việc r&egrave;n luyện tr&iacute; th&ocirc;ng minh cho trẻ. Kỹ năng tư duy tốt gi&uacute;p trẻ giải quyết vấn đề, suy nghĩ logic, s&aacute;ng tạo, ra quyết định nhanh, lu&ocirc;n nảy sinh &yacute; tưởng mới, ph&acirc;n t&iacute;ch-xử l&yacute; th&ocirc;ng tin, l&ecirc;n kế hoạch cho tương lai.</p>\r\n\r\n<p>Kỹ năng tư duy cũng như những kỹ năng kh&aacute;c, n&oacute; kh&ocirc;ng phải tự nhi&ecirc;n m&agrave; c&oacute; được m&agrave; TƯ DUY cần được đ&agrave;o tạo b&agrave;i bản v&agrave; r&egrave;n luyện mỗi ng&agrave;y ngay từ nhỏ.</p>\r\n\r\n<p><strong><u>Tư duy v&agrave; điểm số c&aacute;i n&agrave;o quan trọng hơn?</u></strong></p>\r\n\r\n<p><em>C&acirc;u hỏi đặt ra rằng:</em>&nbsp;việc gi&aacute;o dục, r&egrave;n luyện cho trẻ ph&aacute;t triển năng lực tư duy s&aacute;ng tạo quan trọng hơn hay việc dạy để trẻ c&oacute; điểm số cao quan trọng hơn?</p>\r\n\r\n<p>Tại thời điểm thực tế điểm số c&oacute; thể l&agrave; &aacute;nh h&agrave;o quang, l&agrave; niềm h&atilde;nh diện của học sinh, của &ocirc;ng b&agrave; bố mẹ, nhưng qua thời gian, điểm số n&agrave;y dần tr&ocirc;i v&agrave;o qu&ecirc;n l&atilde;ng: khi đ&atilde; l&agrave; học sinh phổ th&ocirc;ng, &iacute;t ai nhớ nổi v&agrave; cũng chẳng ai c&ograve;n quan t&acirc;m đến việc hồi tiểu học m&igrave;nh được tổng kết bao nhi&ecirc;u. V&agrave; khi tốt nghiệp trung học phổ th&ocirc;ng, điểm số khi ngồi tr&ecirc;n ghế nh&agrave; trường cũng kh&ocirc;ng c&ograve;n &yacute; nghĩa v&agrave; gi&aacute; trị nữa.</p>\r\n\r\n<p>Như vậy học kh&ocirc;ng chỉ l&agrave; tiếp thu kiến thức để gi&agrave;nh điểm cao m&agrave; quan trọng hơn l&agrave; r&egrave;n luyện kỹ năng, phẩm chất th&aacute;i độ. Học kh&ocirc;ng chỉ để biết m&agrave; c&ograve;n để l&agrave;m, để c&ugrave;ng chung sống, để khẳng định m&igrave;nh. V&igrave; vậy h&atilde;y học những điều thiết thực v&agrave; học phải vận dụng được v&agrave;o trong thực tiễn cuộc sống.</p>\r\n\r\n<p>Ch&iacute;nh những kỹ năng tư duy, giải quyết vấn đề, giao tiếp&hellip; được r&egrave;n luyện từ b&eacute; sẽ dần h&igrave;nh th&agrave;nh trong trẻ những th&oacute;i quen bền vững, đi theo b&eacute; suốt những năm th&aacute;ng trưởng th&agrave;nh v&agrave; được &aacute;p dụng v&agrave;o thực tiễn cuộc sống, tạo nền tảng cho trẻ đạt được th&agrave;nh c&ocirc;ng to&agrave;n diện trong cuộc sống chứ kh&ocirc;ng phải l&agrave; điểm số.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'eMtfdGdUcB', 1, 1, '10/01/2020', '2020-01-10 06:23:58', '2020-01-10 06:23:58'),
(26, 'public/images/1578637585d5.jpg', 'Bài văn điểm 10 về vai trò của điểm số trong học tập', 'Bai-van-diem-10-ve-vai-tro-cua-diem-so-trong-hoc-tap', 1, 'Bài văn điểm 10 về vai trò của điểm số trong học tập\r\nQuyên Quyên07:10 29/04/2016\"Những con số có quyết định chất lượng của sản phẩm? Những bài hát triệu views, những ca sĩ triệu likes có đồng nghĩa giá trị nghệ thuật và tài năng của họ?\", nữ sinh lớp 11 ', '<h1>B&agrave;i văn điểm 10 về vai tr&ograve; của điểm số trong học tập</h1>\r\n\r\n<ul>\r\n	<li><a href=\"https://news.zing.vn/Quy%C3%AAn-Quy%C3%AAn-tim-kiem.html?type=3\">Quy&ecirc;n Quy&ecirc;n</a></li>\r\n	<li>07:10 29/04/2016</li>\r\n</ul>\r\n\r\n<p>&quot;Những con số c&oacute; quyết định chất lượng của sản phẩm? Những b&agrave;i h&aacute;t triệu views, những ca sĩ triệu likes c&oacute; đồng nghĩa gi&aacute; trị nghệ thuật v&agrave; t&agrave;i năng của họ?&quot;, nữ sinh lớp 11 viết.</p>\r\n\r\n<p>Thầy Trịnh Quỳnh &ndash; gi&aacute;o vi&ecirc;n dạy Văn trường THPT Lương Thế Vinh (Vụ Bản, Nam Định) ra đề b&agrave;i cho học sinh lớp 11A1: &ldquo;Năm học 2015-2016, c&aacute;c trường tiểu học tr&ecirc;n cả nước tiếp tục thực hiện kiểm tra đ&aacute;nh gi&aacute; bằng nhận x&eacute;t, bỏ chấm điểm thường xuy&ecirc;n. L&agrave; học sinh phổ th&ocirc;ng, anh chị c&oacute; suy nghĩ như thế n&agrave;o về vai tr&ograve; của điểm số trong qu&aacute; tr&igrave;nh học tập?&rdquo;.</p>\r\n\r\n<p>Học sinh Phạm Ngọc &Aacute;nh đ&atilde; c&oacute; b&agrave;i viết được đ&aacute;nh gi&aacute; cao. Thầy Trịnh Quỳnh nhận x&eacute;t: &ldquo;B&agrave;i l&agrave;m ch&iacute;n chắn, s&acirc;u sắc, nhận thức tốt. Sự th&agrave;nh c&ocirc;ng sau n&agrave;y sẽ l&agrave; điểm số xứng đ&aacute;ng m&agrave; em nhận được&rdquo;.</p>\r\n\r\n<p>Thầy Quỳnh chia sẻ: &ldquo;Ban đầu, t&ocirc;i kh&ocirc;ng định chấm điểm v&igrave; học sinh đ&atilde; nhận thức được t&iacute;nh chất v&ocirc; nghĩa của điểm số về h&igrave;nh thức. Tuy nhi&ecirc;n, điểm 10 cũng đ&aacute;nh gi&aacute; việc gi&aacute;o vi&ecirc;n đ&atilde; t&igrave;m được b&agrave;i viết c&oacute; nội dung vượt l&ecirc;n khỏi mẫu số chung. Trong qu&aacute; tr&igrave;nh giảng dạy, t&ocirc;i hiếm khi cho học sinh 10 điểm. Đạt&nbsp; điểm tuyệt đối phải l&agrave; những em c&oacute; c&aacute;i nh&igrave;n s&acirc;u sắc về c&aacute;c vấn đề x&atilde; hội&rdquo;.</p>\r\n\r\n<p>Nữ sinh nhận được số điểm tuyệt đối cho biết, b&agrave;i viết được h&igrave;nh th&agrave;nh tr&ecirc;n nền tảng sơ đồ tư duy do cả nh&oacute;m thực hiện. Từ sơ đồ chung n&agrave;y, Ngọc &Aacute;nh c&oacute; bố cục r&otilde; r&agrave;ng, kh&ocirc;ng lo tr&ugrave;ng lặp &yacute; v&agrave; thoải m&aacute;i s&aacute;ng tạo, thể hiện quan điểm c&aacute; nh&acirc;n của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"public/client/images/5.jpg\" /><img alt=\"\" src=\"../public/client/images/5.jpg\" style=\"height:191px; width:300px\" /></p>\r\n\r\n<p><strong>B&agrave;i viết đạt điểm 10 của Ngọc &Aacute;nh:</strong></p>\r\n\r\n<p>Nếu như b&agrave;i kiểm tra n&agrave;y em nhận được điểm k&eacute;m, học sinh ai l&agrave; người kh&ocirc;ng biết buồn? Nhưng nếu b&agrave;i kiểm tra n&agrave;y chỉ c&oacute; điểm m&agrave; kh&ocirc;ng c&oacute; nhận x&eacute;t ph&ecirc; b&igrave;nh hay động vi&ecirc;n th&igrave; điểm số cũng mất đi một phần &yacute; nghĩa. V&igrave; vậy c&oacute; thể n&oacute;i, điểm số rất quan trọng nhưng học kh&ocirc;ng phải để lấy điểm số. V&agrave; kh&ocirc;ng c&oacute; điểm số kh&ocirc;ng c&oacute; nghĩa học sinh kh&ocirc;ng cố gắng học tập.</p>\r\n\r\n<p>Kh&ocirc;ng ai phủ nhận vai tr&ograve; của điểm số trong việc kiểm tra đ&aacute;nh gi&aacute; kết quả học tập của học sinh. Đ&oacute; l&agrave; c&aacute;ch thức được &aacute;p dụng tr&ecirc;n to&agrave;n thế giới trong tất cả c&aacute;c cấp học. Cũng giống như muốn đo được gi&aacute; trị của h&agrave;ng h&oacute;a th&igrave; phải sử dụng đến tiền bạc. Thay v&igrave; d&ugrave;ng hai mớ rau để đổi lấy một c&acirc;n th&oacute;c, người ta quy ra tiền v&agrave; d&ugrave;ng tiền l&agrave;m vật trung gian. Điểm số cũng c&oacute; chức năng trung gian như thế để đ&aacute;nh gi&aacute; gi&aacute; trị của một qu&aacute; tr&igrave;nh hay một sản phẩm học tập.</p>\r\n\r\n<p>Khi so s&aacute;nh gi&aacute; trị của một sản phẩm thường căn cứ tiền mặt th&igrave; khi so s&aacute;nh năng lực, tr&iacute; tuệ của một người c&oacute; thể căn cứ điểm số. V&igrave; thế, điểm số l&agrave; c&aacute;ch thuận lợi nhất cho việc quản l&yacute; h&agrave;nh ch&iacute;nh.</p>\r\n\r\n<p>Từ điểm số, người ta chia ra c&aacute;c cấp độ giỏi, kh&aacute;, trung b&igrave;nh, yếu, k&eacute;m. Học sinh nắm được vị tr&iacute;, năng lực của m&igrave;nh ở đ&acirc;u để phấn đấu. Cha mẹ nắm được t&igrave;nh h&igrave;nh học tập tr&ecirc;n lớp của con em, thầy c&ocirc; đ&aacute;nh gi&aacute; đ&uacute;ng thực chất khả năng của học sinh m&igrave;nh, nh&agrave; tuyển dụng c&oacute; thể từ đ&oacute; m&agrave; biết c&aacute;ch sử dụng nh&acirc;n sự sao cho ph&ugrave; hợp.</p>\r\n\r\n<p>Thậm ch&iacute;, với nhiều người, điểm số c&ograve;n quyết định sự th&agrave;nh bại của một con người trong những bước ngoặt quan trọng. Chỉ hơn nhau 0,25 điểm th&igrave; đ&atilde; c&oacute; người đỗ đại học, c&oacute; người trượt. V&igrave; điểm thi quan trọng như vậy n&ecirc;n mỗi học sinh c&agrave;ng cố gắng, nỗ lực để đạt được n&oacute;, tạo ra sự ganh đua, quyết liệt, s&ocirc;i nổi trong học tập.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, trong năm học 2015 &ndash; 2016 n&agrave;y, c&aacute;c trường tiểu học tr&ecirc;n cả nước tiếp tục thực hiện kiểm tra đ&aacute;nh gi&aacute; bằng nhận x&eacute;t v&agrave; bỏ chấm điểm thường xuy&ecirc;n. Tr&ecirc;n trang vở sạch đẹp của mỗi học sinh kh&ocirc;ng c&ograve;n thấy những điểm 10 đỏ thắm, kh&ocirc;ng c&ograve;n những điểm 10 d&agrave;nh tặng thầy c&ocirc; gi&aacute;o hay những điểm tốt khoe với &ocirc;ng b&agrave;, cha mẹ nữa.</p>\r\n\r\n<p>Thay v&igrave; ra sức phản đối, ch&uacute;ng ta n&ecirc;n suy nghĩ lại về vai tr&ograve; thực sự của điểm số đối với qu&aacute; tr&igrave;nh học tập. Những con số c&oacute; quyết định chất lượng của sản phẩm? Những b&agrave;i h&aacute;t triệu views, những ca sĩ triệu likes c&oacute; đồng nghĩa gi&aacute; trị nghệ thuật v&agrave; t&agrave;i năng của họ?</p>\r\n\r\n<p>Trong những cuộc thi truyền h&igrave;nh, c&aacute;c th&iacute; sinh ra sức k&ecirc;u gọi để được b&igrave;nh chọn nhiều hơn, những điểm số 9, 10 cho những tiết mục kh&ocirc;ng thực sự xuất sắc chỉ để l&agrave;m h&agrave;i l&ograve;ng nhau. Cuối c&ugrave;ng, ch&uacute;ng ta nhận được g&igrave; qua những con số đ&oacute;?</p>\r\n', 'DckpEAdyG8', 1, 1, '10/01/2020', '2020-01-10 06:26:25', '2020-01-10 06:32:11'),
(27, 'public/images/15786381586.jpg', 'Điểm số có là gì?', 'Diem-so-co-la-gi', 4, 'Điểm số có là gì?\r\nViệc học là một quá trình, trải qua nhiều giai đoạn. Và để đánh giá quá trình đó, người học có học tốt hay không tốt, đạt hay không đạt, các giáo viên sẽ dùng những công cụ đo mà một trong số ấy là dùng thang điểm.', '<h1>Điểm số c&oacute; l&agrave; g&igrave;?</h1>\r\n\r\n<p>Việc học l&agrave; một qu&aacute; tr&igrave;nh, trải qua nhiều giai đoạn. V&agrave; để đ&aacute;nh gi&aacute; qu&aacute; tr&igrave;nh đ&oacute;, người học c&oacute; học tốt hay kh&ocirc;ng tốt, đạt hay kh&ocirc;ng đạt, c&aacute;c gi&aacute;o vi&ecirc;n sẽ d&ugrave;ng những c&ocirc;ng cụ đo m&agrave; một trong số ấy l&agrave; d&ugrave;ng thang điểm.</p>\r\n\r\n<p>C&ocirc;ng cụ đ&aacute;nh gi&aacute; n&agrave;y kh&ocirc;ng sai, nhưng n&oacute; sẽ ph&aacute;t sinh ra nhiều bất cập v&agrave; ti&ecirc;u cực. Ng&agrave;y b&eacute; đi học, t&ocirc;i vẫn nhớ như in cảm gi&aacute;c l&agrave;m b&agrave;i đ&uacute;ng m&agrave; vẫn kh&ocirc;ng được điểm tối đa chỉ v&igrave; l&yacute; do - kh&ocirc;ng l&agrave;m đ&uacute;ng theo c&aacute;ch của c&ocirc;. Bố mẹ biết chuyện, chỉ động vi&ecirc;n: &ldquo;Kh&ocirc;ng sao đ&acirc;u con ạ, quan trọng l&agrave; kiến thức m&igrave;nh thu được&rdquo;. V&agrave; t&ocirc;i vẫn l&agrave; đứa cứng đầu, nhất định kh&ocirc;ng chịu đi học th&ecirc;m ở lớp của c&ocirc; gi&aacute;o để được điểm cao như c&aacute;c bạn, m&agrave; đi học th&ecirc;m thầy ở ngo&agrave;i trường để học được nhiều hơn.</p>\r\n\r\n<p>Đến c&aacute;c thế hệ mầm non sau n&agrave;y, t&ocirc;i thấy c&aacute;c em đi học cực qu&aacute;. Ai đời, mới học mẫu gi&aacute;o m&agrave; đ&atilde; phải đi học đủ thứ tr&ecirc;n đời, từ văn v&otilde;, vẽ vời đến đ&agrave;n ca s&aacute;o nhị, c&aacute;i g&igrave; c&aacute;c c&ocirc; cũng đưa c&aacute;c ch&aacute;u cầm về đưa bố mẹ đăng k&yacute; cho con đi học. Nếu kh&ocirc;ng đi học th&igrave; c&ocirc; kh&ocirc;ng th&iacute;ch, phải ở trong lớp một m&igrave;nh (c&aacute;c bạn kh&aacute;c đi học hết rồi c&ograve;n đ&acirc;u), kh&ocirc;ng được phiếu b&eacute; ngoan&hellip;</p>\r\n\r\n<p>Đến khi học phổ th&ocirc;ng th&igrave; &ocirc;i th&ocirc;i nhiều thứ phải học. Nhưng x&eacute;t cho c&ugrave;ng, bố mẹ cho con học nhiều cũng chỉ v&igrave; để bố mẹ m&aacute;t l&ograve;ng m&aacute;t dạ khi thấy con được điểm cao, m&agrave; &nbsp;đ&ocirc;i khi qu&ecirc;n mất một điều con m&igrave;nh đang học để lấy kiến thức chứ kh&ocirc;ng phải l&agrave; những điểm số l&oacute;a mắt. Những đứa trẻ đang ở tuổi ăn, tuổi lớn m&agrave; ngo&agrave;i đi học ch&iacute;nh, phải học th&ecirc;m gần như tất cả c&aacute;c m&ocirc;n (chắc chỉ trừ nhạc họa v&agrave; thể dục). Ng&agrave;y học mười mấy tiếng, chả c&ograve;n đ&acirc;u thời gian m&agrave; chơi với giải tr&iacute;. C&aacute;c đề thi c&agrave;ng ng&agrave;y c&agrave;ng ra những thể loại o&aacute;i oăm m&agrave; ch&iacute;nh một thầy l&agrave;m trong ng&agrave;nh gi&aacute;o dục phải thừa nhận: &ldquo;Học sinh giỏi b&acirc;y giờ kh&ocirc;ng phải l&agrave; c&oacute; tư duy tốt m&agrave; l&agrave; nhớ được nhiều dạng b&agrave;i hơn&rdquo;.</p>\r\n\r\n<p>Khi Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo ban h&agrave;nh dự thảo th&ocirc;ng tư 30 về việc bỏ chấm điểm ở bậc tiểu học, ngay lập tức đ&atilde; g&acirc;y ra những luồng dư luận tr&aacute;i chiều. C&oacute; &yacute; kiến kh&ocirc;ng đồng t&igrave;nh v&igrave; nếu bỏ điểm đi th&igrave; đ&aacute;nh gi&aacute; học sinh bằng g&igrave;? M&agrave; kh&ocirc;ng đ&aacute;nh gi&aacute; th&igrave; sao biết em n&agrave;o giỏi, em n&agrave;o yếu để bồi dưỡng th&ecirc;m? Điều kh&aacute; th&uacute; vị l&agrave; phần đ&ocirc;ng những người phản đối l&agrave; c&aacute;c thầy c&ocirc; gi&aacute;o. V&agrave; tất nhi&ecirc;n, nh&oacute;m người ủng hộ th&ocirc;ng tư n&agrave;y l&agrave; c&aacute;c bậc phụ huynh. V&igrave; kh&ocirc;ng c&ograve;n điểm số th&igrave; họ sẽ kh&ocirc;ng phải &ldquo;tự nguyện&rdquo; viết đơn đăng k&yacute; cho con đi học nữa. Vừa tiết kiệm được kha kh&aacute; chi ph&iacute; trong thời buổi kh&oacute; khăn, m&agrave; con em họ sẽ lại c&oacute; tuổi thơ.</p>\r\n\r\n<p>Theo quan điểm c&aacute; nh&acirc;n, t&ocirc;i ủng hộ dự thảo n&agrave;y của Bộ. Từ bao l&acirc;u nay, ch&uacute;ng ta vẫn d&ugrave;ng điểm số như một c&ocirc;ng cụ đ&aacute;nh gi&aacute; kết quả học tập nhưng kh&ocirc;ng c&oacute; nghĩa c&ocirc;ng cụ n&agrave;y l&agrave; duy nhất. Nếu chỉ d&ugrave;ng một c&ocirc;ng cụ th&igrave; chắc chắn sẽ c&oacute; ti&ecirc;u cực v&agrave;o tay một số &ldquo;lợi &iacute;ch nh&oacute;m&rdquo; khi nh&oacute;m n&agrave;y c&oacute; khả năng cho điểm cao hay thấp. Thực tế, khi ch&uacute;ng ta đi l&agrave;m, ch&uacute;ng ta đi xin việc, những b&agrave;i kiểm tra chỉ c&oacute; t&aacute;c dụng hỗ trợ th&ecirc;m v&agrave;o quyết định cuối c&ugrave;ng. C&oacute; nghĩa l&agrave;, vẫn sẽ c&oacute; những c&ocirc;ng cụ đ&aacute;nh gi&aacute; kh&aacute;c, c&oacute; thể hiệu quả hơn.</p>\r\n\r\n<p>Chị g&aacute;i t&ocirc;i ở Canada c&oacute; kể chuyện: Trường học ở b&ecirc;n đ&oacute; của 2 đứa con chị ấy, c&ocirc; gi&aacute;o kh&ocirc;ng chấm điểm m&agrave; chỉ đ&aacute;nh gi&aacute; c&oacute; qua hay kh&ocirc;ng qua. Kh&ocirc;ng qua th&igrave; phải học lại, chừng n&agrave;o qua th&igrave; được l&ecirc;n lớp. Nhưng học sinh n&agrave;o giỏi hay yếu, c&ocirc; gi&aacute;o vẫn c&oacute; thể biết được v&igrave; gi&aacute;o vi&ecirc;n sẽ c&oacute; nhiệm vụ theo d&otilde;i học sinh trong suốt cả qu&aacute; tr&igrave;nh học. N&oacute;i c&aacute;ch kh&aacute;c, gi&aacute;o dục b&ecirc;n đ&oacute; đ&aacute;nh gi&aacute; kết quả thực dựa tr&ecirc;n một qu&aacute; tr&igrave;nh chứ kh&ocirc;ng phải chỉ dựa v&agrave;o kết quả của b&agrave;i kiểm tra. Điểm số nếu c&oacute; cũng kh&ocirc;ng phải để xếp hạng.</p>\r\n\r\n<p>Quay lại c&acirc;u chuyện gi&aacute;o dục của Việt Nam, c&oacute; lẽ, nếu như kh&ocirc;ng thay đổi hay cải tiến c&ocirc;ng cụ đ&aacute;nh gi&aacute; hiện tại th&igrave; học sinh tiểu học vẫn phải đeo balo nặng trĩu s&aacute;ch vở tr&ecirc;n vai, học sinh phổ th&ocirc;ng vẫn phải chạy &ldquo;s&ocirc;&rdquo; đi học từ s&aacute;ng đến tối mịt. C&ograve;n c&aacute;c &ocirc;ng bố b&agrave; mẹ, tuy miệng động vi&ecirc;n con kh&ocirc;ng cần phải học qu&aacute; sức lấy điểm cao, kiến thức mới l&agrave; quan trọng nhưng vẫn chạy khắp nơi mọi chốn, t&igrave;m những lớp học danh tiếng để xin học cho con. V&igrave; &ldquo;điểm kh&ocirc;ng l&agrave; g&igrave; nhưng cũng&hellip; l&agrave; g&igrave;&rdquo;.</p>\r\n\r\n<p><strong>B&ugrave;i Minh Tuấn</strong></p>\r\n', 'kqV3uqdUi1', 1, 1, '10/01/2020', '2020-01-10 06:35:58', '2020-01-10 06:35:58'),
(29, 'public/images/15786446997.jpg', 'Điểm số và sự ảo tưởng', 'Diem-so-va-su-ao-tuong', 4, 'Những ngày cuối tháng năm rộn ràng những câu chuyện về thành tích của con trẻ. Đâu đâu cũng luận bàn về những điểm số cao ngất ngưởng, mạng xã hội thì ngập tràn giấy khen, phẩn thưởng, danh hiệu… Liệu những con điểm cao ngất ngưởng kia đã đánh giá đúng nă', '<h1>Điểm số v&agrave; sự ảo tưởng</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Những ng&agrave;y cuối th&aacute;ng năm rộn r&agrave;ng những c&acirc;u chuyện về th&agrave;nh t&iacute;ch của con trẻ. Đ&acirc;u đ&acirc;u cũng luận b&agrave;n về những điểm số cao ngất ngưởng, mạng x&atilde; hội th&igrave; ngập tr&agrave;n giấy khen, phẩn thưởng, danh hiệu&hellip; Liệu những con điểm cao ngất ngưởng kia đ&atilde; đ&aacute;nh gi&aacute; đ&uacute;ng năng lực của một đứa trẻ chưa?<br />\r\n<a href=\"https://dantri.com.vn/giao-duc-khuyen-hoc/tai-sao-ai-cung-thich-khoe-con-20180522150327833.htm\" title=\"Tại sao ai cũng thích khoe con?\"><strong>&gt;&gt;Tại sao ai cũng th&iacute;ch khoe con?</strong></a></h2>\r\n\r\n<p>Phải chăng những th&agrave;nh t&iacute;ch ấy thể hiện sự ph&aacute;t triển to&agrave;n diện của con trẻ?... T&ocirc;i nghĩ kh&aacute; nhiều người đang ảo tưởng về điều đ&oacute;.</p>\r\n\r\n<p>Ch&aacute;u trai t&ocirc;i vừa ho&agrave;n th&agrave;nh chương tr&igrave;nh lớp 1. H&ocirc;m trước, trong ng&agrave;y họp mặt gia đ&igrave;nh, mẹ ch&aacute;u hớn hở khoe ch&aacute;u đạt hai điểm 10 m&ocirc;n To&aacute;n v&agrave; Tiếng Việt, 9 điểm m&ocirc;n Tiếng Anh. Kh&ocirc;ng muốn l&agrave;m mất niềm vui của người mẹ, t&ocirc;i khen ch&aacute;u giỏi v&agrave; kh&ocirc;ng qu&ecirc;n nhắn nhủ chị đừng coi trọng điểm số qu&aacute;. Tuy nhi&ecirc;n, chị c&oacute; vẻ kh&ocirc;ng h&agrave;i l&ograve;ng về điều đ&oacute; v&agrave; quay sang tiếp tục khoe với nhiều người kh&aacute;c vừa bước v&agrave;o nh&agrave;.</p>\r\n\r\n<p>Ch&aacute;u trai t&ocirc;i sinh ra khi mẹ đ&atilde; bước sang tuổi năm mươi, nỗi lo lắng của gia đ&igrave;nh về sự ph&aacute;t triển tr&iacute; tuệ của ch&aacute;u l&agrave; c&oacute; cơ sở. Đọc được, viết hơi chậm v&agrave; đ&ograve;i hỏi ch&aacute;u phải th&ocirc;ng minh, hoạt b&aacute;t như những đứa trẻ kh&aacute;c l&agrave; điều kh&ocirc;ng thể. B&ugrave; lại, ch&aacute;u rất lễ ph&eacute;p v&agrave; t&igrave;nh cảm. Nhưng mọi người hầu như qu&ecirc;n nh&igrave;n nhận v&agrave;o ưu điểm n&agrave;y của ch&aacute;u để khen thưởng v&agrave; động vi&ecirc;n.</p>\r\n\r\n<p>Bố mẹ ch&aacute;u chỉ chăm chăm nh&igrave;n v&agrave;o điểm số của ch&aacute;u mỗi lần kiểm tra, thi cử. V&agrave; nhất nhất &eacute;p buộc ch&aacute;u phải học th&ecirc;m ở nh&agrave; c&ocirc; gi&aacute;o sau một ng&agrave;y học b&aacute;n tr&uacute; ở lớp. Dường như thấy chưa đủ, bố mẹ ch&aacute;u c&ograve;n thu&ecirc; một sinh vi&ecirc;n về dạy k&egrave;m ở nh&agrave;, chủ yếu l&agrave; gi&uacute;p ch&aacute;u &ocirc;n b&agrave;i v&agrave; l&agrave;m b&agrave;i tập trước mỗi ng&agrave;y đến lớp.</p>\r\n\r\n<p>Thời gian nghỉ ngơi qu&aacute; hạn hẹp, quỹ thời gian thư gi&atilde;n, giải tr&iacute;, chơi đ&ugrave;a hầu như đều bị cắt x&eacute;n cho việc học. Nh&igrave;n ch&aacute;u học đến mụ mị cả người, ai cũng x&oacute;t nhưng khuy&ecirc;n răn thế n&agrave;o cũng chẳng xoay chuyển được &ldquo;giấc mơ&rdquo; th&agrave;nh t&iacute;ch của bố mẹ ch&aacute;u.</p>\r\n\r\n<p>Nếu ch&aacute;u trai t&ocirc;i chỉ vừa mới &ldquo;nếm&rdquo; vị đắng ch&aacute;t của việc học ngay từ ngưỡng cửa đầu ti&ecirc;n th&igrave; cậu học tr&ograve; lớp 7 của t&ocirc;i mới thật sự &ldquo;thấm&rdquo; &aacute;p lực học h&agrave;nh. Suốt bảy năm qua, cậu b&eacute; đ&atilde; qu&aacute; quen với chuyện chạy đua học th&ecirc;m, học k&egrave;m, học trung t&acirc;m.</p>\r\n\r\n<p>L&agrave; gia sư của ch&aacute;u, nhiều l&uacute;c t&ocirc;i cũng phải rụt vai l&egrave; lưỡi với lịch học d&agrave;y đặc, ken k&iacute;n mỗi ng&agrave;y. Khi gi&aacute;o vi&ecirc;n n&agrave;y đang dạy ở tầng tr&ecirc;n th&igrave; ở nh&agrave; dưới đ&atilde; nghe tiếng b&agrave; nội ch&aacute;u ch&agrave;o c&ocirc; gi&aacute;o m&ocirc;n kh&aacute;c đến. Đ&ocirc;i khi bận việc ri&ecirc;ng, t&ocirc;i muốn đổi lịch học của ch&aacute;u cũng đ&agrave;nh bất lực bởi chẳng kiếm được buổi n&agrave;o chen ch&acirc;n v&agrave;o.</p>\r\n\r\n<p>Những ng&agrave;y lễ l&agrave; những ng&agrave;y lịch học căng thẳng hơn cả, bởi phải tận dụng thời gian rảnh rỗi đ&oacute; để b&ugrave; cho những buổi học c&ograve;n &ldquo;nợ&rdquo;. V&agrave; đ&ocirc;i khi tranh thủ một v&agrave;i ph&uacute;t giải lao, hai c&ocirc; tr&ograve; c&ugrave;ng thoải m&aacute;i n&oacute;i chuyện, ch&aacute;u kh&ocirc;ng ngần ngại kể về &aacute;p lực học h&agrave;nh v&agrave; giấc mơ được cất hết s&aacute;ch vở sang một b&ecirc;n để vui chơi thoải m&aacute;i, tự do.</p>\r\n\r\n<p>Rồi ch&aacute;u lại thở d&agrave;i bảo sang năm lớp 8 c&oacute; th&ecirc;m m&ocirc;n H&oacute;a học, mẹ ch&aacute;u đ&atilde; rục rịch d&ograve; hỏi thầy n&agrave;o dạy tốt, chỗ n&agrave;o học uy t&iacute;n đ&atilde; đăng k&yacute;. Vậy l&agrave; sang năm sẽ học nhiều hơn. Rồi th&ecirc;m một năm nữa đ&oacute;n kỳ thi cuối cấp, ch&aacute;u lại phải học hơn thế nữa. C&aacute;i v&ograve;ng tr&ograve;n luẩn quẩn học, học v&agrave; học cứ đeo b&aacute;m đến mụ mị cả người.</p>\r\n\r\n<p>Truyền thống gia đ&igrave;nh theo ng&agrave;nh Y đang đ&egrave; nặng l&ecirc;n vai ch&aacute;u. Chị g&aacute;i ch&aacute;u đ&atilde; lệch hướng sang ng&agrave;nh Luật v&agrave; giờ ch&aacute;u đang g&aacute;nh nhiệm vụ phải học, học để h&ocirc;m nay c&oacute; nền tảng kiến thức &iacute;t năm nữa sẽ thi y khoa. Giấc mơ của bố mẹ chẳng biết sẽ th&agrave;nh hiện thực như thế n&agrave;o nhưng tuổi thơ của một đứa trẻ chỉ quẩn quanh việc học.</p>\r\n\r\n<p>Học để tương lai tốt đẹp hơn nhưng nh&igrave;n v&agrave;o hai cậu b&eacute; kia, t&ocirc;i thấy hiện tại l&agrave; một cực h&igrave;nh. Học v&igrave; cuộc sống hạnh ph&uacute;c hơn nhưng điểm số, th&agrave;nh t&iacute;ch, mục ti&ecirc;u, giấc mơ của người lớn đang biến cuộc sống của nhiều đứa trẻ nhuốm m&agrave;u bất hạnh.</p>\r\n\r\n<p>Điểm số, th&agrave;nh t&iacute;ch chỉ l&agrave; ảo tưởng. Những đứa trẻ học c&oacute; thể thua k&eacute;m bạn b&egrave; lại cực kỳ t&igrave;nh cảm, lễ ph&eacute;p mới l&agrave; thực tại. Những đứa trẻ đang th&egrave;m kh&aacute;t một tuổi thơ trọn vẹn mới l&agrave; thực tại. Mong rằng mỗi phụ huynh sẽ đủ tỉnh t&aacute;o để y&ecirc;u thương con trẻ trọn vẹn hơn.</p>\r\n\r\n<p><strong>Nguyễn Th&ugrave;y</strong></p>\r\n', 'M2J5C4s9Ro', 1, 1, '10/01/2020', '2020-01-10 08:24:59', '2020-01-10 08:24:59'),
(30, 'public/images/15786448198.jpg', 'Đừng để điểm số tạo thành gánh nặng cho con trẻ!', 'Dung-de-diem-so-tao-thanh-ganh-nang-cho-con-tre!', 4, 'Cô giáo vừa dứt lời, Trang liền đứng phắt dậy, nói với giọng khá gay gắt: “Cha mẹ chỉ quan tâm đến điểm số! Ngoài đó ra, cha mẹ không quan tâm đến điều gì nữa sao?”', '<h1>Đừng để điểm số tạo th&agrave;nh g&aacute;nh nặng cho con trẻ!</h1>\r\n\r\n<p><strong>C&ocirc; gi&aacute;o vừa dứt lời, Trang liền đứng phắt dậy, n&oacute;i với giọng kh&aacute; gay gắt: &ldquo;Cha mẹ chỉ quan t&acirc;m đến điểm số! Ngo&agrave;i đ&oacute; ra, cha mẹ kh&ocirc;ng quan t&acirc;m đến điều g&igrave; nữa sao?&rdquo;</strong></p>\r\n\r\n<p>Thực tế l&agrave; phần lớn cha mẹ đều coi điểm số l&agrave; ti&ecirc;u chuẩn đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh học tập của trẻ. Chỉ c&oacute; một số &iacute;t người hiểu rằng, điểm số chỉ l&agrave; một yếu tố tham khảo, điểm số cao hay thấp kh&ocirc;ng ho&agrave;n to&agrave;n phản &aacute;nh được ch&iacute;nh x&aacute;c năng lực học tập của trẻ. Tuy nhi&ecirc;n, trong thời đại m&agrave; sự cạnh tranh về điểm số ng&agrave;y c&agrave;ng khốc liệt như hiện nay, th&igrave; điểm cao hay thấp lại c&oacute; &yacute; nghĩa v&ocirc; c&ugrave;ng quan trọng, n&oacute; c&oacute; thể quyết định trẻ c&oacute; được l&ecirc;n lớp, thăng chức hay kh&ocirc;ng&hellip; V&agrave; như vậy, điểm số nghiễm nhi&ecirc;n trở th&agrave;nh mục đ&iacute;ch, mục ti&ecirc;u duy nhất để cha mẹ v&agrave; con c&aacute;i c&ugrave;ng theo đuổi.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ vậy, c&ograve;n c&oacute; rất nhiều bậc cha mẹ lấy điểm số để l&agrave;m điều kiện cho những nhu cầu sinh hoạt cơ bản của con c&aacute;i, rồi bắt con phải học tập v&igrave; ch&iacute;nh điểm số đ&oacute;. Kết quả l&agrave; sự ph&aacute;t triển t&acirc;m l&yacute; v&agrave; thể trạng của trẻ bị ảnh hưởng.</p>\r\n\r\n<p>C&oacute; những bậc cha mẹ c&ograve;n xem th&agrave;nh t&iacute;ch học tập như một ti&ecirc;u chuẩn chủ yếu, thậm ch&iacute; l&agrave; duy nhất để đ&aacute;nh gi&aacute; trẻ. Họ v&ocirc; c&ugrave;ng nhạy cảm với sự cao &ndash; thấp của điểm số. Nếu con được điểm 9, điểm 10 th&igrave; vui mừng phấn khởi, lập tức khen ngợi, c&oacute; khi c&ograve;n d&ugrave;ng cả tiền để l&agrave;m phần thưởng. C&ograve;n nếu con bị điểm thấp kh&ocirc;ng đ&uacute;ng theo nguyện vọng của m&igrave;nh th&igrave; bắt đầu giận dữ, la mắng, qu&aacute;t nạt, đến nỗi con trẻ phải run rẩy l&ecirc;n v&igrave; sợ h&atilde;i.</p>\r\n\r\n<p>Trẻ em rất nhạy cảm, nếu cha mẹ qu&aacute; quan t&acirc;m đến điểm số, ch&uacute;ng sẽ c&oacute; phản ứng nhạy cảm hơn với điểm số. Nếu cha mẹ c&ograve;n la mắng, giận dữ sẽ l&agrave;m tổn thương đến l&ograve;ng tự trọng của c&aacute;c con, ảnh hưởng tới sự tự tin v&agrave; l&ograve;ng nhiệt t&igrave;nh đối với việc học tập của trẻ. Điều n&agrave;y ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; lợi cho việc tự học của con. Cha mẹ cần nắm r&otilde; một nguy&ecirc;n tắc:&nbsp;<strong>Động vi&ecirc;n trẻ học tập v&igrave; kiến thức chứ kh&ocirc;ng phải v&igrave; điểm số.</strong></p>\r\n', 'o3uTXBjcHw', 1, 1, '10/01/2020', '2020-01-10 08:26:39', '2020-01-10 08:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `id` int(11) NOT NULL,
  `maMon` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenMon` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soTinChi` int(1) NOT NULL,
  `maGV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`id`, `maMon`, `tenMon`, `soTinChi`, `maGV`) VALUES
(1, '1A', 'Công nghệ web', 3, '175A'),
(2, '2A', 'HTML', 3, '175A'),
(3, '3A', 'CSS', 3, '175B'),
(4, '4A', 'PHP', 3, '175B');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `maSV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenSV` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`maSV`, `tenSV`, `NgaySinh`, `DiaChi`, `SDT`, `email`) VALUES
('175A071421', 'Đào Thị Trang', '2020-01-07', '951 Tây Sơn', '01123334455', 'trang1@gmail.com'),
('175A071425', 'Đào Thị Lý', '2020-01-08', '952 Tây Sơn', '1231231245', 'ly@gmail.com'),
('175A071427', 'Đào Ninh Thái', '1999-01-29', '95 Tây Sơn', '0337557590', 'thaimeo1131@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `password`, `token`, `created`, `updated`, `role`) VALUES
(1, 'public/images/a1.jpg', 'Dao Ninh Thai', 'thaimeo1131@gmail.com', '466cd2e807652fdcd6dfbed4018fdbb9', 'asdasdasd', '2018-01-15 04:50:50', '2020-01-08 03:12:12', 1),
(3, 'public/images/a3.jpg', 'Đào Thị Trang', 'trang1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'k131rQnNb7', '2019-12-27 14:40:57', '2020-01-08 17:39:19', 3),
(4, '', 'Đào Văn Thắng', 'thangdao1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'LxvORWiJum', '2019-12-27 14:41:49', '2020-01-08 03:12:39', 2),
(5, '', 'Đào Thị Tình', 'tinhtinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'DTikNw0swQ', '2019-12-27 14:42:13', '2020-01-08 03:12:43', 2),
(6, '', 'Đào Đức Minh', 'minhminh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'k9oIWxS75W', '2019-12-27 14:42:46', '2020-01-08 03:12:46', 2),
(7, '', 'Đào Thắng Văn', 'vanthang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'FCB0WQ3GA4', '2019-12-27 14:48:37', '2020-01-08 03:12:49', 2),
(8, '', 'Đào Thị Lý', 'ly@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '04NzBIIJnx', '2019-12-27 14:49:05', '2020-01-08 03:12:52', 2),
(9, '', 'Đào Vân Dung', 'dung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'oGQfmzqOGw', '2019-12-27 14:49:30', '2020-01-08 03:12:54', 2),
(10, '', 'Đào Công Lý', 'congly@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'OUlXssf2x6', '2019-12-27 14:50:08', '2020-01-08 03:12:57', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maMon` (`maMon`),
  ADD KEY `maSV` (`maSV`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`maGV`),
  ADD KEY `maGV` (`maGV`);

--
-- Indexes for table `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maGV` (`maGV`),
  ADD KEY `maMon` (`maMon`),
  ADD KEY `maSV` (`maSV`);

--
-- Indexes for table `menu_catalog`
--
ALTER TABLE `menu_catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_list_blog`
--
ALTER TABLE `menu_list_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maMon` (`maMon`),
  ADD KEY `maGV` (`maGV`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`maSV`),
  ADD KEY `maSV` (`maSV`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diem`
--
ALTER TABLE `diem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lophocphan`
--
ALTER TABLE `lophocphan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `menu_catalog`
--
ALTER TABLE `menu_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu_list_blog`
--
ALTER TABLE `menu_list_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`maMon`) REFERENCES `monhoc` (`maMon`),
  ADD CONSTRAINT `diem_ibfk_2` FOREIGN KEY (`maSV`) REFERENCES `sinhvien` (`maSV`);

--
-- Constraints for table `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD CONSTRAINT `lophocphan_ibfk_1` FOREIGN KEY (`maSV`) REFERENCES `sinhvien` (`maSV`);

--
-- Constraints for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`maGV`) REFERENCES `giaovien` (`maGV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
