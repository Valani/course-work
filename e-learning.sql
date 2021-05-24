-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Трв 24 2021 р., 08:45
-- Версія сервера: 10.4.19-MariaDB
-- Версія PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `e-learning`
--

-- --------------------------------------------------------

--
-- Структура таблиці `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `rating` float NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `authors`
--

INSERT INTO `authors` (`id`, `rating`, `name`, `user_id`) VALUES
(1, 5.6, 'Paris-Sorbonne University Abu Dhabi', 1),
(2, 2, 'Rak Medical & Health Sciences University', 2),
(3, 9.9, 'Rochester Institute of Technology, Dubai', 3),
(4, 9.8, 'Skyline University College, Sharjah', 4),
(5, 7.7, 'Synergy University, Dubai Campus', 5),
(6, 3.7, 'The Emirates Academy of Hotel Managment', 6),
(7, 6, 'The Petroleum Institute', 7),
(8, 8.1, 'United Arab Emirates University', 8),
(9, 1, 'University Of Dubai', 9),
(10, 10, 'University of Jazeera', 10);

-- --------------------------------------------------------

--
-- Структура таблиці `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `date_created` datetime DEFAULT current_timestamp(),
  `course_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `comments`
--

INSERT INTO `comments` (`id`, `text`, `date_created`, `course_id`, `sender_id`) VALUES
(1, 'The course was absolutely worth the money.', '2021-05-24 04:52:58', 2, 11),
(2, 'This is the best course I\'ve ever taken on computer programming', '2021-05-24 04:52:58', 2, 12),
(3, 'I was really blown away by how fun this course was.', '2021-05-24 04:52:58', 3, 13),
(4, 'This course was amazing. Your detailed explanations, thoughtful exercises and challenge problems were all wonderful. Thank you!', '2021-05-24 04:52:58', 4, 10),
(5, 'It helps beginner for sure. It would have been better if we had a project which is done.', '2021-05-24 04:52:58', 5, 11),
(6, 'I found the material to be presented in a clear, and understandable, format. The instructor provided numerous examples to clarify the concepts presented and the quizzes and their solutions were also extremely helpful in illustrating various approaches that could be taken to solve the problems.', '2021-05-24 04:52:58', 6, 12),
(7, 'The course is charted in a brilliant way to enable the understanding of people from non-computers background. Also, the exercises given helped to understand the theory and put well to use.', '2021-05-24 04:52:58', 1, 17),
(8, 'Excellent course. I indeed went from zero to hero. It took me a lot to go through all the videos, notes and exercises, but it was completely worthwhile.', '2021-05-24 04:52:58', 1, 18),
(9, 'This course touches many areas, but lack in depth.', '2021-05-24 04:52:58', 6, 13),
(10, 'This is a very basic course. Most of the topics are discussed at a surface level.', '2021-05-24 04:52:58', 9, 15),
(11, 'This course doesn\'t cover much material and there are too few exercises. Most of what it teaches is just manipulating strings or objects in an elementary way. Hard to see applying this elementary knowledge to most real world situations.', '2021-05-24 04:52:58', 8, 14),
(12, 'It is painful to watch someone try and explain something that they do not fully understand.', '2021-05-24 04:52:58', 6, 19),
(13, 'he instructor covers many essential topics and provides in-depth examples and alternatives. I feel I have gained a sound foundation on which to build future applications.', '2021-05-24 04:52:58', 5, 17),
(14, 'This is an honest rating. Got what i paid and singed up for', '2021-05-24 04:52:58', 10, 20),
(15, 'I really enjoy the energy that is put into this course - I have learned a lot in just a few days, thank you', '2021-05-24 04:52:58', 9, 15),
(16, 'Yes, he is very thorough in his explanations. The video is of high quality and easy to see what he is typing etc. Easy to follow along very good so far.', '2021-05-24 04:52:58', 8, 14),
(17, 'Great course! teacher style is straight forward, touches on all the critical points and takes us through the dev process - hardly any editing which brings us in to show the iterative process that dev actually is with mistakes and all.    ', '2021-05-24 04:52:58', 6, 19),
(18, 'Great Course!', '2021-05-24 04:52:58', 5, 17),
(19, 'Absolutely amazing course! and best teacher ever!', '2021-05-24 04:52:58', 10, 20);

-- --------------------------------------------------------

--
-- Структура таблиці `coursecontent`
--

CREATE TABLE `coursecontent` (
  `id` int(11) NOT NULL,
  `name_content` varchar(255) NOT NULL,
  `content_type` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `coursecontent`
--

INSERT INTO `coursecontent` (`id`, `name_content`, `content_type`, `course_id`) VALUES
(1, 'PythonBook', 'file', 1),
(2, 'Java ', 'picture', 2),
(3, 'PHP begin', 'video', 3),
(4, 'Javascript book', 'file', 4),
(5, 'C#book', 'file', 5),
(6, 'C++begin', 'picture', 6),
(7, 'C begin', 'file', 7),
(8, 'Assemblerbook', 'file', 8),
(9, 'Perl', 'video', 9),
(10, 'HTML5/CSS3book', 'file', 10),
(11, 'PythonBook3', 'file', 1),
(12, 'Java', 'picture', 2),
(13, 'PHPbook', 'file', 3),
(14, 'Javascript', 'site', 4),
(15, 'C#book', 'file', 5),
(16, 'C++book', 'file', 6),
(17, 'C begin', 'video', 7),
(18, 'Assembler advance', 'file', 8),
(19, 'Perlbook', 'file', 9),
(20, 'HTML5/CSS3 advance', 'picture', 10),
(21, 'PythonBook', 'file', 1),
(22, 'Java begin', 'file', 2),
(23, 'PHP begin', 'file', 3),
(24, 'Javascript', 'scheme', 4),
(25, 'C# begin', 'file', 5),
(26, 'C++', 'file', 6),
(27, 'C begin', 'scheme', 7),
(28, 'Assembler', 'file', 8),
(29, 'Perl advance', 'file', 9),
(30, 'HTML5/CSS3', 'scheme', 10);

-- --------------------------------------------------------

--
-- Структура таблиці `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `rating` float DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `created`, `rating`, `level`, `owner_id`, `subject_id`) VALUES
(1, 'Learn to Program: The Fundamentals', 'Behind every mouse click and touch-screen tap, there is a computer program that makes things happen. This course introduces the fundamental building blocks of programming and teaches you how to write fun and useful programs using the Python language.', '2021-05-24 04:52:58', 10, 'Beginner', 1, 1),
(2, 'Python Data Structures', 'This course will introduce the core data structures of the Python programming language. We will move past the basics of procedural programming and explore how we can use the Python built-in data structures such as lists, dictionaries, and tuples to perform increasingly complex data analysis. This course will cover Chapters 6-10 of the textbook “Python for Everybody”. This course covers Python 3.', '2021-05-24 04:52:58', 8.5, 'Advanced', 2, 1),
(3, 'HTML, CSS  for Web Developers', 'The web today is almost unrecognizable from the early days of white pages with lists of blue links. Now, sites are designed with complex layouts, unique fonts, and customized color schemes. This course will show you the basics of Cascading Style Sheets (CSS3). The emphasis will be on learning how to write CSS rules, how to test code, and how to establish good programming habits.', '2021-05-24 04:52:58', 6.4, 'Beginner', 3, 10),
(4, 'C++ For C Programmers', 'This course is for experienced C programmers who want to program in C++. The examples and exercises require a basic understanding of algorithms and object-oriented software.', '2021-05-24 04:52:58', 2.5, 'Intermediate', 3, 6),
(5, 'Object Oriented Programming in Java', 'Welcome to our course on Object Oriented Programming in Java using data visualization. People come to this course with many different goals -- and we are really excited to work with all of you! Some of you want to be professional software developers, others want to improve your programming skills to implement that cool personal project that you’ve been thinking about, while others of you might not yet know why you’re here and are trying to figure out what this course is all about.', '2021-05-24 04:52:58', 3.4, 'Intermediate', 2, 2),
(6, 'PHP for Beginners', ' Then this course will help you get all the fundamentals of Procedural PHP, Object Oriented PHP, MYSQLi, and ending the course by building a CMS system similar to WordPress, Joomla, or Drupal.', '2021-05-24 04:52:58', 7.5, 'Beginner', 3, 3),
(7, 'PHP with Laravel for beginners', 'Laravel has become one of the most popular if not the most popular PHP framework. Employers are asking for this skill for all web programming jobs and in this course we have put together all of them, to give you the best chance of landing that job; or taking it to the next level.', '2021-05-24 04:52:58', 3.4, 'Beginner', 3, 10),
(8, 'The Modern JavaScript Bootcamp', 'JavaScript is the most popular programming language out there, but that doesn’t mean it’s easy to learn. You end up wasting time on out-of-date courses and incomplete YouTube tutorials that talk about a JavaScript features without showing how to use them when building real-world applications.', '2021-05-24 04:52:58', 3.4, 'Intermediate', 3, 4),
(9, 'Modern JavaScript From The Beginning', 'This is a front to back JavaScript course for absolutely everybody. We start with the basic fundamentals and work our way to advanced programming WITHOUT relying on frameworks or libraries at all. You will learn a ton of pure JavaScript, whether you are a beginner or an established JS programmer. There is something for everyone...This is a front to back JavaScript course for absolutely everybody. We start with the basic fundamentals and work our way to advanced programming WITHOUT relying on frameworks or libraries at all. You will learn a ton of pure JavaScript, whether you are a beginner or an established JS programmer. There is something for everyone...  ', '2021-05-24 04:52:58', 3.4, 'Beginner', 3, 4),
(10, 'C# Intermediate', 'Whether you want to use C# to build web apps, mobile apps, desktop apps or games, understanding C# classes, interfaces and principles of object-oriented programming is crucial.', '2021-05-24 04:52:58', 6.4, 'Intermediate', 3, 5),
(11, 'C# Basics for Beginners', 'C# is a beautiful cross-platform language that can be used to build variety of applications. With C#, you can build mobile apps (for Windows, Android and iOS), games, web sites and desktop applications.', '2021-05-24 04:52:58', 2.4, 'Beginner', 3, 5),
(12, 'C# Advanced', 'Chances are you\'re familiar with the basics of C# and are hungry to learn more. Or you\'ve been out of touch with C# for a while and are looking for a quick course as a refresher to get you up to speed with advanced C# constructs. If so, then this course is for you.', '2021-05-24 04:52:58', 3.4, 'Advanced', 3, 5),
(13, 'Advanced C Programming', 'The C programming language in 2020 is still one of the most popular and widely used languages. Having C programming skills gives you great career options, but learning the C language, particularly some of the trickier advanced stuff can be really difficult.', '2021-05-24 04:52:58', 5.4, 'Advanced', 3, 7),
(14, 'C Programming For Beginners', 'The fastest, easiest way to learn to program C on a Mac or Windows. This course will teach you to program the C language from the ground up. You will learn everything from the very fundamentals of programming right through to the complexities of pointers, addresses and File IO. Maybe you\'ve tried to master C before but failed. Or maybe you are new to C or new to programming. If so, this is the course for you', '2021-05-24 04:52:58', 3.4, 'Beginner', 7, 7),
(15, 'he Complete Java Certification Course', 'Welcome to Master Practical Java Development.  This course is designed to help you master the most in-demand and critical components for becoming a Core Java developer. Especially if you\'re going for a job interview or have a Java Project that needs your best performance. This course assumes no prior java experience so  prior Java so it will take you from zero to hero!', '2021-05-24 04:52:58', 4.4, 'Beginner', 2, 2),
(16, 'Programming Java for Beginners', 'Learn the basic concepts, tools, and functions that you will need to build fully functional programs with the popular programming language, Java.', '2021-05-24 04:52:58', 3.4, 'Beginner', 2, 2),
(17, 'Perl Programming for Beginners', 'The world of programming has become almost saturated with different languages, all created for different purposes but developed for use in multiple applications. For those just delving into the world of programming, this can be a little overwhelming. Luckily, there are plenty of languages that are simple to learn, highly versatile to use, and make a great starting point for gaining fluency in the coding universe. Perl is one of those languages, and this course will teach you everything you need to know.', '2021-05-24 04:52:58', 3.4, 'Beginner', 9, 9);

