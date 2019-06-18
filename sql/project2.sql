-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2019 lúc 06:04 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangdiem`
--

CREATE TABLE `bangdiem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maSV` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maLop` int(10) UNSIGNED NOT NULL,
  `diemQT` double(8,2) NOT NULL,
  `diemCK` double(8,2) NOT NULL,
  `diemChu` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bangdiem`
--

INSERT INTO `bangdiem` (`id`, `maSV`, `maLop`, `diemQT`, `diemCK`, `diemChu`, `create_at`) VALUES
(1, '20132452', 1, 10.00, 8.50, 'A', '2019-06-18 14:39:19'),
(2, '20132452', 6, 7.00, 10.00, 'A', '2019-06-18 14:39:27'),
(3, '20132452', 8, 8.50, 9.00, 'A', '2019-06-18 14:39:34'),
(4, '20132452', 4, 5.00, 5.00, 'D+', '2019-06-18 14:40:43'),
(5, '20142154', 27, 8.00, 8.00, 'B+', '2019-06-18 14:50:42'),
(6, '20142154', 20, 9.00, 9.00, 'A', '2019-06-18 14:56:49'),
(7, '20151331', 34, 8.00, 8.00, 'B+', '2019-06-18 14:57:55'),
(8, '20151950', 40, 9.00, 9.00, 'A', '2019-06-18 15:06:41'),
(9, '20151970', 26, 7.00, 7.00, 'B', '2019-06-18 14:59:15'),
(10, '20152136', 28, 9.00, 9.00, 'A', '2019-06-18 14:59:46'),
(11, '20162541', 27, 7.00, 7.00, 'B', '2019-06-18 15:00:30'),
(12, '20171398', 29, 6.00, 6.00, 'C', '2019-06-18 15:01:13'),
(13, '20182542', 14, 5.00, 5.00, 'D+', '2019-06-18 15:02:29'),
(14, '20142154', 18, 9.00, 9.00, 'A', '2019-06-18 15:03:21'),
(15, '20151950', 16, 7.00, 7.00, 'B', '2019-06-18 15:03:55'),
(16, '20151950', 14, 7.00, 7.00, 'B', '2019-06-18 15:07:48'),
(17, '20151970', 19, 6.00, 6.00, 'C', '2019-06-18 15:08:16'),
(18, '20151950', 22, 7.00, 7.00, 'B', '2019-06-18 15:09:23'),
(19, '20151950', 21, 7.00, 7.00, 'B', '2019-06-18 15:11:59'),
(20, '20151950', 38, 6.00, 6.00, 'C', '2019-06-18 15:12:25'),
(21, '20151950', 34, 7.00, 7.00, 'B', '2019-06-18 15:12:58'),
(22, '20151950', 28, 9.00, 9.00, 'A', '2019-06-18 15:13:29'),
(23, '20151950', 19, 5.00, 5.00, 'D+', '2019-06-18 15:14:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdaotao`
--

