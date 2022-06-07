-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `PA3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PA3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `PA3`;

--
-- Current Database: `aeacus`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `aeacus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `aeacus`;

--
-- Current Database: `golfdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `golfdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `golfdb`;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `mysql`;

--
-- Table structure for table `column_stats`
--

DROP TABLE IF EXISTS `column_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `column_stats` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `min_value` varbinary(255) DEFAULT NULL,
  `max_value` varbinary(255) DEFAULT NULL,
  `nulls_ratio` decimal(12,4) DEFAULT NULL,
  `avg_length` decimal(12,4) DEFAULT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  `hist_size` tinyint(3) unsigned DEFAULT NULL,
  `hist_type` enum('SINGLE_PREC_HB','DOUBLE_PREC_HB') COLLATE utf8mb3_bin DEFAULT NULL,
  `histogram` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Columns';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Delete_history_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` varchar(384) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  PRIMARY KEY (`db`,`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT 0,
  `dl` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `global_priv`
--

DROP TABLE IF EXISTS `global_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Priv` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`Priv`)),
  PRIMARY KEY (`Host`,`User`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gtid_slave_pos`
--

DROP TABLE IF EXISTS `gtid_slave_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gtid_slave_pos` (
  `domain_id` int(10) unsigned NOT NULL,
  `sub_id` bigint(20) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `seq_no` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`domain_id`,`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Replication slave GTID position';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`),
  KEY `help_topic_id` (`help_topic_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `index_stats`
--

DROP TABLE IF EXISTS `index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_stats` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `prefix_arity` int(11) unsigned NOT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`index_name`,`prefix_arity`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Indexes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `innodb_index_stats`
--

DROP TABLE IF EXISTS `innodb_index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8mb3_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stat_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `innodb_table_stats`
--

DROP TABLE IF EXISTS `innodb_table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proc`
--

DROP TABLE IF EXISTS `proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` varchar(384) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  `aggregate` enum('NONE','GROUP') NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Stored Procedures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') COLLATE utf8mb3_bin NOT NULL,
  `Grantor` varchar(384) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_user` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT 0,
  `Grantor` varchar(384) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles_mapping`
--

DROP TABLE IF EXISTS `roles_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_mapping` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Role` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Admin_option` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  UNIQUE KEY `Host` (`Host`,`User`,`Role`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Granted roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` varchar(2048) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(128) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT 0,
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` varchar(512) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `table_stats`
--

DROP TABLE IF EXISTS `table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_stats` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `cardinality` bigint(21) unsigned DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Grantor` varchar(384) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger','Delete versioning rows') CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT 0,
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `user`
--

DROP TABLE IF EXISTS `user`;
/*!50001 DROP VIEW IF EXISTS `user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user` (
  `Host` tinyint NOT NULL,
  `User` tinyint NOT NULL,
  `Password` tinyint NOT NULL,
  `Select_priv` tinyint NOT NULL,
  `Insert_priv` tinyint NOT NULL,
  `Update_priv` tinyint NOT NULL,
  `Delete_priv` tinyint NOT NULL,
  `Create_priv` tinyint NOT NULL,
  `Drop_priv` tinyint NOT NULL,
  `Reload_priv` tinyint NOT NULL,
  `Shutdown_priv` tinyint NOT NULL,
  `Process_priv` tinyint NOT NULL,
  `File_priv` tinyint NOT NULL,
  `Grant_priv` tinyint NOT NULL,
  `References_priv` tinyint NOT NULL,
  `Index_priv` tinyint NOT NULL,
  `Alter_priv` tinyint NOT NULL,
  `Show_db_priv` tinyint NOT NULL,
  `Super_priv` tinyint NOT NULL,
  `Create_tmp_table_priv` tinyint NOT NULL,
  `Lock_tables_priv` tinyint NOT NULL,
  `Execute_priv` tinyint NOT NULL,
  `Repl_slave_priv` tinyint NOT NULL,
  `Repl_client_priv` tinyint NOT NULL,
  `Create_view_priv` tinyint NOT NULL,
  `Show_view_priv` tinyint NOT NULL,
  `Create_routine_priv` tinyint NOT NULL,
  `Alter_routine_priv` tinyint NOT NULL,
  `Create_user_priv` tinyint NOT NULL,
  `Event_priv` tinyint NOT NULL,
  `Trigger_priv` tinyint NOT NULL,
  `Create_tablespace_priv` tinyint NOT NULL,
  `Delete_history_priv` tinyint NOT NULL,
  `ssl_type` tinyint NOT NULL,
  `ssl_cipher` tinyint NOT NULL,
  `x509_issuer` tinyint NOT NULL,
  `x509_subject` tinyint NOT NULL,
  `max_questions` tinyint NOT NULL,
  `max_updates` tinyint NOT NULL,
  `max_connections` tinyint NOT NULL,
  `max_user_connections` tinyint NOT NULL,
  `plugin` tinyint NOT NULL,
  `authentication_string` tinyint NOT NULL,
  `password_expired` tinyint NOT NULL,
  `is_role` tinyint NOT NULL,
  `default_role` tinyint NOT NULL,
  `max_statement_time` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `rows_affected` int(11) NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction_registry`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `transaction_registry` (
  `transaction_id` bigint(20) unsigned NOT NULL,
  `commit_id` bigint(20) unsigned NOT NULL,
  `begin_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `commit_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `isolation_level` enum('READ-UNCOMMITTED','READ-COMMITTED','REPEATABLE-READ','SERIALIZABLE') COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `commit_id` (`commit_id`),
  KEY `begin_timestamp` (`begin_timestamp`),
  KEY `commit_timestamp` (`commit_timestamp`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `sakila`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sakila` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `sakila`;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `actor_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`actor_id`),
  KEY `idx_actor_last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `actor_info`
--

DROP TABLE IF EXISTS `actor_info`;
/*!50001 DROP VIEW IF EXISTS `actor_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `actor_info` (
  `actor_id` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `last_name` tinyint NOT NULL,
  `film_info` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `district` varchar(20) NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`address_id`),
  KEY `idx_fk_city_id` (`city_id`),
  CONSTRAINT `fk_address_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`city_id`),
  KEY `idx_fk_country_id` (`country_id`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` tinyint(3) unsigned NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`customer_id`),
  KEY `idx_fk_store_id` (`store_id`),
  KEY `idx_fk_address_id` (`address_id`),
  KEY `idx_last_name` (`last_name`),
  CONSTRAINT `fk_customer_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER customer_create_date BEFORE INSERT ON customer
	FOR EACH ROW SET NEW.create_date = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `customer_list`
--

DROP TABLE IF EXISTS `customer_list`;
/*!50001 DROP VIEW IF EXISTS `customer_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `customer_list` (
  `ID` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `zip code` tinyint NOT NULL,
  `phone` tinyint NOT NULL,
  `city` tinyint NOT NULL,
  `country` tinyint NOT NULL,
  `notes` tinyint NOT NULL,
  `SID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` tinyint(3) unsigned NOT NULL DEFAULT 3,
  `rental_rate` decimal(4,2) NOT NULL DEFAULT 4.99,
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) NOT NULL DEFAULT 19.99,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT 'G',
  `special_features` set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`film_id`),
  KEY `idx_title` (`title`),
  KEY `idx_fk_language_id` (`language_id`),
  KEY `idx_fk_original_language_id` (`original_language_id`),
  CONSTRAINT `fk_film_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_film_language_original` FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_film` AFTER INSERT ON `film` FOR EACH ROW BEGIN
    INSERT INTO film_text (film_id, title, description)
        VALUES (new.film_id, new.title, new.description);
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_film` AFTER UPDATE ON `film` FOR EACH ROW BEGIN
    IF (old.title != new.title) OR (old.description != new.description) OR (old.film_id != new.film_id)
    THEN
        UPDATE film_text
            SET title=new.title,
                description=new.description,
                film_id=new.film_id
        WHERE film_id=old.film_id;
    END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `del_film` AFTER DELETE ON `film` FOR EACH ROW BEGIN
    DELETE FROM film_text WHERE film_id = old.film_id;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_actor` (
  `actor_id` smallint(5) unsigned NOT NULL,
  `film_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`actor_id`,`film_id`),
  KEY `idx_fk_film_id` (`film_id`),
  CONSTRAINT `fk_film_actor_actor` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_film_actor_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `film_category`
--

DROP TABLE IF EXISTS `film_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_category` (
  `film_id` smallint(5) unsigned NOT NULL,
  `category_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`film_id`,`category_id`),
  KEY `fk_film_category_category` (`category_id`),
  CONSTRAINT `fk_film_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_film_category_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `film_list`
--

DROP TABLE IF EXISTS `film_list`;
/*!50001 DROP VIEW IF EXISTS `film_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `film_list` (
  `FID` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `category` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `length` tinyint NOT NULL,
  `rating` tinyint NOT NULL,
  `actors` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `film_text`
--

DROP TABLE IF EXISTS `film_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_text` (
  `film_id` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  FULLTEXT KEY `idx_title_description` (`title`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `inventory_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` smallint(5) unsigned NOT NULL,
  `store_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`inventory_id`),
  KEY `idx_fk_film_id` (`film_id`),
  KEY `idx_store_id_film_id` (`store_id`,`film_id`),
  CONSTRAINT `fk_inventory_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_inventory_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `language_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `nicer_but_slower_film_list`
--

DROP TABLE IF EXISTS `nicer_but_slower_film_list`;
/*!50001 DROP VIEW IF EXISTS `nicer_but_slower_film_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `nicer_but_slower_film_list` (
  `FID` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `category` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `length` tinyint NOT NULL,
  `rating` tinyint NOT NULL,
  `actors` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` smallint(5) unsigned NOT NULL,
  `staff_id` tinyint(3) unsigned NOT NULL,
  `rental_id` int(11) DEFAULT NULL,
  `amount` decimal(5,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`payment_id`),
  KEY `idx_fk_staff_id` (`staff_id`),
  KEY `idx_fk_customer_id` (`customer_id`),
  KEY `fk_payment_rental` (`rental_id`),
  CONSTRAINT `fk_payment_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_rental` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16050 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER payment_date BEFORE INSERT ON payment
	FOR EACH ROW SET NEW.payment_date = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental` (
  `rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `rental_date` datetime NOT NULL,
  `inventory_id` mediumint(8) unsigned NOT NULL,
  `customer_id` smallint(5) unsigned NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `staff_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`rental_id`),
  UNIQUE KEY `rental_date` (`rental_date`,`inventory_id`,`customer_id`),
  KEY `idx_fk_inventory_id` (`inventory_id`),
  KEY `idx_fk_customer_id` (`customer_id`),
  KEY `idx_fk_staff_id` (`staff_id`),
  CONSTRAINT `fk_rental_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_inventory` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16050 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER rental_date BEFORE INSERT ON rental
	FOR EACH ROW SET NEW.rental_date = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `sales_by_film_category`
--

DROP TABLE IF EXISTS `sales_by_film_category`;
/*!50001 DROP VIEW IF EXISTS `sales_by_film_category`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sales_by_film_category` (
  `category` tinyint NOT NULL,
  `total_sales` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sales_by_store`
--

DROP TABLE IF EXISTS `sales_by_store`;
/*!50001 DROP VIEW IF EXISTS `sales_by_store`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sales_by_store` (
  `store` tinyint NOT NULL,
  `manager` tinyint NOT NULL,
  `total_sales` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `picture` blob DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `store_id` tinyint(3) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `username` varchar(16) NOT NULL,
  `password` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`staff_id`),
  KEY `idx_fk_store_id` (`store_id`),
  KEY `idx_fk_address_id` (`address_id`),
  CONSTRAINT `fk_staff_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_staff_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `staff_list`
--

DROP TABLE IF EXISTS `staff_list`;
/*!50001 DROP VIEW IF EXISTS `staff_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `staff_list` (
  `ID` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `zip code` tinyint NOT NULL,
  `phone` tinyint NOT NULL,
  `city` tinyint NOT NULL,
  `country` tinyint NOT NULL,
  `SID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `manager_staff_id` tinyint(3) unsigned NOT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `idx_unique_manager` (`manager_staff_id`),
  KEY `idx_fk_address_id` (`address_id`),
  CONSTRAINT `fk_store_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_store_staff` FOREIGN KEY (`manager_staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `sportsdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sportsdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;

USE `sportsdb`;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `language` varchar(100) DEFAULT NULL,
  `suite` varchar(100) DEFAULT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `building` varchar(100) DEFAULT NULL,
  `street_number` varchar(100) DEFAULT NULL,
  `street_prefix` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `street_suffix` varchar(100) DEFAULT NULL,
  `neighborhood` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `county` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_addresses_1` (`locality`),
  KEY `IDX_addresses_2` (`region`),
  KEY `IDX_addresses_3` (`postal_code`),
  KEY `IDX_FK_add_loc_id__loc_id` (`location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `affiliation_phases`
--

DROP TABLE IF EXISTS `affiliation_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliation_phases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliation_id` int(11) NOT NULL,
  `ancestor_affiliation_id` int(11) DEFAULT NULL,
  `start_season_id` int(11) DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_season_id` int(11) DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_seasons_affiliation_phases1` (`end_season_id`),
  KEY `FK_seasons_affiliation_phases` (`start_season_id`),
  KEY `FK_affiliations_affiliation_phases1` (`ancestor_affiliation_id`),
  KEY `FK_affiliations_affiliation_phases` (`affiliation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `affiliations`
--

DROP TABLE IF EXISTS `affiliations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliation_key` varchar(100) NOT NULL,
  `affiliation_type` varchar(100) DEFAULT NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_affiliations_1` (`affiliation_key`),
  KEY `IDX_affiliations_2` (`affiliation_type`),
  KEY `IDX_FK_aff_pub_id__pub_id` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `affiliations_documents`
--

DROP TABLE IF EXISTS `affiliations_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliations_documents` (
  `affiliation_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  KEY `FK_aff_doc_aff_id__aff_id` (`affiliation_id`),
  KEY `FK_aff_doc_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `affiliations_events`
--

DROP TABLE IF EXISTS `affiliations_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliations_events` (
  `affiliation_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  KEY `FK_aff_eve_aff_id__aff_id` (`affiliation_id`),
  KEY `FK_aff_eve_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `affiliations_media`
--

DROP TABLE IF EXISTS `affiliations_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliations_media` (
  `affiliation_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `FK_aff_med_med_id__med_id` (`media_id`),
  KEY `FK_aff_med_aff_id__aff_id` (`affiliation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_action_participants`
--

DROP TABLE IF EXISTS `american_football_action_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_action_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `american_football_action_play_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `participant_role` varchar(100) NOT NULL,
  `score_type` varchar(100) DEFAULT NULL,
  `field_line` int(11) DEFAULT NULL,
  `yardage` int(11) DEFAULT NULL,
  `score_credit` int(11) DEFAULT NULL,
  `yards_gained` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_american_football_action_participants_1` (`participant_role`),
  KEY `IDX_american_football_action_participants_2` (`score_type`),
  KEY `IDX_FK_ame_foo_act_par_ame_foo_act_pla_id__ame_foo_act_pla_id` (`american_football_action_play_id`),
  KEY `IDX_FK_ame_foo_act_par_per_id__per_id` (`person_id`)
) ENGINE=MyISAM AUTO_INCREMENT=294 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_action_plays`
--

DROP TABLE IF EXISTS `american_football_action_plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_action_plays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `american_football_event_state_id` int(11) NOT NULL,
  `play_type` varchar(100) DEFAULT NULL,
  `score_attempt_type` varchar(100) DEFAULT NULL,
  `drive_result` varchar(100) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_american_football_action_plays_1` (`play_type`),
  KEY `IDX_american_football_action_plays_2` (`score_attempt_type`),
  KEY `IDX_american_football_action_plays_3` (`drive_result`),
  KEY `IDX_FK_ame_foo_act_pla_ame_foo_eve_sta_id__ame_foo_eve_sta_id` (`american_football_event_state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_defensive_stats`
--

DROP TABLE IF EXISTS `american_football_defensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_defensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tackles_total` varchar(100) DEFAULT NULL,
  `tackles_solo` varchar(100) DEFAULT NULL,
  `tackles_assists` varchar(100) DEFAULT NULL,
  `interceptions_total` varchar(100) DEFAULT NULL,
  `interceptions_yards` varchar(100) DEFAULT NULL,
  `interceptions_average` varchar(100) DEFAULT NULL,
  `interceptions_longest` varchar(100) DEFAULT NULL,
  `interceptions_touchdown` varchar(100) DEFAULT NULL,
  `quarterback_hurries` varchar(100) DEFAULT NULL,
  `sacks_total` varchar(100) DEFAULT NULL,
  `sacks_yards` varchar(100) DEFAULT NULL,
  `passes_defensed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=752 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_down_progress_stats`
--

DROP TABLE IF EXISTS `american_football_down_progress_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_down_progress_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_downs_total` varchar(100) DEFAULT NULL,
  `first_downs_pass` varchar(100) DEFAULT NULL,
  `first_downs_run` varchar(100) DEFAULT NULL,
  `first_downs_penalty` varchar(100) DEFAULT NULL,
  `conversions_third_down` varchar(100) DEFAULT NULL,
  `conversions_third_down_attempts` varchar(100) DEFAULT NULL,
  `conversions_third_down_percentage` varchar(100) DEFAULT NULL,
  `conversions_fourth_down` varchar(100) DEFAULT NULL,
  `conversions_fourth_down_attempts` varchar(100) DEFAULT NULL,
  `conversions_fourth_down_percentage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_event_states`
--

DROP TABLE IF EXISTS `american_football_event_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_event_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `current_state` smallint(6) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `period_value` int(11) DEFAULT NULL,
  `period_time_elapsed` varchar(100) DEFAULT NULL,
  `period_time_remaining` varchar(100) DEFAULT NULL,
  `clock_state` varchar(100) DEFAULT NULL,
  `down` int(11) DEFAULT NULL,
  `team_in_possession_id` int(11) DEFAULT NULL,
  `distance_for_1st_down` int(11) DEFAULT NULL,
  `field_side` varchar(100) DEFAULT NULL,
  `field_line` int(11) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ame_foo_eve_sta_tea_in_pos_id__tea_id` (`team_in_possession_id`),
  KEY `IDX_american_football_event_states_1` (`current_state`),
  KEY `IDX_FK_ame_foo_eve_sta_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_fumbles_stats`
--

DROP TABLE IF EXISTS `american_football_fumbles_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_fumbles_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fumbles_committed` varchar(100) DEFAULT NULL,
  `fumbles_forced` varchar(100) DEFAULT NULL,
  `fumbles_recovered` varchar(100) DEFAULT NULL,
  `fumbles_lost` varchar(100) DEFAULT NULL,
  `fumbles_yards_gained` varchar(100) DEFAULT NULL,
  `fumbles_own_committed` varchar(100) DEFAULT NULL,
  `fumbles_own_recovered` varchar(100) DEFAULT NULL,
  `fumbles_own_lost` varchar(100) DEFAULT NULL,
  `fumbles_own_yards_gained` varchar(100) DEFAULT NULL,
  `fumbles_opposing_committed` varchar(100) DEFAULT NULL,
  `fumbles_opposing_recovered` varchar(100) DEFAULT NULL,
  `fumbles_opposing_lost` varchar(100) DEFAULT NULL,
  `fumbles_opposing_yards_gained` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_offensive_stats`
--

DROP TABLE IF EXISTS `american_football_offensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_offensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offensive_plays_yards` varchar(100) DEFAULT NULL,
  `offensive_plays_number` varchar(100) DEFAULT NULL,
  `offensive_plays_average_yards_per` varchar(100) DEFAULT NULL,
  `possession_duration` varchar(100) DEFAULT NULL,
  `turnovers_giveaway` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_passing_stats`
--

DROP TABLE IF EXISTS `american_football_passing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_passing_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passes_attempts` varchar(100) DEFAULT NULL,
  `passes_completions` varchar(100) DEFAULT NULL,
  `passes_percentage` varchar(100) DEFAULT NULL,
  `passes_yards_gross` varchar(100) DEFAULT NULL,
  `passes_yards_net` varchar(100) DEFAULT NULL,
  `passes_yards_lost` varchar(100) DEFAULT NULL,
  `passes_touchdowns` varchar(100) DEFAULT NULL,
  `passes_touchdowns_percentage` varchar(100) DEFAULT NULL,
  `passes_interceptions` varchar(100) DEFAULT NULL,
  `passes_interceptions_percentage` varchar(100) DEFAULT NULL,
  `passes_longest` varchar(100) DEFAULT NULL,
  `passes_average_yards_per` varchar(100) DEFAULT NULL,
  `passer_rating` varchar(100) DEFAULT NULL,
  `receptions_total` varchar(100) DEFAULT NULL,
  `receptions_yards` varchar(100) DEFAULT NULL,
  `receptions_touchdowns` varchar(100) DEFAULT NULL,
  `receptions_first_down` varchar(100) DEFAULT NULL,
  `receptions_longest` varchar(100) DEFAULT NULL,
  `receptions_average_yards_per` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_penalties_stats`
--

DROP TABLE IF EXISTS `american_football_penalties_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_penalties_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `penalties_total` varchar(100) DEFAULT NULL,
  `penalty_yards` varchar(100) DEFAULT NULL,
  `penalty_first_downs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_rushing_stats`
--

DROP TABLE IF EXISTS `american_football_rushing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_rushing_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rushes_attempts` varchar(100) DEFAULT NULL,
  `rushes_yards` varchar(100) DEFAULT NULL,
  `rushes_touchdowns` varchar(100) DEFAULT NULL,
  `rushing_average_yards_per` varchar(100) DEFAULT NULL,
  `rushes_first_down` varchar(100) DEFAULT NULL,
  `rushes_longest` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_sacks_against_stats`
--

DROP TABLE IF EXISTS `american_football_sacks_against_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_sacks_against_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sacks_against_yards` varchar(100) DEFAULT NULL,
  `sacks_against_total` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_scoring_stats`
--

DROP TABLE IF EXISTS `american_football_scoring_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_scoring_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `touchdowns_total` varchar(100) DEFAULT NULL,
  `touchdowns_passing` varchar(100) DEFAULT NULL,
  `touchdowns_rushing` varchar(100) DEFAULT NULL,
  `touchdowns_special_teams` varchar(100) DEFAULT NULL,
  `touchdowns_defensive` varchar(100) DEFAULT NULL,
  `extra_points_attempts` varchar(100) DEFAULT NULL,
  `extra_points_made` varchar(100) DEFAULT NULL,
  `extra_points_missed` varchar(100) DEFAULT NULL,
  `extra_points_blocked` varchar(100) DEFAULT NULL,
  `field_goal_attempts` varchar(100) DEFAULT NULL,
  `field_goals_made` varchar(100) DEFAULT NULL,
  `field_goals_missed` varchar(100) DEFAULT NULL,
  `field_goals_blocked` varchar(100) DEFAULT NULL,
  `safeties_against` varchar(100) DEFAULT NULL,
  `two_point_conversions_attempts` varchar(100) DEFAULT NULL,
  `two_point_conversions_made` varchar(100) DEFAULT NULL,
  `touchbacks_total` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=843 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `american_football_special_teams_stats`
--

DROP TABLE IF EXISTS `american_football_special_teams_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `american_football_special_teams_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `returns_punt_total` varchar(100) DEFAULT NULL,
  `returns_punt_yards` varchar(100) DEFAULT NULL,
  `returns_punt_average` varchar(100) DEFAULT NULL,
  `returns_punt_longest` varchar(100) DEFAULT NULL,
  `returns_punt_touchdown` varchar(100) DEFAULT NULL,
  `returns_kickoff_total` varchar(100) DEFAULT NULL,
  `returns_kickoff_yards` varchar(100) DEFAULT NULL,
  `returns_kickoff_average` varchar(100) DEFAULT NULL,
  `returns_kickoff_longest` varchar(100) DEFAULT NULL,
  `returns_kickoff_touchdown` varchar(100) DEFAULT NULL,
  `returns_total` varchar(100) DEFAULT NULL,
  `returns_yards` varchar(100) DEFAULT NULL,
  `punts_total` varchar(100) DEFAULT NULL,
  `punts_yards_gross` varchar(100) DEFAULT NULL,
  `punts_yards_net` varchar(100) DEFAULT NULL,
  `punts_longest` varchar(100) DEFAULT NULL,
  `punts_inside_20` varchar(100) DEFAULT NULL,
  `punts_inside_20_percentage` varchar(100) DEFAULT NULL,
  `punts_average` varchar(100) DEFAULT NULL,
  `punts_blocked` varchar(100) DEFAULT NULL,
  `touchbacks_total` varchar(100) DEFAULT NULL,
  `touchbacks_total_percentage` varchar(100) DEFAULT NULL,
  `touchbacks_kickoffs` varchar(100) DEFAULT NULL,
  `touchbacks_kickoffs_percentage` varchar(100) DEFAULT NULL,
  `touchbacks_punts` varchar(100) DEFAULT NULL,
  `touchbacks_punts_percentage` varchar(100) DEFAULT NULL,
  `touchbacks_interceptions` varchar(100) DEFAULT NULL,
  `touchbacks_interceptions_percentage` varchar(100) DEFAULT NULL,
  `fair_catches` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_action_contact_details`
--

DROP TABLE IF EXISTS `baseball_action_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_action_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseball_action_pitch_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `strength` varchar(100) DEFAULT NULL,
  `velocity` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `trajectory_coordinates` varchar(100) DEFAULT NULL,
  `trajectory_formula` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bas_act_con_det_bas_act_pit_id__bas_act_pit_id` (`baseball_action_pitch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_action_pitches`
--

DROP TABLE IF EXISTS `baseball_action_pitches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_action_pitches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseball_action_play_id` int(11) NOT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `baseball_defensive_group_id` int(11) DEFAULT NULL,
  `umpire_call` varchar(100) DEFAULT NULL,
  `pitch_location` varchar(100) DEFAULT NULL,
  `pitch_type` varchar(100) DEFAULT NULL,
  `pitch_velocity` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `trajectory_coordinates` varchar(100) DEFAULT NULL,
  `trajectory_formula` varchar(100) DEFAULT NULL,
  `ball_type` varchar(40) DEFAULT NULL,
  `strike_type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_baseball_action_plays_baseball_action_pitches` (`baseball_action_play_id`),
  KEY `IDX_baseball_action_pitches_1` (`umpire_call`),
  KEY `IDX_baseball_action_pitches_2` (`pitch_type`),
  KEY `IDX_FK_bas_act_pit_bas_def_gro_id__bas_def_gro_id` (`baseball_defensive_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_action_plays`
--

DROP TABLE IF EXISTS `baseball_action_plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_action_plays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseball_event_state_id` int(11) NOT NULL,
  `play_type` varchar(100) DEFAULT NULL,
  `notation` varchar(100) DEFAULT NULL,
  `notation_yaml` text DEFAULT NULL,
  `baseball_defensive_group_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `runner_on_first_advance` int(11) DEFAULT NULL,
  `runner_on_second_advance` int(11) DEFAULT NULL,
  `runner_on_third_advance` int(11) DEFAULT NULL,
  `outs_recorded` int(11) DEFAULT NULL,
  `rbi` int(11) DEFAULT NULL,
  `runs_scored` int(11) DEFAULT NULL,
  `earned_runs_scored` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_baseball_action_plays_1` (`play_type`),
  KEY `IDX_FK_bas_act_pla_bas_eve_sta_id__bas_eve_sta_id` (`baseball_event_state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_action_substitutions`
--

DROP TABLE IF EXISTS `baseball_action_substitutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_action_substitutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseball_event_state_id` int(11) NOT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `person_type` varchar(100) DEFAULT NULL,
  `person_original_id` int(11) DEFAULT NULL,
  `person_original_position_id` int(11) DEFAULT NULL,
  `person_original_lineup_slot` int(11) DEFAULT NULL,
  `person_replacing_id` int(11) DEFAULT NULL,
  `person_replacing_position_id` int(11) DEFAULT NULL,
  `person_replacing_lineup_slot` int(11) DEFAULT NULL,
  `substitution_reason` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bas_act_sub_per_rep_pos_id__pos_id` (`person_replacing_position_id`),
  KEY `FK_bas_act_sub_per_ori_pos_id__pos_id` (`person_original_position_id`),
  KEY `FK_bas_act_sub_bas_eve_sta_id__bas_eve_sta_id` (`baseball_event_state_id`),
  KEY `FK_bas_act_sub_per_rep_id__per_id` (`person_replacing_id`),
  KEY `FK_bas_act_sub_per_ori_id__per_id` (`person_original_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_defensive_group`
--

DROP TABLE IF EXISTS `baseball_defensive_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_defensive_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_defensive_players`
--

DROP TABLE IF EXISTS `baseball_defensive_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_defensive_players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseball_defensive_group_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bas_def_pla_bas_def_gro_id__bas_def_gro_id` (`baseball_defensive_group_id`),
  KEY `FK_bas_def_pla_pla_id__per_id` (`player_id`),
  KEY `FK_bas_def_pla_pos_id__pos_id` (`position_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_defensive_stats`
--

DROP TABLE IF EXISTS `baseball_defensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_defensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `double_plays` int(11) DEFAULT NULL,
  `triple_plays` int(11) DEFAULT NULL,
  `putouts` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `errors` int(11) DEFAULT NULL,
  `fielding_percentage` float DEFAULT NULL,
  `defensive_average` float DEFAULT NULL,
  `errors_passed_ball` int(11) DEFAULT NULL,
  `errors_catchers_interference` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1725 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_event_states`
--

DROP TABLE IF EXISTS `baseball_event_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_event_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `current_state` smallint(6) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `at_bat_number` int(11) DEFAULT NULL,
  `inning_value` int(11) DEFAULT NULL,
  `inning_half` varchar(100) DEFAULT NULL,
  `outs` int(11) DEFAULT NULL,
  `balls` int(11) DEFAULT NULL,
  `strikes` int(11) DEFAULT NULL,
  `runner_on_first_id` int(11) DEFAULT NULL,
  `runner_on_second_id` int(11) DEFAULT NULL,
  `runner_on_third_id` int(11) DEFAULT NULL,
  `runner_on_first` smallint(6) DEFAULT NULL,
  `runner_on_second` smallint(6) DEFAULT NULL,
  `runner_on_third` smallint(6) DEFAULT NULL,
  `runs_this_inning_half` int(11) DEFAULT NULL,
  `pitcher_id` int(11) DEFAULT NULL,
  `batter_id` int(11) DEFAULT NULL,
  `batter_side` varchar(100) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bas_eve_sta_run_on_sec_id__per_id` (`runner_on_second_id`),
  KEY `FK_bas_eve_sta_run_on_thi_id__per_id` (`runner_on_third_id`),
  KEY `FK_bas_eve_sta_run_on_fir_id__per_id` (`runner_on_first_id`),
  KEY `FK_bas_eve_sta_bat_id__per_id` (`batter_id`),
  KEY `FK_bas_eve_sta_pit_id__per_id` (`pitcher_id`),
  KEY `IDX_baseball_event_states_1` (`current_state`),
  KEY `IDX_FK_bas_eve_sta_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_offensive_stats`
--

DROP TABLE IF EXISTS `baseball_offensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_offensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `average` float DEFAULT NULL,
  `runs_scored` int(11) DEFAULT NULL,
  `at_bats` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `rbi` int(11) DEFAULT NULL,
  `total_bases` int(11) DEFAULT NULL,
  `slugging_percentage` float DEFAULT NULL,
  `bases_on_balls` int(11) DEFAULT NULL,
  `strikeouts` int(11) DEFAULT NULL,
  `left_on_base` int(11) DEFAULT NULL,
  `left_in_scoring_position` int(11) DEFAULT NULL,
  `singles` int(11) DEFAULT NULL,
  `doubles` int(11) DEFAULT NULL,
  `triples` int(11) DEFAULT NULL,
  `home_runs` int(11) DEFAULT NULL,
  `grand_slams` int(11) DEFAULT NULL,
  `at_bats_per_rbi` float DEFAULT NULL,
  `plate_appearances_per_rbi` float DEFAULT NULL,
  `at_bats_per_home_run` float DEFAULT NULL,
  `plate_appearances_per_home_run` float DEFAULT NULL,
  `sac_flies` int(11) DEFAULT NULL,
  `sac_bunts` int(11) DEFAULT NULL,
  `grounded_into_double_play` int(11) DEFAULT NULL,
  `moved_up` int(11) DEFAULT NULL,
  `on_base_percentage` float DEFAULT NULL,
  `stolen_bases` int(11) DEFAULT NULL,
  `stolen_bases_caught` int(11) DEFAULT NULL,
  `stolen_bases_average` float DEFAULT NULL,
  `hit_by_pitch` int(11) DEFAULT NULL,
  `defensive_interferance_reaches` int(11) DEFAULT NULL,
  `on_base_plus_slugging` float DEFAULT NULL,
  `plate_appearances` int(11) DEFAULT NULL,
  `hits_extra_base` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1725 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baseball_pitching_stats`
--

DROP TABLE IF EXISTS `baseball_pitching_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball_pitching_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `runs_allowed` int(11) DEFAULT NULL,
  `singles_allowed` int(11) DEFAULT NULL,
  `doubles_allowed` int(11) DEFAULT NULL,
  `triples_allowed` int(11) DEFAULT NULL,
  `home_runs_allowed` int(11) DEFAULT NULL,
  `innings_pitched` varchar(20) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `earned_runs` int(11) DEFAULT NULL,
  `unearned_runs` int(11) DEFAULT NULL,
  `bases_on_balls` int(11) DEFAULT NULL,
  `bases_on_balls_intentional` int(11) DEFAULT NULL,
  `strikeouts` int(11) DEFAULT NULL,
  `strikeout_to_bb_ratio` float DEFAULT NULL,
  `number_of_pitches` int(11) DEFAULT NULL,
  `era` float DEFAULT NULL,
  `inherited_runners_scored` int(11) DEFAULT NULL,
  `pick_offs` int(11) DEFAULT NULL,
  `errors_hit_with_pitch` int(11) DEFAULT NULL,
  `errors_wild_pitch` int(11) DEFAULT NULL,
  `balks` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `saves` int(11) DEFAULT NULL,
  `shutouts` int(11) DEFAULT NULL,
  `games_complete` int(11) DEFAULT NULL,
  `games_finished` int(11) DEFAULT NULL,
  `winning_percentage` float DEFAULT NULL,
  `event_credit` varchar(40) DEFAULT NULL,
  `save_credit` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=853 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basketball_defensive_stats`
--

DROP TABLE IF EXISTS `basketball_defensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basketball_defensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steals_total` varchar(100) DEFAULT NULL,
  `steals_per_game` varchar(100) DEFAULT NULL,
  `blocks_total` varchar(100) DEFAULT NULL,
  `blocks_per_game` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basketball_event_states`
--

DROP TABLE IF EXISTS `basketball_event_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basketball_event_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `period_value` varchar(100) DEFAULT NULL,
  `period_time_elapsed` varchar(100) DEFAULT NULL,
  `period_time_remaining` varchar(100) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_events_basketball_event_states` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basketball_offensive_stats`
--

DROP TABLE IF EXISTS `basketball_offensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basketball_offensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_goals_made` int(11) DEFAULT NULL,
  `field_goals_attempted` int(11) DEFAULT NULL,
  `field_goals_percentage` varchar(100) DEFAULT NULL,
  `field_goals_per_game` varchar(100) DEFAULT NULL,
  `field_goals_attempted_per_game` varchar(100) DEFAULT NULL,
  `field_goals_percentage_adjusted` varchar(100) DEFAULT NULL,
  `three_pointers_made` int(11) DEFAULT NULL,
  `three_pointers_attempted` int(11) DEFAULT NULL,
  `three_pointers_percentage` varchar(100) DEFAULT NULL,
  `three_pointers_per_game` varchar(100) DEFAULT NULL,
  `three_pointers_attempted_per_game` varchar(100) DEFAULT NULL,
  `free_throws_made` varchar(100) DEFAULT NULL,
  `free_throws_attempted` varchar(100) DEFAULT NULL,
  `free_throws_percentage` varchar(100) DEFAULT NULL,
  `free_throws_per_game` varchar(100) DEFAULT NULL,
  `free_throws_attempted_per_game` varchar(100) DEFAULT NULL,
  `points_scored_total` varchar(100) DEFAULT NULL,
  `points_scored_per_game` varchar(100) DEFAULT NULL,
  `assists_total` varchar(100) DEFAULT NULL,
  `assists_per_game` varchar(100) DEFAULT NULL,
  `turnovers_total` varchar(100) DEFAULT NULL,
  `turnovers_per_game` varchar(100) DEFAULT NULL,
  `points_scored_off_turnovers` varchar(100) DEFAULT NULL,
  `points_scored_in_paint` varchar(100) DEFAULT NULL,
  `points_scored_on_second_chance` varchar(100) DEFAULT NULL,
  `points_scored_on_fast_break` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basketball_rebounding_stats`
--

DROP TABLE IF EXISTS `basketball_rebounding_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basketball_rebounding_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rebounds_total` varchar(100) DEFAULT NULL,
  `rebounds_per_game` varchar(100) DEFAULT NULL,
  `rebounds_defensive` varchar(100) DEFAULT NULL,
  `rebounds_offensive` varchar(100) DEFAULT NULL,
  `team_rebounds_total` varchar(100) DEFAULT NULL,
  `team_rebounds_per_game` varchar(100) DEFAULT NULL,
  `team_rebounds_defensive` varchar(100) DEFAULT NULL,
  `team_rebounds_offensive` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basketball_team_stats`
--

DROP TABLE IF EXISTS `basketball_team_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basketball_team_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeouts_left` varchar(100) DEFAULT NULL,
  `largest_lead` varchar(100) DEFAULT NULL,
  `fouls_total` varchar(100) DEFAULT NULL,
  `turnover_margin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bookmakers`
--

DROP TABLE IF EXISTS `bookmakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmakers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmaker_key` varchar(100) DEFAULT NULL,
  `publisher_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_boo_loc_id__loc_id` (`location_id`),
  KEY `FK_boo_pub_id__pub_id` (`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_person_stats`
--

DROP TABLE IF EXISTS `core_person_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_person_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_played_event` varchar(40) DEFAULT NULL,
  `time_played_total` varchar(40) DEFAULT NULL,
  `time_played_event_average` varchar(40) DEFAULT NULL,
  `events_played` int(11) DEFAULT NULL,
  `events_started` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cor_per_sta_pos_id__pos_id` (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2589 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_stats`
--

DROP TABLE IF EXISTS `core_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` varchar(100) DEFAULT NULL,
  `score_opposing` varchar(100) DEFAULT NULL,
  `score_attempts` varchar(100) DEFAULT NULL,
  `score_attempts_opposing` varchar(100) DEFAULT NULL,
  `score_percentage` varchar(100) DEFAULT NULL,
  `score_percentage_opposing` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_holes`
--

DROP TABLE IF EXISTS `course_holes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_holes` (
  `hole_id` int(11) NOT NULL AUTO_INCREMENT,
  `hole_type` varchar(13) NOT NULL CHECK (`hole_type` = 'Open Design' or `hole_type` = 'Lay-up Design' or `hole_type` = 'Detour Design' or `hole_type` = 'Heroic Design' or `hole_type` = 'Penal Design'),
  `hole_number` int(11) NOT NULL,
  `par` int(11) NOT NULL CHECK (`par` >= 3 and `par` <= 6),
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`hole_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `course_holes_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `golf_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_info`
--

DROP TABLE IF EXISTS `db_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_info` (
  `version` varchar(100) NOT NULL DEFAULT '16',
  KEY `IDX_db_info_1` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `display_names`
--

DROP TABLE IF EXISTS `display_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `display_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(100) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `abbreviation` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3959 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_classes`
--

DROP TABLE IF EXISTS `document_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_document_classes_1` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_contents`
--

DROP TABLE IF EXISTS `document_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL,
  `sportsml` varchar(200) DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_doc_con_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_fixtures`
--

DROP TABLE IF EXISTS `document_fixtures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_fixtures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fixture_key` varchar(100) DEFAULT NULL,
  `publisher_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `document_class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_document_fixtures_1` (`fixture_key`),
  KEY `IDX_FK_doc_fix_doc_cla_id__doc_cla_id` (`document_class_id`),
  KEY `IDX_FK_doc_fix_pub_id__pub_id` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_fixtures_events`
--

DROP TABLE IF EXISTS `document_fixtures_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_fixtures_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_fixture_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `latest_document_id` int(11) NOT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_doc_fix_eve_doc_fix_id__doc_fix_id` (`document_fixture_id`),
  KEY `IDX_FK_doc_fix_eve_eve_id__eve_id` (`event_id`),
  KEY `IDX_FK_doc_fix_eve_lat_doc_id__doc_id` (`latest_document_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7916 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_package_entry`
--

DROP TABLE IF EXISTS `document_package_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_package_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_package_id` int(11) NOT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `document_id` int(11) NOT NULL,
  `headline` varchar(100) DEFAULT NULL,
  `short_headline` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_doc_pac_ent_doc_pac_id__doc_pac_id` (`document_package_id`),
  KEY `FK_doc_pac_ent_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_packages`
--

DROP TABLE IF EXISTS `document_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_key` varchar(100) DEFAULT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `date_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` varchar(75) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `language` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `priority` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `revision_id` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `stats_coverage` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `document_fixture_id` int(11) NOT NULL,
  `source_id` int(11) DEFAULT NULL,
  `db_loading_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_documents_1` (`doc_id`),
  KEY `IDX_documents_3` (`date_time`),
  KEY `IDX_documents_4` (`priority`),
  KEY `IDX_documents_5` (`revision_id`),
  KEY `IDX_FK_doc_doc_fix_id__doc_fix_id` (`document_fixture_id`),
  KEY `IDX_FK_doc_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_FK_doc_sou_id__pub_id` (`source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_media`
--

DROP TABLE IF EXISTS `documents_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `media_caption_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_doc_med_med_cap_id__med_cap_id` (`media_caption_id`),
  KEY `FK_doc_med_med_id__med_id` (`media_id`),
  KEY `FK_doc_med_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_documents`
--

DROP TABLE IF EXISTS `event_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_documents` (
  `event_id` int(11) NOT NULL,
  `document_id` varchar(75) NOT NULL,
  `document_path` varchar(255) NOT NULL,
  PRIMARY KEY (`event_id`,`document_id`),
  KEY `document_id` (`document_id`),
  CONSTRAINT `event_documents_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `golf_event` (`id`),
  CONSTRAINT `event_documents_ibfk_2` FOREIGN KEY (`document_id`) REFERENCES `documents` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_round_strokes`
--

DROP TABLE IF EXISTS `event_round_strokes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_round_strokes` (
  `player_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `stroke_number` int(11) NOT NULL,
  `round_number` int(11) NOT NULL,
  `club_type` varchar(20) NOT NULL,
  `time_taken` time NOT NULL,
  PRIMARY KEY (`player_id`,`event_id`,`stroke_number`,`round_number`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `event_round_strokes_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `golf_player` (`id`),
  CONSTRAINT `event_round_strokes_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `golf_event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_key` varchar(100) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_alignment` varchar(100) DEFAULT NULL,
  `event_status` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `attendance` varchar(100) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_events_1` (`event_key`),
  KEY `IDX_FK_eve_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_FK_eve_sit_id__sit_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4351 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_media`
--

DROP TABLE IF EXISTS `events_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_media` (
  `event_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `FK_eve_med_med_id__med_id` (`media_id`),
  KEY `FK_eve_med_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_sub_seasons`
--

DROP TABLE IF EXISTS `events_sub_seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_sub_seasons` (
  `event_id` int(11) NOT NULL,
  `sub_season_id` int(11) NOT NULL,
  KEY `FK_eve_sub_sea_sub_sea_id__sub_sea_id` (`sub_season_id`),
  KEY `FK_eve_sub_sea_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `golf_course`
--

DROP TABLE IF EXISTS `golf_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `course_rating` decimal(3,1) NOT NULL,
  `par_value` int(11) NOT NULL,
  `course_distance` int(11) NOT NULL,
  `slope_rating` int(11) NOT NULL CHECK (`slope_rating` >= 55 and `slope_rating` <= 155),
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `golf_course_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `golf_event`
--

DROP TABLE IF EXISTS `golf_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `total_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `golf_event_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `golf_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `golf_event_players`
--

DROP TABLE IF EXISTS `golf_event_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf_event_players` (
  `golf_event_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `total_distance` decimal(5,1) DEFAULT NULL,
  `time_used` time DEFAULT NULL,
  PRIMARY KEY (`golf_event_id`,`player_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `golf_event_players_ibfk_1` FOREIGN KEY (`golf_event_id`) REFERENCES `golf_event` (`id`),
  CONSTRAINT `golf_event_players_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `golf_player` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `golf_event_rounds`
--

DROP TABLE IF EXISTS `golf_event_rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf_event_rounds` (
  `player_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `hole_id` int(11) NOT NULL,
  `round_number` int(11) NOT NULL,
  `strokes` int(11) NOT NULL,
  PRIMARY KEY (`player_id`,`event_id`),
  KEY `event_id` (`event_id`),
  KEY `hole_id` (`hole_id`),
  CONSTRAINT `golf_event_rounds_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `golf_player` (`id`),
  CONSTRAINT `golf_event_rounds_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `golf_event` (`id`),
  CONSTRAINT `golf_event_rounds_ibfk_3` FOREIGN KEY (`hole_id`) REFERENCES `course_holes` (`hole_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `golf_player`
--

DROP TABLE IF EXISTS `golf_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handicap` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `team_id` (`team_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `golf_player_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `golf_team` (`id`),
  CONSTRAINT `golf_player_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `golf_team`
--

DROP TABLE IF EXISTS `golf_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf_team` (
  `id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `golf_team_ibfk_1` FOREIGN KEY (`id`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ice_hockey_action_participants`
--

DROP TABLE IF EXISTS `ice_hockey_action_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ice_hockey_action_participants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ice_hockey_action_play_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `participant_role` varchar(100) NOT NULL,
  `point_credit` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ice_hockey_action_plays`
--

DROP TABLE IF EXISTS `ice_hockey_action_plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ice_hockey_action_plays` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ice_hockey_event_state_id` int(11) NOT NULL,
  `play_type` varchar(100) DEFAULT NULL,
  `score_attempt_type` varchar(100) DEFAULT NULL,
  `play_result` varchar(100) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ice_hockey_defensive_stats`
--

DROP TABLE IF EXISTS `ice_hockey_defensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ice_hockey_defensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shots_power_play_allowed` varchar(100) DEFAULT NULL,
  `shots_penalty_shot_allowed` varchar(100) DEFAULT NULL,
  `goals_power_play_allowed` varchar(100) DEFAULT NULL,
  `goals_penalty_shot_allowed` varchar(100) DEFAULT NULL,
  `goals_against_average` varchar(100) DEFAULT NULL,
  `saves` varchar(100) DEFAULT NULL,
  `save_percentage` varchar(100) DEFAULT NULL,
  `penalty_killing_amount` varchar(100) DEFAULT NULL,
  `penalty_killing_percentage` varchar(100) DEFAULT NULL,
  `shots_blocked` varchar(100) DEFAULT NULL,
  `takeaways` varchar(100) DEFAULT NULL,
  `shutouts` varchar(100) DEFAULT NULL,
  `minutes_penalty_killing` varchar(100) DEFAULT NULL,
  `hits` varchar(100) DEFAULT NULL,
  `goals_empty_net_allowed` varchar(100) DEFAULT NULL,
  `goals_short_handed_allowed` varchar(100) DEFAULT NULL,
  `goals_shootout_allowed` varchar(100) DEFAULT NULL,
  `shots_shootout_allowed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ice_hockey_event_states`
--

DROP TABLE IF EXISTS `ice_hockey_event_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ice_hockey_event_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `period_value` varchar(100) DEFAULT NULL,
  `period_time_elapsed` varchar(100) DEFAULT NULL,
  `period_time_remaining` varchar(100) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ice_hoc_eve_sta_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ice_hockey_offensive_stats`
--

DROP TABLE IF EXISTS `ice_hockey_offensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ice_hockey_offensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goals_game_winning` varchar(100) DEFAULT NULL,
  `goals_game_tying` varchar(100) DEFAULT NULL,
  `goals_power_play` varchar(100) DEFAULT NULL,
  `goals_short_handed` varchar(100) DEFAULT NULL,
  `goals_even_strength` varchar(100) DEFAULT NULL,
  `goals_empty_net` varchar(100) DEFAULT NULL,
  `goals_overtime` varchar(100) DEFAULT NULL,
  `goals_shootout` varchar(100) DEFAULT NULL,
  `goals_penalty_shot` varchar(100) DEFAULT NULL,
  `assists` varchar(100) DEFAULT NULL,
  `points` varchar(100) DEFAULT NULL,
  `power_play_amount` varchar(100) DEFAULT NULL,
  `power_play_percentage` varchar(100) DEFAULT NULL,
  `shots_penalty_shot_taken` varchar(100) DEFAULT NULL,
  `shots_penalty_shot_missed` varchar(100) DEFAULT NULL,
  `shots_penalty_shot_percentage` varchar(100) DEFAULT NULL,
  `giveaways` varchar(100) DEFAULT NULL,
  `minutes_power_play` varchar(100) DEFAULT NULL,
  `faceoff_wins` varchar(100) DEFAULT NULL,
  `faceoff_losses` varchar(100) DEFAULT NULL,
  `faceoff_win_percentage` varchar(100) DEFAULT NULL,
  `scoring_chances` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ice_hockey_player_stats`
--

DROP TABLE IF EXISTS `ice_hockey_player_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ice_hockey_player_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plus_minus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1073 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `injury_phases`
--

DROP TABLE IF EXISTS `injury_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `injury_phases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `injury_status` varchar(100) DEFAULT NULL,
  `injury_type` varchar(100) DEFAULT NULL,
  `injury_comment` varchar(100) DEFAULT NULL,
  `disabled_list` varchar(100) DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `phase_type` varchar(100) DEFAULT NULL,
  `injury_side` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_inj_pha_per_id__per_id` (`person_id`),
  KEY `IDX_FK_inj_pha_sea_id__sea_id` (`season_id`),
  KEY `IDX_injury_phases_2` (`injury_status`),
  KEY `IDX_injury_phases_3` (`start_date_time`),
  KEY `IDX_injury_phases_4` (`end_date_time`)
) ENGINE=MyISAM AUTO_INCREMENT=772 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `key_aliases`
--

DROP TABLE IF EXISTS `key_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_id` int(11) NOT NULL,
  `key_root_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_key_roots_key_aliases` (`key_root_id`),
  KEY `IDX_key_aliases_2` (`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `key_roots`
--

DROP TABLE IF EXISTS `key_roots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key_roots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_key_aliases_1` (`key_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `latest_revisions`
--

DROP TABLE IF EXISTS `latest_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `latest_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision_id` varchar(75) NOT NULL,
  `latest_document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_lat_rev_lat_doc_id__doc_id` (`latest_document_id`),
  KEY `IDX_latest_revisions_1` (`revision_id`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timezone` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `latitude` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `longitude` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `country_code` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_locations_1` (`country_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `revision_id` int(11) DEFAULT NULL,
  `media_type` varchar(100) DEFAULT NULL,
  `publisher_id` int(11) NOT NULL,
  `date_time` varchar(100) DEFAULT NULL,
  `credit_id` int(11) NOT NULL,
  `db_loading_date_time` datetime DEFAULT NULL,
  `creation_location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_med_cre_id__per_id` (`credit_id`),
  KEY `FK_med_pub_id__pub_id` (`publisher_id`),
  KEY `FK_med_cre_loc_id__loc_id` (`creation_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_captions`
--

DROP TABLE IF EXISTS `media_captions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_captions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) NOT NULL,
  `caption_type` varchar(100) DEFAULT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `caption_author_id` int(11) NOT NULL,
  `language` varchar(100) DEFAULT NULL,
  `caption_size` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_med_cap_med_id__med_id` (`media_id`),
  KEY `FK_med_cap_cap_aut_id__per_id` (`caption_author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_contents`
--

DROP TABLE IF EXISTS `media_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) NOT NULL,
  `object` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `width` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `file_size` varchar(100) DEFAULT NULL,
  `resolution` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_med_con_med_id__med_id` (`media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_keywords`
--

DROP TABLE IF EXISTS `media_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) DEFAULT NULL,
  `media_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_med_key_med_id__med_id` (`media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `motor_racing_event_states`
--

DROP TABLE IF EXISTS `motor_racing_event_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motor_racing_event_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `lap` varchar(100) DEFAULT NULL,
  `laps_remaining` varchar(100) DEFAULT NULL,
  `time_elapsed` varchar(100) DEFAULT NULL,
  `flag_state` varchar(100) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_events_motor_racing_event_states` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `motor_racing_qualifying_stats`
--

DROP TABLE IF EXISTS `motor_racing_qualifying_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motor_racing_qualifying_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grid` varchar(100) DEFAULT NULL,
  `pole_position` varchar(100) DEFAULT NULL,
  `pole_wins` varchar(100) DEFAULT NULL,
  `qualifying_speed` varchar(100) DEFAULT NULL,
  `qualifying_speed_units` varchar(100) DEFAULT NULL,
  `qualifying_time` varchar(100) DEFAULT NULL,
  `qualifying_position` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `motor_racing_race_stats`
--

DROP TABLE IF EXISTS `motor_racing_race_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motor_racing_race_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_behind_leader` varchar(100) DEFAULT NULL,
  `laps_behind_leader` varchar(100) DEFAULT NULL,
  `time_ahead_follower` varchar(100) DEFAULT NULL,
  `laps_ahead_follower` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `points` varchar(100) DEFAULT NULL,
  `points_rookie` varchar(100) DEFAULT NULL,
  `bonus` varchar(100) DEFAULT NULL,
  `laps_completed` varchar(100) DEFAULT NULL,
  `laps_leading_total` varchar(100) DEFAULT NULL,
  `distance_leading` varchar(100) DEFAULT NULL,
  `distance_completed` varchar(100) DEFAULT NULL,
  `distance_units` varchar(40) DEFAULT NULL,
  `speed_average` varchar(40) DEFAULT NULL,
  `speed_units` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `finishes_top_5` varchar(40) DEFAULT NULL,
  `finishes_top_10` varchar(40) DEFAULT NULL,
  `starts` varchar(40) DEFAULT NULL,
  `finishes` varchar(40) DEFAULT NULL,
  `non_finishes` varchar(40) DEFAULT NULL,
  `wins` varchar(40) DEFAULT NULL,
  `races_leading` varchar(40) DEFAULT NULL,
  `money` varchar(40) DEFAULT NULL,
  `money_units` varchar(40) DEFAULT NULL,
  `leads_total` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `outcome_totals`
--

DROP TABLE IF EXISTS `outcome_totals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outcome_totals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `standing_subgroup_id` int(11) NOT NULL,
  `outcome_holder_type` varchar(100) DEFAULT NULL,
  `outcome_holder_id` int(11) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `wins` varchar(100) DEFAULT NULL,
  `losses` varchar(100) DEFAULT NULL,
  `ties` varchar(100) DEFAULT NULL,
  `undecideds` varchar(100) DEFAULT NULL,
  `winning_percentage` varchar(100) DEFAULT NULL,
  `points_scored_for` varchar(100) DEFAULT NULL,
  `points_scored_against` varchar(100) DEFAULT NULL,
  `points_difference` varchar(100) DEFAULT NULL,
  `standing_points` varchar(100) DEFAULT NULL,
  `streak_type` varchar(100) DEFAULT NULL,
  `streak_duration` varchar(100) DEFAULT NULL,
  `streak_total` varchar(100) DEFAULT NULL,
  `streak_start` date DEFAULT NULL,
  `streak_end` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_out_tot_sta_sub_id__sta_sub_id` (`standing_subgroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `participants_events`
--

DROP TABLE IF EXISTS `participants_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participants_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participant_type` varchar(100) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `alignment` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `event_outcome` varchar(100) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_par_eve_eve_id__eve_id` (`event_id`),
  KEY `IDX_participants_events_1` (`participant_type`),
  KEY `IDX_participants_events_2` (`participant_id`),
  KEY `IDX_participants_events_3` (`alignment`),
  KEY `IDX_participants_events_4` (`event_outcome`)
) ENGINE=MyISAM AUTO_INCREMENT=8701 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `periods`
--

DROP TABLE IF EXISTS `periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participant_event_id` int(11) NOT NULL,
  `period_value` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_per_par_eve_id__par_eve_id` (`participant_event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=549 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_event_metadata`
--

DROP TABLE IF EXISTS `person_event_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_event_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `health` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `lineup_slot` int(11) DEFAULT NULL,
  `lineup_slot_sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_per_eve_met_eve_id__eve_id` (`event_id`),
  KEY `IDX_FK_per_eve_met_per_id__per_id` (`person_id`),
  KEY `IDX_FK_per_eve_met_pos_id__pos_id` (`position_id`),
  KEY `IDX_FK_per_eve_met_rol_id__rol_id` (`role_id`),
  KEY `IDX_FK_teams_person_event_metadata` (`team_id`),
  KEY `IDX_person_event_metadata_1` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4003 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_phases`
--

DROP TABLE IF EXISTS `person_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_phases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `membership_type` varchar(40) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `role_status` varchar(40) DEFAULT NULL,
  `phase_status` varchar(40) DEFAULT NULL,
  `uniform_number` varchar(20) DEFAULT NULL,
  `regular_position_id` int(11) DEFAULT NULL,
  `regular_position_depth` varchar(40) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `start_season_id` int(11) DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `end_season_id` int(11) DEFAULT NULL,
  `entry_reason` varchar(40) DEFAULT NULL,
  `exit_reason` varchar(40) DEFAULT NULL,
  `selection_level` int(11) DEFAULT NULL,
  `selection_sublevel` int(11) DEFAULT NULL,
  `selection_overall` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_per_pha_rol_id__rol_id` (`role_id`),
  KEY `FK_per_pha_sta_sea_id__sea_id` (`start_season_id`),
  KEY `FK_per_pha_end_sea_id__sea_id` (`end_season_id`),
  KEY `IDX_FK_per_pha_per_id__per_id` (`person_id`),
  KEY `IDX_FK_per_pha_reg_pos_id__pos_id` (`regular_position_id`),
  KEY `IDX_person_phases_1` (`membership_type`),
  KEY `IDX_person_phases_2` (`membership_id`),
  KEY `IDX_person_phases_3` (`phase_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_key` varchar(100) CHARACTER SET latin1 NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `gender` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `birth_date` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `death_date` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `birth_location_id` int(11) DEFAULT NULL,
  `hometown_location_id` int(11) DEFAULT NULL,
  `residence_location_id` int(11) DEFAULT NULL,
  `death_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_per_bir_loc_id__loc_id` (`birth_location_id`),
  KEY `FK_per_dea_loc_id__loc_id` (`death_location_id`),
  KEY `FK_per_res_loc_id__loc_id` (`residence_location_id`),
  KEY `FK_per_hom_loc_id__loc_id` (`hometown_location_id`),
  KEY `IDX_FK_per_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_persons_1` (`person_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3938 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `persons_documents`
--

DROP TABLE IF EXISTS `persons_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons_documents` (
  `person_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  KEY `FK_per_doc_per_id__per_id` (`person_id`),
  KEY `FK_per_doc_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `persons_media`
--

DROP TABLE IF EXISTS `persons_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons_media` (
  `person_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `FK_per_med_med_id__med_id` (`media_id`),
  KEY `FK_per_med_per_id__per_id` (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_documents`
--

DROP TABLE IF EXISTS `player_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_documents` (
  `player_id` int(11) NOT NULL,
  `document_id` varchar(75) NOT NULL,
  `document_path` varchar(255) NOT NULL,
  PRIMARY KEY (`player_id`,`document_id`),
  KEY `document_id` (`document_id`),
  CONSTRAINT `player_documents_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `golf_player` (`id`),
  CONSTRAINT `player_documents_ibfk_2` FOREIGN KEY (`document_id`) REFERENCES `documents` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliation_id` int(11) NOT NULL,
  `abbreviation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_pos_aff_id__aff_id` (`affiliation_id`),
  KEY `IDX_positions_1` (`abbreviation`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_key` varchar(100) NOT NULL,
  `publisher_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_publishers_1` (`publisher_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_key` varchar(100) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_roles_1` (`role_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season_key` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_sea_lea_id__aff_id` (`league_id`),
  KEY `IDX_FK_sea_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_seasons_1` (`season_key`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_key` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_sit_loc_id__loc_id` (`location_id`),
  KEY `IDX_FK_sit_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_sites_1` (`site_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soccer_defensive_stats`
--

DROP TABLE IF EXISTS `soccer_defensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soccer_defensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shots_penalty_shot_allowed` varchar(100) DEFAULT NULL,
  `goals_penalty_shot_allowed` varchar(100) DEFAULT NULL,
  `goals_against_average` varchar(100) DEFAULT NULL,
  `goals_against_total` varchar(100) DEFAULT NULL,
  `saves` varchar(100) DEFAULT NULL,
  `save_percentage` varchar(100) DEFAULT NULL,
  `catches_punches` varchar(100) DEFAULT NULL,
  `shots_on_goal_total` varchar(100) DEFAULT NULL,
  `shots_shootout_total` varchar(100) DEFAULT NULL,
  `shots_shootout_allowed` varchar(100) DEFAULT NULL,
  `shots_blocked` varchar(100) DEFAULT NULL,
  `shutouts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soccer_event_states`
--

DROP TABLE IF EXISTS `soccer_event_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soccer_event_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `period_value` varchar(100) DEFAULT NULL,
  `period_time_elapsed` varchar(100) DEFAULT NULL,
  `period_time_remaining` varchar(100) DEFAULT NULL,
  `minutes_elapsed` varchar(100) DEFAULT NULL,
  `period_minute_elapsed` varchar(100) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_events_soccer_event_states` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soccer_foul_stats`
--

DROP TABLE IF EXISTS `soccer_foul_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soccer_foul_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fouls_suffered` varchar(100) DEFAULT NULL,
  `fouls_commited` varchar(100) DEFAULT NULL,
  `cautions_total` varchar(100) DEFAULT NULL,
  `cautions_pending` varchar(100) DEFAULT NULL,
  `caution_points_total` varchar(100) DEFAULT NULL,
  `caution_points_pending` varchar(100) DEFAULT NULL,
  `ejections_total` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soccer_offensive_stats`
--

DROP TABLE IF EXISTS `soccer_offensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soccer_offensive_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goals_game_winning` varchar(100) DEFAULT NULL,
  `goals_game_tying` varchar(100) DEFAULT NULL,
  `goals_overtime` varchar(100) DEFAULT NULL,
  `goals_shootout` varchar(100) DEFAULT NULL,
  `goals_total` varchar(100) DEFAULT NULL,
  `assists_game_winning` varchar(100) DEFAULT NULL,
  `assists_game_tying` varchar(100) DEFAULT NULL,
  `assists_overtime` varchar(100) DEFAULT NULL,
  `assists_total` varchar(100) DEFAULT NULL,
  `points` varchar(100) DEFAULT NULL,
  `shots_total` varchar(100) DEFAULT NULL,
  `shots_on_goal_total` varchar(100) DEFAULT NULL,
  `shots_hit_frame` varchar(100) DEFAULT NULL,
  `shots_penalty_shot_taken` varchar(100) DEFAULT NULL,
  `shots_penalty_shot_scored` varchar(100) DEFAULT NULL,
  `shots_penalty_shot_missed` varchar(40) DEFAULT NULL,
  `shots_penalty_shot_percentage` varchar(40) DEFAULT NULL,
  `shots_shootout_taken` varchar(40) DEFAULT NULL,
  `shots_shootout_scored` varchar(40) DEFAULT NULL,
  `shots_shootout_missed` varchar(40) DEFAULT NULL,
  `shots_shootout_percentage` varchar(40) DEFAULT NULL,
  `giveaways` varchar(40) DEFAULT NULL,
  `offsides` varchar(40) DEFAULT NULL,
  `corner_kicks` varchar(40) DEFAULT NULL,
  `hat_tricks` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `standing_subgroups`
--

DROP TABLE IF EXISTS `standing_subgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standing_subgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `standing_id` int(11) NOT NULL,
  `affiliation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sta_sub_sta_id__sta_id` (`standing_id`),
  KEY `FK_sta_sub_aff_id__aff_id` (`affiliation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `standings`
--

DROP TABLE IF EXISTS `standings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliation_id` int(11) NOT NULL,
  `standing_type` varchar(100) DEFAULT NULL,
  `sub_season_id` int(11) NOT NULL,
  `last_updated` varchar(100) DEFAULT NULL,
  `duration_scope` varchar(100) DEFAULT NULL,
  `competition_scope` varchar(100) DEFAULT NULL,
  `competition_scope_id` varchar(100) DEFAULT NULL,
  `alignment_scope` varchar(100) DEFAULT NULL,
  `site_scope` varchar(100) DEFAULT NULL,
  `scoping_label` varchar(100) DEFAULT NULL,
  `publisher_id` int(11) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sta_aff_id__aff_id` (`affiliation_id`),
  KEY `FK_sta_sub_sea_id__sub_sea_id` (`sub_season_id`),
  KEY `FK_sta_pub_id__pub_id` (`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stat_repository_type` varchar(100) DEFAULT NULL,
  `stat_repository_id` int(11) NOT NULL,
  `stat_holder_type` varchar(100) DEFAULT NULL,
  `stat_holder_id` int(11) DEFAULT NULL,
  `stat_coverage_type` varchar(100) DEFAULT NULL,
  `stat_coverage_id` int(11) DEFAULT NULL,
  `context` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_stats_1` (`stat_repository_type`),
  KEY `IDX_stats_2` (`stat_repository_id`),
  KEY `IDX_stats_3` (`stat_holder_type`),
  KEY `IDX_stats_4` (`stat_holder_id`),
  KEY `IDX_stats_5` (`stat_coverage_type`),
  KEY `IDX_stats_6` (`stat_coverage_id`),
  KEY `IDX_stats_7` (`context`)
) ENGINE=MyISAM AUTO_INCREMENT=12212 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sub_periods`
--

DROP TABLE IF EXISTS `sub_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period_id` int(11) NOT NULL,
  `sub_period_value` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_sub_per_per_id__per_id` (`period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sub_seasons`
--

DROP TABLE IF EXISTS `sub_seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_seasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_season_key` varchar(100) NOT NULL,
  `season_id` int(11) NOT NULL,
  `sub_season_type` varchar(100) NOT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_sub_sea_sea_id__sea_id` (`season_id`),
  KEY `IDX_sub_seasons_1` (`sub_season_key`),
  KEY `IDX_sub_seasons_2` (`sub_season_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_american_football_stats`
--

DROP TABLE IF EXISTS `team_american_football_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_american_football_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yards_per_attempt` varchar(100) DEFAULT NULL,
  `average_starting_position` varchar(100) DEFAULT NULL,
  `timeouts` varchar(100) DEFAULT NULL,
  `time_of_possession` varchar(100) DEFAULT NULL,
  `turnover_ratio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_documents`
--

DROP TABLE IF EXISTS `team_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_documents` (
  `team_id` int(11) NOT NULL,
  `document_id` varchar(75) NOT NULL,
  `document_path` varchar(255) NOT NULL,
  PRIMARY KEY (`team_id`,`document_id`),
  KEY `document_id` (`document_id`),
  CONSTRAINT `team_documents_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `golf_team` (`id`),
  CONSTRAINT `team_documents_ibfk_2` FOREIGN KEY (`document_id`) REFERENCES `documents` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_phases`
--

DROP TABLE IF EXISTS `team_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_phases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `start_season_id` int(11) DEFAULT NULL,
  `end_season_id` int(11) DEFAULT NULL,
  `affiliation_id` int(11) NOT NULL,
  `start_date_time` varchar(100) DEFAULT NULL,
  `end_date_time` varchar(100) DEFAULT NULL,
  `phase_status` varchar(40) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tea_aff_pha_rol_id__rol_id` (`role_id`),
  KEY `FK_tea_aff_pha_end_sea_id__sea_id` (`end_season_id`),
  KEY `FK_tea_aff_pha_sta_sea_id__sea_id` (`start_season_id`),
  KEY `FK_tea_aff_pha_aff_id__aff_id` (`affiliation_id`),
  KEY `FK_tea_aff_pha_tea_id__tea_id` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=369 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_key` varchar(100) CHARACTER SET latin1 NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `home_site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tea_pub_id__pub_id` (`publisher_id`),
  KEY `FK_tea_hom_sit_id__sit_id` (`home_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams_media`
--

DROP TABLE IF EXISTS `teams_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams_media` (
  `team_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `FK_tea_med_med_id__med_id` (`media_id`),
  KEY `FK_tea_med_tea_id__tea_id` (`team_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tennis_action_points`
--

DROP TABLE IF EXISTS `tennis_action_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tennis_action_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_period_id` varchar(100) DEFAULT NULL,
  `sequence_number` varchar(100) DEFAULT NULL,
  `win_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tennis_action_volleys`
--

DROP TABLE IF EXISTS `tennis_action_volleys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tennis_action_volleys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence_number` varchar(100) DEFAULT NULL,
  `tennis_action_points_id` int(11) DEFAULT NULL,
  `landing_location` varchar(100) DEFAULT NULL,
  `swing_type` varchar(100) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `spin_type` varchar(100) DEFAULT NULL,
  `trajectory_details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tennis_event_states`
--

DROP TABLE IF EXISTS `tennis_event_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tennis_event_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `tennis_set` varchar(100) DEFAULT NULL,
  `game` varchar(100) DEFAULT NULL,
  `server_person_id` int(11) DEFAULT NULL,
  `server_score` varchar(100) DEFAULT NULL,
  `receiver_person_id` int(11) DEFAULT NULL,
  `receiver_score` varchar(100) DEFAULT NULL,
  `service_number` varchar(100) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_events_tennis_event_states` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tennis_return_stats`
--

DROP TABLE IF EXISTS `tennis_return_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tennis_return_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `returns_played` varchar(100) DEFAULT NULL,
  `matches_played` varchar(100) DEFAULT NULL,
  `first_service_return_points_won` varchar(100) DEFAULT NULL,
  `first_service_return_points_won_pct` varchar(100) DEFAULT NULL,
  `second_service_return_points_won` varchar(100) DEFAULT NULL,
  `second_service_return_points_won_pct` varchar(100) DEFAULT NULL,
  `return_games_played` varchar(100) DEFAULT NULL,
  `return_games_won` varchar(100) DEFAULT NULL,
  `return_games_won_pct` varchar(100) DEFAULT NULL,
  `break_points_played` varchar(100) DEFAULT NULL,
  `break_points_converted` varchar(100) DEFAULT NULL,
  `break_points_converted_pct` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tennis_service_stats`
--

DROP TABLE IF EXISTS `tennis_service_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tennis_service_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `services_played` varchar(100) DEFAULT NULL,
  `matches_played` varchar(100) DEFAULT NULL,
  `aces` varchar(100) DEFAULT NULL,
  `first_services_good` varchar(100) DEFAULT NULL,
  `first_services_good_pct` varchar(100) DEFAULT NULL,
  `first_service_points_won` varchar(100) DEFAULT NULL,
  `first_service_points_won_pct` varchar(100) DEFAULT NULL,
  `second_service_points_won` varchar(100) DEFAULT NULL,
  `second_service_points_won_pct` varchar(100) DEFAULT NULL,
  `service_games_played` varchar(100) DEFAULT NULL,
  `service_games_won` varchar(100) DEFAULT NULL,
  `service_games_won_pct` varchar(100) DEFAULT NULL,
  `break_points_played` varchar(100) DEFAULT NULL,
  `break_points_saved` varchar(100) DEFAULT NULL,
  `break_points_saved_pct` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wagering_moneylines`
--

DROP TABLE IF EXISTS `wagering_moneylines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagering_moneylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `rotation_key` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `vigorish` varchar(100) DEFAULT NULL,
  `line` varchar(100) DEFAULT NULL,
  `line_opening` varchar(100) DEFAULT NULL,
  `prediction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_wag_mon_boo_id__boo_id` (`bookmaker_id`),
  KEY `FK_wag_mon_tea_id__tea_id` (`team_id`),
  KEY `FK_wag_mon_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wagering_odds_lines`
--

DROP TABLE IF EXISTS `wagering_odds_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagering_odds_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `rotation_key` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `numerator` varchar(100) DEFAULT NULL,
  `denominator` varchar(100) DEFAULT NULL,
  `prediction` varchar(100) DEFAULT NULL,
  `payout_calculation` varchar(100) DEFAULT NULL,
  `payout_amount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_wag_odd_lin_tea_id__tea_id` (`team_id`),
  KEY `FK_wag_odd_lin_eve_id__eve_id` (`event_id`),
  KEY `FK_wag_odd_lin_boo_id__boo_id` (`bookmaker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wagering_runlines`
--

DROP TABLE IF EXISTS `wagering_runlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagering_runlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `rotation_key` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `vigorish` varchar(100) DEFAULT NULL,
  `line` varchar(100) DEFAULT NULL,
  `line_opening` varchar(100) DEFAULT NULL,
  `line_value` varchar(100) DEFAULT NULL,
  `prediction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_wag_run_boo_id__boo_id` (`bookmaker_id`),
  KEY `FK_wag_run_tea_id__tea_id` (`team_id`),
  KEY `FK_wag_run_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wagering_straight_spread_lines`
--

DROP TABLE IF EXISTS `wagering_straight_spread_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagering_straight_spread_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `rotation_key` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `vigorish` varchar(100) DEFAULT NULL,
  `line_value` varchar(100) DEFAULT NULL,
  `line_value_opening` varchar(100) DEFAULT NULL,
  `prediction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_wag_str_spr_lin_tea_id__tea_id` (`team_id`),
  KEY `FK_wag_str_spr_lin_eve_id__eve_id` (`event_id`),
  KEY `FK_wag_str_spr_lin_boo_id__boo_id` (`bookmaker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wagering_total_score_lines`
--

DROP TABLE IF EXISTS `wagering_total_score_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagering_total_score_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `rotation_key` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `vigorish` varchar(100) DEFAULT NULL,
  `line_over` varchar(100) DEFAULT NULL,
  `line_under` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `total_opening` varchar(100) DEFAULT NULL,
  `prediction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_wag_tot_sco_lin_boo_id__boo_id` (`bookmaker_id`),
  KEY `FK_wag_tot_sco_lin_eve_id__eve_id` (`event_id`),
  KEY `FK_wag_tot_sco_lin_tea_id__tea_id` (`team_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weather_conditions`
--

DROP TABLE IF EXISTS `weather_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `temperature` varchar(100) DEFAULT NULL,
  `temperature_units` varchar(40) DEFAULT NULL,
  `humidity` varchar(100) DEFAULT NULL,
  `clouds` varchar(100) DEFAULT NULL,
  `wind_direction` varchar(100) DEFAULT NULL,
  `wind_velocity` varchar(100) DEFAULT NULL,
  `weather_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FK_wea_con_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

--
-- Table structure for table `CAMERA`
--

DROP TABLE IF EXISTS `CAMERA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAMERA` (
  `SerialNum` varchar(255) NOT NULL,
  `SectionNum` int(11) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `FrameRate` int(11) DEFAULT NULL,
  PRIMARY KEY (`SerialNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author`) REFERENCES `author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `affiliation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `u20416076`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `u20416076` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `u20416076`;

--
-- Table structure for table `tblUsers`
--

DROP TABLE IF EXISTS `tblUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblUsers` (
  `uID` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uSurname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uHash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uAPIKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `u20416076_upbank`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `u20416076_upbank` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `u20416076_upbank`;

--
-- Current Database: `PA3`
--

USE `PA3`;

--
-- Current Database: `aeacus`
--

USE `aeacus`;

--
-- Current Database: `golfdb`
--

USE `golfdb`;

--
-- Current Database: `mysql`
--

USE `mysql`;

--
-- Final view structure for view `user`
--

/*!50001 DROP TABLE IF EXISTS `user`*/;
/*!50001 DROP VIEW IF EXISTS `user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user` AS select `global_priv`.`Host` AS `Host`,`global_priv`.`User` AS `User`,if(json_value(`global_priv`.`Priv`,'$.plugin') in ('mysql_native_password','mysql_old_password'),ifnull(json_value(`global_priv`.`Priv`,'$.authentication_string'),''),'') AS `Password`,if(json_value(`global_priv`.`Priv`,'$.access') & 1,'Y','N') AS `Select_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2,'Y','N') AS `Insert_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4,'Y','N') AS `Update_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8,'Y','N') AS `Delete_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16,'Y','N') AS `Create_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 32,'Y','N') AS `Drop_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 64,'Y','N') AS `Reload_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 128,'Y','N') AS `Shutdown_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 256,'Y','N') AS `Process_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 512,'Y','N') AS `File_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 1024,'Y','N') AS `Grant_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2048,'Y','N') AS `References_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4096,'Y','N') AS `Index_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8192,'Y','N') AS `Alter_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16384,'Y','N') AS `Show_db_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 32768,'Y','N') AS `Super_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 65536,'Y','N') AS `Create_tmp_table_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 131072,'Y','N') AS `Lock_tables_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 262144,'Y','N') AS `Execute_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 524288,'Y','N') AS `Repl_slave_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 1048576,'Y','N') AS `Repl_client_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2097152,'Y','N') AS `Create_view_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4194304,'Y','N') AS `Show_view_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8388608,'Y','N') AS `Create_routine_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16777216,'Y','N') AS `Alter_routine_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 33554432,'Y','N') AS `Create_user_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 67108864,'Y','N') AS `Event_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 134217728,'Y','N') AS `Trigger_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 268435456,'Y','N') AS `Create_tablespace_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 536870912,'Y','N') AS `Delete_history_priv`,elt(ifnull(json_value(`global_priv`.`Priv`,'$.ssl_type'),0) + 1,'','ANY','X509','SPECIFIED') AS `ssl_type`,ifnull(json_value(`global_priv`.`Priv`,'$.ssl_cipher'),'') AS `ssl_cipher`,ifnull(json_value(`global_priv`.`Priv`,'$.x509_issuer'),'') AS `x509_issuer`,ifnull(json_value(`global_priv`.`Priv`,'$.x509_subject'),'') AS `x509_subject`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_questions'),0) as unsigned) AS `max_questions`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_updates'),0) as unsigned) AS `max_updates`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_connections'),0) as unsigned) AS `max_connections`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_user_connections'),0) as signed) AS `max_user_connections`,ifnull(json_value(`global_priv`.`Priv`,'$.plugin'),'') AS `plugin`,ifnull(json_value(`global_priv`.`Priv`,'$.authentication_string'),'') AS `authentication_string`,if(ifnull(json_value(`global_priv`.`Priv`,'$.password_last_changed'),1) = 0,'Y','N') AS `password_expired`,elt(ifnull(json_value(`global_priv`.`Priv`,'$.is_role'),0) + 1,'N','Y') AS `is_role`,ifnull(json_value(`global_priv`.`Priv`,'$.default_role'),'') AS `default_role`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_statement_time'),0.0) as decimal(12,6)) AS `max_statement_time` from `global_priv` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `sakila`
--

USE `sakila`;

--
-- Final view structure for view `actor_info`
--

/*!50001 DROP TABLE IF EXISTS `actor_info`*/;
/*!50001 DROP VIEW IF EXISTS `actor_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `actor_info` AS select `a`.`actor_id` AS `actor_id`,`a`.`first_name` AS `first_name`,`a`.`last_name` AS `last_name`,group_concat(distinct concat(`c`.`name`,': ',(select group_concat(`f`.`title` order by `f`.`title` ASC separator ', ') from ((`film` `f` join `film_category` `fc` on(`f`.`film_id` = `fc`.`film_id`)) join `film_actor` `fa` on(`f`.`film_id` = `fa`.`film_id`)) where `fc`.`category_id` = `c`.`category_id` and `fa`.`actor_id` = `a`.`actor_id`)) order by `c`.`name` ASC separator '; ') AS `film_info` from (((`actor` `a` left join `film_actor` `fa` on(`a`.`actor_id` = `fa`.`actor_id`)) left join `film_category` `fc` on(`fa`.`film_id` = `fc`.`film_id`)) left join `category` `c` on(`fc`.`category_id` = `c`.`category_id`)) group by `a`.`actor_id`,`a`.`first_name`,`a`.`last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_list`
--

/*!50001 DROP TABLE IF EXISTS `customer_list`*/;
/*!50001 DROP VIEW IF EXISTS `customer_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_list` AS select `cu`.`customer_id` AS `ID`,concat(`cu`.`first_name`,_utf8mb4' ',`cu`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`city`.`city` AS `city`,`country`.`country` AS `country`,if(`cu`.`active`,_utf8mb4'active',_utf8mb4'') AS `notes`,`cu`.`store_id` AS `SID` from (((`customer` `cu` join `address` `a` on(`cu`.`address_id` = `a`.`address_id`)) join `city` on(`a`.`city_id` = `city`.`city_id`)) join `country` on(`city`.`country_id` = `country`.`country_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `film_list`
--

/*!50001 DROP TABLE IF EXISTS `film_list`*/;
/*!50001 DROP VIEW IF EXISTS `film_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `film_list` AS select `film`.`film_id` AS `FID`,`film`.`title` AS `title`,`film`.`description` AS `description`,`category`.`name` AS `category`,`film`.`rental_rate` AS `price`,`film`.`length` AS `length`,`film`.`rating` AS `rating`,group_concat(concat(`actor`.`first_name`,_utf8mb4' ',`actor`.`last_name`) separator ', ') AS `actors` from ((((`category` left join `film_category` on(`category`.`category_id` = `film_category`.`category_id`)) left join `film` on(`film_category`.`film_id` = `film`.`film_id`)) join `film_actor` on(`film`.`film_id` = `film_actor`.`film_id`)) join `actor` on(`film_actor`.`actor_id` = `actor`.`actor_id`)) group by `film`.`film_id`,`category`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nicer_but_slower_film_list`
--

/*!50001 DROP TABLE IF EXISTS `nicer_but_slower_film_list`*/;
/*!50001 DROP VIEW IF EXISTS `nicer_but_slower_film_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nicer_but_slower_film_list` AS select `film`.`film_id` AS `FID`,`film`.`title` AS `title`,`film`.`description` AS `description`,`category`.`name` AS `category`,`film`.`rental_rate` AS `price`,`film`.`length` AS `length`,`film`.`rating` AS `rating`,group_concat(concat(concat(ucase(substr(`actor`.`first_name`,1,1)),lcase(substr(`actor`.`first_name`,2,octet_length(`actor`.`first_name`))),_utf8mb4' ',concat(ucase(substr(`actor`.`last_name`,1,1)),lcase(substr(`actor`.`last_name`,2,octet_length(`actor`.`last_name`)))))) separator ', ') AS `actors` from ((((`category` left join `film_category` on(`category`.`category_id` = `film_category`.`category_id`)) left join `film` on(`film_category`.`film_id` = `film`.`film_id`)) join `film_actor` on(`film`.`film_id` = `film_actor`.`film_id`)) join `actor` on(`film_actor`.`actor_id` = `actor`.`actor_id`)) group by `film`.`film_id`,`category`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_by_film_category`
--

/*!50001 DROP TABLE IF EXISTS `sales_by_film_category`*/;
/*!50001 DROP VIEW IF EXISTS `sales_by_film_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_film_category` AS select `c`.`name` AS `category`,sum(`p`.`amount`) AS `total_sales` from (((((`payment` `p` join `rental` `r` on(`p`.`rental_id` = `r`.`rental_id`)) join `inventory` `i` on(`r`.`inventory_id` = `i`.`inventory_id`)) join `film` `f` on(`i`.`film_id` = `f`.`film_id`)) join `film_category` `fc` on(`f`.`film_id` = `fc`.`film_id`)) join `category` `c` on(`fc`.`category_id` = `c`.`category_id`)) group by `c`.`name` order by sum(`p`.`amount`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_by_store`
--

/*!50001 DROP TABLE IF EXISTS `sales_by_store`*/;
/*!50001 DROP VIEW IF EXISTS `sales_by_store`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_store` AS select concat(`c`.`city`,_utf8mb4',',`cy`.`country`) AS `store`,concat(`m`.`first_name`,_utf8mb4' ',`m`.`last_name`) AS `manager`,sum(`p`.`amount`) AS `total_sales` from (((((((`payment` `p` join `rental` `r` on(`p`.`rental_id` = `r`.`rental_id`)) join `inventory` `i` on(`r`.`inventory_id` = `i`.`inventory_id`)) join `store` `s` on(`i`.`store_id` = `s`.`store_id`)) join `address` `a` on(`s`.`address_id` = `a`.`address_id`)) join `city` `c` on(`a`.`city_id` = `c`.`city_id`)) join `country` `cy` on(`c`.`country_id` = `cy`.`country_id`)) join `staff` `m` on(`s`.`manager_staff_id` = `m`.`staff_id`)) group by `s`.`store_id` order by `cy`.`country`,`c`.`city` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `staff_list`
--

/*!50001 DROP TABLE IF EXISTS `staff_list`*/;
/*!50001 DROP VIEW IF EXISTS `staff_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `staff_list` AS select `s`.`staff_id` AS `ID`,concat(`s`.`first_name`,_utf8mb4' ',`s`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`city`.`city` AS `city`,`country`.`country` AS `country`,`s`.`store_id` AS `SID` from (((`staff` `s` join `address` `a` on(`s`.`address_id` = `a`.`address_id`)) join `city` on(`a`.`city_id` = `city`.`city_id`)) join `country` on(`city`.`country_id` = `country`.`country_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `sportsdb`
--

USE `sportsdb`;

--
-- Current Database: `test`
--

USE `test`;

--
-- Current Database: `u20416076`
--

USE `u20416076`;

--
-- Current Database: `u20416076_upbank`
--

USE `u20416076_upbank`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07 22:03:05
