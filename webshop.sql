-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 17, 2021 lúc 03:11 PM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `qty`, `price`) VALUES
(17, 16, 23, 2, 1899999),
(18, 17, 22, 1, 400000),
(19, 18, 22, 1, 400000),
(20, 19, 22, 1, 400000),
(21, 20, 23, 1, 1899999),
(22, 21, 23, 1, 1899999),
(23, 22, 23, 1, 1899999),
(24, 23, 21, 1, 400000),
(25, 24, 21, 2, 400000),
(26, 25, 22, 1, 400000),
(27, 26, 23, 1, 1899999),
(28, 27, 22, 1, 400000),
(29, 28, 23, 1, 1899999),
(30, 29, 23, 3, 1899999),
(31, 29, 25, 1, 39000),
(32, 30, 20, 1, 300000),
(33, 31, 11, 1, 190000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(16, 'đoàn', '0941950008', '1', 'doan@gmail.com', NULL, '2021-10-08 19:57:50', '2021-10-08 19:57:50'),
(17, 'đoàn', '0327256375', '1', 'doan@gmail.com', NULL, '2021-10-08 20:00:05', '2021-10-08 20:00:05'),
(18, 'đoàn', '0327256375', '1', 'doan@gmail.com', NULL, '2021-10-08 20:41:30', '2021-10-08 20:41:30'),
(19, 'đoàn', '0327256375', '1', 'doan@gmail.com', NULL, '2021-10-08 20:48:53', '2021-10-08 20:48:53'),
(20, 'đoàn', '0327256375', '1', 'doan@gmail.com', NULL, '2021-10-08 20:55:07', '2021-10-08 20:55:07'),
(21, 'đoàn', '0327256375', '1', 'doan@gmail.com', NULL, '2021-10-08 21:22:18', '2021-10-08 21:22:18'),
(22, 'đoàn', '0327256375', '1', 'doan@gmail.com', NULL, '2021-10-08 21:25:10', '2021-10-08 21:25:10'),
(23, 'đoàn', '0327256375', '1', 'doan@gmail.com', '214214', '2021-10-08 21:28:17', '2021-10-08 21:28:17'),
(24, 'đoàn', '34234', '1', 'doan@gmail.com', '234', '2021-10-08 21:30:25', '2021-10-08 21:30:25'),
(25, 'đoàn', '0941950008', '1', 'doan@gmail.com', 'retr', '2021-10-08 21:33:21', '2021-10-08 21:33:21'),
(26, 'đoàn', '0327256375', '1', 'doan@gmail.com', '32432', '2021-10-08 21:37:35', '2021-10-08 21:37:35'),
(27, 'đoàn', '123', '1', 'doan@gmail.com', '124', '2021-10-08 21:43:32', '2021-10-08 21:43:32'),
(28, 'đoàn', '0327256375', '1', 'doan@gmail.com', '12323', '2021-10-08 21:46:16', '2021-10-08 21:46:16'),
(29, 'Thủy tiên', '0941950008', '501/10 le duan', 'bebeo2612@gmail.com', 'bé mua váy xinh , giảm giá', '2021-10-08 21:52:23', '2021-10-08 21:52:23'),
(30, 'đoàn', '0327256375123', '1', 'doan@gmail.com', 'erewr', '2021-10-09 19:16:34', '2021-10-09 19:16:34'),
(31, 'đoàn', '0327256375', '1', 'doan@gmail.com', '123', '2021-10-16 04:03:49', '2021-10-16 04:03:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(6, '243f9460-d09a-4b29-94cb-414160d1d031', 'database', 'default', '{\"uuid\":\"243f9460-d09a-4b29-94cb-414160d1d031\",\"displayName\":\"App\\\\Jobs\\\\SendEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmail\",\"command\":\"O:18:\\\"App\\\\Jobs\\\\SendEmail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:14:\\\"doan@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2021-10-09 04:37:40.199037\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host mailhog :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: No such host is known.  in C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 264, Array)\n#1 C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'tcp://mailhog:5...\', 0, \'php_network_get...\', 30, 4, Resource id #728)\n#2 C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#8 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#11 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#12 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(121): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#13 C:\\laragon\\www\\shop\\app\\Jobs\\SendEmail.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#14 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmail->handle()\n#15 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmail))\n#21 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#22 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmail), false)\n#24 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmail))\n#25 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#26 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmail))\n#28 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 C:\\laragon\\www\\shop\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2021-10-08 21:37:45'),
(7, '50f2117a-ac34-4631-ae0d-0287b16db8f7', 'database', 'default', '{\"uuid\":\"50f2117a-ac34-4631-ae0d-0287b16db8f7\",\"displayName\":\"App\\\\Jobs\\\\SendEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmail\",\"command\":\"O:18:\\\"App\\\\Jobs\\\\SendEmail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:14:\\\"doan@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2021-10-09 04:43:37.955895\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host mailhog :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: No such host is known.  in C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'C:\\\\laragon\\\\www\\\\...\', 264, Array)\n#1 C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'tcp://mailhog:5...\', 0, \'php_network_get...\', 30, 4, Resource id #735)\n#2 C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 C:\\laragon\\www\\shop\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#8 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#11 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#12 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(121): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#13 C:\\laragon\\www\\shop\\app\\Jobs\\SendEmail.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#14 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmail->handle()\n#15 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmail))\n#21 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#22 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmail), false)\n#24 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmail))\n#25 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#26 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmail))\n#28 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 C:\\laragon\\www\\shop\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\shop\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2021-10-08 21:43:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(3, 'Đồng hồ cao cấp', 0, 'Đồng hồ cao cấp', '<p><strong>Đồng hồ cao cấp</strong></p>', 1, '2021-09-28 02:08:37', '2021-10-12 06:43:13'),
(10, 'Thời trang nữ', 0, 'Thời trang nữ', '<p>Thời trang nữ</p>', 1, '2021-10-02 10:17:07', '2021-10-03 04:26:36'),
(11, 'Nước Hoa Cao cấp con', 10, 'Nước Hoa Cao cấp', '<p>Nước Hoa Cao cấp</p>', 1, '2021-10-02 10:17:21', '2021-10-02 10:17:21'),
(12, 'Thời trang Nam', 0, 'Thời trang Nam', '<p>Thời trang Nam</p>', 1, '2021-10-02 22:31:17', '2021-10-02 22:31:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_23_094225_create_menus_table', 2),
(6, '2021_09_29_040447_create_products_table', 3),
(7, '2021_09_29_040939_update_table_product', 4),
(8, '2021_10_02_054929_create_sliders_table', 5),
(9, '2021_10_08_100318_create_customers_table', 6),
(10, '2021_10_08_100437_create_carts_table', 6),
(11, '2021_10_09_030628_drop_column_timestemps', 7),
(12, '2021_10_09_034933_create_jobs_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(7, 'Thời trang nữ 2', 'Thời trang nữ', '<p>Thời trang nữ</p>', 10, 500000, 400000, 1, '2021-10-03 04:27:04', '2021-10-03 04:27:04', '/storage/uploads/2021/10/03/product-02.jpg'),
(8, 'Thời trang Nam 2', 'Thời trang nam', '<p>Thời trang nam</p>', 12, 500000, 400000, 1, '2021-10-03 04:27:59', '2021-10-03 04:27:59', '/storage/uploads/2021/10/03/product-03.jpg'),
(9, 'Đồng hồ Nam', 'Thời trang nữ', '<p>Thời trang nữ</p>', 3, 230000, 200000, 1, '2021-10-03 04:29:39', '2021-10-12 06:44:43', '/storage/uploads/2021/10/12/product-06.jpg'),
(10, 'Đồng hồ cao cấp Nữ', 'Thời trang nữ', '<p>Thời trang nữ</p>', 3, 500000, 400000, 1, '2021-10-03 04:30:01', '2021-10-14 07:06:33', '/storage/uploads/2021/10/14/elio-el008-01-nu-hong-up-2-org.jpg'),
(11, 'Esprit Ruffle Shirt', 'Esprit Ruffle Shirt', '<p><a href=\"http://shop.vtest/product-detail.html\">Esprit Ruffle Shirt</a></p>', 10, 200000, 190000, 1, '2021-10-03 04:31:01', '2021-10-12 06:41:12', '/storage/uploads/2021/10/12/product-08.jpg'),
(12, 'Thời trang Nữ 1', 'Thời trang Nam', '<p>Thời trang Nam</p>', 10, 500000, 300000, 1, '2021-10-03 04:25:27', '2021-10-03 04:29:00', '/storage/uploads/2021/10/03/product-01.jpg'),
(13, 'Thời trang nữ 2', 'Thời trang nữ', '<p>Thời trang nữ</p>', 10, 500000, 400000, 1, '2021-10-03 04:27:04', '2021-10-03 04:27:04', '/storage/uploads/2021/10/03/product-02.jpg'),
(14, 'Thời trang Nam 2', 'Thời trang nam', '<p>Thời trang nam</p>', 12, 500000, 400000, 1, '2021-10-03 04:27:59', '2021-10-03 04:27:59', '/storage/uploads/2021/10/03/product-03.jpg'),
(15, 'Esprit Ruffle Shirt', 'Esprit Ruffle Shirt', '<p><a href=\"http://shop.vtest/product-detail.html\">Esprit Ruffle Shirt</a></p>', 10, 2000001, 1900001, 1, '2021-10-03 04:31:01', '2021-10-12 06:42:12', '/storage/uploads/2021/10/12/product-07.jpg'),
(16, 'Thời trang Nữ 1', 'Thời trang Nam', '<p>Thời trang Nam</p>', 10, 500000, 300000, 1, '2021-10-03 04:25:27', '2021-10-03 04:29:00', '/storage/uploads/2021/10/03/product-01.jpg'),
(17, 'Thời trang nữ 2', 'Thời trang nữ', '<p>Thời trang nữ</p>', 10, 500000, 400000, 1, '2021-10-03 04:27:04', '2021-10-03 04:27:04', '/storage/uploads/2021/10/03/product-02.jpg'),
(18, 'Thời trang Nam 2', 'Thời trang nam', '<p>Thời trang nam</p>', 12, 500000, 400000, 1, '2021-10-03 04:27:59', '2021-10-03 04:27:59', '/storage/uploads/2021/10/03/product-03.jpg'),
(19, 'Thời trang nữ 14', 'Esprit Ruffle Shirt', '<p><a href=\"http://shop.vtest/product-detail.html\">Esprit Ruffle Shirt</a></p>', 10, 20000, 19000, 1, '2021-10-03 04:31:01', '2021-10-12 06:39:45', '/storage/uploads/2021/10/12/product-05.jpg'),
(20, 'Thời trang Nữ 1', 'Thời trang Nam', '<p>Thời trang Nam</p>', 10, 500000, 300000, 1, '2021-10-03 04:25:27', '2021-10-03 04:29:00', '/storage/uploads/2021/10/03/product-01.jpg'),
(21, 'Thời trang nữ 2', 'Thời trang nữ', '<p>Thời trang nữ</p>', 10, 500000, 400000, 1, '2021-10-03 04:27:04', '2021-10-03 04:27:04', '/storage/uploads/2021/10/03/product-02.jpg'),
(22, 'Thời trang Nam 2', 'thoi trang nam', '<p>CHẤT LIỆU</p>\r\n\r\n<p>Kaki cotton 100% l&oacute;t d&ugrave;</p>\r\n\r\n<p>ƯU ĐIỂM</p>\r\n\r\n<p>Thiết kế tinh tế với cổ bẻ, tay d&agrave;i phối chun s&agrave;nh điệu, c&aacute; t&iacute;nh,</p>\r\n\r\n<p>Form d&aacute;ng khỏe khoắn cho bạn phong c&aacute;ch trẻ trung, chỉnh chu v&agrave; kh&ocirc;ng k&eacute;m phần lịch l&atilde;m, kho&aacute;c đ&ocirc;ng ấm &aacute;p v&agrave; thời trang</p>\r\n\r\n<p>Kiểu d&aacute;ng thời trang, đường chỉ may tỉ mỉ, tinh tế.</p>\r\n\r\n<p>M&agrave;u sắc trang nh&atilde; dễ d&agrave;ng mix c&ugrave;ng c&aacute;c trang phục kh&aacute;c như &aacute;o thun, &aacute;o sơ mi,...</p>\r\n\r\n<p>Người bạn đồng h&agrave;nh l&yacute; tưởng cho bạn phong c&aacute;ch ho&agrave;n hảo.</p>', 12, 500000, 400000, 1, '2021-10-03 04:27:59', '2021-10-07 02:05:41', '/storage/uploads/2021/10/03/product-03.jpg'),
(23, 'Esprit Ruffle Shirt', 'Esprit Ruffle Shirt', '<p><a href=\"http://shop.vtest/product-detail.html\">Esprit Ruffle Shirt</a></p>', 10, 1900000, 1899999, 1, '2021-10-03 04:31:01', '2021-10-12 06:39:04', '/storage/uploads/2021/10/12/product-04.jpg'),
(24, 'Đồng hồ Thông Minh', 'Nước Hoa Nam new', '<p>Nước Hoa Nam new</p>', 3, NULL, NULL, 1, '2021-10-08 00:07:48', '2021-10-14 07:05:23', '/storage/uploads/2021/10/14/dong-ho-thong-minh-fitbit-versa-2-black-carbon-vn.jpg'),
(25, 'Váy', 'váy đepọ', '<p>v&aacute;y đepọ</p>', 10, 49000, 39000, 1, '2021-10-08 21:50:48', '2021-10-14 07:00:16', '/storage/uploads/2021/10/14/vay1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(5, 'Thời trang nữ', 'san-pham/25-vay', '/storage/uploads/2021/10/03/slide-01.jpg', 1, 1, '2021-10-03 00:08:51', '2021-10-16 04:19:51'),
(6, 'Thời trang Nam', 'san-pham/22-thoi-trang-nam-2', '/storage/uploads/2021/10/03/slide-02.jpg', 1, 1, '2021-10-03 00:09:17', '2021-10-16 04:20:37'),
(7, 'Đồng hồ cao cấp', 'san-pham/9-dong-ho-nam', '/storage/uploads/2021/10/03/slide-03.jpg', 1, 1, '2021-10-03 00:09:30', '2021-10-16 04:22:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(1, 'admin', 'trandoan6375@gmail.com', NULL, '$2y$10$itd9ZoN3SJQ8eQg76CjEyuzW0Tvb7G8HAFxkQ2P3J0nPsXDe.HEcq', 'q4VHSe12PvXCzm3NokTBwNp7hzWwKDrwfgjhv13wh2maH9US1B9jdX3thOcb', '2021-09-18 08:05:52', '2021-09-18 08:05:52', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_level_unique` (`level`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
