-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 11:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biiscorp`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `nama`, `jabatan`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Evalyn Mraz', 'Transportation Manager', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(2, 'Antonio Goodwin', 'Compliance Officers', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(3, 'Freda Ullrich', 'Kindergarten Teacher', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(4, 'Danial Watsica', 'Private Sector Executive', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(5, 'Miss Herminia Marquardt', 'Streetcar Operator', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(6, 'Noel Aufderhar', 'Dental Assistant', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(7, 'Dr. Milan Quigley', 'Railroad Yard Worker', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(8, 'Ambrose Flatley', 'Graphic Designer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(9, 'Holden Emard Jr.', 'Railroad Yard Worker', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(10, 'Kade Huels IV', 'Buffing and Polishing Operator', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(11, 'Heaven Wunsch', 'Commercial Diver', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(12, 'Jarvis Grant', 'Floor Finisher', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(13, 'Duane Hodkiewicz', 'Rough Carpenter', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(14, 'Fay Koepp', 'Musician OR Singer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(15, 'Hester Schuppe DDS', 'Material Movers', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(16, 'Emmie Weimann', 'Mapping Technician', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(17, 'Alford Jacobi Sr.', 'Middle School Teacher', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(18, 'Heidi Monahan', 'Welder and Cutter', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(19, 'Joaquin Friesen', 'Welding Machine Tender', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(20, 'Prof. Diana Prosacco', 'Audiologist', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(21, 'Chadd Luettgen', 'Industrial Safety Engineer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(22, 'Bryce Lubowitz', 'Printing Machine Operator', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(23, 'Lavern Graham', 'Central Office and PBX Installers', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(24, 'Delia Brekke MD', 'Precision Dyer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(25, 'Xander Huel', 'Press Machine Setter, Operator', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(26, 'Wilton Hammes', 'Corporate Trainer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(27, 'Astrid Lehner', 'Emergency Medical Technician and Paramedic', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(28, 'Cletus Hane', 'Home Appliance Repairer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(29, 'Katheryn Osinski', 'Auditor', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(30, 'Vida Armstrong', 'Manager', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(31, 'Myra Mayert', 'Technical Specialist', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(32, 'Vanessa Harris', 'Welding Machine Operator', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(33, 'Greta Mertz', 'Vice President Of Human Resources', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(34, 'Dr. Pierce Wunsch', 'Aircraft Assembler', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(35, 'Rosina Roberts', 'Marine Engineer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(36, 'Prof. Lester Murphy', 'Title Searcher', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(37, 'Kaylin Kub', 'Stationary Engineer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(38, 'Eudora Leffler PhD', 'Philosophy and Religion Teacher', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(39, 'Nils Lemke', 'Printing Machine Operator', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(40, 'Hudson Lockman MD', 'Mapping Technician', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(41, 'Justyn Heidenreich', 'Painter', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(42, 'Dr. Clinton Larkin II', 'Plant Scientist', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(43, 'Mayra Bahringer', 'Food Preparation', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(44, 'Rasheed Klein', 'Air Crew Officer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(45, 'Jaleel Sanford', 'Microbiologist', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(46, 'Miss Damaris Kling III', 'Production Manager', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(47, 'Prof. Janick Grant', 'Agricultural Engineer', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(48, 'Prof. Alexandrine Hills Jr.', 'Numerical Control Machine Tool Operator', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(49, 'Stuart Yundt', 'Automotive Master Mechanic', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(50, 'Jewel Marks PhD', 'Business Development Manager', NULL, '2024-10-24 03:16:15', '2024-10-24 03:16:15'),
(51, 'John Cena', 'manager', '1729772343.jpg', '2024-10-24 05:19:03', '2024-10-24 05:19:03'),
(52, 'Undertaker', 'Web Designer', '1729844060.png', '2024-10-25 01:14:20', '2024-10-25 01:14:20'),
(53, 'Batista', 'Car Designer', '1729844433.jpg', '2024-10-25 01:20:33', '2024-10-25 01:20:33'),
(54, 'Rey Misterio', 'Driver', '1729844541.jpg', '2024-10-25 01:22:22', '2024-10-25 01:22:22'),
(55, 'John Wick', 'Fighter', '1729844641.jpg', '2024-10-25 01:24:01', '2024-10-25 01:24:01'),
(56, 'Wu Kong', 'Sales', '1729844842.jpg', '2024-10-25 01:27:24', '2024-10-25 01:27:24');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_24_092902_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
