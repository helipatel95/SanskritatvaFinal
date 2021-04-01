-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2021 at 08:27 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanskritatva`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_image` varchar(255) DEFAULT NULL,
  `article_title` varchar(255) DEFAULT NULL,
  `article_sub_title` varchar(255) DEFAULT NULL,
  `article_details` text,
  `article_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_image`, `article_title`, `article_sub_title`, `article_details`, `article_date`) VALUES
(1, 'article1.jpg', 'Who was Kalidasa', 'xyz', 'Regarded as one of the best Sanskrit authors of ancient India, Kalidasa was a classical Sanskrit writer and a playwright. It is believed that he walked the earth somewhere between 4th and 5th centuries CE, during the reign of the Gupta dynasty.He was also one of the Nine Gems (Navaratna) in the court of King . In modern times,  work has gained respect all around the globe and became a source of inspiration for many artists.  perfected the  style and the art of poetry in Sanskrit. Human emotions, presented in exquisite style, made his poetic works superb. Let’s explore the same in this article.', '2021-03-30 23:06:10'),
(2, 'article2.jpg', 'Works of Kalidasa', 'aaa', 'His style of writing makes him different from other poets in Sanskrit literature. His style is pure, simple, genuine, and brief. An unaffected simplicity of expression and easy flowing language are the markings of his writingsHis style of writing makes him different from other poets in Sanskrit literature. His style is pure, simple, genuine, and brief. An unaffected simplicity of expression and easy flowing language are the markings of his writingsHis style of writing makes him different from other poets in Sanskrit literature. His style is pure, simple, genuine, and brief. An unaffected simplicity of expression and easy flowing language are the markings of his writingsHis style of writing makes him different from other poets in Sanskrit literature. His style is pure, simple, genuine, and brief. An unaffected simplicity of expression and easy flowing language are the markings of his writings', '2021-03-30 23:09:31'),
(3, 'article3.jpg', 'Influence of Kalidasa on Eastern and Western worlds', 'aaa', 'The Western world had a miraculous effect of work. Sir William Jones was the first one to translate into English, in the year 1789. Then, it was translated into German, which was read by German dramatist GoetheThe Western world had a miraculous effect of work. Sir William Jones was the first one to translate into English, in the year 1789. Then, it was translated into German, which was read by German dramatist GoetheThe Western world had a miraculous effect of work. Sir William Jones was the first one to translate into English, in the year 1789. Then, it was translated into German, which was read by German dramatist Goethe', '2021-03-30 23:12:32'),
(4, 'article4.jpg', 'What is Chaturmas?', 'aaa', 'If you are from a Hindu Indian family, you must have heard the term Chaturmas and the in this period. Today, we explore what Chaturmas is and why the Ekadashi in this period is so revered.\r\nIf you are from a Hindu Indian family, you must have heard the term Chaturmas and the in this period. Today, we explore what Chaturmas is and why the Ekadashi in this period is so revered.\r\nIf you are from a Hindu Indian family, you must have heard the term Chaturmas and the in this period. Today, we explore what Chaturmas is and why the Ekadashi in this period is so revered.\r\nIf you are from a Hindu Indian family, you must have heard the term Chaturmas and the in this period. Today, we explore what Chaturmas is and why the Ekadashi in this period is so revered.\r\nIf you are from a Hindu Indian family, you must have heard the term Chaturmas and the in this period. Today, we explore what Chaturmas is and why the Ekadashi in this period is so revered.', '2021-03-31 09:30:51'),
(5, 'article5.jpg', 'What is Ekadashi', 'aaa', 'For the uninitiated, let us understand what exactly is Ekadashi briefly, its going to come up a lot in the article down below, so we better get it correct.For the uninitiated, let us understand what exactly is Ekadashi briefly, it’s going to come up a lot in the article down below, so we better get it correct.For the uninitiated, let us understand what exactly is Ekadashi briefly, it’s going to come up a lot in the article down below, so we better get it correct.For the uninitiated, let us understand what exactly is Ekadashi briefly, it’s going to come up a lot in the article down below, so we better get it correct.For the uninitiated, let us understand what exactly is Ekadashi briefly, it’s going to come up a lot in the article down below, so we better get it correct.For the uninitiated, let us understand what exactly is Ekadashi briefly, it’s going to come up a lot in the article down below, so we better get it correct.For the uninitiated, let us understand what exactly is Ekadashi briefly, it’s going to come up a lot in the article down below, so we better get it correct.For the uninitiated, let us understand what exactly is Ekadashi briefly, it’s going to come up a lot in the article down below, so we better get it correct.For the uninitiated, let us understand what exactly is Ekadashi briefly, it’s going to come up a lot in the article down below, so we better get it correct.', '2021-03-31 09:31:59'),
(6, 'article6.jpg', 'Why fast specifically on Ekadashi?', 'aa', 'While the moon is going through its phase, on the 11th day the energy shifts and the moon begins to harbor the energy of the fortnight point it’s going towards (Amavasya or Purnima). While the moon is going through its phase, on the 11th day the energy shifts and the moon begins to harbor the energy of the fortnight point it’s going towards (Amavasya or Purnima). While the moon is going through its phase, on the 11th day the energy shifts and the moon begins to harbor the energy of the fortnight point it’s going towards (Amavasya or Purnima). While the moon is going through its phase, on the 11th day the energy shifts and the moon begins to harbor the energy of the fortnight point it’s going towards (Amavasya or Purnima). While the moon is going through its phase, on the 11th day the energy shifts and the moon begins to harbor the energy of the fortnight point it’s going towards (Amavasya or Purnima). While the moon is going through its phase, on the 11th day the energy shifts and the moon begins to harbor the energy of the fortnight point it’s going towards (Amavasya or Purnima). While the moon is going through its phase, on the 11th day the energy shifts and the moon begins to harbor the energy of the fortnight point it’s going towards (Amavasya or Purnima). ', '2021-03-31 09:33:02'),
(7, 'article7.jpg', 'The Science behind Fasting', 'aa', 'DNA, or deoxyribonucleic acid, is the hereditary material in humans and almost all other organisms. In the nucleus of each cell, the DNA molecule is packaged into thread-like structures called chromosomes. Each chromosome is made up of DNA tightly coiled many times around proteins called histones that support its structure. And the end of each chromosome is Telomere. Telomeres are distinctive structures found at the ends of our chromosomes. They consist of the same short DNA sequence repeated over and over again. The telomere sequence in us humans is TTAGGG. The telomere while organizing each of our 46 chromosomes in the nucleus also acts as a protective cap at the end of each chromosome so that they don’t go haywire. One can imagine it like a cover that’s holding the fragments togetherDNA, or deoxyribonucleic acid, is the hereditary material in humans and almost all other organisms. In the nucleus of each cell, the DNA molecule is packaged into thread-like structures called chromosomes. Each chromosome is made up of DNA tightly coiled many times around proteins called histones that support its structure. And the end of each chromosome is Telomere. Telomeres are distinctive structures found at the ends of our chromosomes. They consist of the same short DNA sequence repeated over and over again. The telomere sequence in us humans is TTAGGG. The telomere while organizing each of our 46 chromosomes in the nucleus also acts as a protective cap at the end of each chromosome so that they don’t go haywire. One can imagine it like a cover that’s holding the fragments togetherDNA, or deoxyribonucleic acid, is the hereditary material in humans and almost all other organisms. In the nucleus of each cell, the DNA molecule is packaged into thread-like structures called chromosomes. Each chromosome is made up of DNA tightly coiled many times around proteins called histones that support its structure. And the end of each chromosome is Telomere. Telomeres are distinctive structures found at the ends of our chromosomes. They consist of the same short DNA sequence repeated over and over again. The telomere sequence in us humans is TTAGGG. The telomere while organizing each of our 46 chromosomes in the nucleus also acts as a protective cap at the end of each chromosome so that they don’t go haywire. One can imagine it like a cover that’s holding the fragments together', '2021-03-31 09:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Books', 'Books_main.jpg'),
(2, 'Photo Frames', 'photo_frame_main.jpg\r\n'),
(3, 'Poster and Paintings', 'p_p_main.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `invoice_total` int(11) DEFAULT NULL,
  `invoice_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`invoice_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `user_id`, `invoice_total`, `invoice_date`) VALUES
