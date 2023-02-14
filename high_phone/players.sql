ALTER TABLE players
ADD `iban` varchar(50) DEFAULT NULL,
ADD `twitteraccount` varchar(50) DEFAULT NULL,
ADD `settings` longtext,
ADD `calls` longtext,
ADD `notes` longtext,
ADD `photos` longtext,
ADD `darkchatuser` mediumtext,
ADD `mailaccount` varchar(50) DEFAULT NULL;