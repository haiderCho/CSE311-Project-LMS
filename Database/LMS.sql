-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 06:07 PM
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
-- Database: `LMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`BookId`, `Author`) VALUES
(10001, 'Toni Morrison'),
(10002, 'Sebastian Barry'),
(10003, 'Anne Michaels'),
(10004, 'Chimamanda Ngozi Adichie'),
(10005, 'Yaa Gyasi'),
(10006, 'Andrea Levy'),
(10007, 'Sylvia Plath'),
(10008, 'Arundhati Roy'),
(10009, 'Chinua Achebe'),
(10010, 'Zadie Smith'),
(10011, 'Helen Fielding'),
(10012, 'Judy Blume'),
(10013, 'James Baldwin'),
(10014, 'Jane Austen'),
(10015, 'Jilly Cooper'),
(10016, 'Zora Neale Hurston'),
(10017, 'M. M. Kaye'),
(10018, 'Elif Shafak'),
(10019, 'Jeanette Winterson'),
(10020, 'Patrick Hamilton'),
(10021, 'Kevin Barry'),
(10022, 'Ken Follett'),
(10023, 'Ernest Hemingway'),
(10024, 'Philip Pullman'),
(10025, 'Walter Scott'),
(10026, 'John Buchan'),
(10027, 'Raymond Chandler'),
(10028, 'Suzanne Collins'),
(10029, 'Patrick O’Brian'),
(10030, 'J. R. R. Tolkien'),
(10031, 'George R. R. Martin'),
(10032, 'Ben Okri'),
(10033, 'Frank Herbert'),
(10034, 'Mary Shelley'),
(10035, 'Marilynne Robinson'),
(10036, 'C. S. Lewis'),
(10037, 'Terry Pratchett'),
(10038, 'Ursula K. Le Guin'),
(10039, 'Neil Gaiman'),
(10040, 'Cormac McCarthy'),
(10041, 'Khaled Hosseini'),
(10042, 'Aldous Huxley'),
(10043, 'Kamila Shamsie'),
(10044, 'William Golding'),
(10045, 'Malorie Blackman'),
(10046, 'James Plunkett'),
(10047, 'Alice Walker'),
(10048, 'Harper Lee'),
(10049, 'Alan Moore'),
(10050, 'Carol Shields'),
(10051, 'V. S. Naipaul'),
(10052, 'John Steinbeck'),
(10053, 'J. M Coetzee'),
(10054, 'Charles Dickens'),
(10055, 'Nell Dunn'),
(10056, 'Alan Sillitoe'),
(10057, 'Brian Moore'),
(10058, 'Muriel Spark'),
(10059, 'Kazuo Ishiguro'),
(10060, 'Jean Rhys'),
(10061, 'L. M. Montgomery'),
(10062, 'Claire Adam'),
(10063, 'Margaret Atwood'),
(10064, 'William Maxwell'),
(10065, 'R. K. Narayan'),
(10066, 'Edna O’Brien'),
(10067, 'J. K. Rowling'),
(10068, 'S. E. Hinton'),
(10069, 'Sue Townsend'),
(10070, 'Stephenie Meyer'),
(10071, 'Vikram Seth'),
(10072, 'Noel Streatfeild'),
(10073, 'Tim Winton'),
(10074, 'Stella Gibbons'),
(10075, 'Dodie Smith'),
(10076, 'George Eliot'),
(10077, 'Armistead Maupin'),
(10078, 'E. Annie Proulx'),
(10079, 'Anne Brontë'),
(10080, 'Roald Dahl'),
(10081, 'James Ellroy'),
(10082, 'Omar El Akkad'),
(10083, 'Bapsi Sidhwa'),
(10084, 'Daphne du Maurier'),
(10085, 'Pat Barker'),
(10086, 'P. D. James'),
(10087, 'Arthur Conan Doyle'),
(10088, 'Mohsin Hamid'),
(10089, 'Patricia Highsmith'),
(10090, 'Graham Greene'),
(10091, 'John Kennedy Toole'),
(10092, 'Herman Melville'),
(10093, 'Craig Thompson'),
(10094, 'Ali Smith'),
(10095, 'Virginia Woolf'),
(10096, 'Angela Carter'),
(10097, 'George Orwell'),
(10098, 'P. G. Wodehouse'),
(10099, 'Salman Rushdie'),
(10100, 'Audre Lorde'),
(10101, 'Toni Morrison'),
(10102, 'Sebastian Barry'),
(10103, 'Anne Michaels'),
(10104, 'Chimamanda Ngozi Adichie'),
(10105, 'Yaa Gyasi'),
(10106, 'Andrea Levy'),
(10107, 'Sylvia Plath'),
(10108, 'Arundhati Roy'),
(10109, 'Chinua Achebe'),
(10110, 'Zadie Smith'),
(10111, 'Helen Fielding'),
(10112, 'Judy Blume'),
(10113, 'James Baldwin'),
(10114, 'Jane Austen'),
(10115, 'Jilly Cooper'),
(10116, 'Zora Neale Hurston'),
(10117, 'M. M. Kaye'),
(10118, 'Elif Shafak'),
(10119, 'Jeanette Winterson'),
(10120, 'Patrick Hamilton'),
(10121, 'Kevin Barry'),
(10122, 'Ken Follett'),
(10123, 'Ernest Hemingway'),
(10124, 'Philip Pullman'),
(10125, 'Walter Scott'),
(10126, 'John Buchan'),
(10127, 'Raymond Chandler'),
(10128, 'Suzanne Collins'),
(10129, 'Patrick O’Brian'),
(10130, 'J. R. R. Tolkien'),
(10131, 'George R. R. Martin'),
(10132, 'Ben Okri'),
(10133, 'Frank Herbert'),
(10134, 'Mary Shelley'),
(10135, 'Marilynne Robinson'),
(10136, 'C. S. Lewis'),
(10137, 'Terry Pratchett'),
(10138, 'Ursula K. Le Guin'),
(10139, 'Neil Gaiman'),
(10140, 'Cormac McCarthy'),
(10141, 'Khaled Hosseini'),
(10142, 'Aldous Huxley'),
(10143, 'Kamila Shamsie'),
(10144, 'William Golding'),
(10145, 'Malorie Blackman'),
(10146, 'James Plunkett'),
(10147, 'Alice Walker'),
(10148, 'Harper Lee'),
(10149, 'Alan Moore'),
(10150, 'Carol Shields'),
(10151, 'V. S. Naipaul'),
(10152, 'John Steinbeck'),
(10153, 'J. M. Coetzee'),
(10154, 'Charles Dickens'),
(10155, 'Nell Dunn'),
(10156, 'Alan Sillitoe'),
(10157, 'Brian Moore'),
(10158, 'Muriel Spark'),
(10159, 'Kazuo Ishiguro'),
(10160, 'Jean Rhys'),
(10161, 'L. M. Montgomery'),
(10162, 'Claire Adam'),
(10163, 'Margaret Atwood'),
(10164, 'William Maxwell'),
(10165, 'R. K. Narayan'),
(10166, 'Edna O’Brien'),
(10167, 'J. K. Rowling'),
(10168, 'S. E. Hinton'),
(10169, 'Sue Townsend'),
(10170, 'Stephenie Meyer'),
(10171, 'Vikram Seth'),
(10172, 'Noel Streatfeild'),
(10173, 'Tim Winton'),
(10174, 'Stella Gibbons'),
(10175, 'Dodie Smith'),
(10176, 'George Eliot'),
(10177, 'Armistead Maupin'),
(10178, 'E. Annie Proulx'),
(10179, 'Anne Brontë'),
(10180, 'Roald Dahl'),
(10181, 'James Ellroy'),
(10182, 'Omar El Akkad'),
(10183, 'Bapsi Sidhwa'),
(10184, 'Daphne du Maurier'),
(10185, 'Pat Barker'),
(10186, 'P. D. James'),
(10187, 'Arthur Conan Doyle'),
(10188, 'Mohsin Hamid'),
(10189, 'Patricia Highsmith'),
(10190, 'Graham Greene'),
(10191, 'John Kennedy Toole'),
(10192, 'Herman Melville'),
(10193, 'Craig Thompson'),
(10194, 'Ali Smith'),
(10195, 'Virginia Woolf'),
(10196, 'Angela Carter'),
(10197, 'George Orwell'),
(10198, 'P. G. Wodehouse'),
(10199, 'Salman Rushdie'),
(10200, 'Audre Lorde'),
(10201, 'Mary Shelley');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  `Availability` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `Title`, `Genre`, `Year`, `Availability`) VALUES
(10001, 'Beloved', 'Novel', 1987, 23),
(10002, 'Days Without End', 'Novel', 2016, 25),
(10003, 'Fugitive Pieces', 'Psychological Fiction', 1996, 25),
(10004, 'Half of a Yellow Sun', 'Historical Fiction', 2006, 25),
(10005, 'Homegoing', 'Historical Fiction', 2016, 25),
(10006, 'Small Island', 'Novel', 2004, 25),
(10007, 'The Bell Jar', 'Psychological Fiction', 1963, 25),
(10008, 'The God of Small Things', 'Psychological Fiction', 1997, 25),
(10009, 'Things Fall Apart', '', 1958, 25),
(10010, 'White Teeth', '', 2000, 25),
(10011, 'Bridget Jones\'s Diary', '', 1996, 25),
(10012, 'Forever...', '', 1975, 25),
(10013, 'Giovanni\'s Room', '', 1956, 25),
(10014, 'Pride and Prejudice', '', 1813, 25),
(10015, 'Riders', '', 1985, 25),
(10016, 'Their Eyes Were Watching God', '', 1937, 25),
(10017, 'The Far Pavilions', '', 1978, 25),
(10018, 'The Forty Rules of Love', '', 2009, 25),
(10019, 'The Passion', '', 1987, 25),
(10020, 'The Slaves of Solitude', '', 1947, 25),
(10021, 'City of Bohane', '', 2011, 25),
(10022, 'Eye of the Needle', '', 1978, 25),
(10023, 'For Whom the Bell Tolls', '', 1940, 25),
(10024, 'His Dark Materials (Trilogy)', '', 1995, 25),
(10025, 'Ivanhoe', '', 1819, 25),
(10026, 'Mr Standfast', '', 1919, 25),
(10027, 'The Big Sleep', '', 1939, 25),
(10028, 'The Hunger Games', '', 2008, 25),
(10029, 'The Jack Aubrey Novels', '', 1969, 25),
(10030, 'The Lord of the Rings', '', 1954, 25),
(10031, 'A Game of Thrones', '', 1996, 25),
(10032, 'Astonishing the Gods', '', 1995, 25),
(10033, 'Dune', '', 1966, 25),
(10034, 'Frankenstein', '', 1818, 25),
(10035, 'Gilead', '', 2004, 25),
(10036, 'The Chronicles of Narnia', 'Fantasy', 1950, 25),
(10037, 'The Discworld Series', '', 1983, 25),
(10038, 'The Earthsea Trilogy', '', 1968, 25),
(10039, 'The Sandman Series', '', 1989, 25),
(10040, 'The Road', '', 2006, 25),
(10041, 'A Thousand Splendid Suns', '', 2007, 25),
(10042, 'Brave New World', '', 1932, 25),
(10043, 'Home Fire', '', 2017, 25),
(10044, 'Lord of the Flies', 'Novel', 1954, 25),
(10045, 'Noughts & Crosses', '', 2001, 25),
(10046, 'Strumpet City', '', 1979, 25),
(10047, 'The Color Purple', '', 1982, 25),
(10048, 'To Kill a Mockingbird', '', 1960, 25),
(10049, 'V for Vendetta', '', 1982, 24),
(10050, 'Unless', '', 2002, 25),
(10051, 'A House for Mr Biswas', 'Novel', 1961, 25),
(10052, 'Cannery Row', '', 1945, 25),
(10053, 'Disgrace', '', 1999, 25),
(10054, 'Our Mutual Friend', '', 1864, 25),
(10055, 'Poor Cow', '', 1967, 25),
(10056, 'Saturday Night and Sunday Morning', '', 1958, 25),
(10057, 'The Lonely Passion of Judith Hearne', '', 1955, 25),
(10058, 'The Prime of Miss Jean Brodie', '', 1961, 25),
(10059, 'The Remains of the Day', '', 1989, 25),
(10060, 'Wide Sargasso Sea', '', 1966, 25),
(10061, 'Emily of New Moon', '', 1923, 25),
(10062, 'Golden Child', '', 2019, 25),
(10063, 'Oryx and Crake', '', 2003, 25),
(10064, 'So Long, See You Tomorrow', '', 1979, 25),
(10065, 'Swami and Friends', '', 1935, 25),
(10066, 'The Country Girls', '', 1960, 25),
(10067, 'Harry Potter series', '', 1997, 25),
(10068, 'The Outsiders', '', 1967, 25),
(10069, 'The Secret Diary of Adrian Mole, Aged 13 ¾', '', 1982, 25),
(10070, 'The Twilight Saga', 'Fantasy', 2005, 25),
(10071, 'A Suitable Boy', '', 1993, 25),
(10072, 'Ballet Shoes', '', 1935, 25),
(10073, 'Cloudstreet', '', 1991, 25),
(10074, 'Cold Comfort Farm', '', 1932, 25),
(10075, 'I Capture the Castle', '', 1948, 25),
(10076, 'Middlemarch', '', 1871, 25),
(10077, 'Tales of the City', '', 1978, 25),
(10078, 'The Shipping News', '', 1993, 25),
(10079, 'The Tenant of Wildfell Hall', '', 1848, 25),
(10080, 'The Witches', '', 1983, 25),
(10081, 'American Tabloid', '', 1995, 25),
(10082, 'American War', '', 2017, 25),
(10083, 'Ice Candy Man', '', 1988, 25),
(10084, 'Rebecca', '', 1938, 25),
(10085, 'Regeneration', '', 1991, 25),
(10086, 'The Children of Men', '', 1992, 25),
(10087, 'The Hound of the Baskervilles', '', 1901, 25),
(10088, 'The Reluctant Fundamentalist', '', 2007, 25),
(10089, 'The Talented Mr. Ripley', '', 1955, 25),
(10090, 'The Quiet American', '', 1955, 25),
(10091, 'A Confederacy of Dunces', '', 1980, 25),
(10092, 'Bartleby, the Scrivener', '', 1853, 25),
(10093, 'Habibi', '', 2011, 25),
(10094, 'How to Be Both', '', 2014, 25),
(10095, 'Orlando', '', 1928, 25),
(10096, 'Nights at the Circus', '', 1984, 25),
(10097, 'Nineteen Eighty-Four', '', 1949, 24),
(10098, 'Psmith, Journalist', '', 1909, 25),
(10099, 'The Moor\'s Last Sigh', '', 1995, 25),
(10100, 'Zami: A New Spelling of My Name', '', 1982, 25),
(10101, 'Beloved', '', 1987, 25),
(10102, 'Days Without End', '', 2016, 25),
(10103, 'Fugitive Pieces', '', 1996, 25),
(10104, 'Half of a Yellow Sun', '', 2006, 25),
(10105, 'Homegoing', '', 2016, 25),
(10106, 'Small Island', '', 2004, 25),
(10107, 'The Bell Jar', '', 1963, 25),
(10108, 'The God of Small Things', '', 1997, 25),
(10109, 'Things Fall Apart', '', 1958, 25),
(10110, 'White Teeth', '', 2000, 25),
(10111, 'Bridget Jones\'s Diary', '', 1996, 25),
(10112, 'Forever...', '', 1975, 25),
(10113, 'Giovanni\'s Room', '', 1956, 25),
(10114, 'Pride and Prejudice', '', 1813, 25),
(10115, 'Riders', '', 1985, 25),
(10116, 'Their Eyes Were Watching God', '', 1937, 25),
(10117, 'The Far Pavilions', '', 1978, 25),
(10118, 'The Forty Rules of Love', '', 2009, 25),
(10119, 'The Passion', '', 1987, 25),
(10120, 'The Slaves of Solitude', '', 1947, 25),
(10121, 'City of Bohane', '', 2011, 24),
(10122, 'Eye of the Needle', '', 1978, 24),
(10123, 'For Whom the Bell Tolls', '', 1940, 24),
(10124, 'His Dark Materials (trilogy, 25)', '', 1995, 25),
(10125, 'Ivanhoe', '', 1819, 25),
(10126, 'Mr Standfast', '', 1919, 24),
(10127, 'The Big Sleep', '', 1939, 25),
(10128, 'The Hunger Games', '', 2008, 23),
(10129, 'The Jack Aubrey Novels', '', 1969, 25),
(10130, 'The Lord of the Rings', '', 1954, 24),
(10131, 'A Game of Thrones', '', 1996, 24),
(10132, 'Astonishing the Gods', '', 1995, 25),
(10133, 'Dune', '', 1966, 24),
(10134, 'Frankenstein', '', 1818, 24),
(10135, 'Gilead', '', 2004, 25),
(10136, 'The Chronicles of Narnia', '', 1950, 24),
(10137, 'The Discworld Series', '', 1983, 25),
(10138, 'The Earthsea Trilogy', '', 1968, 25),
(10139, 'The Sandman Series', '', 1989, 24),
(10140, 'The Road', '', 2006, 25),
(10141, 'A Thousand Splendid Suns', '', 2007, 24),
(10142, 'Brave New World', '', 1932, 25),
(10143, 'Home Fire', '', 2017, 25),
(10144, 'Lord of the Flies', '', 1954, 25),
(10145, 'Noughts & Crosses', '', 2001, 25),
(10146, 'Strumpet City', '', 1979, 25),
(10147, 'The Color Purple', '', 1982, 25),
(10148, 'To Kill a Mockingbird', '', 1960, 25),
(10149, 'V for Vendetta', '', 1982, 25),
(10150, 'Unless', '', 2002, 24),
(10151, 'A House for Mr Biswas', '', 1961, 24),
(10152, 'Cannery Row', '', 1945, 25),
(10153, 'Disgrace', '', 1999, 24),
(10154, 'Our Mutual Friend', '', 1864, 25),
(10155, 'Poor Cow', '', 1967, 25),
(10156, 'Saturday Night and Sunday Morning', '', 1958, 25),
(10157, 'The Lonely Passion of Judith Hearne', '', 1955, 25),
(10158, 'The Prime of Miss Jean Brodie', '', 1961, 25),
(10159, 'The Remains of the Day', '', 1989, 25),
(10160, 'Wide Sargasso Sea', '', 1966, 25),
(10161, 'Emily of New Moon', '', 1923, 25),
(10162, 'Golden Child', '', 2019, 25),
(10163, 'Oryx and Crake', '', 2003, 25),
(10164, 'So Long, See You Tomorrow', '', 1979, 25),
(10165, 'Swami and Friends', '', 1935, 25),
(10166, 'The Country Girls', '', 1960, 25),
(10167, 'Harry Potter series', '', 1997, 25),
(10168, 'The Outsiders', '', 1967, 25),
(10169, 'The Secret Diary of Adrian Mole, Aged 13 ¾', '', 1982, 25),
(10170, 'The Twilight Saga', '', 2005, 25),
(10171, 'A Suitable Boy', '', 1993, 25),
(10172, 'Ballet Shoes', '', 1935, 25),
(10173, 'Cloudstreet', '', 1991, 25),
(10174, 'Cold Comfort Farm', '', 1932, 25),
(10175, 'I Capture the Castle', '', 1948, 25),
(10176, 'Middlemarch', '', 1871, 25),
(10177, 'Tales of the City', '', 1978, 25),
(10178, 'The Shipping News', '', 1993, 25),
(10179, 'The Tenant of Wildfell Hall', '', 1848, 25),
(10180, 'The Witches', '', 1983, 25),
(10181, 'American Tabloid', '', 1995, 25),
(10182, 'American War', '', 2017, 25),
(10183, 'Ice Candy Man', '', 1988, 25),
(10184, 'Rebecca', '', 1938, 25),
(10185, 'Regeneration', '', 1991, 25),
(10186, 'The Children of Men', '', 1992, 25),
(10187, 'The Hound of the Baskervilles', '', 1901, 25),
(10188, 'The Reluctant Fundamentalist', '', 2007, 25),
(10189, 'The Talented Mr. Ripley', '', 1955, 25),
(10190, 'The Quiet American', '', 1955, 25),
(10191, 'A Confederacy of Dunces', '', 1980, 25),
(10192, 'Bartleby, the Scrivener', '', 1853, 25),
(10193, 'Habibi', '', 2011, 25),
(10194, 'How to Be Both', '', 2014, 25),
(10195, 'Orlando', '', 1928, 25),
(10196, 'Nights at the Circus', '', 1984, 25),
(10197, 'Nineteen Eighty-Four', '', 1949, 24),
(10198, 'Psmith, Journalist', '', 1909, 25),
(10199, 'The Moor\'s Last Sigh', '', 1995, 25),
(10200, 'Zami: A New Spelling of My Name', '', 1982, 25),
(10201, 'Mathilda', 'Novel', 1959, 25);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `Personal_ID` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`M_Id`, `Personal_ID`, `Msg`, `Date`, `Time`) VALUES
(36, 'ST1636587562', 'Your request for issue of BookId: 10136 has been accepted', '2022-11-01', '00:13:51'),
(37, 'ST1636587562', 'Your request for issue of BookId: 10134 has been accepted', '2022-11-01', '00:13:54'),
(38, 'ST1636587562', 'Your request for issue of BookId: 10133 has been accepted', '2022-11-01', '00:13:57'),
(39, 'ST1636587562', 'Your request for issue of BookId: 10130 has been accepted', '2022-11-01', '00:14:00'),
(40, 'ST1636587562', 'Your request for issue of BookId: 10139 has been accepted', '2022-11-01', '00:14:03'),
(41, 'ST1636587562', 'Your request for issue of BookId: 10148 has been accepted', '2022-11-01', '00:14:06'),
(42, 'ST1636577567', 'Your request for issue of BookId: 10131 has been accepted', '2022-11-03', '17:32:25'),
(43, 'ST1646587562', 'Your request for issue of BookId: 10121 has been accepted', '2022-11-03', '17:32:29'),
(44, 'ST1646587562', 'Your request for issue of BookId: 10126 has been accepted', '2022-11-03', '17:32:32'),
(45, 'ST1636577567', 'Your request for issue of BookId: 10123 has been accepted', '2022-11-03', '17:32:40'),
(46, 'ST1646587562', 'Your request for issue of BookId: 10151 has been accepted', '2022-11-03', '17:32:43'),
(47, 'ST1646587562', 'Your request for issue of BookId: 10141 has been accepted', '2022-11-03', '17:32:46'),
(48, 'ST1656577567', 'Your request for issue of BookId: 10097 has been accepted', '2022-11-30', '18:07:17'),
(49, 'FC1165587969', 'Your request for issue of BookId: 10153  has been accepted', '2022-11-30', '18:07:22'),
(50, 'ST1656577567', 'Your request for issue of BookId: 10128 has been accepted', '2022-12-03', '10:52:11'),
(51, 'FC1165587969', 'Your request for issue of BookId: 10122  has been accepted', '2022-12-03', '10:52:16'),
(52, 'ST1636587562', 'Your request for return of BookId: 10148  has been accepted', '2022-12-03', '10:52:56'),
(53, 'FC1165587969', 'Your request for issue of BookId: 10128  has been accepted', '2022-12-07', '22:08:59'),
(54, 'ST1314563782', 'Your request for issue of BookId: 10105 has been accepted', '2022-12-07', '22:09:01'),
(55, 'ST1314563782', 'Your request for issue of BookId: 10137  has been rejected', '2022-12-07', '22:09:05'),
(56, 'ST1314563782', 'Your request for issue of BookId: 10183 has been accepted', '2022-12-07', '22:09:06'),
(57, 'FC1165587969', 'Your request for issue of BookId: 10150  has been accepted', '2022-12-07', '22:09:09'),
(58, 'ST1314563782', 'Your request for issue of BookId: 10185  has been rejected', '2022-12-07', '22:09:11'),
(59, 'ST1314563782', 'Your request for issue of BookId: 10120 has been accepted', '2022-12-07', '22:09:13'),
(60, 'ST1314563782', 'Your request for return of BookId: 10105  has been accepted', '2022-12-07', '22:21:43'),
(61, 'ST1314563782', 'Your request for return of BookId: 10120  has been accepted', '2022-12-07', '22:21:45'),
(62, 'ST1314563782', 'Your request for return of BookId: 10183  has been accepted', '2022-12-07', '22:21:47'),
(63, 'ST1314563782', 'Your request for issue of BookId: 10137  has been rejected', '2022-12-07', '22:39:49'),
(64, 'ST1314563782', 'Your request for issue of BookId: 10049 has been accepted', '2022-12-07', '22:39:54'),
(65, 'ST1314563782', 'Your request for issue of BookId: 10197 has been accepted', '2022-12-07', '22:39:59'),
(66, 'ST1314563782', 'Your request for issue of BookId: 10001 has been accepted', '2022-12-07', '22:44:46'),
(67, 'FC1165587969', 'Your request for issue of BookId: 10001  has been accepted', '2022-12-07', '22:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `R_ID` int(10) NOT NULL,
  `Book_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Personal_ID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`R_ID`, `Book_Name`, `Description`, `Personal_ID`) VALUES
