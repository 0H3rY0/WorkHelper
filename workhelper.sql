-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lip 02, 2025 at 11:12 PM
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
-- Database: `workhelper`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `alarmy`
--

CREATE TABLE `alarmy` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `ilosc_czujek` int(11) NOT NULL,
  `podzial_uprawnien` tinyint(1) NOT NULL DEFAULT 0,
  `ilosc_klawiatur` int(11) NOT NULL,
  `ilosc_modulow` int(11) NOT NULL,
  `system_rozproszony` tinyint(1) NOT NULL DEFAULT 0,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alarmy`
--

INSERT INTO `alarmy` (`id`, `id_obiektu`, `model`, `ilosc_czujek`, `podzial_uprawnien`, `ilosc_klawiatur`, `ilosc_modulow`, `system_rozproszony`, `uwagi`, `notatki`, `dataOD`, `dataDO`) VALUES
(3, 17, 'nowy alarm', 3, 1, 6, 6, 1, 'zadnych uwag', 'brak', '2025-02-21', NULL),
(4, 22, 'szolny alarm', 1, 0, 1, 1, 0, NULL, NULL, '2025-02-21', NULL),
(5, 22, 'alarm 5', 0, 0, 0, 0, 0, NULL, NULL, '2025-02-21', NULL),
(6, 22, 'test alarm', 3, 0, 6, 6, 0, NULL, NULL, '2025-02-19', NULL),
(7, 17, 'test dodania alarmu', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL),
(8, 17, '', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `anteny`
--

CREATE TABLE `anteny` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `czasza` tinyint(1) NOT NULL DEFAULT 0,
  `antena_dvbt` tinyint(1) NOT NULL DEFAULT 0,
  `antena_radiowa` tinyint(1) NOT NULL DEFAULT 0,
  `zwrotnica` tinyint(1) NOT NULL DEFAULT 0,
  `ilosc_rozgaleznikow` int(11) NOT NULL DEFAULT 0,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anteny`
--

