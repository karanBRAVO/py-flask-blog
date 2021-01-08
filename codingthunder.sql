-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 02:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '0123456789', 'first post', '2021-01-06 17:48:03', 'firstpost@gmail.com'),
(2, 'karan', '23545657658', 'test msg.', '2021-01-06 20:37:51', 'jhaskd@kjasdlmail.com'),
(3, 'sudiksha', '0194789287', 'Nice website Bro....', '2021-01-07 11:44:19', 'sudiksha@gmail.com'),
(4, 'lahsd', '019484739867', 'test message', '2021-01-07 13:19:39', 'lkajsdlak@lakha.com'),
(5, 'iujaknc', '7463467768', 'pls send ho jaa msg.', '2021-01-07 13:24:23', 'lkajsdlak@lakha.com'),
(6, 'iujaknc', '7463467768', 'pls send ho jaa msg.', '2021-01-07 13:35:10', 'lkajsdlak@lakha.com'),
(7, 'iujaknc', '09988166151', 'pls send ', '2021-01-07 13:37:02', 'jhaskd@kjasdlmail.com'),
(8, 'lahsd', '9898989898', 'pls send ho jaa.', '2021-01-08 10:45:15', 'jhaskd@kjasdlmail.com'),
(9, 'karan', '3234567895', 'send.', '2021-01-08 10:51:47', 'xpresskaran98@gmail.com'),
(10, 'iujaknc', '09988166151', 'pls send.', '2021-01-08 10:55:21', 'jhaskd@kjasdlmail.com'),
(11, 'iujaknc', '3453445645', 'asdfg', '2021-01-08 10:58:23', 'jhaskd@kjasdlmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Let\'s LEARN about STOCK', ' first post', 'first-post', 'Stock (also called capital stock) of a corporation is all of the shares into which ownership of the corporation is divided.[1] In American English, the shares are collectively known as \"stock\".[1] A single share of the stock represents fractional ownership of the corporation in proportion to the total number of shares. This typically entitles the stockholder to that fraction of the company\'s earnings, proceeds from liquidation of assets (after discharge of all senior claims such as secured and unsecured debt),[2] or voting power, often dividing these up in proportion to the amount of money each stockholder has invested. Not all stock is necessarily equal, as certain classes of stock may be issued for example without voting rights, with enhanced voting rights, or with a certain priority to receive profits or liquidation proceeds before or after other classes of shareholders.\r\n\r\nStock can be bought and sold privately or on stock exchanges, and such transactions are typically heavily regulated by governments to prevent fraud, protect investors, and benefit the larger economy. The stocks are deposited with the depositories in the electronic format also known as Demat account. As new shares are issued by a company, the ownership and rights of existing shareholders are diluted in return for cash to sustain or grow the business. Companies can also buy back stock, which often lets investors recoup the initial investment plus capital gains from subsequent rises in stock price. Stock options, issued by many companies as part of employee compensation, do not represent ownership, but represent the right to buy ownership at a future time at a specified price. This would represent a windfall to the employees if the option is exercised when the market price is higher than the promised price, since if they immediately sold the stock they would keep the difference (minus taxes)..', 'post-bg.jpg', '2021-01-08 18:02:03'),
(2, 'Something about Computers', 'coolest post ever.', 'second-post', 'A computer is a machine that can be instructed to carry out sequences of arithmetic or logical operations automatically via computer programming. Modern computers have the ability to follow generalized sets of operations, called programs. These programs enable computers to perform an extremely wide range of tasks. A \"complete\" computer including the hardware, the operating system (main software), and peripheral equipment required and used for \"full\" operation can be referred to as a computer system. This term may as well be used for a group of computers that are connected and work together, in particular a computer network or computer cluster.', 'post-bg.jpg', '2021-01-07 15:22:18'),
(3, 'Computer Hacking', 'Third post', 'third-post', 'A security hacker is someone who explores methods for breaching defenses and exploiting weaknesses in a computer system or network.[1] Hackers may be motivated by a multitude of reasons, such as profit, protest, information gathering,[2] challenge, recreation,[3] or to evaluate system weaknesses to assist in formulating defenses against potential hackers. The subculture that has evolved around hackers is often referred to as the \"computer underground\".[4]\r\n\r\nLongstanding controversy surrounds the meaning of the term \"hacker\". In this controversy, computer programmers reclaim the term hacker, arguing that it refers simply to someone with an advanced understanding of computers and computer networks[5] and that cracker is the more appropriate term for those who break into computers, whether computer criminals (black hats) or computer security experts (white hats).[6][7] A 2014 article noted that \"... the black-hat meaning still prevails among the general public\".[8]', 'post-bg.jpg', '2021-01-07 15:33:36'),
(4, 'History', 'Fourth post', 'fourth-post', 'In computer security, a hacker is someone who focuses on security mechanisms of computer and network systems. While including those who endeavor to strengthen such mechanisms, it is more often used by the mass media and popular culture to refer to those who seek access despite these security measures. That is, the media portrays the \'hacker\' as a villain. Nevertheless, parts of the subculture see their aim in correcting security problems and use the word in a positive sense. White hat is the name given to ethical computer hackers, who utilize hacking in a helpful way. White hats are becoming a necessary part of the information security field.[9] They operate under a code, which acknowledges that breaking into other people\'s computers is bad, but that discovering and exploiting security mechanisms and breaking into computers is still an interesting activity that can be done ethically and legally. Accordingly, the term bears strong connotations that are favorable or pejorative, depending on the context.\r\n\r\nThe subculture around such hackers is termed network hacker subculture, hacker scene, or computer underground. It initially developed in the context of phreaking during the 1960s and the microcomputer BBS scene of the 1980s. It is implicated with 2600: The Hacker Quarterly and the alt.2600 newsgroup.\r\n\r\nIn 1980, an article in the August issue of Psychology Today (with commentary by Philip Zimbardo) used the term \"hacker\" in its title: \"The Hacker Papers\". It was an excerpt from a Stanford Bulletin Board discussion on the addictive nature of computer use. In the 1982 film Tron, Kevin Flynn (Jeff Bridges) describes his intentions to break into ENCOM\'s computer system, saying \"I\'ve been doing a little hacking here\". CLU is the software he uses for this. By 1983, hacking in the sense of breaking computer security had already been in use as computer jargon,[10] but there was no public awareness about such activities.[11] However, the release of the film WarGames that year, featuring a computer intrusion into NORAD, raised the public belief that computer security hackers (especially teenagers) could be a threat to national security. This concern became real when, in the same year, a gang of teenage hackers in Milwaukee, Wisconsin, known as The 414s, broke into computer systems throughout the United States and Canada, including those of Los Alamos National Laboratory, Sloan-Kettering Cancer Center and Security Pacific Bank.[12] The case quickly grew media attention,[12][13] and 17-year-old Neal Patrick emerged as the spokesman for the gang, including a cover story in Newsweek entitled \"Beware: Hackers at play\", with Patrick\'s photograph on the cover.[14] The Newsweek article appears to be the first use of the word hacker by the mainstream media in the pejorative sense.\r\n\r\nPressured by media coverage, congressman Dan Glickman called for an investigation and began work on new laws against computer hacking.[15][16] Neal Patrick testified before the U.S. House of Representatives on September 26, 1983, about the dangers of computer hacking, and six bills concerning computer crime were introduced in the House that year.[16] As a result of these laws against computer criminality, white hat, grey hat and black hat hackers try to distinguish themselves from each other, depending on the legality of their activities. These moral conflicts are expressed in The Mentor\'s \"The Hacker Manifesto\", published 1986 in Phrack.\r\n\r\nUse of the term hacker meaning computer criminal was also advanced by the title \"Stalking the Wily Hacker\", an article by Clifford Stoll in the May 1988 issue of the Communications of the ACM. Later that year, the release by Robert Tappan Morris, Jr. of the so-called Morris worm provoked the popular media to spread this usage. The popularity of Stoll\'s book The Cuckoo\'s Egg, published one year later, further entrenched the term in the public\'s consciousness.', 'post-bg.jpg', '2021-01-07 15:34:41'),
(5, 'Classifications of Hacker\'s', 'fifth post', 'fifth-post', 'Cracker\r\nEric S. Raymond, author of The New Hacker\'s Dictionary, advocates that members of the computer underground should be called crackers. Yet, those people see themselves as hackers and even try to include the views of Raymond in what they see as a wider hacker culture, a view that Raymond has harshly rejected. Instead of a hacker/cracker dichotomy, they emphasize a spectrum of different categories, such as white hat, grey hat, black hat and script kiddie. In contrast to Raymond, they usually reserve the term cracker for more malicious activity.\r\n\r\nAccording to Ralph D. Clifford, a cracker or cracking is to \"gain unauthorized access to a computer in order to commit another crime such as destroying information contained in that system\".[17] These subgroups may also be defined by the legal status of their activities.[18]\r\n\r\nWhite hat\r\nMain article: White hat (computer security)\r\nA white hat hacker breaks security for non-malicious reasons, either to test their own security system, perform penetration tests, or vulnerability assessments for a client - or while working for a security company which makes security software. The term is generally synonymous with ethical hacker, and the EC-Council,[19] among others, have developed certifications, courseware, classes, and online training covering the diverse arena of ethical hacking.[18]\r\n\r\nBlack hat\r\nMain article: Black hat (computer security)\r\nA black hat hacker is a hacker who \"violates computer security for little reason beyond maliciousness or for personal gain\" (Moore, 2005).[20] The term was coined by Richard Stallman, to contrast the maliciousness of a criminal hacker versus the spirit of playfulness and exploration in hacker culture, or the ethos of the white hat hacker who performs hacking duties to identify places to repair or as a means of legitimate employment.[21] Black hat hackers form the stereotypical, illegal hacking groups often portrayed in popular culture, and are \"the epitome of all that the public fears in a computer criminal\".[22]\r\n\r\nGrey hat\r\nMain article: Grey hat\r\nA grey hat hacker lies between a black hat and a white hat hacker. A grey hat hacker may surf the Internet and hack into a computer system for the sole purpose of notifying the administrator that their system has a security defect, for example. They may then offer to correct the defect for a fee.[22] Grey hat hackers sometimes find the defect of a system and publish the facts to the world instead of a group of people. Even though grey hat hackers may not necessarily perform hacking for their personal gain, unauthorized access to a system can be considered illegal and unethical.\r\n\r\nElite hacker\r\nA social status among hackers, elite is used to describe the most skilled. Newly discovered exploits circulate among these hackers. Elite groups such as Masters of Deception conferred a kind of credibility on their members.', 'post-bg.jpg', '2021-01-07 15:36:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
