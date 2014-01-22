-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 22, 2014 at 12:53 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_name` varchar(60) NOT NULL,
  `blog_description` varchar(200) NOT NULL,
  `blog_body` text NOT NULL,
  `blog_comments` tinyint(2) NOT NULL DEFAULT '1',
  `blog_url` varchar(60) NOT NULL,
  `blog_state` varchar(60) NOT NULL,
  `blog_public` tinyint(2) NOT NULL DEFAULT '1',
  `blog_category` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`),
  UNIQUE KEY `blog_name` (`blog_name`),
  UNIQUE KEY `blog_url` (`blog_url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `blog`
--


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_body` text NOT NULL,
  `comment_user` int(11) NOT NULL,
  `comment_time` datetime NOT NULL,
  `comment_ip` varchar(15) NOT NULL,
  `comment_blog` int(11) NOT NULL,
  `comment_state` varchar(40) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_type` varchar(40) NOT NULL,
  `media_source` varchar(255) NOT NULL,
  `media_name` varchar(60) NOT NULL,
  `media_description` varchar(100) NOT NULL,
  PRIMARY KEY (`media_id`),
  UNIQUE KEY `media_source` (`media_source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `media`
--


-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pages`
--


-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `tags_ref`
--

CREATE TABLE `tags_ref` (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_tag` int(11) NOT NULL,
  `ref_blog` int(11) NOT NULL,
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tags_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `pass` char(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `active` char(40) NOT NULL DEFAULT '1',
  `registration_date` datetime NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `news` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'mich8060@hotmail.com', '8d85628db204a4c4665fe3f3a29f8cd0', 'Michael Stevens', '1', '2014-01-22 12:20:05', 1, 1);