(11, 'The Hitchhikers Guide to the Galaxy', 'Douglas Adams', 'FC1156567763');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `Personal_ID` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`Personal_ID`, `BookId`, `Date_of_Issue`, `Due_Date`, `Date_of_Return`, `Dues`, `Renewals_left`, `Time`) VALUES
('FC1165587969', 10001, '2022-12-07', '2023-02-05', NULL, NULL, 1, '22:43:10'),
('FC1165587969', 10122, '2022-12-03', '2023-02-01', NULL, NULL, 1, '10:34:36'),
('FC1165587969', 10128, '2022-12-07', '2023-02-05', NULL, NULL, 1, '10:34:33'),
('FC1165587969', 10150, '2022-12-07', '2023-02-05', NULL, NULL, 1, '10:34:38'),
('FC1165587969', 10153, '2022-11-30', '2023-01-29', NULL, NULL, 1, '10:05:07'),
('ST1314563782', 10001, '2022-12-07', '2023-06-05', NULL, NULL, 1, '22:42:49'),
('ST1314563782', 10049, '2022-12-07', '2023-06-05', NULL, NULL, 1, '22:39:20'),
('ST1314563782', 10105, '2022-12-07', '2023-06-05', '2022-12-07', -180, 1, '22:08:33'),
('ST1314563782', 10120, '2022-12-07', '2023-06-05', '2022-12-07', -180, 1, '22:08:29'),
('ST1314563782', 10183, '2022-12-07', '2023-06-05', '2022-12-07', -180, 1, '22:08:40'),
('ST1314563782', 10197, '2022-12-07', '2023-06-05', NULL, NULL, 1, '22:39:26'),
('ST1636577567', 10123, '2022-11-03', '2023-05-02', NULL, NULL, 1, '15:22:59'),
('ST1636577567', 10131, '2022-11-03', '2023-05-02', NULL, NULL, 1, '15:22:57'),
('ST1636587562', 10130, '2022-06-01', '2022-10-30', NULL, NULL, 1, '00:01:10'),
('ST1636587562', 10133, '2022-11-01', '2023-04-30', NULL, NULL, 1, '00:01:07'),
('ST1636587562', 10134, '2022-11-01', '2023-04-30', NULL, NULL, 1, '00:01:03'),
('ST1636587562', 10136, '2022-11-01', '2023-04-30', NULL, NULL, 1, '00:00:57'),
('ST1636587562', 10139, '2022-11-01', '2023-04-30', NULL, NULL, 1, '00:01:17'),
('ST1636587562', 10148, '2022-11-01', '2023-04-30', '2022-12-03', -148, 1, '00:01:21'),
('ST1646587562', 10121, '2022-11-03', '2023-05-02', NULL, NULL, 1, '17:22:25'),
('ST1646587562', 10126, '2022-11-03', '2023-05-02', NULL, NULL, 1, '17:22:22'),
('ST1646587562', 10141, '2022-11-03', '2023-05-02', NULL, NULL, 1, '17:22:27'),
('ST1646587562', 10151, '2022-11-03', '2023-05-02', NULL, NULL, 1, '17:22:19'),
('ST1656577567', 10097, '2022-11-30', '2023-05-29', NULL, NULL, 1, '00:50:04'),
('ST1656577567', 10128, '2022-12-03', '2023-06-01', NULL, NULL, 1, '00:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `Personal_ID` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `renew`
--

INSERT INTO `renew` (`Personal_ID`, `BookId`) VALUES
('ST1314563782', 10049),
('ST1314563782', 10197),
('ST1636587562', 10130);

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `Personal_ID` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`Personal_ID`, `BookId`) VALUES
('ST1314563782', 10049);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Personal_ID` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Personal_ID`, `Name`, `Gender`, `Type`, `EmailId`, `MobNo`, `Password`) VALUES
('ADMIN', 'Admin', 'Male', 'Admin', 'admin@oharamail.com', 1775556666, 'admin'),
('FC1156567763', 'Sayed Mahmud', 'Male', 'Faculty Member', 'sayed@oharamail.com', 1765644264, 'FC1156567763'),
('FC1164587868', 'Fahimul Shubho', 'Male', 'Faculty Member', 'fahimul@oharamail.com', 1766684264, 'FC1164587868'),
('FC1165587969', 'Intisar Tahmeed', 'Male', 'Faculty Member', 'intisar@oharamail.com', 1769654294, 'FC1165587969'),
('FC1177557664', 'Nasrin Akhtar', 'Female', 'Faculty Member', 'nasrin@oharamail.com', 1884654264, 'FC1177557664'),
('FC1189347565', 'Eshrat Jahan', 'Female', 'Faculty Member', 'eshrat@oharamail.com', 1887664264, 'FC1189347565'),
('SF1234860562', 'Salina Shimu', 'Female', 'Staff', 'salina@oharamail.com', 1887664264, 'SF1234860562'),
('SF1286579562', 'Raju Alam', 'Male', 'Staff', 'raju@oharamail.com', 1887664264, 'SF1286579562'),
('ST1116587562', 'Shoeb Hassan', 'Male', 'Student', 'shoeb@oharamail.com', 1687654264, 'ST1116587562'),
('ST1126587562', 'Labib Arafat', 'Male', 'Student', 'labib@oharamail.com', 1637354264, 'ST1126587562'),
('ST1216887262', 'Nakib Rafsan', 'Male', 'Student', 'nakib@oharamail.com', 1787654264, 'ST1216887262'),
('ST1314563782', 'Hasib Arman', 'Male', 'Student', 'hasib@oharamail.com', 1887654264, 'ST1314563782'),
('ST1416588572', 'Sohel Jessan', 'Male', 'Student', 'sohel@oharamail.com', 1987654264, 'ST1416588572'),
('ST1516587562', 'Moheb Yahsan', 'Male', 'Student', 'moheb@oharamail.com', 1387654264, 'ST1516587562'),
('ST1616875262', 'Roheb Mahmud', 'Male', 'Student', 'roheb@oharamail.com', 1788654264, 'ST1616875262'),
('ST1626587568', 'Asif Rezwan', 'Male', 'Student', 'asif@oharamail.com', 1783654264, 'ST1626587568'),
('ST1636577567', 'Sayfullah Nusayer', 'Male', 'Student', 'nusayer@oharamail.com', 1884654264, 'ST1636577567'),
('ST1636587562', 'Fahib Sherafat', 'Male', 'Student', 'fahib@oharamail.com', 1647254264, 'ST1636587562'),
('ST1646577566', 'Nahid Rayhan', 'Male', 'Student', 'nahid@oharamail.com', 1385654264, 'ST1646577566'),
('ST1646587562', 'Shabib Mashroor', 'Male', 'Student', 'shabib@oharamail.com', 1657754264, 'ST1646587562'),
('ST1656577567', 'Sheikh Muntasir', 'Male', 'Student', 'muntasir@oharamail.com', 1586654264, 'ST1656577567'),
('ST1656587562', 'Sakib Bashar', 'Male', 'Student', 'sakib@oharamail.com', 1667854264, 'ST1656587562'),
('ST1666577566', 'Ashraf Chowdhury', 'Male', 'Student', 'ashraf@oharamail.com', 1687654264, 'ST1666577566'),
('ST1666587562', 'Shakib Usman', 'Male', 'Student', 'shakib@oharamail.com', 1677654264, 'ST1666587562'),
('ST1676577565', 'Ittesaf Mazumdar', 'Male', 'Student', 'ittesaf@oharamail.com', 1788654264, 'ST1676577565'),
('ST1676587562', 'Sabbir Hossain', 'Male', 'Student', 'sabbir@oharamail.com', 1387754264, 'ST1676587562'),
('ST1686557560', 'Jamea Hena', 'Female', 'Student', 'jamea@oharamail.com', 1639654264, 'ST1686557560'),
('ST1686557569', 'Fardeena Ahmed', 'Female', 'Student', 'fardeena@oharamail.com', 1319654264, 'ST1686557569'),
('ST1686567560', 'Faria Alam', 'Female', 'Student', 'faria@oharamail.com', 1529754264, 'ST1686567560'),
('ST1686567569', 'Konika Rokeya', 'Female', 'Student', 'konika@oharamail.com', 1749554264, 'ST1686567569'),
('ST1686577563', 'Faiza Kabir', 'Female', 'Student', 'faiza@oharamail.com', 1344654264, 'ST1686577563'),
('ST1686577564', 'Irin Sultana', 'Female', 'Student', 'irin@oharamail.com', 1699654264, 'ST1686577564'),
('ST1686577565', 'Chaiti Mahboob', 'Female', 'Student', 'chaiti@oharamail.com', 1589554264, 'ST1686577565'),
('ST1686577566', 'Iftekhar Lemon', 'Male', 'Student', 'iftekhar@oharamail.com', 1889654264, 'ST1686577566'),
('ST1686577567', 'Sana Sanzida', 'Female', 'Student', 'sana@oharamail.com', 1969554264, 'ST1686577567'),
('ST1686577568', 'Sabrina Suha', 'Female', 'Student', 'sabrina@oharamail.com', 1859654264, 'ST1686577568'),
('ST1686578566', 'Sumaiya Ahmed', 'Female', 'Student', 'sumaiya@oharamail.com', 1779654264, 'ST1686578566'),
('ST1686587569', 'Mushfiqul Islam', 'Male', 'Student', 'mushfiqul@oharamail.com', 1497654264, 'ST1686587569'),
('ST1696587569', 'Shahadat Islam', 'Male', 'Student', 'shahadat@oharamail.com', 1591654264, 'ST1696587569'),
('ST1716585568', 'Abdul Jebon', 'Male', 'Student', 'abdul@oharamail.com', 1682654264, 'ST1716585568'),
('ST1716587562', 'Khabib Yadud', 'Male', 'Student', 'khabib@oharamail.com', 1878854264, 'ST1616587562'),
('ST1721587642', 'Nafiz Haider Chowdhury', 'Male', 'Librarian', 'nafiz@oharamail.com', 1779486666, 'ST1721587642'),
('ST1816587562', 'Nabib Raftar', 'Male', 'Student', 'nabib@oharamail.com', 1617654264, 'ST1816587562'),
('ST1916587562', 'Habib Bahar', 'Male', 'Student', 'habibb@oharamail.com', 1627454264, 'ST1916587562');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`BookId`,`Author`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`Personal_ID`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `RollNo` (`Personal_ID`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`Personal_ID`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`Personal_ID`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`Personal_ID`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Personal_ID`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10202;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `R_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`Personal_ID`) REFERENCES `user` (`Personal_ID`);

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`Personal_ID`) REFERENCES `user` (`Personal_ID`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`Personal_ID`) REFERENCES `user` (`Personal_ID`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `renew`
--
ALTER TABLE `renew`
  ADD CONSTRAINT `renew_ibfk_1` FOREIGN KEY (`Personal_ID`) REFERENCES `user` (`Personal_ID`),
  ADD CONSTRAINT `renew_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `return_ibfk_1` FOREIGN KEY (`Personal_ID`) REFERENCES `user` (`Personal_ID`),
  ADD CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
