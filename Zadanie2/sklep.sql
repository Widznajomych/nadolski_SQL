-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 07:06 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `idklienta` int(11) NOT NULL,
  `Imię` text NOT NULL,
  `Nazwisko` text NOT NULL,
  `Miasto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`idklienta`, `Imię`, `Nazwisko`, `Miasto`) VALUES
(1, 'Lucjan', 'Błaszczyk', 'Gliwice'),
(2, 'Marian', 'Nowak', 'Katowice'),
(3, 'Maciej', 'Grzywocz', 'Ruda Śląska'),
(4, 'Dorota', 'Jankowska', 'Knurów'),
(5, 'Tomasz', 'Mazur', 'Jelenia Góra');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `książki`
--

CREATE TABLE `książki` (
  `idksiążki` int(11) NOT NULL,
  `imieautora` text NOT NULL,
  `nazwiskoautora` text NOT NULL,
  `tytul` text NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `książki`
--

INSERT INTO `książki` (`idksiążki`, `imieautora`, `nazwiskoautora`, `tytul`, `cena`) VALUES
(1, 'Peter', 'MacIntyre', 'PHP. Zaawansowane programowanie', 47.29),
(2, 'Andrzej', 'Szeląg', 'Windows 8 PL. Zaawansowana administracja systemem', 49.99),
(3, 'Jacob', 'Seidelin', 'HTML 5. Tworzenie gier', 53.65),
(4, 'Tomasz', 'Kowalski', 'Urządzenia techniki komputerowej. Podręcznik dla technikum', 34.15),
(5, 'Łukasz', 'Pasterniak', 'PHP. Tworzenie nowoczesnych stron WWW', 29.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamówienia`
--

CREATE TABLE `zamówienia` (
  `idzamowienia` int(11) NOT NULL,
  `idklienta` int(11) NOT NULL,
  `idksiazki` int(11) NOT NULL,
  `data` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `zamówienia`
--

INSERT INTO `zamówienia` (`idzamowienia`, `idklienta`, `idksiazki`, `data`, `status`) VALUES
(1, 4, 2, '2012-10-08', 'oczekiwanie'),
(2, 3, 1, '2012-09-08', 'wyslano'),
(3, 8, 1, '2012-10-11', 'wyslano'),
(4, 4, 5, '2012-10-15', 'oczekiwanie'),
(5, 4, 4, '2012-08-12', 'oczekiwanie'),
(6, 3, 2, '2012-10-20', 'wyslano');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`idklienta`);

--
-- Indeksy dla tabeli `książki`
--
ALTER TABLE `książki`
  ADD PRIMARY KEY (`idksiążki`);

--
-- Indeksy dla tabeli `zamówienia`
--
ALTER TABLE `zamówienia`
  ADD PRIMARY KEY (`idzamowienia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `idklienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `książki`
--
ALTER TABLE `książki`
  MODIFY `idksiążki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zamówienia`
--
ALTER TABLE `zamówienia`
  MODIFY `idzamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
