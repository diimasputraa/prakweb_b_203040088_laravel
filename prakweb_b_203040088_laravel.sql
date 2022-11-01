-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 08:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakweb_b_203040088_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer', 'web-developer', '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(2, 'Personal', 'personal', '2022-10-27 06:53:19', '2022-10-27 06:53:19');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_25_003255_create_posts_table', 1),
(6, '2022_10_25_150516_create_categories_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Numquam adipisci accusamus.', 'consequatur-est-libero-expedita', 'Et pariatur et nam magni quia dolor. Totam dolore error iure aspernatur ad beatae laboriosam. Tempora tempora quos et quisquam. Non quia nam doloremque fugiat quis omnis.', 'Aut porro dolorum ducimus repudiandae et similique animi. Sint ut est voluptas sit tenetur quis. Hic non rerum pariatur et fuga reiciendis numquam vel. Earum accusamus qui voluptatem corrupti voluptas in sit. Laborum qui vero est omnis sapiente necessitatibus vero non. Aperiam illo numquam sed recusandae et velit. Consequatur cum voluptatibus sed. Et accusamus delectus rerum nisi assumenda animi reprehenderit et.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(2, 1, 1, 'A iusto esse excepturi ab dolore.', 'fuga-voluptatum-ut-sequi-molestiae', 'Quae dolores rerum voluptatibus culpa exercitationem. In aut nobis facere eum. Velit quos qui qui. Vel aut adipisci ut.', 'Reprehenderit ipsum iusto quis qui. Quasi ut dignissimos accusamus architecto. Voluptatum doloremque et necessitatibus dignissimos nobis et quisquam. Aut pariatur qui rerum. Dolorem nam eius laudantium dolorem.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(3, 1, 2, 'Voluptates tenetur quia id rerum corporis sapiente quaerat rerum id.', 'voluptate-unde-sed-nesciunt-aspernatur-accusantium', 'Quam consequatur delectus repudiandae dolore qui necessitatibus. Velit culpa temporibus numquam vel et eius. Voluptatem sed quos eaque nihil qui qui. Inventore vel totam et quibusdam ad aut.', 'Veritatis rerum quas omnis itaque. Eum vitae sapiente ut magnam reprehenderit nam amet. Praesentium quo pariatur vel fugiat recusandae. Voluptate doloremque vel quidem dolore omnis ut expedita. Rem et facilis eius. Iure voluptatem est harum dolore ut. Exercitationem tempora fugiat eum doloremque ullam. Ullam voluptas enim modi est quaerat repudiandae. Rerum voluptas quis odio delectus sed. Quae omnis cumque reprehenderit minima quos ut.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(4, 1, 2, 'Voluptatem voluptatem quas suscipit expedita quis fugiat et est.', 'nesciunt-ad-qui-ut-vel-dolor', 'Eos unde ratione similique. Maiores nulla repellat quia quia ipsa. Natus rem sit ea et error quidem quisquam inventore. Quis fugiat nesciunt illo ut sed similique consequatur. Dolores impedit odit est dolorem.', 'Nobis vel perspiciatis cum. Quia non enim eius modi. Est qui officiis ducimus impedit odit eius consequatur. Deleniti quis fuga cupiditate ullam. Quia repudiandae magni est enim non. Rerum est nulla omnis minima expedita quos similique labore.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(5, 2, 2, 'Iure eum provident nobis libero.', 'molestiae-tenetur-soluta-fugiat-quia-magnam-quo', 'Modi aliquid atque dolores non natus sit. Dignissimos eaque est architecto qui mollitia accusantium mollitia. Ab maxime tempore qui quia eaque tempore voluptate. Voluptatem similique est sint nam quis et aliquid est.', 'Illum eos deserunt natus aut magnam velit. Perferendis ut voluptatibus quo quia doloremque. Sit perferendis unde eos enim dolor sit et. Enim ex sequi repudiandae maxime deserunt. Porro alias ut assumenda quidem. Blanditiis ut delectus illo beatae qui. Assumenda omnis sit aliquam quo molestias. Corporis quisquam iure eos maxime. Hic ut minima sit distinctio est vero. Est aut accusamus quae excepturi suscipit et vero. Vitae voluptas unde harum. Enim libero et aut quos vel omnis nisi consectetur. Et dignissimos rem cupiditate impedit harum ipsam.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(6, 2, 1, 'Sapiente sequi in ut.', 'qui-sit-sapiente-iure-reprehenderit-est-eum-sapiente', 'Pariatur molestias nostrum quia occaecati et eligendi. Quisquam sint voluptatem quae aut et deserunt. Maxime praesentium sed totam ex magnam.', 'Alias consequatur voluptas consectetur omnis. Deleniti impedit aut qui nam assumenda amet iusto voluptatem. Et nihil quia facere deserunt laboriosam omnis. Et occaecati eum libero nostrum. Nostrum saepe fugit inventore sed ullam.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(7, 1, 1, 'Qui aperiam ad provident laudantium cumque qui.', 'expedita-soluta-esse-sunt-numquam-placeat-dolores', 'In voluptatem exercitationem omnis quis. Architecto et quidem temporibus minima ex. Placeat voluptatem voluptatem id facilis fugiat et laborum.', 'Sed quis iure explicabo. Molestiae ut ea rerum qui. Fugiat aut ratione sint inventore. A optio iste iste voluptatum commodi minus. Sit ullam repudiandae qui in rerum explicabo consequatur. Omnis aperiam officiis neque impedit ratione. Quas et accusamus omnis et. Unde consectetur qui maiores veniam omnis reiciendis est. Qui aut voluptas voluptatem sed minus minus est.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(8, 1, 2, 'Qui earum voluptas omnis.', 'suscipit-voluptatibus-ut-ut-qui-in-deserunt-quisquam', 'Voluptas aliquid sit harum. Sunt adipisci occaecati qui rem quo. Sed eligendi sunt earum eligendi velit dolores exercitationem.', 'Harum provident qui qui sed quis. Maxime excepturi ipsam ab qui. Tempora nihil cum rem provident. Consequatur voluptates inventore modi nemo qui. Id quisquam repellendus sit. Et culpa quos molestiae numquam ducimus aut. Unde est qui accusamus quo est quae. Tempore quia ea asperiores a.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(9, 2, 3, 'Sed repudiandae fugit.', 'quia-aspernatur-iste-corrupti-esse', 'Explicabo sed et repellendus provident. Eaque ut quia id velit facere. Nostrum enim et ut tempora occaecati iusto.', 'Sapiente reprehenderit excepturi magnam blanditiis qui facere. Modi inventore ut iure quos excepturi quis sed. Deserunt iure quo voluptas. Numquam voluptatem maxime qui ipsam. Asperiores doloremque similique distinctio placeat. Cum dicta doloremque omnis voluptates pariatur ab quos. Non totam ratione ex voluptatem sit ipsa.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(10, 1, 3, 'Molestias illum.', 'illo-nostrum-id-voluptatem-ut-nobis', 'Dolores delectus sit ab nam labore debitis nisi. Non laudantium qui deserunt sed cum et dolorum. Commodi itaque libero at sed.', 'In eum voluptas deleniti numquam voluptas aut. Aut est voluptatibus ipsa fugit. Nihil ab dolor dicta et nobis aliquam eum accusantium. Itaque voluptas mollitia ipsum voluptates. Soluta voluptatem dolorem ipsa aspernatur cumque accusamus culpa hic. At et pariatur sint ullam. Illum quis possimus rerum expedita natus. Illum qui quia sapiente accusantium tenetur aut. Qui nesciunt omnis error velit nihil. Non ut optio id ut voluptas officia.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(11, 1, 3, 'Deleniti consequatur aut ut et.', 'ipsam-ut-non-rerum-ut', 'Cupiditate odit explicabo vitae magnam saepe. Ea in libero et sit velit non nisi. Ducimus veritatis voluptatem incidunt.', 'Ex et perferendis facilis reiciendis doloribus. Est in maiores ut perferendis velit dolorem. Distinctio recusandae commodi sit. Laboriosam tempora non et nobis dignissimos illum enim cum. Sint esse id qui similique eos enim fuga. Doloremque voluptas itaque non vitae sed.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(12, 1, 3, 'Similique soluta voluptas et.', 'quia-sunt-vitae-officia-hic-corporis-sit-et', 'Praesentium doloribus mollitia nulla magni. Ea est et earum architecto. Quo vero nam aut eos magni et temporibus. Laboriosam amet vero sit culpa laboriosam. Mollitia corporis rerum ut qui est.', 'Provident aliquam et sint nemo. Molestias dicta perferendis nostrum unde officiis sint. Ducimus ut aut qui doloremque enim quia. Dolor sunt dignissimos voluptatem magnam praesentium sed necessitatibus. Ea voluptatem veniam rerum reiciendis similique molestiae quis. Eum ratione maiores quas ex molestiae quia. Consectetur ea impedit non dolor ipsa nesciunt. Occaecati aperiam repellat sapiente sunt iusto quas. Nostrum enim est possimus. Facilis sit minima eveniet minus repudiandae. Inventore eum neque voluptas.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(13, 1, 2, 'Accusantium enim eius.', 'enim-ullam-modi-velit-officiis', 'Totam sit dolore qui occaecati autem aut voluptatem. Similique incidunt iste eos tempore. Corrupti ut animi qui est accusantium eius. Id suscipit minus voluptate sit et consequatur iusto.', 'Ut labore beatae et est fugiat id. Fuga numquam eum ut voluptas voluptatem quia dolorem. Voluptatem ratione commodi non voluptatem. Reiciendis assumenda dolores fugiat molestiae ut repellendus voluptatem. Sit voluptatem sed ab dolor eum vel. Fuga nesciunt debitis pariatur id ad. Placeat maiores dignissimos saepe cupiditate. Quo assumenda nesciunt amet quod.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(14, 2, 2, 'Voluptatum quos architecto aut necessitatibus praesentium sit doloremque.', 'voluptas-pariatur-illum-aut', 'Consequatur ut quia quidem. Facere deleniti itaque est velit corporis unde. Quibusdam perspiciatis facilis repellat sit iste cupiditate distinctio.', 'Porro quae quia ut. Officiis hic nihil cupiditate doloribus dolorum cupiditate nesciunt delectus. Quod nobis mollitia odio qui cumque et voluptas. Ut non aut accusamus itaque distinctio est deserunt a. Ex soluta et laborum ratione quia. Vitae eius ut porro maxime.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(15, 2, 1, 'Quam saepe.', 'officiis-voluptas-atque-sed-voluptatem', 'Officia fugiat sed sit saepe eum velit dolores. Laboriosam aut saepe illo magnam et. Voluptas nemo eum voluptatibus et enim atque voluptatem. Et est in sint sit.', 'Omnis nam labore modi et. Quasi atque sunt numquam pariatur. Dolores sint officia neque et quod vel repudiandae officiis. Id autem fugit ad sint vitae odio est. Occaecati dicta aut praesentium corporis illo. Fugit laboriosam nemo dolor labore quaerat quis tempora. Architecto quis laboriosam dolor officia veritatis magnam fugit.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(16, 1, 3, 'Deleniti ex rerum totam sequi quos.', 'voluptas-fugiat-magnam-voluptatem-voluptatem-aliquam-et', 'Molestiae reprehenderit explicabo rerum delectus impedit recusandae vel enim. Omnis qui sapiente id dolor. Animi provident est harum aut tempore dolores veritatis.', 'Occaecati eligendi rem et dolorem. Ut rem facere omnis eum dolorem. Occaecati mollitia cupiditate omnis. Consequuntur aut ex eveniet sit omnis beatae pariatur. Consequuntur id cumque sed culpa error eaque architecto. Et quia dolores reiciendis explicabo quam accusantium. Tenetur molestiae nam libero. Odio quia soluta est suscipit ad rerum aliquam. Ullam aliquid consectetur dolores nisi. Est et magnam dolores minus rerum.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(17, 1, 1, 'Quasi magni voluptate assumenda sint aliquam enim.', 'molestias-cupiditate-ut-cumque-doloribus-voluptatem-voluptas', 'Natus occaecati odio molestias velit libero repellendus. Saepe nobis occaecati assumenda sequi nihil voluptatem cupiditate. Quidem aliquam ratione mollitia accusamus.', 'Possimus facilis alias dolores sit vel vel. Et culpa totam aut tempore dolor. Et et voluptates incidunt dolores repellendus voluptas at dolor. Cum pariatur distinctio ipsam aliquam molestiae possimus. Neque sit placeat ut qui sapiente. Vitae eum ea eveniet ad et voluptatibus ea. Sunt laboriosam eos eos veniam culpa. Dolorem natus enim illo non in quia rem. Quae expedita qui quae sunt rem recusandae modi. Pariatur sit numquam quisquam est incidunt et voluptatem.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(18, 2, 2, 'Et quis adipisci unde.', 'ut-qui-ipsum-voluptate-assumenda-aspernatur-ut-soluta', 'Quibusdam sed laboriosam non accusantium rerum. Dolores quisquam harum modi repellendus repudiandae sequi quas.', 'Unde sapiente rem quae nihil error et temporibus. Dolorem exercitationem ex illum qui aliquam distinctio minima. Voluptates quia at exercitationem asperiores qui odio. Dolore eius sit recusandae quia omnis aut et. Nihil voluptas est est. Dicta dicta maiores est optio molestiae. Officiis aliquid blanditiis eos velit vel harum. Aut quas laborum alias rerum. Sint voluptatem exercitationem reprehenderit et et fugit. Sunt voluptas nemo exercitationem quos.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(19, 2, 1, 'Quia voluptatem rem qui ut.', 'eligendi-rerum-iure-quod-occaecati', 'Omnis sapiente quia quam. Ratione quaerat magnam eum enim corporis inventore. Eveniet laboriosam quia quo alias.', 'Culpa non vel suscipit autem tempore. Eum tempore minus voluptas quia doloribus ullam. Provident praesentium est quia soluta rem aut. Similique aut architecto consequatur alias nostrum sunt. Exercitationem asperiores consequuntur dolorem veritatis. Qui consequatur eaque et eius laboriosam voluptatem assumenda. Dolor nihil earum omnis voluptatem. Reprehenderit quia perspiciatis necessitatibus ipsum est architecto. Vel sint nihil aut adipisci neque. Necessitatibus ea sint excepturi explicabo. Ut autem aut id in vitae. Eaque eligendi quos temporibus inventore.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(20, 1, 2, 'Quidem aliquam.', 'omnis-ea-voluptatem-perferendis-provident', 'In sunt et iure magnam animi. Officia reprehenderit sint iure et nihil voluptatem. Non aut omnis ipsa delectus sunt est nesciunt. Aperiam fuga et aliquid voluptate.', 'Sint quas sit assumenda animi quia rerum. Temporibus voluptate sunt deserunt non odio ad et. Dolorem impedit voluptate praesentium et qui voluptas. Quis nihil deleniti at. Officia mollitia qui consequatur qui natus sed. Minus minus voluptas atque.', NULL, '2022-10-27 06:53:19', '2022-10-27 06:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Titi Puput Suartini', 'caturangga62', 'zamira.padmasari@example.net', '2022-10-27 06:53:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PfCFvs8SJn', '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(2, 'Prayoga Uwais', 'karimah62', 'eyuniar@example.net', '2022-10-27 06:53:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TV56JioVDQ', '2022-10-27 06:53:19', '2022-10-27 06:53:19'),
(3, 'Maman Prasetyo Megantara', 'qgunawan', 'harja15@example.com', '2022-10-27 06:53:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wHFQpNNXyz', '2022-10-27 06:53:19', '2022-10-27 06:53:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
