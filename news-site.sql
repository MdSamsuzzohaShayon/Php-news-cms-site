-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2020 at 03:25 AM
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
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(31, 'Sports', 1),
(32, 'World', 1),
(33, 'Life Style', 0),
(34, 'Science', 0),
(35, 'Environment', 3),
(36, 'Travel', 3),
(38, 'Helth', 2),
(39, 'Politics', 0),
(40, 'Food', 0),
(41, 'Books', 1),
(42, 'Arts', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(58, 'Private equity titans go into battle for Asda', 'Private equity titans go into battle for Asda.  Private equity titans go into battle for Asda\r\nRetail bigwigs Rob Templeman and Paul Mason being drafted in to help Apollo and Lone Star in their drive to win Walmart-owned supermarket', '35', '22 Aug, 2020', 39, 'TELEMMGLPICT000237137584_trans_NvBQzQNjv4BqpVlberWd9EgFPZtcLiMQfyf2A9a6I9YchsjMeADBa08.jpeg'),
(59, 'Portugal finally gets travel corridor, Croatia quarantine is confirmed', 'Portugal has been added to the UK’s travel corridors list, meaning you no longer need to quarantine on return from the country, the Transport Secretary Grant Shapps has just announced in a series of Tweets....\r\n\r\n', '36', '22 Aug, 2020', 39, 'portugal.jpg'),
(60, 'Enough travel refund chaos, it\'s time to create a holiday ombudsman', 'Among the thousands of emails we have received from readers about the problems they have had over the last five months, one particular issue stands out....', '36', '22 Aug, 2020', 39, 'top-places.jpg'),
(61, 'The 20 countries you can visit right now, without any quarantine', 'The Government has given the green light to overseas holidays, but the list of options keeps changing. As of August 20, the FCO no longer advises against trips to 69 destinations, while 68 places can now be visited by Britons without the need to self-isolate on their return....\r\n\r\n', '36', '22 Aug, 2020', 39, 'CROP-croatia-beach-getty.jpg'),
(62, 'As floods wreak havoc, Chalanbeel gets draped in beauty', 'The flood has brought along destruction in its wake. But for Chalanbeel, the flood has brought along a semblance of destructive beauty, resulting in flocks of tourists crowding the area.\r\n\r\nThe entire beel is an endless ocean of water with trees jutting out here and there, breaking the monotony.\r\n\r\nColourful boats slither through the water and fishermen cast their nets, busy in their search for fish. The fame of its beauty has reached far and wide and now people come from all over to experience it, despite the pandemic and flood.\r\n\r\n', '35', '22 Aug, 2020', 32, 'pabna_photo_beauty_in_chalanbeel-9.jpg'),
(63, 'Bonayan hands over 2,000 saplings to Rab', 'Bonayan, the largest private afforestation program in Bangladesh, and Rapid Action Battalion (RAB) are collaborating for a tree plantation program to celebrate \"Mujib Borsho\" -- the birth centennial of the Father of the Nation Bangabandhu Sheikh Mujibur Rahman -- and 40 years of Bonayan, which began in 1980.\r\n\r\nYesterday, on July 14 at Rab Headquarters, Sheikh Shabab Ahmed, Head of External Affairs and Major Md. Monzur Aziz (Retd.), External Affairs Consultant of British American Tobacco Bangladesh, on behalf of the Bonayan program, handed over 2,000 saplings to Additional IGP Mr. Abdullah Al Mamun, DG, Rab and Colonel Tofayel Mustafa Sarwar, Additional DG, Rab to mark the beginning of their collaboration.\r\n\r\nOn its 40th anniversary, the Bonayan program is celebrating Mujib Borsho by planting around 5 million saplings across the country, according to officials of the program.', '35', '22 Aug, 2020', 32, 'Bonayan.jpg'),
(64, 'Unstoppable Bayern ride on ‘outstanding Gnabry, bit of luck’', 'Bayern Munich head into Sunday\'s Champions League final against Paris St Germain in extraordinarily dominant form and with a real chance to become the first team to win the competition with a 100 percent record.\r\n\r\n\"A physio told me before the game that a ball can\'t go in if you don\'t shoot it. Luckily, I shot it and it went in.\"  -Serge Gnabry\r\n\r\nBayern coach Hansi Flick admitted after their 3-0 win that his side needed a bit of luck and the quality of Serge Gnabry to survive early Olympique Lyonnais pressure and book their spot in the final. Winger Gnabry scored twice before Robert Lewandowski added a late third goal but the Bavarians had to survive early pressure from the French side who hit the post.\r\n\r\n\"It was an intense game and we knew it would be like that. Lyon had a great performance, pressured us and we survived it with a bit of luck especially at the start,\" Flick said.', '31', '22 Aug, 2020', 30, 'champions-league-1_0.jpg'),
(46, 'Celebrating indigenous weaving with Tenzing Chakma', 'We have all heard of Tenzing Chakma, a coveted fashion designer of our country. But do we know his story? On this very special day, August 9, 2020 -- International Day of the World\'s Indigenous Peoples, we should familiarise ourselves with the gem that we have amongst ourselves.Tenzing was born in Rangamati. Growing up amongst all the scenic beauty, he wished to somehow incorporate the splendour of his childhood days into his future field of work.\r\n\r\nWith such a unique motivation, Tenzing aspired to be a fashion designer. And so, he went abroad in 1997, to a neighbouring country and took special lessons in his chosen field of study. Upon returning in 2000, he began his journey with the fashion brand, \"Sozpodor\".\r\n\r\n\"Sozpodor has a special meaning in our Chakma language, it refers to an assembly of all sorts of weaving tools in one place,\" said Tenzing.', '33', '18 Aug, 2020', 30, 'Indigenous weaving.jpg'),
(47, 'No new polls in Belarus', 'Belarusian President Alexander Lukashenko rejected calls to step down in a defiant speech to supporters yesterday as tens of thousands of opponents rallied for the biggest demonstration yet against his disputed re-election.\r\n\r\nThe strongman who has ruled the ex-Soviet country for the last 26 years is facing an unprecedented challenge to his leadership from a growing protest movement fanned by a brutal police crackdown.\r\n\r\nIn a rare campaign-style rally in front of flag-waving supporters in central Minsk, Lukashenko said: \"I called you here not to defend me... but for the first time in a quarter-century, to defend your country and its independence.\"\r\n\r\n\"The elections were valid. We will not hand over the country,\" he said.\r\n\r\nAs he spoke, tens of thousands of people walked down Independence Avenue for a \"March for Freedom\" called by the opposition to keep up pressure after a week of demonstrations. Columns of protesters raised victory signs and held flowers and balloons. Many wore white, the colour that has come to symbolise the opposition movement.', '32', '18 Aug, 2020', 30, 'no-polls-belarus.jpg'),
(53, 'WHY STUDY LIBERAL ARTS', 'A teacher takes a class under a huge banyan tree. Instead of taking down notes, students engage in various activities like excavation and collecting ancient artifacts. This is a typical scene of a liberal arts university, which doesn\'t confine students to classrooms rather encourages them to broaden their knowledge through exploration and discovery.\r\nThe first thing on a student\'s mind after finishing, high school is to step into the rat race of conventional wisdom by enrolling into a university. Most universities offer courses that are directly related to a specific degree with little thought to any other subjects.\r\n\r\nBachelors in Business Administration, for instance, one of the most popular subjects to study in university, will allow students to take only business courses without requiring a basic understanding of philosophy or literature. But if we could think of an educational model which aims to train a student not only for a specific job but for a valuable set of employable skills, a liberal arts education would fit the description. The prime objective of higher studies should be to improve the quality of life and wellbeing of people which a liberal arts education is supposed to do.', '42', '20 Aug, 2020', 36, 'arts.jpg'),
(54, 'Let Me Out', 'Mama Mavis, oh\r\nMama, they tried my patience\r\nObama is gone, who is left to save us?\r\nSo together we mourn, I\'m praying for my neighbors', '42', '20 Aug, 2020', 36, 'idlc_theatre_fest_2019.jpg'),
(57, 'Not enough books on Language Movement at Boi Mela', 'Amar Ekushey book fair has always been a manifestation of people\'s love for their mother tongue. On the eve of Ekushey, the fair has been buzzing with people, many of them interested in learning from books on the Language Movement.\r\n\r\nThe Language Movement is of particular interest to the younger generations, as books can be a major medium to learn history from.\r\n\r\nAlthough this is a topic that has been covered by older authors in the past, there are barely a handful of contemporary writers working on it. So readers are left with just a few options.\r\n\r\nOn the other hand, the authorities of Bangla Academy, which had a reputation for publishing such books, did not release new editions of these books at the fair this year as of yet, according to their stall attendants.', '41', '20 Aug, 2020', 37, 'language_movement_books.jpg'),
(51, 'Cardiology group recommends diabetes drugs for CV prevention', 'New guidance from the American College of Cardiology suggests that for patients with diabetes and high cardiovascular (CV) risk, clinicians should consider prescribing sodium-glucose cotransporter 2 (SGLT2) inhibitors or glucagon-like peptide 1 (GLP-1) receptor agonists expressly to reduce CV risk. The expert consensus decision pathway was published in the Journal of the American College of Cardiology.\r\n\r\nThe group recommends that adults with type 2 diabetes who have atherosclerotic cardiovascular disease (ASCVD), heart failure, or diabetic kidney disease — or who are at high risk for ASCVD — should concurrently undergo guideline-directed preventive therapy (e.g., lifestyle changes, blood pressure and lipid management) and start an SGLT2 inhibitor or GLP-1 receptor agonist with proven CV benefits.\r\n\r\nAppropriate SGLT2 inhibitors include canagliflozin, dapagliflozin, and empagliflozin. Options for GLP-1 receptor agonists include dulaglutide, liraglutide, and injectable semaglutide.\r\n\r\nThe decision should be informed by patient preferences, priorities, and medical history. For instance, some drugs have more favourable effects on heart failure prevention or weight loss.', '38', '18 Aug, 2020', 34, 'diabatis.jpg'),
(52, 'Coronavirus transmission risk increases along wildlife supply chains', 'Coronaviruses were detected in a high proportion of bats and rodents in Vietnam from 2013 to 2014, with an increasing proportion of positive samples found along the wildlife supply chain from traders to large markets to restaurants, according to a study published recently in PLOS ONE by Amanda Fine of the Wildlife Conservation Society and colleagues. As noted by the authors, the amplification of coronaviruses along the wildlife supply chain suggests maximal risk for end consumers and likely explains the coronavirus spillover to people.\r\n\r\nOutbreaks of emerging Coronaviruses in the past two decades and the current pandemic of severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) highlight the importance of this viral family as a public health threat.\r\n\r\nTo minimise the public health risks of viral disease emergence, the authors recommend improving Coronavirus surveillance in wildlife and implementing targeted wildlife trade reform.', '38', '18 Aug, 2020', 34, 'wild-life.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(38, 'Mr.', 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(30, 'Neymar', 'JR', 'neymar', '70080aa08b4fe2b66aae3baea7e4a99f', 0),
(36, 'Philipe', 'Coutinho', 'coutinho', 'a9629ec3e248369c5c8b9a885bab85d8', 0),
(32, 'Mauro', 'Icardi', 'icardi', '1b3291b4fb3b96593b557fbf35cae2e3', 0),
(37, 'Lionel', 'Messi', 'messi', '1463ccd2104eeb36769180b8a0c86bb6', 1),
(34, 'Sergio', 'Ramos', 'ramos', 'db3b992995b36a9d2ac616ea2867b14a', 0),
(39, 'Cristiano', 'Ronaldo', 'ronaldo', 'c5aa3124b1adad080927ce4d144c6b33', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
