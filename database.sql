-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2021 lúc 10:39 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wedshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(123) NOT NULL,
  `email` varchar(123) NOT NULL,
  `password` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Quốc', 'rync2301@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `name` varchar(123) NOT NULL,
  `ngay` datetime NOT NULL,
  `noidung` varchar(123) NOT NULL,
  `rating` int(1) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_sanpham`, `id_khachhang`, `name`, `ngay`, `noidung`, `rating`, `parent_id`) VALUES
(12, 3, 1, 'khang', '2021-10-10 09:58:41', 'hay', 5, 0),
(13, 3, 1, 'khang', '2021-10-10 10:14:22', 'te', 1, 0),
(14, 3, 1, 'khang', '2021-10-10 10:14:30', 'uk', NULL, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadon`
--

CREATE TABLE `cthoadon` (
  `id` int(10) NOT NULL,
  `sanpham_id` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `sanpham_gia` int(10) NOT NULL,
  `hoadon_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(11) NOT NULL,
  `code` varchar(123) NOT NULL,
  `giagiam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giftcode`
--

INSERT INTO `giftcode` (`id`, `code`, `giagiam`) VALUES
(0, 'giam1trieu', 1000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_chitiet`
--

CREATE TABLE `hinh_chitiet` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `hinhanh` varchar(250) NOT NULL,
  `name` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hinh_chitiet`
--

INSERT INTO `hinh_chitiet` (`id`, `id_sanpham`, `hinhanh`, `name`) VALUES
(1, 6, '1.jpg', 'Hình ảnh Iphone 7'),
(2, 5, '2.jpg', 'Hình ảnh Iphone 8'),
(3, 3, '3.jpg', 'Hình ảnh Iphone 11'),
(4, 2, '4.jpg', 'Hình ảnh Iphone 12 Pro Max'),
(5, 1, '5.jpg', 'Hình ảnh Iphone 13 Pro Max'),
(6, 4, '6.jpg', 'Hình ảnh Iphone X'),
(7, 17, '7.jpg', 'Hình ảnh điện thoại Oppo A74'),
(8, 18, '8.jpg', 'Hình ảnh điện thoại Oppo find X3 Pro'),
(9, 16, '9.jpg', 'Hình ảnh điện thoại Oppo Reno6 Z 5G'),
(10, 9, '10.jpg', 'Hình ảnh điện thoại Samsung Galaxy A22'),
(11, 10, '11.jpg\r\n', 'Hình ảnh điện thoại Samsung Galaxy A72'),
(12, 11, '12.jpg', 'Hình ảnh điện thoại Samsung Galaxy S21 '),
(13, 8, '13.jpg', 'Hình ảnh điện thoại Samsung Galaxy Z Flip3 5G'),
(14, 7, '14.jpg', 'Hình ảnh điện thoại Samsung Galaxy Z Fold 5G'),
(15, 20, '15.jpg', 'Hình ảnh điện thoại Vivo V20 (2021)'),
(16, 19, '16.jpg', 'Hình ảnh điện thoại Vivo V21 5G'),
(17, 13, '17.jpg', 'Hình ảnh điện thoại Xiaomi 10T Pro 5G'),
(18, 14, '18.jpg', 'Hình ảnh điện thoại Xiaomi Mi 11 5G'),
(19, 12, '19.jpg', 'Hình ảnh điện thoại Xiaomi Mi 11 Lite'),
(20, 15, '20.jpg', 'Hình ảnh điện thoại Xiaomi Note 10 Pro'),
(21, 6, '3.jpg', 'Hình ảnh Iphone 7'),
(22, 5, '1.jpg', 'Hình ảnh Iphone 8'),
(23, 3, '2.jpg', 'Hình ảnh Iphone 11'),
(24, 2, '1.jpg', 'Hình ảnh Iphone 12 Pro Max'),
(25, 1, '4.jpg', 'Hình ảnh Iphone 13 Pro Max'),
(26, 4, '5.jpg', 'Hình ảnh Iphone X'),
(27, 17, '8.jpg', 'Hình ảnh điện thoại Oppo A74'),
(28, 18, '7.jpg', 'Hình ảnh điện thoại Oppo find X3 Pro'),
(29, 16, '8.jpg', 'Hình ảnh điện thoại Oppo Reno6 Z 5G'),
(30, 9, '10.jpg', 'Hình ảnh điện thoại Samsung Galaxy A22'),
(31, 10, '12.jpg\r\n', 'Hình ảnh điện thoại Samsung Galaxy A72'),
(32, 11, '14.jpg', 'Hình ảnh điện thoại Samsung Galaxy S21 '),
(33, 8, '13.jpg', 'Hình ảnh điện thoại Samsung Galaxy Z Flip3 5G'),
(40, 1, '19.jpg', 'Hình ảnh điện thoại Xiaomi Note 10 Pro'),
(44, 7, '12.jpg', 'Hình ảnh điện thoại Samsung Galaxy Z Fold 5G'),
(51, 6, '1.jpg', 'Hình ảnh Iphone 7'),
(52, 5, '2.jpg', 'Hình ảnh Iphone 8'),
(53, 3, '3.jpg', 'Hình ảnh Iphone 11'),
(54, 2, 'iphone8.jpg', 'Hình ảnh Iphone 12 Pro Max'),
(55, 1, '5.jpg', 'Hình ảnh Iphone 13 Pro Max'),
(56, 4, 'iphonex.jpg', 'Hình ảnh Iphone X'),
(129, 12, '18.jpg', 'Hình ảnh điện thoại Xiaomi Mi 11 Lite'),
(145, 20, '16.jpg', 'Hình ảnh điện thoại Vivo V20 (2021)'),
(146, 19, '15.jpg', 'Hình ảnh điện thoại Vivo V21 5G'),
(148, 14, '17.jpg', 'Hình ảnh điện thoại Xiaomi Mi 11 5G'),
(157, 13, '16.jpg', 'Hình ảnh điện thoại Xiaomi 10T Pro 5G');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(10) NOT NULL,
  `khachhang_id` int(10) NOT NULL,
  `ngaydathang` datetime NOT NULL,
  `tongtien` int(10) NOT NULL,
  `ngayvanchuyen` datetime NOT NULL,
  `tinhtrang` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `khachhang_id`, `ngaydathang`, `tongtien`, `ngayvanchuyen`, `tinhtrang`) VALUES
(5, 2, '2021-10-27 15:04:25', 73950000, '2021-10-27 15:05:21', 'Đang vận chuyển'),
(6, 2, '2021-10-27 15:08:54', 73950000, '0000-00-00 00:00:00', 'Chờ xử lý'),
(11, 2, '2021-10-27 15:25:17', 73950000, '0000-00-00 00:00:00', 'Chờ xử lý'),
(12, 2, '2021-10-27 15:36:38', 73950000, '0000-00-00 00:00:00', 'Chờ xử lý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(10) NOT NULL,
  `ten` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `ten`, `email`, `password`, `diachi`, `sdt`) VALUES
(1, 'khang', 'khang', '202cb962ac59075b964b07152d234b70', '', 0),
(2, 'quoc', 'quoc@gmail.com', '202cb962ac59075b964b07152d234b70', '', 0),
(5, 'khang', 'khang@gmail.com', '202cb962ac59075b964b07152d234b70', '', 0),
(7, 'thi', 'thi', '202cb962ac59075b964b07152d234b70', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `ngaybatdau` datetime NOT NULL,
  `ngayketthuc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id`, `id_sanpham`, `ngaybatdau`, `ngayketthuc`) VALUES
(1, 2, '2021-09-20 00:00:00', '2021-10-16 23:59:59'),
(3, 3, '2021-09-25 09:29:44', '2021-10-28 14:29:44'),
(5, 4, '2021-09-25 09:30:23', '2021-10-10 14:30:24'),
(6, 5, '2021-09-25 09:30:53', '2021-10-31 14:30:53'),
(7, 6, '2021-09-25 09:31:50', '2021-10-29 14:31:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanloai`
--

CREATE TABLE `phanloai` (
  `id` int(10) NOT NULL,
  `ten` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanloai`
--

INSERT INTO `phanloai` (`id`, `ten`, `parent_id`) VALUES
(1, 'IPhone', 1),
(2, 'Samsung', 2),
(3, 'Oppo', 3),
(4, 'Xiaomi', 4),
(5, 'Vivo', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) NOT NULL,
  `ten` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `giamacdinh` int(10) NOT NULL,
  `giakhuyenmai` int(10) NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `slton` int(10) NOT NULL,
  `slxem` int(10) NOT NULL,
  `phanloai_id` int(10) NOT NULL,
  `manhinh` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `hedieuhanh` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `cameratruoc` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `camerasau` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `chip` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(123) COLLATE utf8_unicode_ci NOT NULL,
  `mausac` varchar(123) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `giamacdinh`, `giakhuyenmai`, `mota`, `hinhanh`, `slton`, `slxem`, `phanloai_id`, `manhinh`, `hedieuhanh`, `cameratruoc`, `camerasau`, `chip`, `ram`, `mausac`) VALUES
(1, 'Điện thoại iPhone 13 Pro Max', 33990000, 0, 'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 'iphone13.jpg', 50, 32, 1, 'OLED6.7\"Super Retina XDR', 'iOS 15', '\r\n12 MP', '3 camera 12 MP', 'Apple A15 Bionic', '6 GB', 'Xanh Dương'),
(2, 'Điện thoại iPhone 12 Pro Max', 42490000, 39990000, 'iPhone 12 Pro Max 512GB - đẳng cấp từ tên gọi đến từng chi tiết. Ngay từ khi chỉ là tin đồn thì chiếc smartphone này đã làm đứng ngồi không yên bao “fan cứng” nhà Apple, với những nâng cấp vô cùng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt mà chưa một chiếc iPhone tiền nhiệm nào có được.', 'iphone12.jpg', 35, 10, 1, 'OLED6.7\"Super Retina XDR', 'iOS 14', '\r\n12 MP', '3 camera 12 MP', 'Apple A14 Bionic', '6 GB', 'Xanh Dương'),
(3, 'Điện thoại iPhone 11', 20490000, 19490000, 'iPhone 11 256GB là chiếc máy có mức giá khá dễ chịu đến từ Apple. Nếu bạn không muốn bỏ ra số tiền quá lớn mà vẫn có được những nâng cấp về camera hay một hiệu năng đầy mạnh mẽ thì đây thực sự là một lựa chọn hàng đầu dành cho bạn', 'iphone11.jpg', 35, 10, 1, 'IPS LCD6.1\"Liquid Retina', 'iOS 14', '\r\n12 MP', '2 camera 12 MP', 'Apple A14 Bionic', '4 GB', 'Đen'),
(4, 'Điện thoại iPhone X 64GB', 14490000, 13490000, 'iPhone X 64 GB là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.', 'iphonex.jpg', 35, 10, 1, 'OLED5.8\"Super Retina', 'iOS 12', '\r\n7 MP', '2 camera 12 MP', 'Apple A11 Bionic', '3 GB', 'Bạc'),
(5, 'Điện thoại iPhone 8', 9590000, 8490000, 'iPhone 8 64GB nổi bật với điểm nhấn mặt lưng kính và mặt trước giữ nguyên thiết kế như iPhone 7, cùng với đó là hàng loạt công nghệ đáng mong đợi như sạc nhanh, không dây hay hỗ trợ thực tế ảo AR.', 'iphone8.jpg', 35, 10, 1, 'LED-backlit IPS LCD4.7\"Retina HD', 'iOS 14', '\r\n7 MP', '2 camera 12 MP', 'Apple A11 Bionic', '3 GB', 'Đỏ'),
(6, 'Điện thoại iPhone 7', 8590000, 7490000, 'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.', 'iphone7.jpg', 25, 6, 1, 'LED-backlit IPS LCD4.7\"Retina HD', 'iOS 14', '\r\n7 MP', '2 camera 12 MP', 'Apple A10 Fusion', '3 GB', 'Vàng Hồng'),
(7, 'Điện thoại Samsung Galaxy Z Fold3 5G 512GB', 44990000, 0, 'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 'samsungfold.jpg', 12, 80, 2, 'Dynamic AMOLED 2XChính 7.6\" & Phụ 6.2\"Full HD+', 'Android 11', '10 MP & 4 MP', '3 camera 12 MP', 'Snapdragon 888', '12 GB', 'Xanh Lá'),
(8, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB ', 26990000, 0, 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsungzflip.jpg', 12, 80, 2, 'Dynamic AMOLED 2XChính 6.7\" & Phụ 1.9\"Full HD+', 'Android 11', '10 MP', '2 camera 12 MP', 'Snapdragon 888', '8 GB', 'Tím'),
(9, 'Điện thoại Samsung Galaxy A22 ', 5890000, 0, 'Samsung chào đón mùa hè 2021 bằng sự ra mắt của bộ đôi Galaxy A22 và Galaxy A22 5G với nhiều thông số ấn tượng. Trong đó, Galaxy A22 sở hữu viên pin đầy năng suất, hiệu năng gaming mạnh mẽ và màn hình lớn có khả năng hiển thị tốt.', 'samsunga22.jpg', 12, 80, 2, 'Super AMOLED6.4\"HD+', 'Android 11', '10 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', 'MediaTek MT6769V', '6 GB', 'Đen'),
(10, 'Điện thoại Samsung Galaxy A72', 11490000, 10490000, 'Sau sự thành công của Galaxy S21 series, Samsung tiếp tục tấn công phân khúc tầm trung với Galaxy A72 thuộc Galaxy A series, sở hữu nhiều màu sắc trẻ trung, hệ thống camera nhiều tính năng cũng như nâng cấp hiệu năng vô cùng lớn mang đến những trải nghiệm hoàn toàn mới.', 'samsunga72.jpg', 12, 80, 2, 'Super AMOLED6.7\"Full HD+', 'Android 11', '32 MP', 'Chính 64 MP & Phụ 12 MP, 8 MP, 5 MP', 'Snapdragon 720G', '8 GB', 'Xanh Dương'),
(11, 'Điện thoại Samsung Galaxy S21+ 5G 256GB', 28990000, 23990000, 'Đắm chìm trong vẻ đẹp tuyệt tác đến từ Samsung Galaxy S21+ 5G 256 GB, làm chủ cuộc chơi với hiệu năng hàng đầu, cụm camera chuyên nghiệp cùng tốc độ 5G bức phá mọi giới hạn, mẫu điện thoại cho bạn thỏa sức khám phá cuộc sống, thể hiện cá tính theo cách riêng của mình.', 'samsungs21.jpg', 15, 37, 2, 'Dynamic AMOLED 2X6.7\"Full HD+', 'Android 11', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP', 'Exynos 2100', '8 GB', 'Bạc'),
(12, 'Điện thoại Xiaomi Mi 11 Lite', 7990000, 7590000, 'Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang.', 'mi11lite.jpg', 30, 55, 4, 'AMOLED6.55\"Full HD+', 'Android 11', '16 MP', 'Chính 64 MP & Phụ 8 MP, 5 MP', 'Snapdragon 732G', '8 GB', 'Hồng'),
(13, 'Điện thoại Xiaomi Mi 10T Pro 5G', 12990000, 12490000, 'Mi 10T Pro 5G mẫu smartphone cao cấp của Xiaomi trong năm 2020 cuối cùng cũng được trình làng với loạt những thông số gây “choáng ngợp”: Màn hình tần số quét 144 Hz, vi xử lý Snapdragon 865 và cụm camera khủng 108 MP kèm theo đó là một mức giá dễ chịu cho người dùng.', 'mi10t.jpg', 20, 57, 4, 'IPS LCD6.67\"Full HD+', 'Android 10', '20 MP', 'Chính 108 MP & Phụ 13 MP, 5 MP', 'Snapdragon 865', '8 GB', 'Đen'),
(14, 'Điện thoại Xiaomi Mi 11 5G ', 21990000, 16990000, 'Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdragon 888, cùng loạt công nghệ đỉnh cao, khiến bất kỳ ai cũng sẽ choáng ngợp về smartphone này.', 'mi11.jpg', 27, 51, 4, 'AMOLED6.81\"Quad HD+ (2K+)', 'Android 11', '20 MP', 'Chính 108 MP & Phụ 13 MP, 5 MP', 'Snapdragon 888', '8 GB', 'Xám đậm'),
(15, 'Điện thoại Xiaomi Redmi Note 10 Pro (8GB/128GB)', 7490000, 0, 'Kế thừa và nâng cấp từ thế hệ trước, Xiaomi đã cho ra mắt Xiaomi Redmi Note 10 Pro (8GB/128GB) sở hữu một thiết kế cao cấp, sang trọng bên cạnh cấu hình vô cùng mạnh mẽ, hứa hẹn mang đến sự cạnh tranh lớn trong phân khúc smartphone tầm trung.', 'redminote10.jpg', 10, 100, 4, 'AMOLED6.67\"Full HD+', 'Android 11', '16 MP', 'Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP', 'Snapdragon 732G', '8 GB', 'Vàng đồng'),
(16, 'Điện thoại OPPO Reno6 Z 5G', 9490000, 0, 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'opporeno6.jpg', 10, 100, 3, 'AMOLED6.43\"Full HD+', 'Android 11', '32 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'MediaTek Dimensity 800U 5G', '8 GB', 'Bạc'),
(17, 'Điện thoại OPPO A74', 6690000, 0, 'OPPO luôn đa dạng hoá các sản phẩm của mình từ giá rẻ cho đến cao cấp. Trong đó, điện thoại OPPO A74 4G được nằm trong phân khúc tầm trung rất đáng chú ý với nhiều tính năng và smartphone cũng chính là bản nâng cấp của OPPO A73 ra mắt trước đó.', 'oppoa74.jpg', 10, 100, 3, 'AMOLED6.43\"Full HD+', 'Android 11', '16 MP', 'Chính 48 MP & Phụ 2 MP, 2 MP', 'Snapdragon 662', '8 GB', 'Xanh Dương'),
(18, 'Điện thoại OPPO Find X3 Pro 5G', 26990000, 0, 'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android.', 'oppofind.jpg', 10, 100, 3, 'AMOLED6.7\"Quad HD+ (2K+)', 'Android 11', '32 MP', 'Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP', 'Snapdragon 888', '8 GB', 'Xanh Đen'),
(19, 'Điện thoại Vivo V21 5G', 9490000, 0, 'Chụp selfie bùng nổ trong đêm, thiết kế mới hiện đại đón đầu xu hướng, cùng với đó là tốc độ kết nối mạng 5G hàng đầu, tất cả những tính năng ấn tượng này đều có trong Vivo V21 5G mẫu điện thoại cận cao cấp đến từ Vivo.', 'vivov21.jpg', 70, 200, 5, 'AMOLED6.44\"Full HD+', 'Android 11', '44 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'MediaTek Dimensity 800U 5G', '8 GB', 'Tím Hồng'),
(20, 'Điện thoại Vivo V20 (2021)', 7790000, 0, 'Vivo tung ra chiếc điện thoại Vivo V20 (2021) là phiên bản nâng cấp của Vivo V20 ra mắt trước đó. Chiếc smartphone này được nâng cấp lên bộ xử lý mạnh mẽ hơn mà vẫn giữ được thiết kế siêu mỏng và cụm camera chụp đẹp đáng kinh ngạc.', 'vivov20.jpg', 70, 200, 5, 'AMOLED6.44\"Full HD+', 'Android 11', '44 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'Snapdragon 730', '8 GB', 'Xanh Hồng'),
(21, 'Điện thoại iPhone 13 Pro Max', 33990000, 0, 'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 'iphone13.jpg', 50, 32, 1, 'OLED6.7\"Super Retina XDR', 'iOS 15', '\r\n12 MP', '3 camera 12 MP', 'Apple A15 Bionic', '6 GB', 'Xanh Dương'),
(22, 'Điện thoại iPhone 12 Pro Max', 42490000, 39990000, 'iPhone 12 Pro Max 512GB - đẳng cấp từ tên gọi đến từng chi tiết. Ngay từ khi chỉ là tin đồn thì chiếc smartphone này đã làm đứng ngồi không yên bao “fan cứng” nhà Apple, với những nâng cấp vô cùng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt mà chưa một chiếc iPhone tiền nhiệm nào có được.', 'iphone12.jpg', 35, 10, 1, 'OLED6.7\"Super Retina XDR', 'iOS 14', '\r\n12 MP', '3 camera 12 MP', 'Apple A14 Bionic', '6 GB', 'Xanh Dương'),
(23, 'Điện thoại iPhone 11', 20490000, 19490000, 'iPhone 11 256GB là chiếc máy có mức giá khá dễ chịu đến từ Apple. Nếu bạn không muốn bỏ ra số tiền quá lớn mà vẫn có được những nâng cấp về camera hay một hiệu năng đầy mạnh mẽ thì đây thực sự là một lựa chọn hàng đầu dành cho bạn', 'iphone11.jpg', 35, 10, 1, 'IPS LCD6.1\"Liquid Retina', 'iOS 14', '\r\n12 MP', '2 camera 12 MP', 'Apple A14 Bionic', '4 GB', 'Đen'),
(24, 'Điện thoại iPhone X 64GB', 14490000, 13490000, 'iPhone X 64 GB là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.', 'iphonex.jpg', 35, 10, 1, 'OLED5.8\"Super Retina', 'iOS 12', '\r\n7 MP', '2 camera 12 MP', 'Apple A11 Bionic', '3 GB', 'Bạc'),
(25, 'Điện thoại iPhone 8', 9590000, 8490000, 'iPhone 8 64GB nổi bật với điểm nhấn mặt lưng kính và mặt trước giữ nguyên thiết kế như iPhone 7, cùng với đó là hàng loạt công nghệ đáng mong đợi như sạc nhanh, không dây hay hỗ trợ thực tế ảo AR.', 'iphone8.jpg', 35, 10, 1, 'LED-backlit IPS LCD4.7\"Retina HD', 'iOS 14', '\r\n7 MP', '2 camera 12 MP', 'Apple A11 Bionic', '3 GB', 'Đỏ'),
(26, 'Điện thoại iPhone 7', 8590000, 7490000, 'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.', 'iphone7.jpg', 25, 6, 1, 'LED-backlit IPS LCD4.7\"Retina HD', 'iOS 14', '\r\n7 MP', '2 camera 12 MP', 'Apple A10 Fusion', '3 GB', 'Vàng Hồng'),
(27, 'Điện thoại Samsung Galaxy Z Fold3 5G 512GB', 44990000, 0, 'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 'samsungfold.jpg', 12, 80, 2, 'Dynamic AMOLED 2XChính 7.6\" & Phụ 6.2\"Full HD+', 'Android 11', '10 MP & 4 MP', '3 camera 12 MP', 'Snapdragon 888', '12 GB', 'Xanh Lá'),
(28, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB ', 26990000, 0, 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsungzflip.jpg', 12, 80, 2, 'Dynamic AMOLED 2XChính 6.7\" & Phụ 1.9\"Full HD+', 'Android 11', '10 MP', '2 camera 12 MP', 'Snapdragon 888', '8 GB', 'Tím'),
(29, 'Điện thoại Samsung Galaxy A22 ', 5890000, 0, 'Samsung chào đón mùa hè 2021 bằng sự ra mắt của bộ đôi Galaxy A22 và Galaxy A22 5G với nhiều thông số ấn tượng. Trong đó, Galaxy A22 sở hữu viên pin đầy năng suất, hiệu năng gaming mạnh mẽ và màn hình lớn có khả năng hiển thị tốt.', 'samsunga22.jpg', 12, 80, 2, 'Super AMOLED6.4\"HD+', 'Android 11', '10 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', 'MediaTek MT6769V', '6 GB', 'Đen'),
(30, 'Điện thoại Samsung Galaxy A72', 11490000, 10490000, 'Sau sự thành công của Galaxy S21 series, Samsung tiếp tục tấn công phân khúc tầm trung với Galaxy A72 thuộc Galaxy A series, sở hữu nhiều màu sắc trẻ trung, hệ thống camera nhiều tính năng cũng như nâng cấp hiệu năng vô cùng lớn mang đến những trải nghiệm hoàn toàn mới.', 'samsunga72.jpg', 12, 80, 2, 'Super AMOLED6.7\"Full HD+', 'Android 11', '32 MP', 'Chính 64 MP & Phụ 12 MP, 8 MP, 5 MP', 'Snapdragon 720G', '8 GB', 'Xanh Dương'),
(31, 'Điện thoại Samsung Galaxy S21+ 5G 256GB', 28990000, 23990000, 'Đắm chìm trong vẻ đẹp tuyệt tác đến từ Samsung Galaxy S21+ 5G 256 GB, làm chủ cuộc chơi với hiệu năng hàng đầu, cụm camera chuyên nghiệp cùng tốc độ 5G bức phá mọi giới hạn, mẫu điện thoại cho bạn thỏa sức khám phá cuộc sống, thể hiện cá tính theo cách riêng của mình.', 'samsungs21.jpg', 15, 37, 2, 'Dynamic AMOLED 2X6.7\"Full HD+', 'Android 11', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP', 'Exynos 2100', '8 GB', 'Bạc'),
(32, 'Điện thoại Xiaomi Mi 11 Lite', 7990000, 7590000, 'Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang.', 'mi11lite.jpg', 30, 55, 4, 'AMOLED6.55\"Full HD+', 'Android 11', '16 MP', 'Chính 64 MP & Phụ 8 MP, 5 MP', 'Snapdragon 732G', '8 GB', 'Hồng'),
(33, 'Điện thoại Xiaomi Mi 10T Pro 5G', 12990000, 12490000, 'Mi 10T Pro 5G mẫu smartphone cao cấp của Xiaomi trong năm 2020 cuối cùng cũng được trình làng với loạt những thông số gây “choáng ngợp”: Màn hình tần số quét 144 Hz, vi xử lý Snapdragon 865 và cụm camera khủng 108 MP kèm theo đó là một mức giá dễ chịu cho người dùng.', 'mi10t.jpg', 20, 57, 4, 'IPS LCD6.67\"Full HD+', 'Android 10', '20 MP', 'Chính 108 MP & Phụ 13 MP, 5 MP', 'Snapdragon 865', '8 GB', 'Đen'),
(34, 'Điện thoại Xiaomi Mi 11 5G ', 21990000, 16990000, 'Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdragon 888, cùng loạt công nghệ đỉnh cao, khiến bất kỳ ai cũng sẽ choáng ngợp về smartphone này.', 'mi11.jpg', 27, 51, 4, 'AMOLED6.81\"Quad HD+ (2K+)', 'Android 11', '20 MP', 'Chính 108 MP & Phụ 13 MP, 5 MP', 'Snapdragon 888', '8 GB', 'Xám đậm'),
(35, 'Điện thoại Xiaomi Redmi Note 10 Pro (8GB/128GB)', 7490000, 0, 'Kế thừa và nâng cấp từ thế hệ trước, Xiaomi đã cho ra mắt Xiaomi Redmi Note 10 Pro (8GB/128GB) sở hữu một thiết kế cao cấp, sang trọng bên cạnh cấu hình vô cùng mạnh mẽ, hứa hẹn mang đến sự cạnh tranh lớn trong phân khúc smartphone tầm trung.', 'redminote10.jpg', 10, 100, 4, 'AMOLED6.67\"Full HD+', 'Android 11', '16 MP', 'Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP', 'Snapdragon 732G', '8 GB', 'Vàng đồng'),
(36, 'Điện thoại OPPO Reno6 Z 5G', 9490000, 0, 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'opporeno6.jpg', 10, 100, 3, 'AMOLED6.43\"Full HD+', 'Android 11', '32 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'MediaTek Dimensity 800U 5G', '8 GB', 'Bạc'),
(37, 'Điện thoại OPPO A74', 6690000, 0, 'OPPO luôn đa dạng hoá các sản phẩm của mình từ giá rẻ cho đến cao cấp. Trong đó, điện thoại OPPO A74 4G được nằm trong phân khúc tầm trung rất đáng chú ý với nhiều tính năng và smartphone cũng chính là bản nâng cấp của OPPO A73 ra mắt trước đó.', 'oppoa74.jpg', 10, 100, 3, 'AMOLED6.43\"Full HD+', 'Android 11', '16 MP', 'Chính 48 MP & Phụ 2 MP, 2 MP', 'Snapdragon 662', '8 GB', 'Xanh Dương'),
(38, 'Điện thoại OPPO Find X3 Pro 5G', 26990000, 0, 'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android.', 'oppofind.jpg', 10, 100, 3, 'AMOLED6.7\"Quad HD+ (2K+)', 'Android 11', '32 MP', 'Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP', 'Snapdragon 888', '8 GB', 'Xanh Đen'),
(39, 'Điện thoại Vivo V21 5G', 9490000, 0, 'Chụp selfie bùng nổ trong đêm, thiết kế mới hiện đại đón đầu xu hướng, cùng với đó là tốc độ kết nối mạng 5G hàng đầu, tất cả những tính năng ấn tượng này đều có trong Vivo V21 5G mẫu điện thoại cận cao cấp đến từ Vivo.', 'vivov21.jpg', 70, 200, 5, 'AMOLED6.44\"Full HD+', 'Android 11', '44 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'MediaTek Dimensity 800U 5G', '8 GB', 'Tím Hồng'),
(40, 'Điện thoại Vivo V20 (2021)', 7790000, 0, 'Vivo tung ra chiếc điện thoại Vivo V20 (2021) là phiên bản nâng cấp của Vivo V20 ra mắt trước đó. Chiếc smartphone này được nâng cấp lên bộ xử lý mạnh mẽ hơn mà vẫn giữ được thiết kế siêu mỏng và cụm camera chụp đẹp đáng kinh ngạc.', 'vivov20.jpg', 70, 200, 5, 'AMOLED6.44\"Full HD+', 'Android 11', '44 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'Snapdragon 730', '8 GB', 'Xanh Hồng'),
(41, 'Điện thoại iPhone 13 Pro Max', 33990000, 0, 'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 'iphone13.jpg', 50, 32, 1, 'OLED6.7\"Super Retina XDR', 'iOS 15', '\r\n12 MP', '3 camera 12 MP', 'Apple A15 Bionic', '6 GB', 'Xanh Dương'),
(42, 'Điện thoại iPhone 12 Pro Max', 42490000, 39990000, 'iPhone 12 Pro Max 512GB - đẳng cấp từ tên gọi đến từng chi tiết. Ngay từ khi chỉ là tin đồn thì chiếc smartphone này đã làm đứng ngồi không yên bao “fan cứng” nhà Apple, với những nâng cấp vô cùng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt mà chưa một chiếc iPhone tiền nhiệm nào có được.', 'iphone12.jpg', 35, 10, 1, 'OLED6.7\"Super Retina XDR', 'iOS 14', '\r\n12 MP', '3 camera 12 MP', 'Apple A14 Bionic', '6 GB', 'Xanh Dương'),
(43, 'Điện thoại iPhone 11', 20490000, 19490000, 'iPhone 11 256GB là chiếc máy có mức giá khá dễ chịu đến từ Apple. Nếu bạn không muốn bỏ ra số tiền quá lớn mà vẫn có được những nâng cấp về camera hay một hiệu năng đầy mạnh mẽ thì đây thực sự là một lựa chọn hàng đầu dành cho bạn', 'iphone11.jpg', 35, 10, 1, 'IPS LCD6.1\"Liquid Retina', 'iOS 14', '\r\n12 MP', '2 camera 12 MP', 'Apple A14 Bionic', '4 GB', 'Đen'),
(44, 'Điện thoại iPhone X 64GB', 14490000, 13490000, 'iPhone X 64 GB là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.', 'iphonex.jpg', 35, 10, 1, 'OLED5.8\"Super Retina', 'iOS 12', '\r\n7 MP', '2 camera 12 MP', 'Apple A11 Bionic', '3 GB', 'Bạc'),
(45, 'Điện thoại iPhone 8', 9590000, 8490000, 'iPhone 8 64GB nổi bật với điểm nhấn mặt lưng kính và mặt trước giữ nguyên thiết kế như iPhone 7, cùng với đó là hàng loạt công nghệ đáng mong đợi như sạc nhanh, không dây hay hỗ trợ thực tế ảo AR.', 'iphone8.jpg', 35, 10, 1, 'LED-backlit IPS LCD4.7\"Retina HD', 'iOS 14', '\r\n7 MP', '2 camera 12 MP', 'Apple A11 Bionic', '3 GB', 'Đỏ'),
(46, 'Điện thoại Xiaomi Mi 11 5G ', 21990000, 16990000, 'Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdragon 888, cùng loạt công nghệ đỉnh cao, khiến bất kỳ ai cũng sẽ choáng ngợp về smartphone này.', 'mi11.jpg', 27, 51, 4, 'AMOLED6.81\"Quad HD+ (2K+)', 'Android 11', '20 MP', 'Chính 108 MP & Phụ 13 MP, 5 MP', 'Snapdragon 888', '8 GB', 'Xám đậm'),
(47, 'Điện thoại Xiaomi Redmi Note 10 Pro (8GB/128GB)', 7490000, 0, 'Kế thừa và nâng cấp từ thế hệ trước, Xiaomi đã cho ra mắt Xiaomi Redmi Note 10 Pro (8GB/128GB) sở hữu một thiết kế cao cấp, sang trọng bên cạnh cấu hình vô cùng mạnh mẽ, hứa hẹn mang đến sự cạnh tranh lớn trong phân khúc smartphone tầm trung.', 'redminote10.jpg', 10, 100, 4, 'AMOLED6.67\"Full HD+', 'Android 11', '16 MP', 'Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP', 'Snapdragon 732G', '8 GB', 'Vàng đồng'),
(48, 'Điện thoại OPPO Reno6 Z 5G', 9490000, 0, 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'opporeno6.jpg', 10, 100, 3, 'AMOLED6.43\"Full HD+', 'Android 11', '32 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'MediaTek Dimensity 800U 5G', '8 GB', 'Bạc'),
(49, 'Điện thoại OPPO A74', 6690000, 0, 'OPPO luôn đa dạng hoá các sản phẩm của mình từ giá rẻ cho đến cao cấp. Trong đó, điện thoại OPPO A74 4G được nằm trong phân khúc tầm trung rất đáng chú ý với nhiều tính năng và smartphone cũng chính là bản nâng cấp của OPPO A73 ra mắt trước đó.', 'oppoa74.jpg', 10, 100, 3, 'AMOLED6.43\"Full HD+', 'Android 11', '16 MP', 'Chính 48 MP & Phụ 2 MP, 2 MP', 'Snapdragon 662', '8 GB', 'Xanh Dương'),
(50, 'Điện thoại OPPO Find X3 Pro 5G', 26990000, 0, 'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android.', 'oppofind.jpg', 10, 100, 3, 'AMOLED6.7\"Quad HD+ (2K+)', 'Android 11', '32 MP', 'Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP', 'Snapdragon 888', '8 GB', 'Xanh Đen'),
(51, 'Điện thoại iPhone 13 Pro Max', 33990000, 0, 'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 'iphone13.jpg', 50, 32, 1, 'OLED6.7\"Super Retina XDR', 'iOS 15', '\r\n12 MP', '3 camera 12 MP', 'Apple A15 Bionic', '6 GB', 'Xanh Dương'),
(52, 'Điện thoại iPhone 12 Pro Max', 42490000, 39990000, 'iPhone 12 Pro Max 512GB - đẳng cấp từ tên gọi đến từng chi tiết. Ngay từ khi chỉ là tin đồn thì chiếc smartphone này đã làm đứng ngồi không yên bao “fan cứng” nhà Apple, với những nâng cấp vô cùng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt mà chưa một chiếc iPhone tiền nhiệm nào có được.', 'iphone12.jpg', 35, 10, 1, 'OLED6.7\"Super Retina XDR', 'iOS 14', '\r\n12 MP', '3 camera 12 MP', 'Apple A14 Bionic', '6 GB', 'Xanh Dương'),
(53, 'Điện thoại iPhone 11', 20490000, 19490000, 'iPhone 11 256GB là chiếc máy có mức giá khá dễ chịu đến từ Apple. Nếu bạn không muốn bỏ ra số tiền quá lớn mà vẫn có được những nâng cấp về camera hay một hiệu năng đầy mạnh mẽ thì đây thực sự là một lựa chọn hàng đầu dành cho bạn', 'iphone11.jpg', 35, 10, 1, 'IPS LCD6.1\"Liquid Retina', 'iOS 14', '\r\n12 MP', '2 camera 12 MP', 'Apple A14 Bionic', '4 GB', 'Đen'),
(54, 'Điện thoại iPhone X 64GB', 14490000, 13490000, 'iPhone X 64 GB là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.', 'iphonex.jpg', 35, 10, 1, 'OLED5.8\"Super Retina', 'iOS 12', '\r\n7 MP', '2 camera 12 MP', 'Apple A11 Bionic', '3 GB', 'Bạc'),
(55, 'Điện thoại iPhone 8', 9590000, 8490000, 'iPhone 8 64GB nổi bật với điểm nhấn mặt lưng kính và mặt trước giữ nguyên thiết kế như iPhone 7, cùng với đó là hàng loạt công nghệ đáng mong đợi như sạc nhanh, không dây hay hỗ trợ thực tế ảo AR.', 'iphone8.jpg', 35, 10, 1, 'LED-backlit IPS LCD4.7\"Retina HD', 'iOS 14', '\r\n7 MP', '2 camera 12 MP', 'Apple A11 Bionic', '3 GB', 'Đỏ'),
(56, 'Điện thoại iPhone 7', 8590000, 7490000, 'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.', 'iphone7.jpg', 25, 6, 1, 'LED-backlit IPS LCD4.7\"Retina HD', 'iOS 14', '\r\n7 MP', '2 camera 12 MP', 'Apple A10 Fusion', '3 GB', 'Vàng Hồng'),
(57, 'Điện thoại Samsung Galaxy Z Fold3 5G 512GB', 44990000, 0, 'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 'samsungfold.jpg', 12, 80, 2, 'Dynamic AMOLED 2XChính 7.6\" & Phụ 6.2\"Full HD+', 'Android 11', '10 MP & 4 MP', '3 camera 12 MP', 'Snapdragon 888', '12 GB', 'Xanh Lá'),
(58, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB ', 26990000, 0, 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsungzflip.jpg', 12, 80, 2, 'Dynamic AMOLED 2XChính 6.7\" & Phụ 1.9\"Full HD+', 'Android 11', '10 MP', '2 camera 12 MP', 'Snapdragon 888', '8 GB', 'Tím'),
(59, 'Điện thoại Samsung Galaxy A22 ', 5890000, 0, 'Samsung chào đón mùa hè 2021 bằng sự ra mắt của bộ đôi Galaxy A22 và Galaxy A22 5G với nhiều thông số ấn tượng. Trong đó, Galaxy A22 sở hữu viên pin đầy năng suất, hiệu năng gaming mạnh mẽ và màn hình lớn có khả năng hiển thị tốt.', 'samsunga22.jpg', 12, 80, 2, 'Super AMOLED6.4\"HD+', 'Android 11', '10 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', 'MediaTek MT6769V', '6 GB', 'Đen'),
(60, 'Điện thoại Samsung Galaxy A72', 11490000, 10490000, 'Sau sự thành công của Galaxy S21 series, Samsung tiếp tục tấn công phân khúc tầm trung với Galaxy A72 thuộc Galaxy A series, sở hữu nhiều màu sắc trẻ trung, hệ thống camera nhiều tính năng cũng như nâng cấp hiệu năng vô cùng lớn mang đến những trải nghiệm hoàn toàn mới.', 'samsunga72.jpg', 12, 80, 2, 'Super AMOLED6.7\"Full HD+', 'Android 11', '32 MP', 'Chính 64 MP & Phụ 12 MP, 8 MP, 5 MP', 'Snapdragon 720G', '8 GB', 'Xanh Dương'),
(61, 'Điện thoại Samsung Galaxy S21+ 5G 256GB', 28990000, 23990000, 'Đắm chìm trong vẻ đẹp tuyệt tác đến từ Samsung Galaxy S21+ 5G 256 GB, làm chủ cuộc chơi với hiệu năng hàng đầu, cụm camera chuyên nghiệp cùng tốc độ 5G bức phá mọi giới hạn, mẫu điện thoại cho bạn thỏa sức khám phá cuộc sống, thể hiện cá tính theo cách riêng của mình.', 'samsungs21.jpg', 15, 37, 2, 'Dynamic AMOLED 2X6.7\"Full HD+', 'Android 11', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP', 'Exynos 2100', '8 GB', 'Bạc'),
(62, 'Điện thoại Xiaomi Mi 11 Lite', 7990000, 7590000, 'Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang.', 'mi11lite.jpg', 30, 55, 4, 'AMOLED6.55\"Full HD+', 'Android 11', '16 MP', 'Chính 64 MP & Phụ 8 MP, 5 MP', 'Snapdragon 732G', '8 GB', 'Hồng'),
(64, 'Điện thoại Vivo V20 (2021)', 7790000, 0, 'Vivo tung ra chiếc điện thoại Vivo V20 (2021) là phiên bản nâng cấp của Vivo V20 ra mắt trước đó. Chiếc smartphone này được nâng cấp lên bộ xử lý mạnh mẽ hơn mà vẫn giữ được thiết kế siêu mỏng và cụm camera chụp đẹp đáng kinh ngạc.', 'vivov20.jpg', 70, 200, 5, 'AMOLED6.44\"Full HD+', 'Android 11', '44 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'Snapdragon 730', '8 GB', 'Xanh Hồng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_tag`
--

CREATE TABLE `sanpham_tag` (
  `id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeuthich`
--

CREATE TABLE `yeuthich` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `yeuthich`
--

INSERT INTO `yeuthich` (`id`, `id_sanpham`, `id_khachhang`) VALUES
(6, 2, 1),
(7, 9, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idsp` (`id_sanpham`),
  ADD KEY `fk_idkh` (`id_khachhang`);

--
-- Chỉ mục cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_id` (`sanpham_id`),
  ADD KEY `hoadon_id` (`hoadon_id`);

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinh_chitiet`
--
ALTER TABLE `hinh_chitiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khachhang_id` (`khachhang_id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `phanloai`
--
ALTER TABLE `phanloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phanloai_id` (`phanloai_id`);

--
-- Chỉ mục cho bảng `sanpham_tag`
--
ALTER TABLE `sanpham_tag`
  ADD KEY `fk_sanpham_id` (`sanpham_id`),
  ADD KEY `fk_tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_id_sp` (`id_sanpham`),
  ADD KEY `pk_id_kh` (`id_khachhang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hinh_chitiet`
--
ALTER TABLE `hinh_chitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `phanloai`
--
ALTER TABLE `phanloai`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_idkh` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `fk_idsp` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD CONSTRAINT `cthoadon_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `cthoadon_ibfk_2` FOREIGN KEY (`hoadon_id`) REFERENCES `hoadon` (`id`);

--
-- Các ràng buộc cho bảng `hinh_chitiet`
--
ALTER TABLE `hinh_chitiet`
  ADD CONSTRAINT `fk_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`);

--
-- Các ràng buộc cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `fk_id_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`phanloai_id`) REFERENCES `phanloai` (`id`);

--
-- Các ràng buộc cho bảng `sanpham_tag`
--
ALTER TABLE `sanpham_tag`
  ADD CONSTRAINT `fk_sanpham_id` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);

--
-- Các ràng buộc cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD CONSTRAINT `pk_id_kh` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `pk_id_sp` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
