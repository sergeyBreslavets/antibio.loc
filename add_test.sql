-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Ноя 26 2015 г., 19:40
-- Версия сервера: 5.5.34
-- Версия PHP: 5.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `casejoke_moscow`
--

-- --------------------------------------------------------


--
-- Структура таблицы `oc_quiz`
--

CREATE TABLE `oc_quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_count_attempts` int(11) NOT NULL,
  `quiz_correct_answer` int(11) NOT NULL,
  `template_id` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `visibility` tinyint(2) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


--
-- Структура таблицы `oc_quiz_description`
--

CREATE TABLE `oc_quiz_description` (
  `quiz_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`quiz_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




--
-- Структура таблицы `oc_qitem`
--

CREATE TABLE `oc_qitem` (
  `qitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `visibility` tinyint(2) NOT NULL,
  `status` int(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`qitem_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



--
-- Структура таблицы `oc_qitem_description`
--

CREATE TABLE `oc_qitem_description` (
  `qitem_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `address` varchar(20) NOT NULL,
  PRIMARY KEY (`qitem_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Структура таблицы `oc_qitem_image`
--

CREATE TABLE `oc_qitem_image` (
  `qitem_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `qitem_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`qitem_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_qitem_image_description`
--

CREATE TABLE `oc_qitem_image_description` (
  `qitem_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `qitem_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`qitem_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_qitem_question`
--

CREATE TABLE `oc_qitem_question` (
  `qitem_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `qitem_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `question_id` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`qitem_question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;



--
-- Структура таблицы `oc_qitem_question_description`
--

CREATE TABLE `oc_qitem_question_description` (
  `qitem_question_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `qitem_id` int(11) NOT NULL,
  `answer_title` text COLLATE utf8_bin NOT NULL,
  `answer_comment` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`qitem_question_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_qitem_question_description`
--


-- --------------------------------------------------------



