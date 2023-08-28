-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2023 a las 06:42:34
-- Versión del servidor: 8.0.34
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `matricula`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `name`, `Lastname`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Juan Carl', 'Alvarez', 0, '2023-08-25 17:56:10', '2023-08-28 08:26:12'),
(2, 'Andres Mauricio', 'Mora', 1, '2023-08-28 06:38:10', '2023-08-28 06:38:10'),
(3, 'Javier Jose', 'Reyes', 1, '2023-08-28 06:38:45', '2023-08-28 06:38:45'),
(4, 'Maikol Jesus', 'Bravo', 1, '2023-08-28 06:39:19', '2023-08-28 06:39:19'),
(5, 'Raul Alexander', 'Gutierrez', 1, '2023-08-28 06:40:50', '2023-08-28 06:40:50'),
(6, 'Agustin Daniel', 'Gonzalez', 1, '2023-08-28 06:41:24', '2023-08-28 06:41:24'),
(7, 'Marco Aurelio', 'Lezama', 1, '2023-08-28 06:41:46', '2023-08-28 06:41:46'),
(8, 'Anthony Jose', 'Rivas', 1, '2023-08-28 06:42:07', '2023-08-28 06:42:07'),
(9, 'Antonio Enrique', 'Perez', 1, '2023-08-28 06:43:54', '2023-08-28 06:43:54'),
(10, 'Santiago', 'Pinzon', 1, '2023-08-28 06:45:13', '2023-08-28 06:45:13'),
(11, 'Sergio', 'Castillo', 1, '2023-08-28 06:45:36', '2023-08-28 06:45:36'),
(12, 'Benjamin', 'Lopez', 1, '2023-08-28 06:46:16', '2023-08-28 06:46:16'),
(13, 'Nicolas', 'Cardenas', 1, '2023-08-28 06:46:36', '2023-08-28 06:46:36'),
(14, 'Eda', 'Hernandez', 1, '2023-08-28 06:47:01', '2023-08-28 06:47:01'),
(15, 'Adriana', 'Martinez', 1, '2023-08-28 06:47:26', '2023-08-28 06:47:26'),
(16, 'Maria Alejandra', 'Acagua', 1, '2023-08-28 06:47:54', '2023-08-28 06:47:54'),
(17, 'Angelina', 'Acagua Mora', 1, '2023-08-28 06:48:18', '2023-08-28 06:48:18'),
(18, 'Albani', 'Figueroa', 1, '2023-08-28 06:48:46', '2023-08-28 06:48:46'),
(19, 'Milagros', 'Almeida', 1, '2023-08-28 06:49:17', '2023-08-28 06:49:17'),
(20, 'Virginia', 'Serrano', 1, '2023-08-28 06:49:37', '2023-08-28 06:49:37'),
(21, 'Ana', 'Alvarado', 1, '2023-08-28 08:07:21', '2023-08-28 08:07:21'),
(22, 'Jose', 'Alvarez', 1, '2023-08-28 08:09:15', '2023-08-28 08:09:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` bigint UNSIGNED NOT NULL,
  `asistencia` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_matricula` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `asistencia`, `id_matricula`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, '2023-08-26 07:59:01', '2023-08-26 07:59:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_docente` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `name`, `id_docente`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Valores Funval', 1, 1, '2023-08-26 04:28:07', '2023-08-28 09:29:39'),
(4, 'Ingles', 2, 0, '2023-08-26 04:29:00', '2023-08-26 04:43:49'),
(5, 'Scrum', 7, 1, '2023-08-28 06:53:18', '2023-08-28 06:53:18'),
(6, 'Matematica', 8, 1, '2023-08-28 06:53:51', '2023-08-28 06:53:51'),
(7, 'Geometria', 9, 1, '2023-08-28 06:54:23', '2023-08-28 06:54:23'),
(8, 'Estadistica', 10, 1, '2023-08-28 06:54:44', '2023-08-28 06:54:44'),
(9, 'Bilogia', 11, 1, '2023-08-28 06:56:55', '2023-08-28 06:56:55'),
(10, 'Quimica', 12, 1, '2023-08-28 06:57:12', '2023-08-28 06:57:12'),
(11, 'Fisica II', 13, 1, '2023-08-28 06:57:46', '2023-08-28 06:57:46'),
(12, 'Metodos Numericos', 14, 1, '2023-08-28 06:58:42', '2023-08-28 06:58:42'),
(13, 'Calculo I', 15, 1, '2023-08-28 06:59:13', '2023-08-28 06:59:13'),
(14, 'Metodologia de la Investigacion', 16, 1, '2023-08-28 07:00:16', '2023-08-28 07:00:16'),
(15, 'Matematica IV', 17, 1, '2023-08-28 07:01:01', '2023-08-28 07:01:01'),
(17, 'Matematica Funval', 19, 1, '2023-08-28 09:05:10', '2023-08-28 09:32:54'),
(18, 'Matematica II', 17, 1, '2023-08-28 09:06:12', '2023-08-28 09:06:12'),
(19, 'Calculo III', 20, 1, '2023-08-28 09:16:20', '2023-08-28 09:16:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `name`, `Lastname`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Harold ', 'Carazas', 'harold@funval.com', 0, NULL, '2023-08-24 21:23:41'),
(2, 'Luis Marcano', 'Garcia', 'luis@byu.com', 1, NULL, '2023-08-24 21:11:26'),
(7, 'Jose', 'Orlando', 'joseorlando@funval.com', 1, NULL, NULL),
(8, 'luis', 'alvaro', 'luis@funval.com', 1, '2023-08-23 04:06:02', '2023-08-23 04:06:02'),
(9, 'Luis', 'Solorzano', 'luis@funval', 1, '2023-08-24 21:04:37', '2023-08-24 21:04:37'),
(10, 'Alvaro Marcelo', 'Salazar', 'alvarom@funval', 1, '2023-08-28 06:28:59', '2023-08-28 06:28:59'),
(11, 'Diego', 'Huarzaya', 'diegohm@funval', 1, '2023-08-28 06:29:42', '2023-08-28 06:29:42'),
(12, 'Milton Francisco', 'Procel', 'miltonp@funval', 1, '2023-08-28 06:30:35', '2023-08-28 06:30:35'),
(13, 'Carlos Yael', 'Cervantes', 'yaelC@funval', 1, '2023-08-28 06:31:15', '2023-08-28 06:31:15'),
(14, 'Anibal David', 'Carreno', 'anibalC@funval', 1, '2023-08-28 06:32:05', '2023-08-28 06:32:05'),
(15, 'Cristian', 'Alvarez', 'cristiana@funval', 1, '2023-08-28 06:33:45', '2023-08-28 06:33:45'),
(16, 'Jose Bartolo', 'Ynga', 'josey@funval', 1, '2023-08-28 06:34:23', '2023-08-28 06:34:23'),
(17, 'Niver Jose', 'Copa', 'niverc@funval', 1, '2023-08-28 06:35:14', '2023-08-28 06:35:14'),
(19, 'Luisa Maria', 'Solorzano', 'luisa@funval', 1, '2023-08-28 08:55:35', '2023-08-28 08:55:35'),
(20, 'Arlis Agata', 'Solorzano', 'agata@funval', 1, '2023-08-28 09:15:35', '2023-08-28 09:15:35'),
(21, 'Arlis Alvarado', 'Acagua', 'agata2@funval', 1, '2023-08-28 09:36:26', '2023-08-28 09:41:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id` bigint UNSIGNED NOT NULL,
  `id_curso` bigint UNSIGNED NOT NULL,
  `id_alumno` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id`, `id_curso`, `id_alumno`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2023-08-26 07:51:22', '2023-08-26 07:51:22'),
(2, 3, 1, '2023-08-26 07:54:55', '2023-08-26 07:54:55'),
(3, 4, 2, '2023-08-28 07:10:18', '2023-08-28 07:10:18'),
(4, 5, 3, '2023-08-28 07:10:57', '2023-08-28 07:10:57'),
(5, 6, 4, '2023-08-28 07:11:14', '2023-08-28 07:11:14'),
(6, 7, 5, '2023-08-28 07:11:44', '2023-08-28 07:11:44'),
(7, 8, 6, '2023-08-28 07:11:57', '2023-08-28 07:11:57'),
(8, 9, 7, '2023-08-28 07:12:05', '2023-08-28 07:12:05'),
(9, 10, 8, '2023-08-28 07:14:09', '2023-08-28 07:14:09'),
(10, 11, 9, '2023-08-28 07:14:25', '2023-08-28 07:14:25'),
(11, 12, 10, '2023-08-28 07:14:39', '2023-08-28 07:14:39'),
(12, 13, 11, '2023-08-28 07:14:54', '2023-08-28 07:14:54'),
(13, 14, 12, '2023-08-28 07:15:07', '2023-08-28 07:15:07'),
(14, 15, 13, '2023-08-28 07:15:20', '2023-08-28 07:15:20'),
(15, 15, 14, '2023-08-28 07:16:01', '2023-08-28 07:16:01'),
(16, 10, 16, '2023-08-28 07:16:21', '2023-08-28 07:16:21'),
(17, 11, 17, '2023-08-28 07:16:36', '2023-08-28 07:16:36'),
(18, 9, 18, '2023-08-28 07:16:54', '2023-08-28 07:16:54'),
(19, 8, 19, '2023-08-28 07:17:15', '2023-08-28 07:17:15'),
(20, 7, 20, '2023-08-28 07:17:29', '2023-08-28 07:17:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_23_015010_create_docentes_table', 1),
(6, '2023_08_23_015105_create_alumnos_table', 1),
(7, '2023_08_23_015155_create_cursos_table', 1),
(8, '2023_08_23_015227_create_matriculas_table', 1),
(9, '2023_08_23_015255_create_asistencias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asistencias_id_matricula_foreign` (`id_matricula`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cursos_id_docente_foreign` (`id_docente`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `docentes_email_unique` (`email`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriculas_id_alumno_foreign` (`id_alumno`),
  ADD KEY `matriculas_id_curso_foreign` (`id_curso`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_id_matricula_foreign` FOREIGN KEY (`id_matricula`) REFERENCES `matriculas` (`id`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_id_docente_foreign` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`);

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_id_alumno_foreign` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `matriculas_id_curso_foreign` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
