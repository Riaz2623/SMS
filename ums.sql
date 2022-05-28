-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 09:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `enroll_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enroll_timestamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `enroll_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `subject_id`, `student_id`, `enroll_date`, `enroll_timestamp`, `payment_status`, `enroll_status`, `created_at`, `updated_at`) VALUES
(1, 5, 3, '2022-04-13', '1649808000', 'pending', 'pending', '2022-04-13 05:44:41', '2022-04-13 05:44:41'),
(2, 5, 4, '2022-04-13', '1649808000', 'pending', 'pending', '2022-04-13 05:46:16', '2022-04-13 05:46:16'),
(3, 5, 5, '2022-04-13', '1649808000', 'pending', 'pending', '2022-04-13 08:50:30', '2022-04-13 08:50:30'),
(5, 4, 4, '2022-04-13', '1649808000', 'pending', 'pending', '2022-04-13 10:57:05', '2022-04-13 10:57:05'),
(8, 5, 8, '2022-04-14', '1649894400', 'pending', 'pending', '2022-04-14 14:02:25', '2022-04-14 14:02:25'),
(10, 5, 8, '2022-04-14', '1649894400', 'pending', 'pending', '2022-04-14 14:05:27', '2022-04-14 14:05:27'),
(12, 5, 8, '2022-04-14', '1649894400', 'pending', 'pending', '2022-04-14 14:10:07', '2022-04-14 14:10:07'),
(13, 2, 8, '2022-04-14', '1649894400', 'pending', 'pending', '2022-04-14 14:10:18', '2022-04-14 14:10:18'),
(14, 2, 8, '2022-04-14', '1649894400', 'pending', 'pending', '2022-04-14 14:12:00', '2022-04-14 14:12:00'),
(15, 2, 8, '2022-04-14', '1649894400', 'pending', 'pending', '2022-04-14 14:12:11', '2022-04-14 14:12:11'),
(16, 2, 8, '2022-04-14', '1649894400', 'pending', 'pending', '2022-04-14 14:12:16', '2022-04-14 14:12:16'),
(17, 2, 8, '2022-04-14', '1649894400', 'pending', 'pending', '2022-04-14 14:12:16', '2022-04-14 14:12:16'),
(18, 5, 8, '2022-04-14', '1649894400', 'Complete', 'Complete', '2022-04-14 14:14:01', '2022-04-14 23:45:54'),
(19, 5, 1, '2022-04-14', '1649894400', 'Complete', 'Complete', '2022-04-14 14:40:31', '2022-04-14 23:44:02'),
(20, 7, 5, '2022-04-15', '1649980800', 'pending', 'pending', '2022-04-15 00:42:12', '2022-04-15 00:42:12'),
(21, 1, 1, '2022-04-15', '1649980800', 'pending', 'pending', '2022-04-15 14:39:58', '2022-04-15 14:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_28_155814_create_sessions_table', 1),
(8, '2022_03_30_185918_create_teachers_table', 2),
(9, '2022_04_01_104942_create_subjects_table', 3),
(10, '2022_04_12_210212_create_students_table', 4),
(11, '2022_04_12_210359_create_enrolls_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8Iw5dREiLNizxNWUwcasEPhdWTslsYWrXwSnjoXa', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36 Edg/100.0.1185.39', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMmRoS2E3bHN5UE1pMlN0TE9lMlpIMGVDYlQ2VENIVVZiTUliRVR2YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvdW1zL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTA6InN0dWRlbnRfaWQiO2k6MTtzOjEyOiJzdHVkZW50X25hbWUiO3M6MTU6Ik1kIFJpYWp1bCBJc2xhbSI7fQ==', 1650055337),
('Cn8m6ZvlLkPDDh6NGbIgaSIuAmvC5NSnRviZiU4L', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRnN0QWJZQXdZcHV1RkpndHNSbllFZ2ZFU1NDU2VWR2Zma1FrdG9adiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9sb2NhbGhvc3QvdW1zL3B1YmxpYy9tYW5hZ2Utc3R1ZGVudC1jb3Vyc2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGdSVzVJQ2lHM0pZMXZlR1hUSC9LdE9zWlJKVjkwMVlyMmlEWVhEcGI2MDRuMDI0ckJsb0JpIjt9', 1650175055),
('GmjJyHX8pgSd8Y5oYoCodforzzA54o7PqSXgIo2j', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXFEQnFVZTJ4UmIzN2pjb3RqbGpMTmlLYUtNV0ZEcEpkbjV1c29lQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvdW1zL3B1YmxpYy9kZXRhaWwvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1650175195),
('JeiyT827sEu0IjuQI5NW0tFJn5oA7uMJbpRLxroe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVTJVVWdYTDl5UElscjFra2hHdENQdVNNMWJGdlVQeTJTYkh3dVBaTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3QvdW1zL3B1YmxpYy9zdHVkZW50LXByb2ZpbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjEwOiJzdHVkZW50X2lkIjtpOjE7czoxMjoic3R1ZGVudF9uYW1lIjtzOjE1OiJNZCBSaWFqdWwgSXNsYW0iO30=', 1650055509),
('KgoG2mSZWpFByUlgqanUI5Zbabx8XxO60r7jEKoe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQlRWc1BlVjVjVlhCbU9xOEV3Mmh1cURkS3ZFN3ZIaVZZYmFvN0IwNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvdW1zL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTA6InN0dWRlbnRfaWQiO2k6MTtzOjEyOiJzdHVkZW50X25hbWUiO3M6MTU6Ik1kIFJpYWp1bCBJc2xhbSI7fQ==', 1650174008);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `mobile`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Md Riajul Islam', 'mdriazulislam.mri@gmail.com', '$2y$10$vyxTmvpvZvI9oK9okJ9Fe.72RsIAqKkPd8oVnjbMMb7.hk.lm6tyy', '01716337420', 'student-images/22-Riaz.jpg', 1, '2022-04-13 05:42:08', '2022-04-15 14:44:54'),
(3, 'Md Riajul Islam', 'riajulislam2623@gmail.com', '$2y$10$tvMEQN751vINyEJC6MEHHOjPUvLWu2RDyceGKRuYFUeUAwW3gauAS', '01716337420', NULL, 1, '2022-04-13 05:44:41', '2022-04-13 05:44:41'),
(4, 'NAJMA', 'mdriajul2623@gmail.com', '$2y$10$dhmviusXO1QME607IRsPv.TqHzM7jHOn3q6KY8e4b.79Z.hXdKlYm', '01772850336', NULL, 1, '2022-04-13 05:46:16', '2022-04-13 05:46:16'),
(5, 'Admin', 'riazulm3@gmail.com', '$2y$10$OSxPCscenpaiJDFsMJzMAeoRTQJhxqnIqVEzCPfpBSgHwQxCiCWBe', '01716337420', NULL, 0, '2022-04-13 08:50:30', '2022-04-14 22:35:15'),
(8, 'Md Riazul Islam', 'iazulislam.mri@gmail.com', '$2y$10$ro9ZJZZeNlw5FChKWs2qduXqmcek9II4QTX8hlDuJ5Tb4u7ixx1ya', '01716337420', NULL, 1, '2022-04-14 14:02:25', '2022-04-14 22:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `teacher_id`, `title`, `code`, `fee`, `short_description`, `long_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Englies', 'E-120', 12000, '<p>rrr</p>', '<p>wrewesr</p>', 'subject-images/1644132708.jpg', 1, '2022-04-01 05:42:55', '2022-04-12 01:46:25'),
(2, 6, 'Bangla', 'B-230', 1200, '<p>dfdf</p>', '<p>dfd</p>', 'subject-images/islam.jpg', 1, '2022-04-01 05:52:31', '2022-04-02 12:50:03'),
(3, 6, 'Bangla', '120', 5000, '<p>rtttt</p>', '<p>ttttt</p>', 'subject-images/riaz.jpg', 1, '2022-04-01 13:32:17', '2022-04-12 01:46:04'),
(4, 7, 'Bangla', '120', 450, '<p>up</p>', '<p>oppppp</p>', 'subject-images/riaz.jpg', 0, '2022-04-01 13:56:12', '2022-04-14 21:36:43'),
(5, 6, 'Math', '102', 122, '<p>sss</p>', '<p>ssss</p>', 'subject-images/33.PNG', 0, '2022-04-12 11:33:54', '2022-04-14 21:36:40'),
(6, 8, 'Java', '502', 15000, '<p>This a is jaba</p>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'subject-images/R.png', 1, '2022-04-14 21:35:03', '2022-04-14 21:36:47'),
(7, 8, 'BCS', '505', 12000, '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></p>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'subject-images/OIP.jpg', 1, '2022-04-15 00:29:24', '2022-04-15 00:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `code`, `mobile`, `address`, `image`, `status`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Md Riajul Islam', 'mdriazulislam.mri@gmail.com', 'MDR20224', '01716337420', 'value=\"98/2 ,leakcyrcus,kalabagan\"', 'teacher-images/22-Riaz.jpg', 0, '$2y$10$v8dN4XkOWYzq/m8q.dMwCe3yL45fyRMS67Mez.95AiEEoCZKSym8u', '2022-03-30 14:24:48', '2022-03-30 14:53:35'),
(3, 'Admin', 'admin@gmail.com', 'ADM20223', '01716337420', 'Green Road, Pantapath, Dhaka-1205', 'teacher-images/Md Riajul.jpg', 1, '$2y$10$WjT0sxET2jvG8EtgRUBoKe7Ul5obyFr28LIfU4EZmcpTzJLGSHOuW', '2022-03-30 14:43:37', '2022-03-30 14:43:37'),
(5, 'MD. ISMAIL', 'admin@admin.com', 'MDI20226', '01716337420', 'value=\"value=\"Delhi\r\ndelhi\"\"', 'teacher-images/1.png', 1, '$2y$10$KAb/b6coZ/4l6hkifkrW2O09PcWn3hG/6FbgBPOPSLn6vI348l2ne', '2022-03-31 07:29:20', '2022-03-31 11:39:15'),
(6, 'Md Riajul Islam', 'riazul002@gmail.com', 'MDR20226', '01716337420', '98/2 ,leakcyrcus,kalabagan', 'teacher-images/Animal Wallpapers 1.jpg', 1, '$2y$10$9JzbvYLKSiVJIFV.yUrt0O2aUgGd8DOmf5wKshC4Cn67iLLQtAVY.', '2022-03-31 12:09:12', '2022-03-31 12:09:12'),
(7, 'Admin', 'mdriazulislam.mri@gmail.com', 'ADM20229', '01716337420', 'value=\"98/2 ,leakcyrcus,kalabagan\"', 'teacher-images/Bangladesh-Railway-Job-Circular.jpg', 0, '$2y$10$Ls/njxN4XnTyRkCFbTlOa.ljc9AiMjjAHWD.OVviX4s0ThyJUzesu', '2022-04-01 13:54:40', '2022-04-12 01:29:26'),
(8, 'Admin', 'mdriazulislam.mri@gmail.com', 'ADM20227', '01716337420', '98/2 ,leakcyrcus,kalabagan', 'teacher-images/Bangladesh-Railway-Job-Circular.jpg', 1, '$2y$10$WWYh6cJYjfDwCIVs3XQNMuvtJZ.0V17mwIGk/gSfhnu9a6kNeylMu', '2022-04-01 13:54:40', '2022-04-01 13:54:40'),
(9, 'NAJMA', 'mdriazulislam.mri@gmail.com', 'NAJ202210', '01716337420', 'value=\"value=\"98/2 ,leakcyrcus,kalabagan\"\"', 'teacher-images/OIP.jpg', 1, '$2y$10$5PccLu8wVpBMwIqVlcAXvuNTdrjT/IuYEydMHNSj.wtVxM35ztjCC', '2022-04-16 23:56:08', '2022-04-16 23:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Md Riajul Islam', 'admin@gmail.com', NULL, '$2y$10$gRW5ICiG3JY1veGXTH/KtOsZRJV901Yr2iDYXDpb604n024rBloBi', NULL, NULL, NULL, NULL, NULL, '2022-03-28 10:43:02', '2022-03-28 10:43:02'),
(7, 'MD. ISMAIL', 'riazul002@gmail.com', NULL, '$2y$10$T1Tla/8hW6w0TVp2p2ylAehPKeCbK12yumZ.7SD7E3zcqYbsC.UdW', NULL, NULL, NULL, NULL, NULL, '2022-03-30 12:19:45', '2022-03-30 12:19:45'),
(9, 'ghjkgj', 'riazul002123456@gmail.com', NULL, '$2y$10$GvQHqUt3gvmmsHrrlbkcD.jeWWlsEl/3PJz8OAcDt4b5qoCBs9fJ.', NULL, NULL, NULL, NULL, NULL, '2022-04-16 23:57:15', '2022-04-16 23:57:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