(6, 1, 24, '2021-03-31 00:11:26'),
(7, 1, 12, '2021-03-31 00:41:01'),
(8, 1, 72, '2021-03-31 01:11:47'),
(5, 1, 12, '2021-03-30 18:36:56'),
(9, 3, 12, '2021-03-31 10:58:06'),
(10, 3, 12, '2021-03-31 11:00:25'),
(11, 3, 12, '2021-03-31 11:01:15'),
(12, 3, 12, '2021-03-31 11:02:34'),
(13, 3, 12, '2021-03-31 11:08:52'),
(14, 3, 20, '2021-03-31 11:09:58'),
(15, 4, 32, '2021-03-31 11:56:33'),
(16, 4, 12, '2021-03-31 11:58:42'),
(17, 5, 37, '2021-03-31 12:16:38'),
(18, 5, 20, '2021-03-31 12:17:12'),
(19, 5, 20, '2021-03-31 12:18:17'),
(20, 6, 42, '2021-03-31 13:50:07'),
(21, 6, 12, '2021-03-31 13:50:46'),
(22, 6, 12, '2021-03-31 13:51:34'),
(23, 7, 32, '2021-03-31 14:40:16'),
(24, 7, 20, '2021-03-31 14:42:10'),
(25, 7, 54, '2021-03-31 15:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE IF NOT EXISTS `invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_id`, `product_id`, `product_qty`) VALUES
(1, 5, 1, 1),
(2, 6, 1, 1),
(3, 6, 1, 1),
(4, 7, 1, 1),
(5, 8, 1, 1),
(6, 8, 3, 1),
(7, 8, 2, 1),
(8, 8, 2, 1),
(9, 9, 1, 1),
(10, 12, 1, 1),
(11, 13, 1, 1),
(12, 14, 2, 1),
(13, 15, 1, 1),
(14, 15, 10, 1),
(15, 16, 19, 1),
(16, 17, 1, 1),
(17, 17, 11, 1),
(18, 18, 2, 1),
(19, 19, 10, 1),
(20, 20, 1, 1),
(21, 20, 20, 1),
(22, 21, 1, 1),
(23, 22, 1, 1),
(24, 23, 5, 1),
(25, 23, 19, 1),
(26, 24, 10, 1),
(27, 25, 2, 1),
(28, 25, 21, 1),
(29, 25, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_image` varchar(255) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_image`, `post_title`) VALUES
(1, 'post1.jpg', 'post one'),
(2, 'post2.JPG', 'Post 2'),
(3, 'post3.JPG', 'Post 3'),
(4, 'post4.JPG', 'Post 4'),
(5, 'post5.JPG', 'Post 5'),
(6, 'post6.JPG', 'Post 6'),
(7, 'post7.JPG', 'Post 7'),
(8, 'post8.JPG', 'Post 8'),
(9, 'post9.JPG', 'Post 9'),
(10, 'post10.JPG', 'Post 10'),
(11, 'post11.JPG', 'Post 11'),
(12, 'post12.JPG', 'Post 12');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_auther` varchar(255) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_details` text,
  `product_image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_auther`, `product_price`, `product_details`, `product_image`, `category_id`) VALUES