-- --------------------------------------------------------

--
-- Структура таблиці `coursesstudents`
--

CREATE TABLE `coursesstudents` (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `students`
--

INSERT INTO `students` (`id`, `user_id`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20);

-- --------------------------------------------------------

--
-- Структура таблиці `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `subjects`
--

INSERT INTO `subjects` (`id`, `title`) VALUES
(1, 'Python'),
(2, 'Java'),
(3, 'PHP'),
(4, 'Javascript'),
(5, 'C#'),
(6, 'C++'),
(7, 'C'),
(8, 'Assembler'),
(9, 'Perl'),
(10, 'HTML5/CSS3');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `reg_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mail`, `reg_date`) VALUES
(1, 'Andrew', 'qwerty', 'andrii@gmail.com', '2021-05-24 04:52:58'),
(2, 'Kate', 'bestkate123', 'kate123@gmail.com', '2021-05-24 04:52:58'),
(3, 'Bill', 'bill6467', 'bill355@gmail.com', '2021-05-24 04:52:58'),
(4, 'Wade', 'wade351A', 'darkwade@gmail.com', '2021-05-24 04:52:58'),
(5, 'Dave', 'daviebest', 'daview@gmail.com', '2021-05-24 04:52:58'),
(6, 'Seth', 'sethilo', 'sethlol@gmail.com', '2021-05-24 04:52:58'),
(7, 'Ivan', 'ivanov2', 'ivanivanov@gmail.com', '2021-05-24 04:52:58'),
(8, 'Robert', 'Robo567', 'robin@gmail.com', '2021-05-24 04:52:58'),
(9, 'William', 'willie1', 'william@gmail.com', '2021-05-24 04:52:58'),
(10, 'Alego', 'legofriend', 'olegov@gmail.com', '2021-05-24 04:52:58'),
(11, 'And54w', 'thesimple6', 'anderwrii@gmail.com', '2021-05-24 04:52:58'),
(12, 'Katebelle', 'bestkate123', 'kate123belle@gmail.com', '2021-05-24 04:52:58'),
(13, 'Billyn', 'bill6467', 'biynll355@gmail.com', '2021-05-24 04:52:58'),
(14, 'Wandy', 'wade351A', 'darkwanade@gmail.com', '2021-05-24 04:52:58'),
(15, 'Davie', 'daviebest', 'daviewoll@gmail.com', '2021-05-24 04:52:58'),
(16, 'Sethy', 'sethilo', 'seth@gmail.com', '2021-05-24 04:52:58'),
(17, 'Ivanov', 'ivan2', 'ivaniva@gmail.com', '2021-05-24 04:52:58'),
(18, 'Robertos', 'Riba2', 'robin_good@gmail.com', '2021-05-24 04:52:58'),
(19, 'William_James', 'willie_james34', 'william_james@gmail.com', '2021-05-24 04:52:58'),
(20, 'Alegomonth', 'legofriend', 'olegovoy@gmail.com', '2021-05-24 04:52:58');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Індекси таблиці `coursecontent`
--
ALTER TABLE `coursecontent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Індекси таблиці `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Індекси таблиці `coursesstudents`
--
ALTER TABLE `coursesstudents`
  ADD PRIMARY KEY (`course_id`,`student_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Індекси таблиці `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблиці `coursecontent`
--
ALTER TABLE `coursecontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблиці `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `coursecontent`
--
ALTER TABLE `coursecontent`
  ADD CONSTRAINT `coursecontent_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `coursesstudents`
--
ALTER TABLE `coursesstudents`
  ADD CONSTRAINT `coursesstudents_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `coursesstudents_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
