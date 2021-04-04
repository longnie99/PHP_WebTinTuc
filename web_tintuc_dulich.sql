-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2018 at 06:11 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_tintuc_dulich`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `adminn` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_khau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `adminn` (`id`, `ho_ten`, `email`, `mat_khau`) VALUES
(1, 'Y Long Nie KDam', 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id` int(11) NOT NULL,
  `nguoi_dung_id` int(11) DEFAULT NULL,
  `tin_tuc_id` int(11) DEFAULT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `binh_luan`
--

INSERT INTO `binh_luan` (`id`, `nguoi_dung_id`, `tin_tuc_id`, `noi_dung`, `created_at`) VALUES
(3, 1, 6, 'bai viết hay quá', '2018-10-24 22:30:47'),
(4, 1, 5, 'đẹp quá\r\n', '2018-10-24 22:31:03'),
(5, 1, 6, 'qua dep ', '2018-10-25 07:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` int(11) NOT NULL,
  `ten_danh_muc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danh_muc`
--


INSERT INTO `danh_muc` (`id`, `ten_danh_muc`, `created_at`, `updated_at`) VALUES
(1, 'DU LỊCH VÀ ẨM THỰC', '2018-10-24 18:41:05', '0000-00-00 00:00:00'),
(3, 'TOUR TÂY NGUYÊN', '2018-10-25 07:13:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------
--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id_nguoi_dung` int(11) NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_khau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id_nguoi_dung`, `ho_ten`, `mat_khau`, `email`) VALUES
(1, 'Dani Kuan', 'e10adc3949ba59abbe56e057f20f883e', 'Danikuan@gmail.com'),
(2, 'Y Sel Ayun', 'e10adc3949ba59abbe56e057f20f883e', 'Selayun@gamail.com');



-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `links` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `ten`, `links`) VALUES
(2, 'slide1', 'ho_Ta_Dung_1.jpg'),
(3, 'slide2', 'photo-of-waterfall-2904640.jpg'),
(4, 'slide3', 'w-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `id_tin` int(20) NOT NULL,
  `tieu_de` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danh_muc_id` int(15) DEFAULT NULL,
  `hinh_anh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci,
  `luot_xem` int(11) DEFAULT '0',
  `id_nguoi_dang` int(11) NOT NULL,
  `hien_thi` tinyint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `tin_tuc`
--

INSERT INTO `tin_tuc` (`id_tin`, `tieu_de`, `danh_muc_id`, `hinh_anh`, `noi_dung`, `luot_xem`, `id_nguoi_dang`, `hien_thi`) VALUES
(3, 'Đến nhà cổ Bình Thủy – tham quan ngôi nhà cổ đẹp nhất xứ Tây Đô', 1, '1540407463.nha-co-binh-thuy1-min_1540371371.jpg', '<p>Cuối thế kỉ 18. V&ugrave;ng ph&iacute;a T&acirc;y Nam v&agrave;m s&ocirc;ng Cần Thơ ph&ugrave; sa nước ngọt tưới m&aacute;t quanh năm. Đ&acirc;y cũng l&agrave; nơi thu h&uacute;t nhiều người đổ về chọn đất an cư lập nghiệp. Trong đ&oacute; c&oacute; gia tộc Họ Dương.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Gia tộc Họ Dương đến đất Nam Bộ lập nghiệp, đ&atilde; sống qua nhiều thế hệ tại đ&acirc;y. Ở thế hệ thứ 3, &ocirc;ng Dương Văn Vị cũng l&agrave; người kh&aacute; gi&agrave;u c&oacute; của d&ograve;ng họ, đ&atilde; chọn v&ugrave;ng đất gần v&agrave;m rạch B&igrave;nh Thủy l&agrave;m nơi dựng nh&agrave;.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy1-min.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><em>Nh&agrave; cổ B&igrave;nh Thủy nh&igrave;n từ ch&iacute;nh diện</em></p>\r\n\r\n<p><br />\r\nL&uacute;c mới đầu, nh&agrave; được &ocirc;ng Vị dựng bằng gỗ v&agrave; lợp ng&oacute;i, d&ugrave;ng để thờ tổ ti&ecirc;n. M&atilde;i đến 30 năm sau đ&oacute; mới bắt đầu được t&ocirc;n tạo lại. Sau khi &ocirc;ng Vị mất, con trai &uacute;t của &ocirc;ng l&agrave; Dương Chấn Kỷ (l&uacute;c đ&oacute; l&agrave; một điền chủ rất gi&agrave;u c&oacute;) tiếp tục x&acirc;y dựng v&agrave; ho&agrave;n thiện ng&ocirc;i nh&agrave; v&agrave;o năm 1911.<br />\r\n&nbsp;</p>\r\n\r\n<p>&Ocirc;ng Kỷ l&agrave; một thương gia rất th&iacute;ch t&igrave;m t&ograve;i c&aacute;i mới lạ, nhất l&agrave; về kiến tr&uacute;c v&agrave; nghệ thuật. Thời bấy giờ đang thịnh h&agrave;nh tr&agrave;o lưu T&acirc;y phương, &ocirc;ng liền cho người x&acirc;y dựng ng&ocirc;i nh&agrave; theo kiến tr&uacute;c ch&acirc;u &Acirc;u.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Những năm 1980, hậu duệ đời thứ 5 của gia tộc họ Dương l&agrave; &ocirc;ng Dương Văn Ng&ocirc;n c&oacute; th&uacute; chơi hoa kiểng. &Ocirc;ng sưu tầm kh&aacute; nhiều giống lan qu&yacute; v&agrave; hay tổ chức giao lưu, chơi lan. Do đ&oacute;, thời n&agrave;y ng&ocirc;i nh&agrave; c&ograve;n c&oacute; thể l&agrave; &ldquo;Vườn lan B&igrave;nh Thủy&rdquo;<br />\r\n&nbsp;</p>\r\n\r\n<h3>Du lịch Cần Thơ nhớ gh&eacute; thăm nh&agrave; cổ B&igrave;nh Thủy &ndash; nh&agrave; cổ đẹp nhất xứ T&acirc;y Đ&ocirc;<br />\r\n&nbsp;</h3>\r\n\r\n<p>Trong số 70 ng&ocirc;i nh&agrave; cổ ở Cần thơ th&igrave; nh&agrave; cổ B&igrave;nh Thủy l&agrave; đẹp nhất. Ng&ocirc;i nh&agrave; cho đến ngay vẫn giữ nguy&ecirc;n được sự bề thế v&agrave; đẹp đẽ như thời điểm mới x&acirc;y do được tr&ugrave;ng tu kĩ lưỡng. Thoạt nh&igrave;n kiến tr&uacute;c c&oacute; vẻ cổ k&iacute;nh, trang nghi&ecirc;m, nhưng đường n&eacute;t đi&ecirc;u khắc lại to&aacute;t n&ecirc;n vẻ ph&oacute;ng kho&aacute;ng như t&iacute;nh c&aacute;ch con người miền T&acirc;y.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Cổng r&agrave;o l&agrave;m bằng b&ecirc; t&ocirc;ng v&agrave; sắt ki&ecirc;n cố theo kiểu dinh thự Ph&aacute;p. Cổng phụ được x&acirc;y theo kiến tr&uacute;c &Aacute; Đ&ocirc;ng với 4 cột tr&ograve;n vững chắc.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy-7-min.jpg\" style=\"height:532px; width:800px\" /></p>\r\n\r\n<p><em>Cổng lớn được x&acirc;y dựng như cổng một biệt thự thời nay<br />\r\n<img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy-9-min.jpg\" style=\"height:533px; width:800px\" /></em></p>\r\n\r\n<p><em>Cổng phụ mang n&eacute;t kiến tr&uacute;c phương Đ&ocirc;ng</em></p>\r\n\r\n<p><br />\r\nNh&agrave; cổ nằm tr&ecirc;n một diện t&iacute;ch lớn khoảng 8.000 m&eacute;t vu&ocirc;ng, bao gồm cả vườn tược. Ri&ecirc;ng khu nh&agrave; được bao bọc bởi c&acirc;y cảnh được cắt tỉa chu đ&aacute;o, hoa nở rộ bốn m&ugrave;a. Khiến cho ng&ocirc;i nh&agrave; vừa mang n&eacute;t ho&agrave;i cổ k&iacute;nh đ&aacute;o vừa sống động, thơ mộng v&agrave; tươi mới.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy2-min.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><em>Xung quanh nh&agrave; trồng kh&aacute; nhiều hoa v&agrave; c&acirc;y cảnh được cắt tỉa chu đ&aacute;o</em><br />\r\n<br />\r\n<br />\r\nTrước khi v&agrave;o được b&ecirc;n trong, du kh&aacute;ch sẽ nh&igrave;n thấy một cầu thang c&aacute;ch điệu h&igrave;nh c&aacute;nh cung tao nh&atilde;, trang tr&iacute; hoa văn tinh tế. Cầu thang n&agrave;y l&agrave; điểm nối từ khoảng s&acirc;n đến t&ograve;a nh&agrave;. Nh&agrave; c&oacute; 5 gian 2 m&aacute;i, chia th&agrave;nh nh&agrave; trước, giữa v&agrave; sau. Nền nh&agrave; được l&aacute;t gạch nhập khẩu từ Ph&aacute;, đ&oacute;ng trần platfond, tr&ecirc;n c&aacute;c cửa lớn đều được chạm khắc rất tinh tế.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy-15-min.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><em>Cầu thang xoắn nối liền nh&agrave; với s&acirc;n vườn</em></p>\r\n\r\n<p><br />\r\nB&ecirc;n trong, nh&agrave; cổ B&igrave;nh Thủy nổi bật với 3 bộ b&agrave;n ghế cổ đẹp v&agrave; 1 sập gụ được trang tr&iacute; khảm ngọ trai tinh xảo, đường n&eacute;t hoa văn chạm khắc mềm mại, xinh đẹp. Ở gian giữa b&agrave;y b&agrave;n thờ tổ ti&ecirc;n đ&uacute;ng kiểu của người Nam Bộ. Gian thờ được sơn son thếp v&agrave;ng, giường thờ, sập gụ được chạm khắc tinh xảo Mai, lan, c&uacute;c, tr&uacute;c, Ph&uacute;c &ndash; Lộc &ndash; Thọ, long, l&acirc;n, quy, phụng&hellip;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy4-min.jpg\" style=\"height:531px; width:800px\" /></p>\r\n\r\n<p><em>Bộ b&agrave;n ghế cổ<br />\r\n<br />\r\n<strong><img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy-6-min.jpg\" style=\"height:534px; width:800px\" /></strong></em></p>\r\n\r\n<p><br />\r\n<strong>Xem th&ecirc;m:&nbsp;</strong><a href=\"https://tour.dulichvietnam.com.vn/du-lich-trong-nuoc/du-lich-mien-tay.html/63\"><strong>Tour lịch miền T&acirc;y gi&aacute; rẻ</strong></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Nh&agrave; cổ B&igrave;nh Thủy</strong>&nbsp;c&ograve;n c&oacute; cả một kho đồ cổ đ&atilde; được g&igrave;n giữ suốt nhiều thế kỉ qua. Trong đ&oacute; c&oacute; hai bộ b&agrave;n ghế xuất xứ từ V&acirc;n Nam, Trung Quốc, mặt b&agrave;n l&agrave;m bằng đ&aacute; cẩm thạch, v&acirc;n xanh; bộ salon kiểu Ph&aacute;p đời Louis XV, cặp đ&egrave;n treo thế kỉ 19&hellip; Những hiện vật n&agrave;y cho ta biết được mức độ gi&agrave;u c&oacute; v&agrave; th&uacute; chơi đồ cao cấp của mấy đời gia đ&igrave;nh họ Dương đất B&igrave;nh Thủy, Cần Thơ.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy-16-min.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><em>Đồ cổ trong nh&agrave; cổ B&igrave;nh Thủy vẫn c&ograve;n đến ng&agrave;y nay</em><br />\r\n&nbsp;</p>\r\n\r\n<p>Khu vườn xung quanh nh&agrave; được trang tr&iacute; h&ograve;n non bộ, c&acirc;y cảnh được cắt tỉa xinh đẹp, tinh tế.&nbsp;Nh&agrave; cổ B&igrave;nh Thủy với kiến tr&uacute;c ho&agrave;i cổ độc đ&aacute;o đ&atilde; trở th&agrave;nh địa điểm quay phim cho c&aacute;c bộ phim như &ldquo;Người đẹp T&acirc;y Đ&ocirc;&rdquo;, &ldquo;Những nẻo đường xa&rdquo;, &ldquo;Nợ đời&rdquo;, &ldquo;Người t&igrave;nh&rdquo;.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Năm 2009, nh&agrave; cổ B&igrave;nh Thủy đ&atilde; được Bộ Văn h&oacute;a - Thể thao &amp; Du lịch c&ocirc;ng nhận l&agrave; Di t&iacute;ch kiến tr&uacute;c nghệ thuật cấp quốc gia.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Nh&agrave; cổ B&igrave;nh Thủy</strong>&nbsp;hiện nay l&agrave; một trong những điểm tham quan thu h&uacute;t du kh&aacute;ch khi du lịch Cần Thơ. Nh&agrave; cổ mở cửa tiếp đ&oacute;n du kh&aacute;ch hằng ng&agrave;y. Đến đ&acirc;y l&agrave; đến với kh&ocirc;ng gian thơ mộng, hơi ho&agrave;i cổ nhưng cũng rất ph&oacute;ng kho&aacute;ng. Giới trẻ cũng thường t&igrave;m đến đ&acirc;y để chụp ảnh lưu niệm bởi khung cảnh nơi đ&acirc;y l&ecirc;n ảnh rất đẹp.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"nhà cổ Bình Thủy\" src=\"https://www.dulichvietnam.com.vn/data/nha-co-binh-thuy-8-min.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><br />\r\nNếu c&oacute; dịp&nbsp;<strong>du lịch Cần Thơ</strong>&nbsp;hoặc&nbsp;<strong>du lịch miền T&acirc;y</strong>, đừng qu&ecirc;n gh&eacute; thăm nh&agrave; cổ B&igrave;nh Thủy &ndash; ng&ocirc;i nh&agrave; cổ đẹp nhất xứ T&acirc;y Đ&ocirc;. Du kh&aacute;ch c&oacute; thể đăng k&iacute; tour du lịch để được thiết kế lộ tr&igrave;nh tham quan l&iacute; tưởng nhất, tiết kiệm thời gian v&agrave; chi ph&iacute; nhất.&nbsp;</p>\r\n\r\n<p><strong><em>Cẩm Luyến</em></strong></p>\r\n', 3, 0, 1),
(4, 'Khám phá vẻ đẹp Côn Đảo dưới sắc trời mùa thu', 1, '1540407610.con-dao-20-min_1539855807.jpg', '<p><strong>C&ocirc;n Đảo</strong>&nbsp;(B&agrave; Rịa &ndash; Vũng T&agrave;u) l&agrave; một quần đảo bao gồm 16 h&ograve;n đảo lớn nhỏ, diện t&iacute;ch khoảng 76 km vu&ocirc;ng. C&ocirc;n Đảo nằm c&aacute;ch Vũng T&agrave;u 97 hải l&yacute; v&agrave; c&aacute;ch s&ocirc;ng Hậu 45 hải l&yacute;.<br />\r\nTầm th&aacute;ng 10 - 11 l&agrave; thời điểm C&ocirc;n Đảo bước v&agrave;o m&ugrave;a kh&ocirc;, cũng l&agrave; l&uacute;c đẹp nhất khi trời v&agrave;o thu. Đ&acirc;y ch&iacute;nh l&agrave; thời điểm l&iacute; tưởng để đi du lịch C&ocirc;n Đảo. Ngo&agrave;i biển &iacute;t nhiều sẽ c&oacute; s&oacute;ng lớn, nhưng điều n&agrave;y chẳng g&acirc;y ảnh hưởng g&igrave; mấy, nếu bạn đến c&aacute;c h&ograve;n đảo v&agrave; ở trong b&atilde;i biển.&nbsp;<br />\r\nC&ocirc;n Đảo qua thời gian vẫn giữ được n&eacute;t đẹp thi&ecirc;n nhi&ecirc;n hoang sơ, dịu d&agrave;ng. Khi &aacute;nh nắng trời thu chiếu rọi, nước biển chuyển sang ngọc b&iacute;ch đẹp đẽ. B&atilde;i c&aacute;t trải d&agrave;i mịn m&agrave;ng, b&atilde;i tắm sạch sẽ, nước trong veo. &Aacute;nh nắng m&ugrave;a thu cũng kh&ocirc;ng qu&aacute; gắt như nắng hạ, du kh&aacute;ch c&oacute; thể tắm biển tại b&atilde;i biển Đầm Trầu.&nbsp;</p>\r\n\r\n<p>Người ta đến C&ocirc;n Đảo đầu ti&ecirc;n l&agrave; để thăm Nh&agrave; t&ugrave; C&ocirc;n Đảo. Nơi địa ngục trần gian n&agrave;y đ&atilde; từng giam giữ v&agrave; tra tấn d&atilde; man những người t&ugrave; c&aacute;ch mạng, người y&ecirc;u nước. Ngo&agrave;i nh&agrave; t&ugrave; C&ocirc;n Đảo c&ograve;n c&oacute; nghĩa trang H&agrave;ng Dương cũng thu h&uacute;t nhiều du kh&aacute;ch đến tưởng nhớ v&agrave; b&agrave;y tỏ l&ograve;ng biết ơn với c&aacute;c chiến sĩ c&aacute;ch mạng ng&agrave;y xưa.&nbsp;</p>\r\n\r\n<p>V&agrave;o m&ugrave;a n&agrave;y, nếu muốn c&oacute; một chuyến đi tham quan nhẹ nh&agrave;ng cũng đừng ngại chọn C&ocirc;n Đảo. Sắc trời m&ugrave;a thu tạo ra cho nơi đ&acirc;y khung cảnh đẹp tuyệt điệu. Du kh&aacute;ch c&oacute; thể tham quan c&aacute;c địa điểm như Dinh Ch&uacute;a Đảo, Hệ thống chuồng cọp, Miếu b&agrave; Phi Yến, B&atilde;i Nh&aacute;t, Cảng Bến Đầm, H&ograve;n B&agrave;, Ch&ugrave;a N&uacute;i Một, B&atilde;i Suối N&oacute;ng, H&ograve;n Bảy Cạnh, H&ograve;n T&agrave;i, H&ograve;n Cau, H&ograve;n Tre Lớn&hellip;</p>\r\n\r\n<p>Nếu đ&atilde; du lịch đến C&ocirc;n Đảo v&agrave;o m&ugrave;a n&agrave;y, h&atilde;y thử trải nghiệm lặn ngắm san h&ocirc; một lần nh&eacute;. Cũng đừng qu&ecirc;n thưởng thức qua những m&oacute;n ăn hấp dẫn của nơi n&agrave;y. C&aacute; thu một nắng, ch&aacute;o h&agrave;u, cua mặt trăng, mắm nhum, t&ocirc;m h&ugrave;m đỏ&hellip;đều l&agrave; đặc sản C&ocirc;n Đảo độc đ&aacute;o, hấp dẫn</p>\r\n\r\n<p>Kh&aacute;c với c&aacute;c khu du lịch đ&ocirc;ng đ&uacute;c, ồn &agrave;o kh&aacute;c,&nbsp;<strong>C&ocirc;n Đảo</strong>&nbsp;cho đến nay vẫn giữ được vẹn nguy&ecirc;n n&eacute;t đẹp tự nhi&ecirc;n đ&aacute;ng tr&acirc;n qu&yacute;. Người d&acirc;n nơi đ&acirc;y nhiệt t&igrave;nh, th&acirc;n thiện, ch&acirc;n chất, dễ mến. Kh&ocirc;ng kh&iacute; th&igrave; lu&ocirc;n thanh b&igrave;nh y&ecirc;n ả. Nếu như đ&atilde; qu&aacute; mỏi mệt với những bon chen nơi th&agrave;nh phố, h&atilde;y đến C&ocirc;n Đảo m&ugrave;a thu để nghỉ ngơi nh&eacute;</p>\r\n', 4, 0, 1),
(5, 'Khu nghỉ dưỡng thân thiện với thiên nhiên nhất châu Á', 1, '1540412990.22-10-201857-740388268-w500-5136-1540206579_180x108.png', '<p>Đến nay, InterContinental Danang Sun Peninsula Resort trở th&agrave;nh một minh chứng điển h&igrave;nh cho triết l&yacute; kiến tr&uacute;c n&agrave;y của &ocirc;ng.<strong>Mỗi ng&agrave;y một... xanh hơn</strong></p>\r\n\r\n<p>Bậc thầy kiến tr&uacute;c Bill Bensley từng chia sẻ cảm gi&aacute;c &ldquo;giống như được về nh&agrave;&rdquo; mỗi khi trở lại khu nghỉ dưỡng b&ecirc;n b&aacute;n đảo Sơn Tr&agrave;. Điều &ocirc;ng t&acirc;m đắc nhất ở &ldquo;ng&ocirc;i nh&agrave;&rdquo; n&agrave;y l&agrave; n&oacute; mỗi ng&agrave;y một xanh hơn.</p>\r\n\r\n<p>&ldquo;Ng&agrave;y ấy, t&ocirc;i đ&atilde; t&igrave;m c&aacute;ch hạn chế tối đa việc động chạm m&ocirc;i trường trong qu&aacute; tr&igrave;nh thi c&ocirc;ng. Giờ đ&acirc;y, mọi thứ đ&atilde; xanh tươi trở lại v&agrave; thậm ch&iacute; tr&ocirc;ng c&ograve;n tự nhi&ecirc;n hơn trước kia. T&ocirc;i thật sự rất y&ecirc;u nơi n&agrave;y, tất cả những g&igrave; t&ocirc;i l&agrave;m l&agrave; cố gắng x&acirc;y n&ecirc;n một c&ocirc;ng tr&igrave;nh cho ph&eacute;p mọi người sống c&ugrave;ng với thi&ecirc;n nhi&ecirc;n&rdquo;, Bill Bensley chia sẻ.</p>\r\n\r\n<p>Thật vậy, nối từ tầng Biển cả đến tầng Thi&ecirc;n đường của khu nghỉ dưỡng l&agrave; chiếc cầu thang gỗ uốn lượn quanh co như mọc giữa rừng gi&agrave;. Bill Bensley đ&atilde; thống nhất với chủ đầu tư khu nghỉ dưỡng n&agrave;y - Tập đo&agrave;n Sun Group, rằng tr&ecirc;n con đường đi của c&aacute;i cầu thang gỗ đ&oacute;, kh&ocirc;ng c&oacute; chuyện chặt c&acirc;y l&agrave;m đường, chỉ c&oacute; thể l&agrave; uốn đường để nhường c&acirc;y. Nguy&ecirc;n tắc đ&oacute; được t&ocirc;n trọng tối đa, từ l&uacute;c x&acirc;y dựng đến khi chỉnh trang để đ&oacute;n đo&agrave;n thượng kh&aacute;ch APEC năm 2017.</p>\r\n\r\n<p>Cũng từ cầu thang gỗ, du kh&aacute;ch sẽ thấy những c&aacute;nh rừng nguy&ecirc;n sinh, ngọn đồi huyền thoại, b&atilde;i c&aacute;t trắng muốt ven theo đại dương xanh ngọc. Tất cả c&ograve;n đ&oacute;, vẻ đẹp nguy&ecirc;n vẹn của thi&ecirc;n tạo.</p>\r\n\r\n<p>Mỗi căn biệt thự trong khu nghỉ dưỡng được đặt men theo c&aacute;c ngọn đồi, h&agrave;i ho&agrave; với n&uacute;i rừng. Du kh&aacute;ch vừa c&oacute; thể đứng ở ban c&ocirc;ng ngắm nh&igrave;n khung cảnh kỳ vĩ của b&aacute;n đảo Sơn Tr&agrave;, vừa nghe tiếng g&aacute;y của g&agrave; mặt đỏ, xem những ch&uacute; s&oacute;c nhảy nh&oacute;t, v&agrave; theo d&otilde;i lo&agrave;i voọc ch&agrave; v&aacute; ch&acirc;n n&acirc;u qu&yacute; hiếm t&igrave;m kiếm l&aacute; non tr&ecirc;n t&aacute;n c&acirc;y gần đ&oacute;. &ldquo;Nghỉ dưỡng giữa rừng nguy&ecirc;n sinh&rdquo;, đ&oacute; l&agrave; trải nghiệm đang chờ đ&oacute;n du kh&aacute;ch tại InterContinental Danang Sun Peninsula Resort.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"polyad\" src=\"https://i-dulich.vnecdn.net/2018/10/22/22-10-201856-276787815-w500-6557-1540206579.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Voọc ch&agrave; v&aacute; ch&acirc;n n&acirc;u nổi tiếng ở b&aacute;n đảo Sơn Tr&agrave;.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Năm 2018, &ldquo;khu nghỉ dưỡng sang trọng bậc nhất thế giới&rdquo; n&agrave;y lại tiếp tục được World Travel Awards khu vực ch&acirc;u &Aacute;, ch&acirc;u Đại Dương trao tặng c&ugrave;ng l&uacute;c 5 giải thưởng, trong đ&oacute; c&oacute; danh hiệu &ldquo;Khu nghỉ dưỡng th&acirc;n thiện với thi&ecirc;n nhi&ecirc;n nhất ch&acirc;u &Aacute;&quot;.</p>\r\n\r\n<p><strong>Tầm nh&igrave;n cho tương lai</strong></p>\r\n\r\n<p>Khu nghỉ c&oacute; ri&ecirc;ng một nh&agrave; động vật học l&agrave; điều hiếm c&oacute; kh&ocirc;ng chỉ ở Việt Nam m&agrave; tr&ecirc;n cả thế giới. Tuy nhi&ecirc;n, đ&oacute; l&agrave; điều đ&oacute; đ&atilde; trở th&agrave;nh hiện thực khi James Morrison l&agrave; nh&agrave; động vật học của ri&ecirc;ng InterContinental Danang Sun Peninsula Resort.</p>\r\n\r\n<p>James Morrison bắt đầu l&agrave;m việc trong lĩnh vực bảo tồn từ năm 2011 tại Vườn quốc gia Kruger, Nam Phi. Đam m&ecirc; bảo tồn thi&ecirc;n nhi&ecirc;n, &ocirc;ng tới Việt Nam để giảng dạy v&agrave; nghi&ecirc;n cứu m&ocirc;i trường tại Đại học Quốc gia H&agrave; Nội. Sau nhiều h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; v&agrave; nghi&ecirc;n cứu c&aacute;c c&ocirc;ng vi&ecirc;n quốc gia ở Myanmar, Bangladesh, Nepal... &ocirc;ng quyết định trở về Việt Nam, trong vai tr&ograve; Trưởng ph&ograve;ng Bảo tồn, C&ocirc;ng vi&ecirc;n quốc gia P&ugrave; M&aacute;t cho tổ chức Bảo vệ Động vật hoang d&atilde; của Việt Nam v&agrave; hiện l&agrave;m việc cho resort ở Sơn Tr&agrave;.</p>\r\n\r\n<p>&ldquo;Chỉ c&oacute; một v&agrave;i nơi ở Việt Nam sở hữu đa dạng sinh học phong ph&uacute; như b&aacute;n đảo Sơn Tr&agrave;&rdquo;, James chia sẻ, &ldquo;Đ&oacute; l&agrave; l&yacute; do việc bảo vệ hệ sinh th&aacute;i l&agrave; rất quan trọng&quot;. Theo đ&oacute;, &ocirc;ng đảm nhận việc nghi&ecirc;n cứu, tư vấn v&agrave; chia sẻ kiến thức về động vật hoang d&atilde; của khu resort v&agrave; c&aacute;c hệ sinh th&aacute;i xung quanh, để giảm thiểu t&aacute;c động đến m&ocirc;i trường tự nhi&ecirc;n bằng c&aacute;ch thực hiện c&aacute;c hoạt động kinh doanh một c&aacute;ch c&oacute; tr&aacute;ch nhiệm. &quot;C&ugrave;ng nhau, ch&uacute;ng ta c&oacute; thể x&acirc;y dựng sự ph&aacute;t triển bền vững kh&ocirc;ng chỉ cho khu dưỡng m&agrave; c&ograve;n cho to&agrave;n bộ v&ugrave;ng sinh th&aacute;i - đ&oacute; l&agrave; tầm nh&igrave;n cho tương lai&rdquo;, James khẳng định.</p>\r\n\r\n<p>Để từng bước thực hiện sứ mệnh của m&igrave;nh tại khu nghỉ dưỡng, James Morrison v&agrave; đồng sự ở resort đ&atilde; c&oacute; một loạt hoạt động, từ n&acirc;ng cấp hệ thống đ&egrave;n LED để giảm đến 75% năng lượng ti&ecirc;u thụ nhằm giảm lượng kh&iacute; thải ra m&ocirc;i trường, đến d&agrave;nh 100% lợi nhuận b&aacute;n đồ lưu niệm tại khu nghỉ được quy&ecirc;n g&oacute;p cho một tổ chức phi ch&iacute;nh phủ nhằm bảo vệ voọc ch&acirc;n n&acirc;u.</p>\r\n\r\n<p>Du kh&aacute;ch đến đ&acirc;y cũng sẽ được James Morrison v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n chia sẻ kiến thức về động vật hoang d&atilde;, như một c&aacute;ch truyền th&ocirc;ng về &yacute; thức bảo vệ m&ocirc;i trường sống. Theo chủ đầu tư, c&aacute;c hoạt động nhằm từng bước đưa resort trở th&agrave;nh một biểu tượng mới của nghỉ dưỡng xanh, xứng đ&aacute;ng với danh hiệu Khu nghỉ dưỡng th&acirc;n thiện với thi&ecirc;n nhi&ecirc;n nhất ch&acirc;u &Aacute; 2018.</p>\r\n', 7, 0, 1),
(6, 'Độc đáo lễ hội Ok Om Bok của người Khmer', 1, '1540414790.le-hoi-ok-om-bok-4-min_1540290643.jpg', '<p>Truyền thuyết&nbsp;<strong>người Khmer&nbsp;</strong>cho rằng thỏ ch&iacute;nh l&agrave; tiền kiếp của Phật Th&iacute;ch Ca. Xưa kia sống ở bờ s&ocirc;ng Hằng. Một h&ocirc;m, thần Sakah giả l&agrave;m ăn xin thử l&ograve;ng thỏ. Kh&ocirc;ng c&oacute; g&igrave; cho thần n&ecirc;n thỏ đốt lửa, tự nhảy v&agrave;o để mời người ăn thịt m&igrave;nh. Lửa bỗng dưng tắt v&agrave; người ăn xin biến mất, thần Sakah hiện ra. Thần muốn khen ngợi l&ograve;ng hy sinh của thỏ n&ecirc;n vẽ h&igrave;nh thỏ l&ecirc;n Mặt trăng. Trong t&iacute;n ngưỡng của người Khmer, lễ c&uacute;ng trăng l&agrave; để tưởng nhớ tiền kiếp của đức Phật Th&iacute;ch Ca. Đồng thời cũng l&agrave; dịp tạ ơn thần mặt trăng đ&atilde; bảo vệ m&ugrave;a m&agrave;ng suốt một năm qua.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"lễ hội ok-om-bok\" src=\"https://www.dulichvietnam.com.vn/data/le-hoi-ok-om-bok-2-min.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<h2><br />\r\nLễ c&uacute;ng mặt trăng Ok Om Bok</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>V&agrave;i ng&agrave;y trước ng&agrave;y rằm th&aacute;ng 10 &acirc;m lịch, người Khmer đ&atilde; bắt đầu chuẩn bị mọi thứ để l&agrave;m lễ. Đến ng&agrave;y, người Khmer sẽ b&agrave;y biện b&agrave;n c&uacute;ng trong s&acirc;n nh&agrave;, s&acirc;n ch&ugrave;a để quan s&aacute;t mặt trăng.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Trước khi trăng l&ecirc;n, người ta cắm hai thanh tre l&ecirc;n mặt đất, c&aacute;ch nhau 3 m&eacute;t, g&aacute;c ngang một thanh tre kh&aacute;c như h&igrave;nh c&aacute;i cổng. Đặt một c&aacute;i b&agrave;n dưới cổng đ&oacute;. Tr&ecirc;n b&agrave;n b&agrave;y cốm dẹp, khoai lan, khoai m&ocirc;n, dừa tươi, chuối, b&aacute;nh kẹo, tr&agrave;&hellip; Cứ mỗi lần r&oacute;t tr&agrave; l&agrave; họ lại một lần khấn v&aacute;i đức Phật.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"lễ hội ok-om-bok\" src=\"https://www.dulichvietnam.com.vn/data/le-hoi-ok-om-bok-5-min.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><em>M&acirc;m c&uacute;ng đầy đủ mọi thứ của người Khmer</em><br />\r\n<br />\r\n<strong>Xem th&ecirc;m:&nbsp;</strong><a href=\"https://www.dulichvietnam.com.vn/tra-vinh/\" target=\"_blank\"><strong>Cẩm nang du lịch Tr&agrave; Vinh</strong></a><br />\r\n&nbsp;</p>\r\n\r\n<p>Khi trăng l&ecirc;n đỉnh đầu, người lớn tuổi được người Khmer tin tưởng sẽ đại diện ra c&uacute;ng tạ mặt trăng. R&oacute;t tr&agrave;, thắp nhang rồi khấn nguyện. Trong qu&aacute; tr&igrave;nh c&uacute;ng, trẻ con sẽ tập trung lại chờ được ăn b&aacute;nh. C&uacute;ng xong, người ta sẽ ph&aacute;t b&aacute;nh cho c&aacute;c em nhỏ.&nbsp; Người lớn sẽ đ&uacute;t b&aacute;nh, kẹo cho c&aacute;c em cho đến khi đầy miệng, sau đ&oacute; vỗ lưng c&aacute;c em v&agrave; hỏi c&aacute;c em về ước muốn của m&igrave;nh. Người khmer tin rằng, ước muốn của c&aacute;c em nhỏ cũng l&agrave; động lực của người lớn trong năm tới.<br />\r\n<br />\r\n<img alt=\"lễ hội Ok Om Bok\" src=\"https://www.dulichvietnam.com.vn/data/le-hoi-ok-om-bok-1-min.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><em>Người l&agrave;m lễ đ&uacute;t đồ ăn cho trẻ em v&agrave; hỏi c&aacute;c em về ước muốn của m&igrave;nh</em><br />\r\n&nbsp;</p>\r\n\r\n<h2>Trong dịp lễ n&agrave;y c&oacute; 2 sự kiện l&agrave; thả đ&egrave;n gi&oacute; v&agrave; đua ghe Ngo</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Thả đ&egrave;n gi&oacute;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&egrave;n gi&oacute; được l&agrave;m từ tre, giấy quyến v&agrave; d&acirc;y kẽm. Đ&aacute;y đ&egrave;n để trống c&oacute; lớp g&ograve;n b&ecirc;n trong. L&uacute;c thả th&igrave; đốt lớp g&ograve;n, nhiều người c&ugrave;ng n&acirc;ng đ&egrave;n l&ecirc;n cao. Nhiệt độ l&agrave;m giấy căng phồng, tạo ra lực đẩy để đ&egrave;n bay l&ecirc;n. Đ&egrave;n gi&oacute; bay l&ecirc;n trời mang theo nguyện ước của người Khmer.&nbsp;</p>\r\n\r\n<p><img alt=\"lễ hội ok-om-bok\" src=\"https://www.dulichvietnam.com.vn/data/le-hoi-ok-om-bok-4-min.jpg\" style=\"height:500px; width:800px\" /><br />\r\n&nbsp;</p>\r\n\r\n<h3>Đua ghe Ngo</h3>\r\n\r\n<p><br />\r\nĐua ghe Ngo l&agrave; sự kiện được chờ đợi thứ hai của lễ hội Ok Om Bok. Ghe Ngo l&agrave; t&ecirc;n của một loại thuyền độc mộc. Ghe d&agrave;i 25 - 30 m&eacute;t, rộng khoảng 1 - 1,4 m&eacute;t. Tr&ecirc;n ghe đ&oacute;ng nhiều thanh gỗ g&aacute;c ngang vừa cho hai tay bơi ngồi theo cặp. Mỗi ghe đua c&oacute; thể chở từ 40 - 60 người ch&egrave;o. Người lớn tuổi, c&oacute; chức sắc, được nể trọng sẽ điều khiển nhịp ch&egrave;o v&agrave; ngồi ở mũi ghe. Người cầm l&aacute;i ngồi ở đu&ocirc;i ghe. Mỗi ghe Ngo t&ocirc; vẽ những biểu tượng như cọp, rồng, sư tử&hellip; Trước khi đua, ghe Ngo lu&ocirc;n được tu bổ, hạ thủy tập dượt, l&agrave;m lễ c&uacute;ng b&aacute;i trước rất kĩ c&agrave;ng. C&uacute;ng b&aacute;i trước l&agrave; để cầu c&aacute;c vị thần ph&ugrave; hộ cho qu&aacute; tr&igrave;nh diễn ra cuộc đua được thuận lợi, an to&agrave;n.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Đến trưa ng&agrave;y rằm, người d&acirc;n ra hai b&ecirc;n bờ s&ocirc;ng h&aacute;o hức chờ đợi cuộc đua bắt đầu. Sau hồi c&ograve;i hiệu lệnh xuất ph&aacute;t, từng đội ghe đua nhau ch&egrave;o trong tiếng trống, tiếng loa, tiếng reo h&ograve; của người cỗ vũ.&nbsp;<br />\r\n<br />\r\n<img alt=\"lễ hội ok-om-bok\" src=\"https://www.dulichvietnam.com.vn/data/le-hoi-ok-om-bok-min.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><em>Cuộc đua ghe Ngo v&igrave; danh dự của mỗi phum sốc Khmer diễn ra s&ocirc;i nổi</em><br />\r\n<br />\r\n<strong>Xem th&ecirc;m:&nbsp;</strong><a href=\"https://tour.dulichvietnam.com.vn/du-lich-trong-nuoc/du-lich-mien-tay.html/63\" target=\"_blank\"><strong>Tour du lịch miền T&acirc;y</strong></a><br />\r\n&nbsp;</p>\r\n\r\n<p>Ghe Ngo l&agrave; một sản phẩm văn h&oacute;a độc đ&aacute;o của người Khmer Nam Bộ. Ghe cũng l&agrave; biểu tượng của sự no ấm, sung t&uacute;c, l&agrave; đại diện cho mỗi phum s&oacute;c, x&atilde;, huyện. Do đ&oacute;, cuộc đua ghe thường diễn ra quyết liệt kh&ocirc;ng chỉ v&igrave; giải thưởng, m&agrave; c&ograve;n v&igrave; danh dự v&agrave; vinh quang của phum s&oacute;c. Đua ghe Ngo cũng l&agrave; m&ocirc;n thể thao hấp dẫn v&agrave; h&agrave;o hứng.&nbsp;<br />\r\n<br />\r\nNếu du kh&aacute;ch&nbsp;<strong>du lịch miền T&acirc;y Nam Bộ</strong>&nbsp;trong dịp n&agrave;y, được h&ograve;a m&igrave;nh v&agrave;o lễ hội Ok Om Bok, sẽ cảm thấy trải nghiệm n&agrave;y v&ocirc; c&ugrave;ng đ&aacute;ng gi&aacute;. Kh&ocirc;ng kh&iacute; rộn r&agrave;ng, vui nhộn của lễ hỗi sẽ khiến bạn qu&ecirc;n hết mọi phiền muộn, h&ograve;a m&igrave;nh v&agrave;o lễ hội mỗi năm chỉ c&oacute; một lần n&agrave;y.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Lễ hội Ok Om Bok&nbsp;</strong>mỗi năm chỉ c&oacute; một lần, mang &yacute; nghĩa v&ocirc; c&ugrave;ng s&acirc;u sắc trong đời sống tinh thần người Khmer. Thể hiện kh&aacute;t vọng v&agrave; t&acirc;m hồn người Khmer, thể hiện sự biết ơn của người Khmer với đấng bề tr&ecirc;n. Việc giữ truyền thống tổ chức lễ hội Ok Om Bok cũng g&oacute;p phần bảo tồn, ph&aacute;t huy n&eacute;t đẹp văn h&oacute;a gi&agrave;u t&iacute;nh nh&acirc;n văn của người Khmer Nam Bộ. Kh&ocirc;ng chỉ vậy, lễ hội c&ograve;n l&agrave; một sản phẩm du lịch thu h&uacute;t du kh&aacute;ch đến với v&ugrave;ng đất n&agrave;y.&nbsp;</p>\r\n', 6, 0, 1);

INSERT INTO `tin_tuc` (`id_tin`, `tieu_de`, `danh_muc_id`, `hinh_anh`, `noi_dung`, `luot_xem`, `id_nguoi_dang`, `hien_thi`) VALUES
(8, 'Tây Nguyên có đặc sản mọc dại bên đường', 1, 'Canh_qu_va_hoa_ca_ng.jpg', '<p><strong>Cà đắng xưa nay là món ăn dân dã của đồng bào dân tộc thiểu số Tây Nguyên nhưng ngày nay trở thành đặc sản. Kết tinh từ khí hậu, thổ nhưỡng tạo nên vị đắng rất riêng, đặc trưng của loại cà mọc dại này.</strong></p>\r\n\r\n<p>Ai có lần đến với vùng đất bạt ngàn nắng gió này sẽ nhớ mãi những vườn cà phê trải dài, những con người say trong tiếng nhạc cồng chiêng mời gọi, những món ăn ngon đã thưởng thức một lần thì khó quên. Không như cà đắng cây thấp tẹt dưới đất trái có vị đăng đắng đặc trưng, nhẩn nhẩn hơn khổ qua một tí, cây trổ bông kết trái quanh năm quả to hơn cà pháo, màu xanh có vân trắng. Trước cây mọc dại rồi được người đồng bào mang về trồng xen trong những rẫy cà phê. Giờ thì có một số gia đình trồng nhiều để bán. Mà cà đắng này là loại mọc dại dọc các tuyến đường hoặc trên các triền đồi Tây Nguyên, cây cà đắng cao quá đầu người, cành lá sum suê. Quả cà to bằng đầu ngón tay, có màu xanh, ruột nhiều hạt, phần cuống có nhiều gai nhọn, cây  ra hoa kết trái từ tháng 3- 10 âm lịch trái rộ nhất là từ tháng 5 trở đi. Đúng như tên gọi, loại cà này có vị đăng đắng rất đặc trưng, được người dân chế biến theo nhiều cách khác nhau. Các cư dân bản địa Ê Đê, M’ Nông, Gia Rai … xem cà đắng như món ăn không thể thiếu trong đời sống sinh hoạt hàng ngày của người đồng bào. Sau một ngày lao động vất vả trên nương lại quây quân bên nhau cùng thưởng thức bữa cơm gia đình với món cà đắng, món đặc sản của vùng núi rừng nơi đây. Hương vị đắng của cà, quyện trong vị ngọt mát của cá, vị cay của ớt cùng mùi thơm của gia vị tạo nên nét đặc trưng riêng cho ẩm thực vùng đất này, làm đắm say bao vị khách khi đến thăm mảnh đất và con người nơi đây. Cách nấu khá đơn giản, ngoài món cà luộc ra, còn lại xào hay nấu canh người dân đều dã nhuyễn với các gia vị đi kèm như ớt, tỏi, lá é, cá khô rồi phi hành thơm lên nấu cho thật nhừ. Món ăn sau khi nấu có đủ vị đắng, cay, bùi, béo, ngọt quyện lại với nhau tạo nên hương vị đặc trưng.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ca_xao_ca_kho.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCà đắng xào cá khô. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Canh_qu_va_hoa_ca_ng.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCành quả và hoa cà đắng. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p></p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ch_inh_Th_Ngan.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCô gái hái cà. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n', 7, 0, 1),
(9, 'Thơm ngon đậm vị món gà nướng Bản Đôn', 1, 'ga-nuong-1.jpg', '<p><strong>Vị thơm, ngọt đậm đà của thịt gà hòa quyện với vị cay nồng của muối é tạo nên đặc sắc riêng của món gà nướng Bản Đôn.</strong></p>\r\n\r\n<p>Gà nướng Bản Đôn là một món ăn dân giã của đồng bào dân tộc thiểu số, tuy nhiên, hiện nay món ăn này đã trở thành một đặc sản không thể bỏ qua đối với du khách khi đến thăm mảnh đất Tây Nguyên.</p>\r\n\r\n<p>\r\n\r\n<p>Để làm món ăn này, nguyên liệu quan trọng nhất là thịt gà. Để có những con gà nướng thơm ngon, người dân Bản Đôn phải rất công phu nuôi, chọn gà. Đó phải là gà thả vườn chính hiệu, chủ yếu ăn thức ăn rơi vãi, côn trùng…Gà được chọn nướng là loại mới lớn, độ chừng hơn 1kg mỗi con. Nếu gà lớn thì thịt sẽ dai, gà nhỏ quá lại có mùi hôi…</p>\r\n\r\n<p><img alt=\"Gà nướng muối tiêu. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/ga-nuong-1.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nGà nướng là món ăn đặc trưng của ẩm thực Tây Nguyên. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n<p>Gà sau khi được làm sạch, để nguyên con, mổ dọc theo ức rồi bẻ dẹt ra, ướp muối ớt, nước sả và thêm ít mật ong rừng. Điệu đặc biệt là sả chỉ được giã nhỏ rồi lọc lấy nước chứ không ướp cả xác, nước sả càng nhiều, thịt nướng càng thơm ngon.</p>\r\n\r\n</p>\r\n\r\n<p>Gà ướp khoảng 30 phút đến một tiếng thì được kẹp vào thanh tre rồi quay đều trên lửa than. Cứ vài phút xoay trở một lần cho đến khi gà chín chuyển sang màu vàng, tươm mỡ béo ngậy. Chỉ nhìn thôi cũng đủ ứa nước miếng.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/ga-nuong-2.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nGà không đặt trực tiếp trên than, không dùng vỉ thép, chủ yếu làm chín bằng hơi nóng.  Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n<p>Để ăn gà nướng Bản Đôn chuẩn vị thì phải chấm với muối ớt hoặc muối sả. Dù là loại muối nào cũng phải được giã với ớt rừng xanh. Loại ớt này ăn giòn thơm, rất hấp dẫn. Nếu ăn gà nướng kèm với những thanh cơm lam chín dẻo mềm thì lại càng ngon hơn.</p>\r\n\r\n<p></p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/ga-nuong-3.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nGà nướng là món ăn đặc trưng của ẩm thực Tây Nguyên. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n<p>Trong những buổi chiều se lạnh ở núi rừng, được quây quần bên bếp lửa giữa nhà sàn, vừa nhẩn nha thưởng thức món gà nướng thơm ngon đậm đà, vừa nghe tiếng thác reo… Đó thực sự là bữa ăn đậm chất núi rừng, mang lại cảm giác vô cùng sảng khoái.</p>\r\n\r\n', 7, 0, 1),
(14, 'Hương thơm măng rừng', 1, 'Canh_qu_va_hoa_ca_ng.jpg', '<p><strong>Mùa mưa đi dọc các đường quốc lộ Tây Nguyên ta thường bắt gặp không biết bao nhiêu chợ măng. Ngoài măng ra không có hàng hoá gì khác. Người Ba Na, Gia Rai, Xê Đăng mình trần da đen cháy ngồi như bất động trên những gùi măng le đợi người đến mua.</strong></p>\r\n\r\n<p>Ai có lần đến với vùng đất bạt ngàn nắng gió này sẽ nhớ mãi những vườn cà phê trải dài, những con người say trong tiếng nhạc cồng chiêng mời gọi, những món ăn ngon đã thưởng thức một lần thì khó quên. Không như cà đắng cây thấp tẹt dưới đất trái có vị đăng đắng đặc trưng, nhẩn nhẩn hơn khổ qua một tí, cây trổ bông kết trái quanh năm quả to hơn cà pháo, màu xanh có vân trắng. Trước cây mọc dại rồi được người đồng bào mang về trồng xen trong những rẫy cà phê. Giờ thì có một số gia đình trồng nhiều để bán. Mà cà đắng này là loại mọc dại dọc các tuyến đường hoặc trên các triền đồi Tây Nguyên, cây cà đắng cao quá đầu người, cành lá sum suê. Quả cà to bằng đầu ngón tay, có màu xanh, ruột nhiều hạt, phần cuống có nhiều gai nhọn, cây  ra hoa kết trái từ tháng 3- 10 âm lịch trái rộ nhất là từ tháng 5 trở đi. Đúng như tên gọi, loại cà này có vị đăng đắng rất đặc trưng, được người dân chế biến theo nhiều cách khác nhau. Các cư dân bản địa Ê Đê, M’ Nông, Gia Rai … xem cà đắng như món ăn không thể thiếu trong đời sống sinh hoạt hàng ngày của người đồng bào. Sau một ngày lao động vất vả trên nương lại quây quân bên nhau cùng thưởng thức bữa cơm gia đình với món cà đắng, món đặc sản của vùng núi rừng nơi đây. Hương vị đắng của cà, quyện trong vị ngọt mát của cá, vị cay của ớt cùng mùi thơm của gia vị tạo nên nét đặc trưng riêng cho ẩm thực vùng đất này, làm đắm say bao vị khách khi đến thăm mảnh đất và con người nơi đây. Cách nấu khá đơn giản, ngoài món cà luộc ra, còn lại xào hay nấu canh người dân đều dã nhuyễn với các gia vị đi kèm như ớt, tỏi, lá é, cá khô rồi phi hành thơm lên nấu cho thật nhừ. Món ăn sau khi nấu có đủ vị đắng, cay, bùi, béo, ngọt quyện lại với nhau tạo nên hương vị đặc trưng.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ca_xao_ca_kho.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCà đắng xào cá khô. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Canh_qu_va_hoa_ca_ng.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCành quả và hoa cà đắng. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p></p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ch_inh_Th_Ngan.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCô gái hái cà. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n', 7, 0, 1),
(16, 'Tây Nguyên có đặc sản mọc dại bên đường', 1, 'Canh_qu_va_hoa_ca_ng.jpg', '<p><strong>Cà đắng xưa nay là món ăn dân dã của đồng bào dân tộc thiểu số Tây Nguyên nhưng ngày nay trở thành đặc sản. Kết tinh từ khí hậu, thổ nhưỡng tạo nên vị đắng rất riêng, đặc trưng của loại cà mọc dại này.</strong></p>\r\n\r\n<p>Ai có lần đến với vùng đất bạt ngàn nắng gió này sẽ nhớ mãi những vườn cà phê trải dài, những con người say trong tiếng nhạc cồng chiêng mời gọi, những món ăn ngon đã thưởng thức một lần thì khó quên. Không như cà đắng cây thấp tẹt dưới đất trái có vị đăng đắng đặc trưng, nhẩn nhẩn hơn khổ qua một tí, cây trổ bông kết trái quanh năm quả to hơn cà pháo, màu xanh có vân trắng. Trước cây mọc dại rồi được người đồng bào mang về trồng xen trong những rẫy cà phê. Giờ thì có một số gia đình trồng nhiều để bán. Mà cà đắng này là loại mọc dại dọc các tuyến đường hoặc trên các triền đồi Tây Nguyên, cây cà đắng cao quá đầu người, cành lá sum suê. Quả cà to bằng đầu ngón tay, có màu xanh, ruột nhiều hạt, phần cuống có nhiều gai nhọn, cây  ra hoa kết trái từ tháng 3- 10 âm lịch trái rộ nhất là từ tháng 5 trở đi. Đúng như tên gọi, loại cà này có vị đăng đắng rất đặc trưng, được người dân chế biến theo nhiều cách khác nhau. Các cư dân bản địa Ê Đê, M’ Nông, Gia Rai … xem cà đắng như món ăn không thể thiếu trong đời sống sinh hoạt hàng ngày của người đồng bào. Sau một ngày lao động vất vả trên nương lại quây quân bên nhau cùng thưởng thức bữa cơm gia đình với món cà đắng, món đặc sản của vùng núi rừng nơi đây. Hương vị đắng của cà, quyện trong vị ngọt mát của cá, vị cay của ớt cùng mùi thơm của gia vị tạo nên nét đặc trưng riêng cho ẩm thực vùng đất này, làm đắm say bao vị khách khi đến thăm mảnh đất và con người nơi đây. Cách nấu khá đơn giản, ngoài món cà luộc ra, còn lại xào hay nấu canh người dân đều dã nhuyễn với các gia vị đi kèm như ớt, tỏi, lá é, cá khô rồi phi hành thơm lên nấu cho thật nhừ. Món ăn sau khi nấu có đủ vị đắng, cay, bùi, béo, ngọt quyện lại với nhau tạo nên hương vị đặc trưng.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ca_xao_ca_kho.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCà đắng xào cá khô. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Canh_qu_va_hoa_ca_ng.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCành quả và hoa cà đắng. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p></p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ch_inh_Th_Ngan.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCô gái hái cà. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n', 7, 0, 1),
(15, 'Tây Nguyên có đặc sản mọc dại bên đường', 1, 'Canh_qu_va_hoa_ca_ng.jpg', '<p><strong>Cà đắng xưa nay là món ăn dân dã của đồng bào dân tộc thiểu số Tây Nguyên nhưng ngày nay trở thành đặc sản. Kết tinh từ khí hậu, thổ nhưỡng tạo nên vị đắng rất riêng, đặc trưng của loại cà mọc dại này.</strong></p>\r\n\r\n<p>Ai có lần đến với vùng đất bạt ngàn nắng gió này sẽ nhớ mãi những vườn cà phê trải dài, những con người say trong tiếng nhạc cồng chiêng mời gọi, những món ăn ngon đã thưởng thức một lần thì khó quên. Không như cà đắng cây thấp tẹt dưới đất trái có vị đăng đắng đặc trưng, nhẩn nhẩn hơn khổ qua một tí, cây trổ bông kết trái quanh năm quả to hơn cà pháo, màu xanh có vân trắng. Trước cây mọc dại rồi được người đồng bào mang về trồng xen trong những rẫy cà phê. Giờ thì có một số gia đình trồng nhiều để bán. Mà cà đắng này là loại mọc dại dọc các tuyến đường hoặc trên các triền đồi Tây Nguyên, cây cà đắng cao quá đầu người, cành lá sum suê. Quả cà to bằng đầu ngón tay, có màu xanh, ruột nhiều hạt, phần cuống có nhiều gai nhọn, cây  ra hoa kết trái từ tháng 3- 10 âm lịch trái rộ nhất là từ tháng 5 trở đi. Đúng như tên gọi, loại cà này có vị đăng đắng rất đặc trưng, được người dân chế biến theo nhiều cách khác nhau. Các cư dân bản địa Ê Đê, M’ Nông, Gia Rai … xem cà đắng như món ăn không thể thiếu trong đời sống sinh hoạt hàng ngày của người đồng bào. Sau một ngày lao động vất vả trên nương lại quây quân bên nhau cùng thưởng thức bữa cơm gia đình với món cà đắng, món đặc sản của vùng núi rừng nơi đây. Hương vị đắng của cà, quyện trong vị ngọt mát của cá, vị cay của ớt cùng mùi thơm của gia vị tạo nên nét đặc trưng riêng cho ẩm thực vùng đất này, làm đắm say bao vị khách khi đến thăm mảnh đất và con người nơi đây. Cách nấu khá đơn giản, ngoài món cà luộc ra, còn lại xào hay nấu canh người dân đều dã nhuyễn với các gia vị đi kèm như ớt, tỏi, lá é, cá khô rồi phi hành thơm lên nấu cho thật nhừ. Món ăn sau khi nấu có đủ vị đắng, cay, bùi, béo, ngọt quyện lại với nhau tạo nên hương vị đặc trưng.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ca_xao_ca_kho.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCà đắng xào cá khô. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Canh_qu_va_hoa_ca_ng.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCành quả và hoa cà đắng. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p></p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ch_inh_Th_Ngan.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCô gái hái cà. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n', 7, 0, 1),
(17, 'Tây Nguyên có đặc sản mọc dại bên đường', 1, 'Canh_qu_va_hoa_ca_ng.jpg', '<p><strong>Cà đắng xưa nay là món ăn dân dã của đồng bào dân tộc thiểu số Tây Nguyên nhưng ngày nay trở thành đặc sản. Kết tinh từ khí hậu, thổ nhưỡng tạo nên vị đắng rất riêng, đặc trưng của loại cà mọc dại này.</strong></p>\r\n\r\n<p>Ai có lần đến với vùng đất bạt ngàn nắng gió này sẽ nhớ mãi những vườn cà phê trải dài, những con người say trong tiếng nhạc cồng chiêng mời gọi, những món ăn ngon đã thưởng thức một lần thì khó quên. Không như cà đắng cây thấp tẹt dưới đất trái có vị đăng đắng đặc trưng, nhẩn nhẩn hơn khổ qua một tí, cây trổ bông kết trái quanh năm quả to hơn cà pháo, màu xanh có vân trắng. Trước cây mọc dại rồi được người đồng bào mang về trồng xen trong những rẫy cà phê. Giờ thì có một số gia đình trồng nhiều để bán. Mà cà đắng này là loại mọc dại dọc các tuyến đường hoặc trên các triền đồi Tây Nguyên, cây cà đắng cao quá đầu người, cành lá sum suê. Quả cà to bằng đầu ngón tay, có màu xanh, ruột nhiều hạt, phần cuống có nhiều gai nhọn, cây  ra hoa kết trái từ tháng 3- 10 âm lịch trái rộ nhất là từ tháng 5 trở đi. Đúng như tên gọi, loại cà này có vị đăng đắng rất đặc trưng, được người dân chế biến theo nhiều cách khác nhau. Các cư dân bản địa Ê Đê, M’ Nông, Gia Rai … xem cà đắng như món ăn không thể thiếu trong đời sống sinh hoạt hàng ngày của người đồng bào. Sau một ngày lao động vất vả trên nương lại quây quân bên nhau cùng thưởng thức bữa cơm gia đình với món cà đắng, món đặc sản của vùng núi rừng nơi đây. Hương vị đắng của cà, quyện trong vị ngọt mát của cá, vị cay của ớt cùng mùi thơm của gia vị tạo nên nét đặc trưng riêng cho ẩm thực vùng đất này, làm đắm say bao vị khách khi đến thăm mảnh đất và con người nơi đây. Cách nấu khá đơn giản, ngoài món cà luộc ra, còn lại xào hay nấu canh người dân đều dã nhuyễn với các gia vị đi kèm như ớt, tỏi, lá é, cá khô rồi phi hành thơm lên nấu cho thật nhừ. Món ăn sau khi nấu có đủ vị đắng, cay, bùi, béo, ngọt quyện lại với nhau tạo nên hương vị đặc trưng.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ca_xao_ca_kho.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCà đắng xào cá khô. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Canh_qu_va_hoa_ca_ng.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCành quả và hoa cà đắng. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n<p>Nay không còn là món ăn dân dã của đồng bào Tây Nguyên, cà đắng trở thành đặc sản được nhiều nhà hàng sang trọng, khu du lịch đưa vào thực đơn để phục vụ khách hàng. Anh Y Danh Niê (người Ê đê, ở buôn Yang Làng, xã Krông Na, huyện Buôn Đôn, Đắk Lắk) chuyên phục vụ cơm nước cho khách du lịch tại Trung tâm Giáo dục dịch vụ và môi trường thuộc Vườn Quốc gia Yok Đôn cho biết: Trong số các món ăn quen thuộc của người bản địa thì cà đắng là món được khách du lịch yêu thích và nhắc tới nhiều nhất bởi vị “đắng” rất đặc trưng chỉ có ở loại cà này. Chẳng phải ai cũng "ưng cái bụng" vị đắng của trái cà đắng. Nhưng nếu ăn được, bạn sẽ nghiền cái vị đắng của cà, vị mặn của cá, vị cay của ớt, vị thơm của lá é hoặc ngò gai.... Người lần đầu ăn không quen với vị đắng nhân nhẫn, nhưng sau đó sẽ bị hấp dẫn đến khó quên với vị đắng này. Du khách hay ví von ăn cà đắng giống như thưởng thức cà phê, lần đầu thấy đắng nhưng dần dần thành quen, dễ gây “nghiện”. Để phù hợp với khẩu vị của thực khách, trong quá trình chế biến, người nấu ngâm cà trong nước muối rồi chần qua nước sôi để giảm bớt vị đắng. Ngoài nấu cà đắng với cá khô theo kiểu của người đồng bào thì có thể nấu với cá tươi hoặc um với ếch, lươn, thịt dê, gà, bò… cho đa dạng món ăn. Tuy nhiên, cách nấu và các gia vị đi kèm như ớt xanh, tỏi, lá é hay ngò gai… vẫn phải giữ nguyên để không làm mất đi hương vị đặc trưng của món ăn.</p>\r\n\r\n<p></p>\r\n\r\n<p><img alt=\"Cà đắng ngoài vườn. Ảnh: Kiểu Sơn.\" src=\"/tintucdulich/public/uploads/tintuc/Ch_inh_Th_Ngan.jpg" style=\"margin-left:150px;height:480px; width:800px\" /><br />\r\nCô gái hái cà. Ảnh: Kiểu Sơn.<br />\r\n&nbsp;</p>\r\n\r\n</p>\r\n\r\n</p>\r\n\r\n', 7, 0, 1);
--
-- Table structure for table `tour_tn`
--
CREATE TABLE `tour_tn` (
  `id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ten_tour` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Dumping data for table `tour_tn`
--
INSERT INTO `tour_tn` (`id`, `ten_tour`, `created_at`, `updated_at`) VALUES
(1, 'TOUR ĐĂK LĂK', '2020-10-24 18:41:05', '0000-00-00 00:00:00'),
(2, 'TOUR ĐĂK NÔNG', '2020-10-25 07:13:57', '0000-00-00 00:00:00'),
(3, 'TOUR GIA LAI', '2020-10-26 07:13:57', '0000-00-00 00:00:00'),
(4, 'TOUR LÂM ĐỒNG', '2020-10-28 07:13:57', '0000-00-00 00:00:00'),
(5, 'TOUR KON TUM', '2020-10-29 07:13:57', '0000-00-00 00:00:00');
--
-- Table structure for table `book_tour`
--

CREATE TABLE `book_tour` (
  `id_nguoi_book` int(20) DEFAULT NULL,
  `ten_danh_muc` nvarchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gioi_tinh` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` int(10) NOT NULL,
  `ngay_book` date ,
  `dia_chi` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci,
  PRIMARY KEY(`id_nguoi_book`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Dumping data for table `book_tour`
--

INSERT INTO `book_tour` (`id_nguoi_book`, `ten_danh_muc`,`ho_ten`, `gioi_tinh`, `sdt` ,`ngay_book`,`dia_chi`,`email`, `ghi_chu`) VALUES
(1,'TOUR ĐĂK LĂK', 'Dani Kuan', 'nam',0989877644,20/10/2020,'huyenLak-tinh Dak Lak','Danikuan@gmail.com','hello');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `adminn`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tour_tn`
--
ALTER TABLE `tour_tn`
  ADD KEY (`id`);
--
-- Indexes for table `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_dung_id` (`nguoi_dung_id`),
  ADD KEY `tin_tuc_id` (`tin_tuc_id`);

--
-- Indexes for table `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id_nguoi_dung`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);
--

--
-- Indexes for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`id_tin`),
  ADD KEY `danh_muc_id` (`danh_muc_id`);

--
-- Indexes for table `book_tour`
--
ALTER TABLE `book_tour`
  ADD KEY (`id_nguoi_book`);
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `adminn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `id_tin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tour_tn`
--
ALTER TABLE `tour_tn`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
  
--
-- AUTO_INCREMENT for table `book_tour`
--
ALTER TABLE `book_tour`
  MODIFY `id_nguoi_book` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id_nguoi_dung`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`tin_tuc_id`) REFERENCES `tin_tuc` (`id_tin`) ON DELETE CASCADE;
 /*
--
-- Constraints for table `book_tour`
--
ALTER TABLE `book_tour`
  ADD CONSTRAINT `book_tour_ibfk_1` FOREIGN KEY (`id_nguoi_book`) REFERENCES `nguoi_dung` (`id_nguoi_dung`) ON DELETE CASCADE;*/
--
-- Constraints for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD CONSTRAINT `tin_tuc_ibfk_1` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_muc` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