(1, 'The Bhagavad Gita', 'Krishana Dwaipayana Vyasa, Simon Brodbeck (Introduction), Juan Mascaró (Translator)', 12, 'The Bhagavad Gita is an early epic poem that recounts the conversation between Arjuna the warrior and his charioteer Krishna, the manifestation of God. In the moments before a great battle, the dialogue sets out the important lessons Arjuna must learn to change the outcome of the war he is to fight, and culminates in Krishna revealing to the warrior his true cosmic form, counselling him to search for the universal perfection of life. Ranging from instructions on yoga postures to dense moral discussion, the Gita is one of the most important Hindu texts, as well as serving as a practical guide to living well.', 'book1.jpg', 1),
(2, 'The Recognition of Sakuntala', 'by Kalidasa, W.J. Johnson (Translator)', 20, 'Kalidasa\'s play about the love of King Dusyanta and Sakuntala, a hermitage girl, their separation by a curse, and eventual reunion, is the supreme work of Sanskrit drama by its greatest poet and playwright (c.4th century CE). Overwhelmingly erotic in tone, in peformance The Recognition of Sakuntala aimed to produce an experience of aesthetic rapture in the audience, akin to certain types of mystical experience.\r\n \r\nThe pioneering English translation of Sakuntala in 1789 caused a sensation among European composers and writers (including Goethe), and it continues to be performed around the world. This vibrant new verse translation includes the famous version of the story from the Mahabharata, a poetic and dramatic text in its own right and a likely source for Kalidasa. The introduction discusses the play in the aesthetic and cultural context of ancient India. ', 'book2.jpg', 1),
(3, 'Saptapadi Mantra – Butterflies Wall Art', NULL, 20, 'Marriage is a sacred ceremony where the couple takes 7 rounds around the fire. Each round signifies something, Saptapadi Mantra tells us the same. A perfect gift for the couple to remember and practice the same throughout their lives.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life', 'frame1.jpg', 2),
(4, 'Mahabharata', 'by C. Rajagopalachari (Translator)', 30, 'Originally published in the year 1951, the huge popularity of the book has resulted in the book being re-printed several times. Centuries ago, it was proclaimed of the Mahabharata: \"What is not in it, is nowhere.\" But even now, we can use the same words about it. He who knows it not, knows not the heights and depths of the soul; he misses the trials and tragedy and the beauty and grandeur of life. The Mahabharata is not a mere epic; it is a romance telling the tale of heroic men and women, and of some who were divine. It is a whole literature in itself, containing a code of life, a philosophy of social and ethical relations, and speculative thought on human problems that is hard to rival.', 'book3.jpg', 1),
(5, 'Samskrta Subodhini: A Sanskrit Primer', 'by Madhav Deshpande', 20, 'Subodini: A Sanskrit Primer marks the culmination of Professor Deshpande’s experience of teaching Sanskrit at the University of Michigan for over twenty-five years. Tested in classes at Michigan and elsewhere and successively improved for over twenty years, the teaching materials in the book now offer an effective tool to learn and teach Sanskrit. The focus is Sanskrit as a language, rather than as a religious or mystical entity. Deshpande’s primer also simplifies the process of learning Sanskrit by dissociating this language-learning process from the heavy burdens imposed both by the tradition of Indo-European linguistics and the tradition of indigenous Sanskrit grammarians in India. By treating Sanskrit as a productive language, rather than as a dead language merely to be deciphered, the book represents a significant advance over the traditional Western approach to the study of Sanskrit.Work on this book began in 1976, and now almost two generations of Professor Deshpande\'s students have used successively improved versions. The book’s examples include many modified versions of classical Sanskrit passages from epic texts such as the Mahabharata and the Ramayana. The book also contains examples from Hindu, Buddhist, and Jain traditions, as well as samples of Sanskrit poetry and satire.', 'book4.jpg', 1),
(6, 'Learn Sanskrit in 30 Days', 'by K. Srinivasachari', 15, 'The term \'Sanskrit\' as used now means \' well done\' or \'rectified\'. The Vedas, the universally accepted first scripture of humanity were written in Sanskrit. Without the knowledge of Sanskrit it is not possible to appreciate Indian culture and ideals treasured in its great epics. This book is a valuable guide to learn the rudiments of Sanskrit language easily. It consists of four parts, dealing with alphabets, Nouns, Roots and verbs and names of articles in daily use, stories, essays, conversations, moral passages, translations and glossary. This book offers the easiest way to learn, read, write, speak and converse Sanskrit through the medium of English.', 'book5.jpg', 1),
(7, 'The Wonder That Is Sanskrit', 'by Sampadananda Mishra, Vijay Poddar', 40, 'This study considers the perfection of Sanskrit as a language through its grammar, structure and alphabet, continuing by looking at the use of Sanskrit as a vehicle of expression for every aspect of life; including the arts and the sciences. From here it moves on to some examples of its charm, beauty and musicality and then to Sanskrit as a language of enlightenment, a repository of wisdom and values. Finally, it looks at Sanskrit as a sacred medium for expressing the highest spiritual truths and experiences. It ends by trying to understand the importance of Sanskrit for India and the world, and why it is called the language of India\'s soul.', 'book6.jpg', 1),
(8, 'Bhagavad-Gita As It Is', 'by A.C. Bhaktivedanta Swami Prabhupada (Translator)', 25, '\r\nA translation of the short Sanskrit text with EXTENSIVE commentary from a Hare Krishna standpoint.\r\n', 'book7.jpg', 1),
(9, 'Astadhyayi of Panini Hardcover – Jan. 1 2015', 'by Sumitra M. Katre (Author)', 44, 'Panini\'s grammar of sanskrit written in the sixth century B.C., is the earlist linguistic description of the language and is the source and inspiration for the development of comparative philosophy and modern linguistics. The Astadhyayi remains the most correct and complete grammer ever written and is considered a model for all grammars. Simotra M. Katre\'s expert translation fo the Astadhyayi is the first English translation of the work to use Roman transliteration for the sanskrit text. Not only scholars of sanskrit but also general linguists will find accessible this new presentation fo the classic work which relies letters, italics and small capitals to visually present the operation of Panini\'s metalinguistic technique.', 'book8.jpg', 1),
(10, 'Mind is Everything Wall Art', NULL, 20, 'The mind is the only reason for confinement and salvation of a person. Brahmabindoopanishad. This beautiful artwork deserves to be on your wall.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame2.jpg', 2),
(11, 'Vakratunda Mahakaya Ganesha Art Wall Frame', NULL, 25, 'Vakratunda Mahakaya or Ganesha Mantra is the first thing that any Indian kid is taught. It the first prayer offered to Lord Ganesha at the beginning of all works. Seeking his blessing and praying him to help us in our journey, remove any obstacles and bless us with success.\r\nThis artwork beautifully portrays the beginning and Lord Ganesha along with a beautifully drawn mantra.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame3.jpg', 2),
(12, 'What is Karma? Wall Frame', NULL, 30, 'It is easy to make a decision when the choices are apart (say between good and bad), however, it is much difficult when the choices you have are identical (between good and good), that’s when this Shlok becomes helpful. With equally beautiful artwork, this frame is right suited for your place of dwelling.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame4.jpg', 2),
(13, 'Aditya Hrudayam Stotram Frame', NULL, 30, 'Taken from the very powerful Aditya Hrudayam Stotram, this quote offers salutations to the sun god and describes how his role is pivotal in sustaining life on earth. Depicted with a beautiful illustration of the sun, this artwork will remind you of the gratitude we all should show.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame5.jpg', 2),
(14, 'Om Mani Padme Hum – Buddha Frame', NULL, 12, 'The very powerful and popular Buddhist Mantra, Om Mani Padme Hum. A beautiful design featuring Buddha along with its explanation by Dalai Lama is ideal for your meditation room.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame6.jpg', 2),
(15, 'Radha Krishna Frame', NULL, 45, 'A beautiful sketch-like portrait of the eternal couple Radha and Krishna.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame7.jpg', 2),
(16, 'Har Har Mahadev Frame', NULL, 30, 'Har Har Mahadev means every human being is in itself, Mahadev Shiva. In Sanskrit, Har means is destroy. Har Har Mahadev also means eliminating all defects to achieve the ultimate consciousness. This sketch artwork is a tribute to the followers of Lord Shiva.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame8.jpg', 2),
(17, 'Saraswati Portrait Wall Art', NULL, 32, 'A beautiful sketch of Goddess Saraswati with a popular prayer (Saraswati Namastubhyam) saluting the goddess of knowledge, music, art, and learning. Perfect for your study/office.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame9.jpg', 2),
(18, 'Vasudhaiva Kutumbakam Wall Art', NULL, 25, 'Vasudhaiva Kutumbakam, a popular phrase from Maha Upanishad means The world is one family. With a minimal yet enchanting design, this artwork is a perfect addition to your wall and can be a great gift to your dear ones.\r\nPrinted on a 250 GSM Resin Coated Art Paper for long life\r\nDust and Water-resistant artwork\r\nGlassless frame with black fiber borders (1 inch)\r\nComes with hook/s preinstalled to hang the frame on the wall\r\nSturdy 8 mm integrated cardboard for strength and long life\r\nWe take necessary precautions to make sure the products are well sanitized and packed safely\r\nA replacement will be provided in case of product damage in transit\r\nSize 13*19\r\n', 'frame10.jpg', 2),
(19, 'Poster 1', NULL, 12, 'Posters are one of the oldest, most tried and true types of marketing collateral. Posters are an effective way to draw attention to your sales, events, fundraisers and more.\r\nSize: 12 inches (W) x 18 inches (H)\r\nDigitally printed on 250 GSM pure white paper\r\nMatte lamination for Dust and Water resistance\r\nExpected life: 8 – 10 years\r\n', 'poster1.jpg', 3),
(20, 'Poster 2', NULL, 30, 'Posters are one of the oldest, most tried and true types of marketing collateral. Posters are an effective way to draw attention to your sales, events, fundraisers and more.\r\nSize: 12 inches (W) x 18 inches (H)\r\nDigitally printed on 250 GSM pure white paper\r\nMatte lamination for Dust and Water resistance\r\nExpected life: 8 – 10 years\r\n', 'poster2.jpg', 3),
(21, 'poster 3', NULL, 17, 'Posters are one of the oldest, most tried and true types of marketing collateral. Posters are an effective way to draw attention to your sales, events, fundraisers and more.\r\nSize: 12 inches (W) x 18 inches (H)\r\nDigitally printed on 250 GSM pure white paper\r\nMatte lamination for Dust and Water resistance\r\nExpected life: 8 – 10 years\r\n', 'poster3.jpg', 3),
(22, 'Poster 4', NULL, 30, 'Posters are one of the oldest, most tried and true types of marketing collateral. Posters are an effective way to draw attention to your sales, events, fundraisers and more.\r\nSize: 12 inches (W) x 18 inches (H)\r\nDigitally printed on 250 GSM pure white paper\r\nMatte lamination for Dust and Water resistance\r\nExpected life: 8 – 10 years\r\n', 'poster4.jpg', 3),
(23, 'Poster 5', NULL, 22, 'Posters are one of the oldest, most tried and true types of marketing collateral. Posters are an effective way to draw attention to your sales, events, fundraisers and more.\r\nSize: 12 inches (W) x 18 inches (H)\r\nDigitally printed on 250 GSM pure white paper\r\nMatte lamination for Dust and Water resistance\r\nExpected life: 8 – 10 years\r\n', 'poster5.jpg', 3),
(24, 'Poster 6', NULL, 28, 'Posters are one of the oldest, most tried and true types of marketing collateral. Posters are an effective way to draw attention to your sales, events, fundraisers and more.\r\nSize: 12 inches (W) x 18 inches (H)\r\nDigitally printed on 250 GSM pure white paper\r\nMatte lamination for Dust and Water resistance\r\nExpected life: 8 – 10 years\r\n', 'poster6.jpg', 3),
(25, 'Poster 7', NULL, 18, 'Posters are one of the oldest, most tried and true types of marketing collateral. Posters are an effective way to draw attention to your sales, events, fundraisers and more.\r\nSize: 12 inches (W) x 18 inches (H)\r\nDigitally printed on 250 GSM pure white paper\r\nMatte lamination for Dust and Water resistance\r\nExpected life: 8 – 10 years\r\n', 'poster7.jpg', 3),
(26, 'Poster 8', NULL, 24, 'Posters are one of the oldest, most tried and true types of marketing collateral. Posters are an effective way to draw attention to your sales, events, fundraisers and more.\r\nSize: 12 inches (W) x 18 inches (H)\r\nDigitally printed on 250 GSM pure white paper\r\nMatte lamination for Dust and Water resistance\r\nExpected life: 8 – 10 years\r\n', 'poster8.jpg', 3),
(27, 'newcat', 'aa', 25, 'edsadsd', 'something.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `billingAddress` varchar(255) DEFAULT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL,
  `contactNo` int(11) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `bdate` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `emailAddress` (`emailAddress`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `fname`, `lname`, `emailAddress`, `billingAddress`, `shippingAddress`, `contactNo`, `password`, `bdate`, `created_at`) VALUES
(1, 'heli123', 'Heli', 'Patel', 'patelhealey@gmail.com', 'dfdsfdsfdsf      f dsf                                              ', 'sdfdsfdsdf f sdff                                                     ', 789, '123456', '  12/8/75', '2021-03-24 15:36:18'),
(2, 'Rushita12', 'Rushita', 'Kheni', 'rushi@gmail.com', 'abc xyz', 'qhgfgh gggg', 888888, '123456', '  12/8/75', '2021-03-31 01:13:35'),
(3, 'parsu12', 'parshadi', 'jariwala', 'parsu@gmail.com', 'dsad asdsadasd asdas                                \r\n                            ', 'sdasd asdasd asdasda                                \r\n                            ', 77777, '123456', '14/7/92', '2021-03-31 02:06:42'),
(4, 'testusername', 'test', 'testlast', 'test@gmail.com', 'sdsadasd asdasdaasdas asdsad                               \r\n                            ', 'asdasd asdasds asdasds                                \r\n                            ', 12345678, '123456', '12/02/2021', '2021-03-31 11:55:24'),
(5, 'pqr', 'pqr', 'pqrlast', 'pqr@gmail.com', 'sadsads asdasd asdasd dsadas   1                                                     ', ' asdasd asdasda asdasd dsad   2                                                        ', 12345678, 'pqr@1234', ' 1/2/1996', '2021-03-31 12:14:37'),
(6, 'xyz', 'xyz', 'xyzlast', 'xyz@gmail.com', 'sad nasdasd asdasd   1                                              ', 'sdasd asdasdd asdasd      2                                                     ', 12345678, 'xyz@1234', ' 1/2/1995', '2021-03-31 13:49:27'),
(7, 'parshadi123', 'patel', 'Patel', 'patelparsu@gmail.com', 'abcd  11                                                  ', ' abcd ghjjhgj 13                                                          ', 1234567812, 'Parsu@123', '  12/8/75', '2021-03-31 14:38:54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
