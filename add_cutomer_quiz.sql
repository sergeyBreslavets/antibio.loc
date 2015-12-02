-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Дек 02 2015 г., 18:37
-- Версия сервера: 5.5.34
-- Версия PHP: 5.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `casejoke_antibio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_to_quiz`
--

CREATE TABLE `oc_customer_to_quiz` (
  `customer_to_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_to_quiz_id`),
  KEY `init_group_id` (`quiz_id`,`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
