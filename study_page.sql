-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-10-2022 a las 20:12:13
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `study_page`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add profile', 7, 'add_profile'),
(26, 'Can change profile', 7, 'change_profile'),
(27, 'Can delete profile', 7, 'delete_profile'),
(28, 'Can view profile', 7, 'view_profile'),
(29, 'Can add ejercicio', 8, 'add_ejercicio'),
(30, 'Can change ejercicio', 8, 'change_ejercicio'),
(31, 'Can delete ejercicio', 8, 'delete_ejercicio'),
(32, 'Can view ejercicio', 8, 'view_ejercicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$ZNyFzWrb2mIVw8az7ZfF3Q$ws6+tJBq1kxGweJx5D88CbF8UQoYvlrY2I5zt2ccpUM=', '2022-10-17 14:12:48.312216', 1, 'maximiliano', '', '', 'maximilianorojo29@gmail.com', 1, 1, '2022-10-15 17:20:32.040531'),
(2, 'pbkdf2_sha256$390000$s94JRsh46ct3BvR36ilmfS$qisWMNKFUC6ZNwqn3PVbNM9OX+AjWJG7jH67s4rZwQA=', '2022-10-16 20:19:06.116524', 0, 'alejandro', '', '', '', 0, 1, '2022-10-15 20:14:16.834033'),
(3, 'pbkdf2_sha256$390000$hxve9BRYCoDCFdk0Rq65hI$WO6hxAh3xk7YPi2fG/HL3ltJyyxwlka7UZsOSyPeUig=', '2022-10-15 20:20:29.904206', 0, 'perla', '', '', '', 0, 1, '2022-10-15 20:19:53.003247'),
(4, 'pbkdf2_sha256$390000$jTnD1t9E5oAEW55hke6sy2$z+gKPFT7zU0cy02GtFoJl+3MTh4T2BaWzRNZrp5ZfMk=', NULL, 0, 'matia', '', '', '', 0, 1, '2022-10-17 03:33:53.707396'),
(5, 'pbkdf2_sha256$390000$v8rSaRIYy0ofh3jRcUujQ4$PQY8rGO17NFjynyGm/OfEbD25qxYoe13ye3J8x6iuWs=', NULL, 0, 'dfddd', '', '', '', 0, 1, '2022-10-17 04:08:12.802816'),
(6, 'pbkdf2_sha256$390000$831mD4uIffaxAbWbZQQw8P$dFXzKF2tLSHNNlINMPgsf1ptsyOV3FmKNk99cfAFfRs=', NULL, 0, 'sda', '', '', '', 0, 1, '2022-10-17 04:09:25.607594'),
(7, 'pbkdf2_sha256$390000$0S2L0lYQ1ki2uh3uoMG76U$RTdR+tWTcTU1ae4+J8d0gfD1f2iJ1sfIlb9YV78SZns=', NULL, 0, 'matiadfsa', '', '', '', 0, 1, '2022-10-17 04:10:07.052954'),
(8, 'pbkdf2_sha256$390000$GJuC8JhLKyY45gkAINJAcj$CLwd9/MAHsa5ZCfxw3MlkJp3eFbVXbdPW8fLirOWYkw=', NULL, 0, 'añadir', '', '', '', 0, 1, '2022-10-17 04:23:35.883758'),
(9, 'pbkdf2_sha256$390000$yOxgqk71xtdjR0my0Tfd1G$7BR5auIeUm5kdeCd+reJzROmsvnXtqulc/lQWloTMCc=', '2022-10-17 14:07:51.247194', 0, 'marco', '', '', '', 0, 1, '2022-10-17 14:05:39.115411'),
(10, 'pbkdf2_sha256$390000$X6dvB0OKajh2uJjj8oG3iX$Z1yzbwxJul/HqDobKlU7Wuv9568ZIukV4SaDc8pLsLY=', '2022-10-17 18:56:09.642022', 1, 'ma', '', '', '', 1, 1, '2022-10-17 14:08:42.355552'),
(11, 'pbkdf2_sha256$390000$mPKARxZmA8uqe4s0dbeWpQ$ZobYCINEvducYCErd0uXRCxCniNQmtMvKgNE3aNrwqE=', '2022-10-17 14:47:04.933519', 0, 'matia12345', '', '', '', 0, 1, '2022-10-17 14:46:55.535997');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-10-17 14:30:51.103895', '1', 'ma', 1, '[{\"added\": {}}]', 7, 10),
(2, '2022-10-17 18:16:45.661330', '2', 'Ejercicio 1', 1, '[{\"added\": {}}]', 8, 10),
(3, '2022-10-17 19:23:01.505962', '3', 'Ejercicio 2', 1, '[{\"added\": {}}]', 8, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'ejercicios', 'ejercicio'),
(6, 'sessions', 'session'),
(7, 'students', 'profile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-14 21:57:23.647283'),
(2, 'auth', '0001_initial', '2022-10-14 21:57:31.302961'),
(3, 'admin', '0001_initial', '2022-10-14 21:57:33.265796'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-14 21:57:33.310861'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-14 21:57:33.350428'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-14 21:57:34.456535'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-14 21:57:35.276705'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-14 21:57:36.114241'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-14 21:57:36.160118'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-14 21:57:36.662040'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-14 21:57:36.701043'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-14 21:57:36.785119'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-14 21:57:37.434108'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-14 21:57:38.171275'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-14 21:57:38.841883'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-14 21:57:38.888277'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-14 21:57:39.518214'),
(18, 'sessions', '0001_initial', '2022-10-14 21:57:40.167767'),
(19, 'students', '0001_initial', '2022-10-16 17:03:45.382833'),
(20, 'students', '0002_alter_profile_user', '2022-10-17 14:41:34.122123'),
(21, 'students', '0003_alter_profile_user', '2022-10-17 14:48:53.546911'),
(22, 'ejercicios', '0001_initial', '2022-10-17 18:03:57.113323'),
(23, 'ejercicios', '0002_ejercicio_primernumero_ejercicio_segundonumero', '2022-10-17 18:13:26.363574');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('619o4vygagsnavkltgtj7h5ku7nge8hk', '.eJxVjEsOAiEQBe_C2hA-TYMu3XsGAjTIqIFkmFkZ725IZqHbV1XvzXzYt-r3kVe_ELswKdjpd4whPXObhB6h3TtPvW3rEvlU-EEHv3XKr-vh_h3UMOqsEXRRxhIAuJjJkhRYkKhI41IRpNwZhQaLpFVOKA0qRFNkMiCcFezzBfmFNyE:1okVHV:67pfEA5gf2X27uyqFBYHBJ0QNsT8o3fOBkJkZSxYhVg', '2022-10-31 18:56:09.645016'),
('o0xsmo0ok0wflunlcu5ukwxoqqzt2asf', '.eJxVjMsOwiAQRf-FtSG8BZfu-w1khgGpGkhKuzL-uzbpQrf3nHNfLMK21riNvMSZ2IVJdvrdENIjtx3QHdqt89TbuszId4UfdPCpU35eD_fvoMKo3xpQAwaFErQoJESQXphCWllVQrKUvUrhDMI4kzM4mQJKL8lSMc45a9n7A-qnN8c:1okBT0:jgwT5bWl9Nyyin_XeoYrGl4-jL4382FCTp12QAZgy18', '2022-10-30 21:46:42.070478');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios_ejercicio`
--

CREATE TABLE `ejercicios_ejercicio` (
  `id` bigint(20) NOT NULL,
  `nombre_ejercicio` varchar(20) NOT NULL,
  `creador_id` int(11) NOT NULL,
  `PrimerNumero` int(11) NOT NULL,
  `SegundoNumero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ejercicios_ejercicio`
--

INSERT INTO `ejercicios_ejercicio` (`id`, `nombre_ejercicio`, `creador_id`, `PrimerNumero`, `SegundoNumero`) VALUES
(2, 'Ejercicio 1', 2, 1, 4),
(3, 'Ejercicio 2', 10, 11, 223);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students_profile`
--

CREATE TABLE `students_profile` (
  `id` bigint(20) NOT NULL,
  `bio` longtext NOT NULL,
  `pfp` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `students_profile`
--

INSERT INTO `students_profile` (`id`, `bio`, `pfp`, `correo`, `user_id`) VALUES
(1, 'sasasa', 'blankProfilePicture.png', 'dasd', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `ejercicios_ejercicio`
--
ALTER TABLE `ejercicios_ejercicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ejercicios_ejercicio_creador_id_28c2cff8_fk_auth_user_id` (`creador_id`);

--
-- Indices de la tabla `students_profile`
--
ALTER TABLE `students_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_profile_user_id_ebbe6ca0` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `ejercicios_ejercicio`
--
ALTER TABLE `ejercicios_ejercicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `students_profile`
--
ALTER TABLE `students_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `ejercicios_ejercicio`
--
ALTER TABLE `ejercicios_ejercicio`
  ADD CONSTRAINT `ejercicios_ejercicio_creador_id_28c2cff8_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `students_profile`
--
ALTER TABLE `students_profile`
  ADD CONSTRAINT `students_profile_user_id_ebbe6ca0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