INSERT INTO `anteny` (`id`, `id_obiektu`, `czasza`, `antena_dvbt`, `antena_radiowa`, `zwrotnica`, `ilosc_rozgaleznikow`, `uwagi`, `notatki`, `dataOD`, `dataDO`) VALUES
(1, 22, 4, 1, 1, 10, 5, NULL, NULL, '2025-02-19', NULL),
(2, 17, 1, 1, 1, 7, 5, 'zadnych uwag', 'nowy', '2025-02-21', '0000-00-00'),
(3, 17, 0, 0, 0, 10, 10, '10', '10', '2025-02-21', '0000-00-00'),
(4, 17, 0, 0, 0, 0, 0, '', '', '2025-02-21', '0000-00-00'),
(5, 17, 0, 0, 0, 0, 0, '', '', '2025-02-21', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grupy`
--

CREATE TABLE `grupy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL,
  `zglaszac` tinyint(1) NOT NULL DEFAULT 0,
  `weryfikowac` tinyint(1) NOT NULL DEFAULT 0,
  `zamawiac` tinyint(1) NOT NULL DEFAULT 0,
  `01_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `01_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `01_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `02_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `02_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `02_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `03_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `03_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `03_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `04_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `04_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `04_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `05_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `05_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `05_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `06_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `06_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `06_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `07_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `07_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `07_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `08_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `08_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `08_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `09_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `09_edycja` tinyint(1) NOT NULL DEFAULT 0,
  `09_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `user_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `user_usuwanie` tinyint(1) NOT NULL DEFAULT 0,
  `user_wyswietlanie` tinyint(1) NOT NULL DEFAULT 0,
  `objekt_dodawanie` tinyint(1) NOT NULL DEFAULT 0,
  `objekt_usuwanie` tinyint(1) NOT NULL DEFAULT 0,
  `objekt_edycja` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grupy`
--

INSERT INTO `grupy` (`id`, `nazwa`, `zglaszac`, `weryfikowac`, `zamawiac`, `01_wyswietlanie`, `01_dodawanie`, `01_edycja`, `02_dodawanie`, `02_edycja`, `02_wyswietlanie`, `03_dodawanie`, `03_edycja`, `03_wyswietlanie`, `04_dodawanie`, `04_edycja`, `04_wyswietlanie`, `05_dodawanie`, `05_edycja`, `05_wyswietlanie`, `06_dodawanie`, `06_edycja`, `06_wyswietlanie`, `07_dodawanie`, `07_edycja`, `07_wyswietlanie`, `08_dodawanie`, `08_edycja`, `08_wyswietlanie`, `09_dodawanie`, `09_edycja`, `09_wyswietlanie`, `user_dodawanie`, `user_usuwanie`, `user_wyswietlanie`, `objekt_dodawanie`, `objekt_usuwanie`, `objekt_edycja`) VALUES
(1, 'nowa grupa', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'druga grupa', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'alarmy i anteny', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'brak edycji alarmu', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'test-group', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1),
(6, 'test-group-2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kamery`
--

CREATE TABLE `kamery` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `nr_seryjny` varchar(50) NOT NULL,
  `mac` varchar(17) NOT NULL,
  `model` varchar(100) NOT NULL,
  `podzial_uprawnien` tinyint(1) NOT NULL DEFAULT 0,
  `portHTTP` int(11) DEFAULT NULL,
  `portDANE` int(11) DEFAULT NULL,
  `ipWewnetrzne` varchar(15) DEFAULT NULL,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_grupy` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `stanowisko` varchar(100) DEFAULT NULL,
  `pomieszczenie` varchar(100) DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id`, `id_user`, `id_grupy`, `id_obiektu`, `telefon`, `stanowisko`, `pomieszczenie`, `dataOD`, `dataDO`) VALUES
(3, 3, 2, 22, '333 555 666', 'nauczyciel', '6', '2025-02-20', NULL),
(4, 2, 1, 23, NULL, 'pracownik', '7', '2025-02-20', NULL),
(5, 3, 2, 20, NULL, 'pracownik', '3', '2025-02-20', NULL),
(6, 3, 3, 17, '888 999 000', 'pracownik', '55', '2025-02-21', NULL),
(7, 4, 4, 22, '111 111 111', 'nauczyciel', '1', '2025-02-21', NULL),
(8, 5, 5, 1, '111 111 111', 'test 1', '0', '2025-07-02', NULL),
(9, 5, 6, 2, '000 000 000', 'test 2', '1', '2025-07-02', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `laptopy`
--

CREATE TABLE `laptopy` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `nr_seryjny` varchar(50) NOT NULL,
  `model` varchar(100) NOT NULL,
  `podzial_uprawnien` tinyint(1) NOT NULL DEFAULT 0,
  `system_operacyjny` varchar(50) NOT NULL,
  `rodzaj_dysku` varchar(50) NOT NULL,
  `data_wymiany_dysku` date DEFAULT NULL,
  `ram` int(10) UNSIGNED NOT NULL,
  `karta_graficzna` tinyint(1) NOT NULL DEFAULT 0,
  `plyta_glowna` varchar(100) NOT NULL,
  `zasilacz` varchar(100) NOT NULL,
  `program_zdalny` varchar(100) DEFAULT NULL,
  `id_programu` varchar(50) DEFAULT NULL,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptopy`
--

INSERT INTO `laptopy` (`id`, `id_obiektu`, `nr_seryjny`, `model`, `podzial_uprawnien`, `system_operacyjny`, `rodzaj_dysku`, `data_wymiany_dysku`, `ram`, `karta_graficzna`, `plyta_glowna`, `zasilacz`, `program_zdalny`, `id_programu`, `uwagi`, `notatki`, `dataOD`, `dataDO`) VALUES
(2, 17, '', 'test 5', 0, '', '', NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 22, '555', 'test', 0, '', '', NULL, 0, 0, '', '', NULL, NULL, 'slabo dziala', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `message022025`
--

CREATE TABLE `message022025` (
  `id` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `godzina` time NOT NULL,
  `tresc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message022025`
--

INSERT INTO `message022025` (`id`, `id_ticket`, `id_klienta`, `data`, `godzina`, `tresc`) VALUES
(1, 2, 3, '2025-02-23', '14:30:00', 'Nie mogę zalogować się na swoje konto, pojawia się błąd 403.'),
(2, 3, 3, '2025-02-23', '21:14:11', 'test'),
(3, 4, 3, '2025-02-23', '21:14:11', 'test 2'),
(4, 5, 3, '2025-02-23', '21:18:58', 'test 3'),
(5, 6, 3, '2025-02-23', '21:34:07', 'test 4'),
(6, 7, 3, '2025-02-23', '21:38:02', 'test 5'),
(7, 2, NULL, '0000-00-00', '12:50:00', 'dziekuje za zgloszenie juz sie tym zajmuje'),
(8, 4, NULL, '0000-00-00', '00:00:00', 'dziejuje juz sie tym zajmuje'),
(9, 2, NULL, '0000-00-00', '12:50:00', 'juz sie tym zajmuje'),
(10, 2, 3, '2025-02-24', '14:30:00', 'To jest przykładowa treść wiadomości.'),
(11, 2, 3, '2025-02-24', '22:32:45', 'test'),
(12, 2, 3, '2025-02-24', '22:38:26', 'test 2'),
(13, 6, 3, '2025-02-24', '22:39:55', 'nastepna wiadomosc'),
(14, 2, 3, '2025-02-25', '14:12:21', ''),
(15, 2, NULL, '2025-02-25', '19:19:05', 'wiadomosc admina'),
(16, 8, 4, '2025-02-25', '16:23:51', 'tresc zgloszenia user'),
(17, 8, NULL, '2025-02-25', '19:25:30', 'odpowiedz administratora'),
(18, 2, NULL, '2025-02-25', '23:51:02', 'wiadomosc od admina\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `message062025`
--

CREATE TABLE `message062025` (
  `id` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `godzina` time NOT NULL,
  `tresc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message062025`
--

INSERT INTO `message062025` (`id`, `id_ticket`, `id_klienta`, `data`, `godzina`, `tresc`) VALUES
(1, 1, 4, '2025-06-30', '20:40:11', 'test test'),
(2, 1, 4, '2025-06-30', '20:40:47', 'test 2'),
(3, 2, 4, '2025-06-30', '20:40:11', 'test 2 test 2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `message072025`
--

CREATE TABLE `message072025` (
  `id` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `godzina` time NOT NULL,
  `tresc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message072025`
--

INSERT INTO `message072025` (`id`, `id_ticket`, `id_klienta`, `data`, `godzina`, `tresc`) VALUES
(1, 1, 4, '2025-07-02', '22:56:13', 'test 1'),
(2, 1, 4, '2025-07-02', '22:59:28', 'test'),
(3, 1, NULL, '2025-07-02', '22:59:40', 'test');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nvr`
--

CREATE TABLE `nvr` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `nr_seryjny` varchar(255) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `podzial_uprawnien` tinyint(1) NOT NULL DEFAULT 0,
  `model_dysku` varchar(255) DEFAULT NULL,
  `wielkoscDysku` int(11) DEFAULT NULL,
  `dataWymianyDysku` date DEFAULT NULL,
  `portHTTP` int(11) DEFAULT NULL,
  `portDANE` int(11) DEFAULT NULL,
  `iloscKamer` int(11) DEFAULT NULL,
  `ipWewnetrzne` varchar(255) DEFAULT NULL,
  `ipZewnetrzne` varchar(255) DEFAULT NULL,
  `p2p` tinyint(1) NOT NULL DEFAULT 0,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obiekty`
--

CREATE TABLE `obiekty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `kod_pocztowy` varchar(10) NOT NULL,
  `miejscowosc` varchar(100) NOT NULL,
  `ul` varchar(150) NOT NULL,
  `nr_budynku` varchar(10) NOT NULL,
  `nr_lokalu` varchar(10) DEFAULT NULL,
  `pietro` varchar(10) DEFAULT NULL,
  `kod_domofonu` varchar(20) DEFAULT NULL,
  `szerokosc_g` decimal(10,8) DEFAULT NULL,
  `dlugosc_g` decimal(11,8) DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL,
  `klient_wlasny` tinyint(1) DEFAULT 0,
  `przekazany_p` varchar(255) DEFAULT NULL,
  `uwagi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obiekty`
--

INSERT INTO `obiekty` (`id`, `nazwa`, `kod_pocztowy`, `miejscowosc`, `ul`, `nr_budynku`, `nr_lokalu`, `pietro`, `kod_domofonu`, `szerokosc_g`, `dlugosc_g`, `dataOD`, `dataDO`, `klient_wlasny`, `przekazany_p`, `uwagi`) VALUES
(1, 'Sklep ABC', '00-001', 'Warszawa', 'Marszałkowska', '10', '2', '1', '1234', 52.22980000, 21.01220000, '2024-01-01', '2024-12-31', 1, 'Jan Kowalski', 'Nowy klient'),
(2, 'Restauracja XYZ', '30-002', 'Kraków', 'Floriańska', '5', NULL, NULL, NULL, 50.06140000, 19.93720000, '2024-02-15', '2025-02-15', 0, NULL, ''),
(3, 'Biuro Beta', '40-003', 'Katowice', 'Chorzowska', '20', '4', '2', '5678', 50.25920000, 19.02140000, '2023-06-01', '2024-06-01', 1, 'Anna Nowak', ''),
(4, 'Magazyn Delta', '50-004', 'Wrocław', 'Legnicka', '30', NULL, NULL, NULL, 51.10790000, 17.03850000, '2022-05-10', '2024-12-31', 0, 'Marek Wiśniewski', ''),
(5, 'Salon Fryzjerski', '60-005', 'Poznań', 'Święty Marcin', '12', '3', '1', '1111', 52.40640000, 16.92520000, '2023-03-20', '2025-03-20', 1, 'Ewa Dąbrowska', 'Stały klient'),
(6, 'Apteka Zdrowie', '70-006', 'Szczecin', 'Wojska Polskiego', '8', '1', 'parter', '9999', 53.42850000, 14.55280000, '2024-04-10', '2025-04-10', 0, NULL, ''),
(7, 'Hotel Grand', '80-007', 'Gdańsk', 'Długa', '15', '5', '3', '5432', 54.35200000, 18.64660000, '2022-07-15', '2025-07-15', 1, 'Krzysztof Krawczyk', ''),
(8, 'Warsztat AutoFix', '90-008', 'Łódź', 'Piotrkowska', '50', NULL, NULL, NULL, 51.75920000, 19.45500000, '2023-10-05', '2024-10-05', 0, 'Janusz Malinowski', ''),
(9, 'Galeria Handlowa', '10-009', 'Olsztyn', 'Kościuszki', '100', NULL, NULL, NULL, 53.77840000, 20.48010000, '2022-12-01', '2026-12-01', 1, NULL, 'Wielkopowierzchniowy obiekt'),
(10, 'Siłownia FitLife', '20-010', 'Lublin', 'Zana', '25', '2', '1', '2020', 51.24780000, 22.55600000, '2023-09-12', '2025-09-12', 0, 'Andrzej Kwiatkowski', ''),
(11, 'Kawiarnia Aroma', '30-011', 'Kraków', 'Grodzka', '7', NULL, NULL, NULL, 50.06190000, 19.93690000, '2024-02-10', '2025-02-10', 1, 'Zofia Jabłońska', ''),
(12, 'Biblioteka Miejska', '40-012', 'Katowice', 'Sokolska', '3', '1', 'parter', NULL, 50.25950000, 19.01940000, '2023-05-01', '2026-05-01', 0, NULL, ''),
(13, 'Teatr Wielki', '50-013', 'Wrocław', 'Świdnicka', '1', NULL, NULL, NULL, 51.10750000, 17.03820000, '2023-11-01', '2026-11-01', 1, 'Dominik Nowicki', ''),
(14, 'Sklep RTV AGD', '60-014', 'Poznań', 'Półwiejska', '10', NULL, NULL, NULL, 52.40600000, 16.92930000, '2022-08-20', '2025-08-20', 0, NULL, ''),
(15, 'Park Rozrywki', '70-015', 'Szczecin', 'Niemierzyńska', '99', NULL, NULL, NULL, 53.42890000, 14.55250000, '2023-06-15', '2026-06-15', 1, 'Aleksander Domański', ''),
(16, 'Szkoła Podstawowa', '80-016', 'Gdańsk', 'Górska', '20', '1', 'parter', '4444', 54.35050000, 18.64590000, '2022-04-05', '2025-04-05', 0, 'Barbara Lis', ''),
(17, 'Dom Kultury', '90-017', 'Łódź', 'Narutowicza', '5', NULL, NULL, NULL, 51.75990000, 19.45610000, '2023-07-30', '2026-07-30', 1, 'Michał Zieliński', ''),
(18, 'Komis Samochodowy', '10-018', 'Olsztyn', 'Jagiellońska', '45', NULL, NULL, NULL, 53.77820000, 20.48100000, '2024-01-15', '2026-01-15', 0, NULL, ''),
(19, 'Piekarnia Smak', '20-019', 'Lublin', 'Racławickie', '15', '2', '1', '9876', 51.24750000, 22.55550000, '2023-09-01', '2026-09-01', 1, 'Janina Kowal', ''),
(20, 'Stacja Paliw', '30-020', 'Kraków', 'Zakopiańska', '77', NULL, NULL, NULL, 50.06010000, 19.93770000, '2022-10-10', '2025-10-10', 0, NULL, ''),
(21, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2025-02-19', NULL, 0, NULL, NULL),
(22, 'szkola', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2025-02-20', NULL, 0, NULL, NULL),
(23, 'urzad miasta', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2025-02-20', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oprogramowania`
--

CREATE TABLE `oprogramowania` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `opis` text DEFAULT NULL,
  `klucz` varchar(255) DEFAULT NULL,
  `administrator` tinyint(1) NOT NULL DEFAULT 0,
  `przypisany_do` varchar(255) DEFAULT NULL,
  `data_aktywacji` date DEFAULT NULL,
  `data_waznosci` date DEFAULT NULL,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pc`
--

CREATE TABLE `pc` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `nr_seryjny` varchar(50) NOT NULL,
  `podzial_uprawnien` tinyint(1) NOT NULL DEFAULT 0,
  `system_operacyjny` varchar(50) NOT NULL,
  `rodzaj_dysku` varchar(50) NOT NULL,
  `data_wymiany_dysku` date DEFAULT NULL,
  `ram` int(11) NOT NULL CHECK (`ram` >= 0),
  `karta_graficzna` tinyint(1) NOT NULL CHECK (`karta_graficzna` in (0,1)),
  `plyta_glowna` varchar(100) NOT NULL,
  `zasilacz` varchar(100) NOT NULL,
  `program_zdalny` varchar(100) DEFAULT NULL,
  `id_programu` int(11) DEFAULT NULL,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pc`
--

INSERT INTO `pc` (`id`, `id_obiektu`, `nr_seryjny`, `podzial_uprawnien`, `system_operacyjny`, `rodzaj_dysku`, `data_wymiany_dysku`, `ram`, `karta_graficzna`, `plyta_glowna`, `zasilacz`, `program_zdalny`, `id_programu`, `uwagi`, `notatki`, `dataOD`, `dataDO`) VALUES
(1, 22, '444', 0, 'pc szkolny szymona', '', '0000-00-00', 0, 0, '', '', '', 0, '', '', '2025-02-21', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozostale`
--

CREATE TABLE `pozostale` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `zasadaDzialania` text DEFAULT NULL,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `routers`
--

CREATE TABLE `routers` (
  `id` int(11) NOT NULL,
  `id_obiektu` int(11) NOT NULL,
  `nr_seryjny` varchar(255) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `macWAN` varchar(255) DEFAULT NULL,
  `ipwew` varchar(255) DEFAULT NULL,
  `ipzew` varchar(255) DEFAULT NULL,
  `podzial_uprawnien` tinyint(1) NOT NULL DEFAULT 0,
  `portHTTP` int(11) DEFAULT NULL,
  `portDANE` int(11) DEFAULT NULL,
  `VPNklien` tinyint(1) NOT NULL DEFAULT 0,
  `VPNzazadzanie` tinyint(1) NOT NULL DEFAULT 0,
  `uwagi` text DEFAULT NULL,
  `notatki` text DEFAULT NULL,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ticket022025`
--

CREATE TABLE `ticket022025` (
  `id` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tytul` varchar(255) NOT NULL,
  `priorytet` int(11) NOT NULL,
  `data` date NOT NULL,
  `godzina` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket022025`
--

INSERT INTO `ticket022025` (`id`, `id_klienta`, `status`, `tytul`, `priorytet`, `data`, `godzina`) VALUES
(2, 3, 5, 'Problem z logowaniem', 1, '2025-02-23', '14:30:00'),
(3, 3, 1, 'test', 1, '2025-02-23', '21:14:11'),
(4, 3, 1, 'test 2', 1, '2025-02-23', '21:14:11'),
(5, 3, 1, 'test 3 ', 1, '2025-02-23', '21:18:58'),
(6, 3, 1, 'test 4', 1, '2025-02-23', '21:34:07'),
(7, 3, 1, 'test 5', 1, '2025-02-23', '21:38:02'),
(8, 4, 2, 'zgloszenie user', 5, '2025-02-25', '16:23:51');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ticket062025`
--

CREATE TABLE `ticket062025` (
  `id` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tytul` varchar(255) NOT NULL,
  `priorytet` int(11) NOT NULL,
  `data` date NOT NULL,
  `godzina` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket062025`
--

INSERT INTO `ticket062025` (`id`, `id_klienta`, `status`, `tytul`, `priorytet`, `data`, `godzina`) VALUES
(1, 4, 1, 'test', 1, '2025-06-30', '20:40:11'),
(2, 4, 1, 'test 2', 1, '2025-06-30', '20:40:11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ticket072025`
--

CREATE TABLE `ticket072025` (
  `id` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tytul` varchar(255) NOT NULL,
  `priorytet` int(11) NOT NULL,
  `data` date NOT NULL,
  `godzina` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket072025`
--

INSERT INTO `ticket072025` (`id`, `id_klienta`, `status`, `tytul`, `priorytet`, `data`, `godzina`) VALUES
(1, 4, 4, 'test 1', 4, '2025-07-02', '22:56:13');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(100) NOT NULL,
  `nazwisko` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `haslo` varchar(255) NOT NULL,
  `klucz_szyfrujacy` varchar(255) DEFAULT NULL,
  `logowanie_dwuetapowe` tinyint(1) NOT NULL DEFAULT 0,
  `dataOD` date DEFAULT NULL,
  `dataDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `imie`, `nazwisko`, `email`, `haslo`, `klucz_szyfrujacy`, `logowanie_dwuetapowe`, `dataOD`, `dataDO`) VALUES
(2, 'user', 'user', 'user@gmail.com', '$2b$10$skn.GRLbNVIeHXfYnMoufOHmzLpH76KLwTsJolc762nSWCq7NOAYe', NULL, 0, '2025-02-20', NULL),
(3, 'szymon', 'Herczyński', 'szymers12345@gmail.com', '$2b$10$zhb9HG9DwN3GwmTYLwKL4.GNtJPNw89KlQfrE/YG1AI61WUnF1N5O', NULL, 0, '2025-02-20', NULL),
(4, 'Maciej', 'Kuszynski', 'maciej@gmail.com', '$2b$10$o581lLK5xjAk88MsfumZq.7PNqO9MnMQoNumKtIic1tA9VoWVoPvq', NULL, 0, '2025-02-20', NULL),
(5, 'test', 'test', 'test@gmail.com', '$2b$10$t3owKEKCJMuTtiRKVFUgieZp.qIGHO6eyQT7qlhfQDqfLQJVZiShq', NULL, 0, '2025-07-02', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `alarmy`
--
ALTER TABLE `alarmy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `anteny`
--
ALTER TABLE `anteny`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `grupy`
--
ALTER TABLE `grupy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kamery`
--
ALTER TABLE `kamery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_grupy` (`id_grupy`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `laptopy`
--
ALTER TABLE `laptopy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nr_seryjny` (`nr_seryjny`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `message022025`
--
ALTER TABLE `message022025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ticket` (`id_ticket`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- Indeksy dla tabeli `message062025`
--
ALTER TABLE `message062025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ticket` (`id_ticket`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- Indeksy dla tabeli `message072025`
--
ALTER TABLE `message072025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ticket` (`id_ticket`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- Indeksy dla tabeli `nvr`
--
ALTER TABLE `nvr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `obiekty`
--
ALTER TABLE `obiekty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oprogramowania`
--
ALTER TABLE `oprogramowania`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nr_seryjny` (`nr_seryjny`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `pozostale`
--
ALTER TABLE `pozostale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `routers`
--
ALTER TABLE `routers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obiektu` (`id_obiektu`);

--
-- Indeksy dla tabeli `ticket022025`
--
ALTER TABLE `ticket022025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- Indeksy dla tabeli `ticket062025`
--
ALTER TABLE `ticket062025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- Indeksy dla tabeli `ticket072025`
--
ALTER TABLE `ticket072025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alarmy`
--
ALTER TABLE `alarmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `anteny`
--
ALTER TABLE `anteny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grupy`
--
ALTER TABLE `grupy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kamery`
--
ALTER TABLE `kamery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `laptopy`
--
ALTER TABLE `laptopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message022025`
--
ALTER TABLE `message022025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message062025`
--
ALTER TABLE `message062025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message072025`
--
ALTER TABLE `message072025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nvr`
--
ALTER TABLE `nvr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obiekty`
--
ALTER TABLE `obiekty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oprogramowania`
--
ALTER TABLE `oprogramowania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pc`
--
ALTER TABLE `pc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pozostale`
--
ALTER TABLE `pozostale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routers`
--
ALTER TABLE `routers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket022025`
--
ALTER TABLE `ticket022025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ticket062025`
--
ALTER TABLE `ticket062025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket072025`
--
ALTER TABLE `ticket072025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alarmy`
--
ALTER TABLE `alarmy`
  ADD CONSTRAINT `alarmy_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `anteny`
--
ALTER TABLE `anteny`
  ADD CONSTRAINT `anteny_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `kamery`
--
ALTER TABLE `kamery`
  ADD CONSTRAINT `kamery_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `klienci`
--
ALTER TABLE `klienci`
  ADD CONSTRAINT `klienci_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `uzytkownicy` (`id`),
  ADD CONSTRAINT `klienci_ibfk_2` FOREIGN KEY (`id_grupy`) REFERENCES `grupy` (`id`),
  ADD CONSTRAINT `klienci_ibfk_3` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `laptopy`
--
ALTER TABLE `laptopy`
  ADD CONSTRAINT `laptopy_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `message022025`
--
ALTER TABLE `message022025`
  ADD CONSTRAINT `message022025_ibfk_1` FOREIGN KEY (`id_ticket`) REFERENCES `ticket022025` (`id`),
  ADD CONSTRAINT `message022025_ibfk_2` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id`);

--
-- Constraints for table `nvr`
--
ALTER TABLE `nvr`
  ADD CONSTRAINT `nvr_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `oprogramowania`
--
ALTER TABLE `oprogramowania`
  ADD CONSTRAINT `oprogramowania_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `pc`
--
ALTER TABLE `pc`
  ADD CONSTRAINT `pc_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `pozostale`
--
ALTER TABLE `pozostale`
  ADD CONSTRAINT `pozostale_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `routers`
--
ALTER TABLE `routers`
  ADD CONSTRAINT `routers_ibfk_1` FOREIGN KEY (`id_obiektu`) REFERENCES `obiekty` (`id`);

--
-- Constraints for table `ticket022025`
--
ALTER TABLE `ticket022025`
  ADD CONSTRAINT `ticket022025_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