CREATE TABLE `ctdaotao` (
  `maCT` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenCT` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdaotao`
--

INSERT INTO `ctdaotao` (`maCT`, `tenCT`, `create_at`) VALUES
('cn', 'Cử nhân', '2019-05-12 15:12:01'),
('cttt', 'Chương trình tiên tiến', '2019-05-12 15:12:01'),
('ks', 'Kỹ sư', '2019-05-12 15:12:01'),
('ksclc', 'Kỹ sư chất lượng cao', '2019-05-12 15:12:01'),
('kstn', 'Kỹ sư tài năng', '2019-05-12 15:12:01'),
('sie', 'Quốc tế', '2019-05-12 15:12:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdaotao_hocphan`
--

CREATE TABLE `ctdaotao_hocphan` (
  `maCT` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maHocPhan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdaotao_hocphan`
--

INSERT INTO `ctdaotao_hocphan` (`maCT`, `maHocPhan`, `create_at`) VALUES
('cn', 'MI1010', '2019-06-18 13:08:20'),
('cttt', 'MI1010', '2019-06-18 13:13:10'),
('ks', 'MI1010', '2019-06-18 13:13:33'),
('ksclc', 'MI1017', '2019-06-18 13:14:02'),
('kstn', 'MI1017', '2019-06-18 13:14:14'),
('sie', 'MI1010', '2019-06-18 13:14:21'),
('kstn', 'BF5560', '2019-06-18 13:15:58'),
('ks', 'BF5560', '2019-06-18 13:16:09'),
('cn', 'BF5560', '2019-06-18 13:16:15'),
('ksclc', 'BF5560', '2019-06-18 13:16:25'),
('cn', 'EE4609', '2019-06-18 13:21:41'),
('ksclc', 'EE4609', '2019-06-18 13:22:40'),
('ks', 'ET3181', '2019-06-18 13:23:57'),
('sie', 'ET3181', '2019-06-18 13:24:04'),
('ks', 'EX5114', '2019-06-18 13:24:30'),
('kstn', 'EX5114', '2019-06-18 13:24:42'),
('ks', 'EX5911', '2019-06-18 13:25:12'),
('ksclc', 'EX5911', '2019-06-18 13:25:18'),
('cn', 'FL1010', '2019-06-18 13:25:29'),
('cttt', 'FL1010', '2019-06-18 13:25:34'),
('ks', 'FL1010', '2019-06-18 13:25:40'),
('ks', 'FL1010', '2019-06-18 13:25:51'),
('ksclc', 'FL1010', '2019-06-18 13:25:58'),
('kstn', 'FL1010', '2019-06-18 13:26:06'),
('sie', 'FL1010', '2019-06-18 13:26:12'),
('cn', 'FL1020', '2019-06-18 13:26:29'),
('cttt', 'FL1020', '2019-06-18 13:26:35'),
('ks', 'FL1020', '2019-06-18 13:26:40'),
('ksclc', 'FL1020', '2019-06-18 13:26:47'),
('kstn', 'FL1020', '2019-06-18 13:26:53'),
('kstn', 'FL1020', '2019-06-18 13:27:00'),
('sie', 'FL1020', '2019-06-18 13:27:05'),
('ks', 'IT1010', '2019-06-18 13:27:20'),
('cttt', 'IT1010', '2019-06-18 13:27:27'),
('ksclc', 'IT1010', '2019-06-18 13:27:37'),
('ks', 'IT1010', '2019-06-18 13:27:44'),
('kstn', 'IT1010', '2019-06-18 13:27:50'),
('sie', 'IT1010', '2019-06-18 13:27:56'),
('cn', 'IT1010', '2019-06-18 13:28:01'),
('ksclc', 'IT3120', '2019-06-18 13:28:16'),
('kstn', 'IT3120', '2019-06-18 13:28:31'),
('ks', 'IT3120', '2019-06-18 13:28:52'),
('ksclc', 'IT4434', '2019-06-18 13:29:02'),
('ks', 'IT4434', '2019-06-18 13:29:11'),
('cttt', 'IT4434', '2019-06-18 13:29:20'),
('kstn', 'IT4434', '2019-06-18 13:29:28'),
('cn', 'SSH1010', '2019-06-18 13:29:41'),
('cttt', 'SSH1010', '2019-06-18 13:29:45'),
('ks', 'SSH1010', '2019-06-18 13:29:50'),
('kstn', 'SSH1010', '2019-06-18 13:29:58'),
('ksclc', 'SSH1010', '2019-06-18 13:30:03'),
('sie', 'SSH1010', '2019-06-18 13:30:08'),
('cn', 'SSH1030', '2019-06-18 13:30:16'),
('cttt', 'SSH1030', '2019-06-18 13:30:21'),
('ks', 'SSH1030', '2019-06-18 13:30:28'),
('ksclc', 'SSH1030', '2019-06-18 13:30:34'),
('ksclc', 'SSH1030', '2019-06-18 13:30:44'),
('kstn', 'SSH1030', '2019-06-18 13:30:49'),
('sie', 'SSH1030', '2019-06-18 13:30:57'),
('kstn', 'SSH1030', '2019-06-18 13:31:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dotdangky`
--

CREATE TABLE `dotdangky` (
  `maDot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maHocKy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayBatDau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayKetThuc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dotdangky`
--

INSERT INTO `dotdangky` (`maDot`, `maHocKy`, `ngayBatDau`, `ngayKetThuc`, `create_at`) VALUES
('20131', '20131', '25/7/2013', '26/8/2013', '2019-06-18 11:58:26'),
('20132', '20132', '26/12/2013', '27/1/2014', '2019-06-18 11:58:26'),
('20141', '20141', '25/7/2014', '26/8/2014', '2019-06-18 11:58:26'),
('20142', '20142', '26/12/2014', '27/1/2015', '2019-06-18 11:58:26'),
('20151', '20151', '25/7/2015', '26/8/2015', '2019-06-18 11:58:26'),
('20152', '20152', '26/12/2015', '27/1/2016', '2019-06-18 11:58:26'),
('20161', '20161', '25/7/2016', '26/8/2016', '2019-06-18 11:58:26'),
('20162', '20162', '26/12/2016', '27/1/2017', '2019-06-18 11:58:26'),
('20171', '20171', '25/7/2017', '26/8/2017', '2019-06-18 11:58:26'),
('20172', '20172', '26/12/2017', '27/1/2018', '2019-06-18 11:58:26'),
('20181', '20181', '25/7/2018', '26/8/2018', '2019-06-18 11:58:26'),
('20182', '20182', '26/12/2018', '27/1/2019', '2019-06-18 11:58:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocky`
--

CREATE TABLE `hocky` (
  `maHocKy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayBatDau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayKetThuc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocky`
--

INSERT INTO `hocky` (`maHocKy`, `ngayBatDau`, `ngayKetThuc`, `create_at`) VALUES
('20131', '20/8/2013', '14/1/2014', '2019-06-18 11:51:23'),
('20132', '21/1/2014', '30/5/2014', '2019-06-18 11:51:13'),
('20141', '20/8/2014', '14/1/2015', '2019-06-18 11:51:04'),
('20142', '21/1/2015', '30/5/2015', '2019-06-18 11:50:34'),
('20151', '20/8/2015', '14/1/2016', '2019-06-18 11:50:14'),
('20152', '21/1/2016', '30/5/2016', '2019-06-18 11:49:56'),
('20161', '20/8/2016', '14/1/2017', '2019-05-12 14:04:32'),
('20162', '21/1/2017', '30/5/2017', '2019-05-12 14:04:32'),
('20171', '20/8/2017', '14/1/2018', '2019-06-18 11:49:21'),
('20172', '21/1/2018', '30/5/2018', '2019-06-18 11:49:10'),
('20181', '20/8/2018', '14/1/2019', '2019-06-18 11:48:38'),
('20182', '21/1/2019', '30/5/2019', '2019-06-18 11:48:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocphan`
--

CREATE TABLE `hocphan` (
  `maHocPhan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenHocPhan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maVien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soTC` tinyint(11) NOT NULL,
  `trongSo` float NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocphan`
--

INSERT INTO `hocphan` (`maHocPhan`, `tenHocPhan`, `maVien`, `soTC`, `trongSo`, `create_at`) VALUES
('BF5560', 'Cơ cấu chấp hành tự động thủy – khí', 'chemeng', 3, 0.7, '2019-06-18 13:04:23'),
('EE4609', 'Hệ thống điều khiển và giám sát', 'see', 3, 0.7, '2019-05-12 14:42:40'),
('ET3181', 'Thông tin vô tuyến', 'set', 4, 0.7, '2019-06-18 12:58:07'),
('EX5114', 'Công nghệ hóa học trong sản xuất sản phẩm da giầy', 'chemeng', 2, 0.7, '2019-06-18 13:00:43'),
('EX5911', 'Đồ án tốt nghiệp kỹ sư', 'icea', 9, 0.5, '2019-06-18 13:06:59'),
('FL1010', 'Tiếng Anh I', 'sofl', 3, 0.7, '2019-05-12 14:42:40'),
('FL1020', 'Tiếng Anh II', 'sofl', 3, 0.7, '2019-05-12 14:42:40'),
('IT1010', 'Tin học đại cương', 'soict', 3, 0.6, '2019-05-12 14:42:40'),
('IT3120', 'Phân tích và thiết kế HTTT', 'soict', 3, 0.7, '2019-06-18 12:59:32'),
('IT4434', 'Đồ án các công nghệ xây dựng hệ thống thông tin', 'soict', 3, 0.7, '2019-06-18 13:02:08'),
('MI1010', 'Giải tích I', 'sami', 3, 0.7, '2019-05-12 14:42:40'),
('MI1017', 'Toán đại cương I', 'sami', 3, 0.7, '2019-05-12 14:42:40'),
('SSH1010', 'Triết học Mác-Lênin', 'dpt', 4, 0.7, '2019-06-18 12:57:09'),
('SSH1030', 'Lịch sử Đảng CSVN', 'dpt', 2, 0.7, '2019-05-12 14:42:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichhoc`
--

CREATE TABLE `lichhoc` (
  `tietDau` int(11) NOT NULL,
  `tietCuoi` int(11) NOT NULL,
  `maPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maLop` int(10) UNSIGNED NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `thu` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichhoc`
--

INSERT INTO `lichhoc` (`tietDau`, `tietCuoi`, `maPhong`, `maLop`, `create_at`, `thu`) VALUES
(1, 3, 'B1-206', 24, '2019-06-18 14:20:26', '3'),
(4, 6, 'B1-902', 26, '2019-06-18 14:20:55', '2'),
(1, 6, 'D3-101', 20, '2019-06-18 14:21:23', '2'),
(7, 9, 'D3-201', 27, '2019-06-18 14:21:50', '3'),
(10, 12, 'D3-201', 28, '2019-06-18 14:22:16', '2'),
(1, 3, 'D3-205', 29, '2019-06-18 14:24:24', '2'),
(7, 9, 'D4-101', 29, '2019-06-18 14:25:06', '3'),
(1, 4, 'D5-302', 31, '2019-06-18 14:26:15', '4'),
(7, 10, 'D6-101', 32, '2019-06-18 14:26:52', '5'),
(2, 5, 'D6-205', 33, '2019-06-18 14:27:37', '6'),
(3, 6, 'D9-106', 34, '2019-06-18 14:28:08', '5'),
(1, 5, 'T-201', 34, '2019-06-18 14:28:40', '2'),
(7, 12, 'TC-201', 36, '2019-06-18 14:29:12', '6'),
(3, 6, 'B1-206', 36, '2019-06-18 14:29:52', '4'),
(7, 10, 'B1-902', 37, '2019-06-18 14:30:22', '5'),
(4, 6, 'D3-101', 25, '2019-06-18 14:30:42', '6'),
(7, 9, 'D3-201', 38, '2019-06-18 14:31:03', '5'),
(1, 5, 'B1-206', 39, '2019-06-18 14:31:32', '5'),
(7, 10, 'D3-201', 1, '2019-06-18 14:43:09', '2'),
(3, 6, 'D5-302', 2, '2019-06-18 14:43:28', '3'),
(7, 10, 'D6-205', 3, '2019-06-18 14:43:53', '5'),
(7, 10, 'D6-101', 4, '2019-06-18 14:44:13', '4'),
(1, 6, 'D3-205', 5, '2019-06-18 14:44:28', '6'),
(4, 6, 'D6-101', 24, '2019-06-18 14:44:51', '4'),
(7, 10, 'TC-201', 23, '2019-06-18 14:45:17', '6'),
(1, 5, 'TC-201', 23, '2019-06-18 14:45:44', '3'),
(7, 9, 'D3-101', 22, '2019-06-18 14:46:00', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `maLop` int(10) UNSIGNED NOT NULL,
  `soLuong` tinyint(4) UNSIGNED NOT NULL,
  `maHocPhan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maHocKy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`maLop`, `soLuong`, `maHocPhan`, `maHocKy`, `create_at`) VALUES
(1, 30, 'MI1010', '20131', '2019-05-12 15:05:16'),
(2, 30, 'MI1017', '20131', '2019-06-18 13:32:45'),
(3, 30, 'SSH1010', '20131', '2019-06-18 13:32:54'),
(4, 30, 'SSH1030', '20131', '2019-06-18 13:33:02'),
(5, 30, 'IT1010', '20131', '2019-06-18 13:33:16'),
(6, 30, 'MI1010', '20141', '2019-05-12 15:05:16'),
(7, 30, 'MI1017', '20141', '2019-06-18 13:33:59'),
(8, 30, 'SSH1010', '20141', '2019-06-18 13:34:10'),
(9, 30, 'SSH1030', '20141', '2019-06-18 13:34:23'),
(10, 30, 'IT1010', '20141', '2019-06-18 13:34:35'),
(11, 30, 'MI1010', '20151', '2019-05-12 15:05:16'),
(12, 30, 'IT4434', '20151', '2019-06-18 13:35:05'),
(13, 30, 'MI1017', '20151', '2019-06-18 13:35:18'),
(14, 30, 'FL1010', '20151', '2019-06-18 13:35:29'),
(15, 30, 'MI1010', '20161', '2019-05-12 15:05:16'),
(16, 30, 'MI1017', '20171', '2019-06-18 13:35:42'),
(17, 30, 'MI1010', '20181', '2019-05-12 15:05:16'),
(18, 40, 'EX5911', '20131', '2019-06-18 13:35:56'),
(19, 40, 'FL1020', '20141', '2019-06-18 13:36:05'),
(20, 40, 'EE4609', '20151', '2019-06-18 13:36:22'),
(21, 40, 'SSH1030', '20161', '2019-06-18 13:36:39'),
(22, 40, 'IT1010', '20171', '2019-05-12 15:05:16'),
(23, 40, 'IT1010', '20181', '2019-05-12 15:05:16'),
(24, 40, 'BF5560', '20181', '2019-06-18 13:37:34'),
(25, 30, 'MI1017', '20181', '2019-06-18 13:37:59'),
(26, 20, 'BF5560', '20182', '2019-06-18 13:38:56'),
(27, 50, 'EE4609', '20182', '2019-06-18 13:39:19'),
(28, 40, 'ET3181', '20182', '2019-06-18 13:39:29'),
(29, 20, 'EX5114', '20182', '2019-06-18 13:39:41'),
(30, 30, 'EX5911', '20182', '2019-06-18 13:39:54'),
(31, 30, 'FL1010', '20182', '2019-06-18 13:40:14'),
(32, 60, 'FL1020', '20182', '2019-06-18 13:41:53'),
(33, 50, 'IT1010', '20182', '2019-06-18 13:42:07'),
(34, 50, 'IT3120', '20182', '2019-06-18 13:42:18'),
(35, 40, 'IT4434', '20182', '2019-06-18 13:42:32'),
(36, 50, 'MI1010', '20182', '2019-06-18 13:42:43'),
(37, 30, 'MI1017', '20182', '2019-06-18 13:42:52'),
(38, 50, 'SSH1010', '20182', '2019-06-18 13:43:00'),
(39, 50, 'SSH1030', '20182', '2019-06-18 13:43:08'),
(40, 50, 'IT4434', '20182', '2019-06-18 13:43:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lopsv`
--

CREATE TABLE `lopsv` (
  `maLop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenLop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soLuong` tinyint(3) UNSIGNED NOT NULL,
  `khoaHoc` tinyint(3) UNSIGNED NOT NULL,
  `maCT` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maVien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lopsv`
--

INSERT INTO `lopsv` (`maLop`, `tenLop`, `soLuong`, `khoaHoc`, `maCT`, `maVien`, `create_at`) VALUES
('cn-dien01', 'CN Điện 1', 60, 61, 'cn', 'see', '2019-06-18 12:36:06'),
('cttt-toantin', 'CTTT Toán tin', 40, 63, 'cttt', 'sami', '2019-06-18 12:34:39'),
('ks-tdh', 'KS Tự động hóa', 35, 59, 'ks', 'icea', '2019-06-18 12:35:54'),
('ksclc-ckhk', 'KSCLC Cơ khí hàng không', 14, 60, 'ksclc', 'ste', '2019-05-12 15:18:10'),
('ksclc-httt&tt', 'KSCLC Hệ thống thông tin', 19, 60, 'ksclc', 'soict', '2019-05-12 15:18:10'),
('ksclc-thcn', 'KSCLC Tin học công nghiệp', 21, 60, 'ksclc', 'see', '2019-05-12 15:18:10'),
('kstn-hoa', 'KSTN Hóa', 30, 62, 'kstn', 'chemeng', '2019-06-18 12:33:23'),
('sie-dtvt', 'SIE Điện tử viễn thông', 60, 60, 'sie', 'set', '2019-06-18 12:35:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_04_23_132848_table_taikhoan', 1),
(12, '2019_04_25_134504_table_thongtincanhan', 2),
(13, '2019_04_25_134529_table_thongtinhoctap', 2),
(14, '2019_04_25_134703_table_hocky', 2),
(15, '2019_04_25_134744_table_ctdaotao', 2),
(16, '2019_04_25_134755_table_vien', 2),
(17, '2019_04_25_134818_table_bangdiemsv', 2),
(18, '2019_04_25_134831_table_bangdiemlop', 2),
(19, '2019_04_25_141952_table_phonghoc', 2),
(20, '2019_04_25_134559_table_lopsv', 3),
(22, '2019_04_25_134608_table_lophoc', 5),
(23, '2019_04_25_134717_table_dotdangky', 6),
(24, '2019_04_25_142418_table_ctdaotao_hocphan', 7),
(25, '2019_04_25_134730_table_lichhoc', 8),
(26, '2019_04_25_155958_table_lopsv', 9),
(27, '2019_04_25_134350_table_sinhvien', 10),
(28, '2019_05_12_140736_bangdiem', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phonghoc`
--

CREATE TABLE `phonghoc` (
  `maPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toaNha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soBan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phonghoc`
--

INSERT INTO `phonghoc` (`maPhong`, `toaNha`, `soPhong`, `soBan`, `create_at`) VALUES
('B1-206', 'B1', '206', '50', '2019-06-18 11:44:55'),
('B1-902', 'B1', '902', '10', '2019-06-18 11:44:55'),
('D3-101', 'D3', '101', '30', '2019-06-18 11:43:04'),
('D3-201', 'D3', '201', '30', '2019-06-18 11:43:04'),
('D3-205', 'D3', '205', '30', '2019-06-18 11:43:04'),
('D4-101', 'D4', '101', '15', '2019-06-18 11:42:42'),
('D5-302', 'D5', '302', '25', '2019-06-18 11:43:26'),
('D6-101', 'D6', '101', '20', '2019-06-18 11:41:23'),
('D6-205', 'D6', '205', '20', '2019-06-18 11:41:23'),
('D9-106', 'D9', '106', '35', '2019-06-18 11:43:52'),
('T-201', 'T', '201', '40', '2019-06-18 11:44:33'),
('TC-201', 'TC', '201', '20', '2019-06-18 11:44:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `maSV` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maLop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`maSV`, `username`, `maLop`, `create_at`) VALUES
('20132452', 'trangbk', 'sie-dtvt', '2019-06-18 14:53:27'),
('20142154', 'haht235', 'ks-tdh', '2019-06-18 12:37:55'),
('20151331', 'hieu', 'ksclc-thcn', '2019-05-12 15:41:28'),
('20151950', 'khang', 'ksclc-httt&tt', '2019-06-18 12:26:46'),
('20151970', 'lanhkhanh118', 'ksclc-ckhk', '2019-06-18 12:28:07'),
('20152136', 'lamnv', 'ksclc-httt&tt', '2019-06-18 12:27:42'),
('20162541', 'lythinguyen', 'cn-dien01', '2019-06-18 12:41:53'),
('20171398', 'chienngo', 'kstn-hoa', '2019-06-18 12:42:59'),
('20182542', 'toan23', 'cttt-toantin', '2019-06-18 12:44:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `hoTen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucVu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`hoTen`, `gioiTinh`, `username`, `password`, `email`, `chucVu`, `sdt`, `remember_token`, `create_at`) VALUES
('Trần Văn Sếp', '0', 'admin', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'admin1@gmail.com', '2', '0373445086', NULL, '2019-06-18 15:30:26'),
('Trần Lan Chi', '1', 'admin2', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'admin2@gmail.com', '2', '0859445245', NULL, '2019-06-18 15:30:33'),
('Nguyễn Thị Hoài', '1', 'canbo', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'canbo1@gmail.com', '1', '0359445365', NULL, '2019-06-18 15:30:40'),
('Lý Ngọc Lâm', '0', 'canbo2', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'canbo2@gmail.com', '1', '0789445354', NULL, '2019-06-18 15:30:50'),
('Ngô Văn Chiến', '0', 'chienngo', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'chien123@gmail.com', '0', '0368594875', NULL, '2019-06-18 15:31:00'),
('Hoàng Thị Hà', '1', 'haht235', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', '20142154@student.hust.edu.vn', '0', '0358445525', NULL, '2019-06-18 15:31:15'),
('Nguyễn Chí Hiếu', '0', 'hieu', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'hieu@gmail.com', '0', '0373445088', NULL, '2019-06-18 15:31:23'),
('Nguyễn An Khang', '0', 'khang', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'nguyenankhang1505@gmail.com', '0', '0985875654', NULL, '2019-06-18 14:14:42'),
('Nguyễn Văn Lâm', '0', 'lamnv', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', '20152136@student.hust.edu.vn', '0', '0373445254', NULL, '2019-06-18 15:31:38'),
('Lành Văn Khánh', '0', 'lanhkhanh118', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'lanhkhanh118@gmail.com', '0', '0373445831', NULL, '2019-06-18 15:29:19'),
('Nguyễn Thị Lý', '1', 'lythinguyen', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'lynguyen@gmail.com', '0', '0853448598', NULL, '2019-06-18 15:31:47'),
('Nguyễn Văn Toàn', '0', 'toan23', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'toan23@gmail.com', '0', '0373445548', NULL, '2019-06-18 15:31:55'),
('Tô Thị Trang', '1', 'trangbk', '$2y$10$HabxW.M3ncE73V2nWUwRre16P1BiaUuMuRYafjMqfYQoES11dSAWi', 'trangtt@gmail.com', '0', '0957448658', NULL, '2019-06-18 15:32:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtincanhan`
--

CREATE TABLE `thongtincanhan` (
  `maSV` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danToc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tonGiao` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truongTHPT` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namTN` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soCMND` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diaChi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hoKhau` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtincanhan`
--

INSERT INTO `thongtincanhan` (`maSV`, `danToc`, `tonGiao`, `truongTHPT`, `namTN`, `soCMND`, `diaChi`, `hoKhau`, `create_at`) VALUES
('20132452', 'Nùng', 'Không', 'THPT chuyên Chu Văn An', '2013', '015242535', '36 Lê Thanh Nghị, Hà Nội', 'Thành Phố Lạng Sơn, Lạng Sơn', '2019-06-18 15:53:49'),
('20142154', 'Kinh', 'Phật giáo', 'THPT Hòa Bình', '2014', '032542642', 'Hai Bà Trưng, Hà Nội', 'Lương Sơn, Hòa Bình', '2019-06-18 15:46:03'),
('20151331', 'Kinh', 'Không', 'THPT chuyên Hà Nội', '2015', '024587454', 'Hà Nội', 'Hoàng Mai, Hà Nội', '2019-06-18 15:38:03'),
('20151950', 'Kinh', 'Không', 'THPT chuyên Phan Bội Châu', '2015', '035825426', '15, ngõ 1, Tạ Quang Bửu, Hà Nội', 'Thịnh Sơn, Đô Lương, Nghệ An', '2019-06-18 15:36:49'),
('20151970', 'Tày', 'Không', 'THPT DTNT tỉnh Lạng Sơn', '2015', '035896452', 'KTX Bách Khoa', 'Cao Lộc, Lạng Sơn', '2019-06-18 15:47:04'),
('20152136', 'Kinh', 'Không', 'THPT chuyên Hải Dương', '2015', '012456525', 'Hoàng Mai, Hà Nội', 'Thanh Hà, Hải Dương', '2019-06-18 15:48:51'),
('20162541', 'Mường', 'Thiên Chúa giáo', 'THPT Thanh Hóa', '2016', '036586545', 'Đống Đa, Hà Nội', 'Thạch Thành, Thanh Hóa', '2019-06-18 15:50:25'),
('20171398', 'Kinh', 'Không', 'THPT chuyên Thái Bình', '2017', '036985572', 'Hà Nội', 'Đông Hưng, Thái Bình', '2019-06-18 15:52:10'),
('20182542', 'Tày', 'Không', 'THPT chuyên Bắc Giang', '2018', '068575885', 'Hoàn Kiếm, Hà Nội', 'Lục Ngạn, Bắc Giang', '2019-06-18 15:53:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinhoctap`
--

CREATE TABLE `thongtinhoctap` (
  `maSV` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soTCTL` tinyint(191) UNSIGNED DEFAULT NULL,
  `diemTB` float DEFAULT NULL,
  `trinhDo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soTCNo` tinyint(191) UNSIGNED DEFAULT NULL,
  `soTCToiDa` tinyint(3) UNSIGNED DEFAULT NULL,
  `mucCC` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lyDoCC` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinhoctap`
--

INSERT INTO `thongtinhoctap` (`maSV`, `soTCTL`, `diemTB`, `trinhDo`, `soTCNo`, `soTCToiDa`, `mucCC`, `lyDoCC`, `create_at`) VALUES
('20132452', 165, 2.8, '6', 2, 24, '0', NULL, '2019-06-18 15:56:40'),
('20142154', 143, 2.4, '5', 16, 24, '2', 'Nợ 16 tín chỉ', '2019-06-18 15:57:39'),
('20151331', 150, 3.3, '5', 0, 36, '0', NULL, '2019-06-18 15:55:06'),
('20151950', 155, 3.2, '5', 0, 36, '0', NULL, '2019-06-18 15:55:41'),
('20151970', 153, 2.5, '5', 2, 36, '0', NULL, '2019-06-18 15:58:25'),
('20152136', 155, 3.7, '5', 0, 36, '0', NULL, '2019-06-18 15:58:53'),
('20162541', 103, 2.7, '3', 0, 24, '1', 'Chưa đóng học phí', '2019-06-18 16:01:09'),
('20171398', 80, 2.1, '2', 6, 24, '0', NULL, '2019-06-18 16:00:26'),
('20182542', 35, 1.4, '1', 6, 24, '0', NULL, '2019-06-18 16:00:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vien`
--

CREATE TABLE `vien` (
  `maVien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenVien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vien`
--

INSERT INTO `vien` (`maVien`, `tenVien`, `create_at`) VALUES
('chemeng', 'Kỹ thuật hoá học', '2019-05-12 13:58:46'),
('dpt', 'Lý luận chính trị', '2019-05-12 13:53:34'),
('icea', 'Tự động hoá', '2019-05-12 13:58:46'),
('sami', 'Toán', '2019-05-12 13:53:34'),
('see', 'Điện', '2019-05-12 13:53:13'),
('sep', 'Vật lý kỹ thuật', '2019-05-12 13:58:46'),
('set', 'Điện tử viễn thông', '2019-05-12 13:58:46'),
('sme', 'Cơ khí', '2019-05-12 13:58:46'),
('sofl', 'Ngoại ngữ', '2019-05-12 13:58:46'),
('soict', 'Công nghệ thông tin', '2019-05-12 13:51:52'),
('ste', 'Cơ khí động lực', '2019-05-12 13:58:46');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangdiem`
--
ALTER TABLE `bangdiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bangdiem_masv_foreign` (`maSV`),
  ADD KEY `bangdiem_malop_foreign` (`maLop`);

--
-- Chỉ mục cho bảng `ctdaotao`
--
ALTER TABLE `ctdaotao`
  ADD PRIMARY KEY (`maCT`),
  ADD UNIQUE KEY `ctdaotao_mact_unique` (`maCT`);

--
-- Chỉ mục cho bảng `ctdaotao_hocphan`
--
ALTER TABLE `ctdaotao_hocphan`
  ADD KEY `ctdaotao_hocphan_mact_foreign` (`maCT`),
  ADD KEY `ctdaotao_hocphan_mahocphan_foreign` (`maHocPhan`);

--
-- Chỉ mục cho bảng `dotdangky`
--
ALTER TABLE `dotdangky`
  ADD PRIMARY KEY (`maDot`),
  ADD UNIQUE KEY `dotdangky_madot_unique` (`maDot`),
  ADD KEY `dotdangky_mahocky_foreign` (`maHocKy`);

--
-- Chỉ mục cho bảng `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`maHocKy`),
  ADD UNIQUE KEY `hocky_mahocky_unique` (`maHocKy`);

--
-- Chỉ mục cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`maHocPhan`),
  ADD UNIQUE KEY `hocphan_mahocphan_unique` (`maHocPhan`),
  ADD KEY `hocphan_mavien_foreign` (`maVien`);

--
-- Chỉ mục cho bảng `lichhoc`
--
ALTER TABLE `lichhoc`
  ADD KEY `lichhoc_maphong_foreign` (`maPhong`),
  ADD KEY `lichhoc_malop_foreign` (`maLop`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`maLop`),
  ADD KEY `lophoc_mahocphan_foreign` (`maHocPhan`),
  ADD KEY `lophoc_mahocky_foreign` (`maHocKy`);

--
-- Chỉ mục cho bảng `lopsv`
--
ALTER TABLE `lopsv`
  ADD PRIMARY KEY (`maLop`),
  ADD UNIQUE KEY `lopsv_malop_unique` (`maLop`),
  ADD KEY `lopsv_mact_foreign` (`maCT`),
  ADD KEY `lopsv_mavien_foreign` (`maVien`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phonghoc`
--
ALTER TABLE `phonghoc`
  ADD PRIMARY KEY (`maPhong`),
  ADD UNIQUE KEY `phonghoc_maphong_unique` (`maPhong`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`maSV`),
  ADD UNIQUE KEY `sinhvien_masv_unique` (`maSV`),
  ADD KEY `sinhvien_username_foreign` (`username`),
  ADD KEY `sinhvien_malop_foreign` (`maLop`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `taikhoan_username_unique` (`username`);

--
-- Chỉ mục cho bảng `thongtincanhan`
--
ALTER TABLE `thongtincanhan`
  ADD PRIMARY KEY (`maSV`);

--
-- Chỉ mục cho bảng `thongtinhoctap`
--
ALTER TABLE `thongtinhoctap`
  ADD PRIMARY KEY (`maSV`);

--
-- Chỉ mục cho bảng `vien`
--
ALTER TABLE `vien`
  ADD PRIMARY KEY (`maVien`),
  ADD UNIQUE KEY `vien_mavien_unique` (`maVien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangdiem`
--
ALTER TABLE `bangdiem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  MODIFY `maLop` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bangdiem`
--
ALTER TABLE `bangdiem`
  ADD CONSTRAINT `bangdiem_malop_foreign` FOREIGN KEY (`maLop`) REFERENCES `lophoc` (`maLop`),
  ADD CONSTRAINT `bangdiem_masv_foreign` FOREIGN KEY (`maSV`) REFERENCES `sinhvien` (`maSV`);

--
-- Các ràng buộc cho bảng `ctdaotao_hocphan`
--
ALTER TABLE `ctdaotao_hocphan`
  ADD CONSTRAINT `ctdaotao_hocphan_mact_foreign` FOREIGN KEY (`maCT`) REFERENCES `ctdaotao` (`maCT`),
  ADD CONSTRAINT `ctdaotao_hocphan_mahocphan_foreign` FOREIGN KEY (`maHocPhan`) REFERENCES `hocphan` (`maHocPhan`);

--
-- Các ràng buộc cho bảng `dotdangky`
--
ALTER TABLE `dotdangky`
  ADD CONSTRAINT `dotdangky_mahocky_foreign` FOREIGN KEY (`maHocKy`) REFERENCES `hocky` (`maHocKy`);

--
-- Các ràng buộc cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  ADD CONSTRAINT `hocphan_mavien_foreign` FOREIGN KEY (`maVien`) REFERENCES `vien` (`maVien`);

--
-- Các ràng buộc cho bảng `lichhoc`
--
ALTER TABLE `lichhoc`
  ADD CONSTRAINT `lichhoc_malop_foreign` FOREIGN KEY (`maLop`) REFERENCES `lophoc` (`maLop`),
  ADD CONSTRAINT `lichhoc_maphong_foreign` FOREIGN KEY (`maPhong`) REFERENCES `phonghoc` (`maPhong`);

--
-- Các ràng buộc cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_mahocky_foreign` FOREIGN KEY (`maHocKy`) REFERENCES `hocky` (`maHocKy`),
  ADD CONSTRAINT `lophoc_mahocphan_foreign` FOREIGN KEY (`maHocPhan`) REFERENCES `hocphan` (`maHocPhan`);

--
-- Các ràng buộc cho bảng `lopsv`
--
ALTER TABLE `lopsv`
  ADD CONSTRAINT `lopsv_mact_foreign` FOREIGN KEY (`maCT`) REFERENCES `ctdaotao` (`maCT`),
  ADD CONSTRAINT `lopsv_mavien_foreign` FOREIGN KEY (`maVien`) REFERENCES `vien` (`maVien`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_malop_foreign` FOREIGN KEY (`maLop`) REFERENCES `lopsv` (`maLop`),
  ADD CONSTRAINT `sinhvien_username_foreign` FOREIGN KEY (`username`) REFERENCES `taikhoan` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
