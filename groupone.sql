CREATE SCHEMA `groupone` ;

delimiter $$

CREATE TABLE `account` (
  `idAccount` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `acctType` enum('V','C') NOT NULL DEFAULT 'C',
  PRIMARY KEY (`idAccount`,`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8$$

CREATE TABLE `coupon` (
  `idCoupon` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expireDate` date NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `category` varchar(45) NOT NULL DEFAULT 'Other',
  `sold` int(11) NOT NULL DEFAULT '0',
  `idVendor` int(11) NOT NULL,
  PRIMARY KEY (`idCoupon`),
  KEY `fk_vendor` (`idVendor`),
  CONSTRAINT `fk_vendor` FOREIGN KEY (`idVendor`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8$$

CREATE TABLE `transaction` (
  `idTransaction` int(11) NOT NULL AUTO_INCREMENT,
  `idTransAcct` int(11) NOT NULL,
  `idTransCoup` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` enum('GIFT','SELF') NOT NULL DEFAULT 'SELF',
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idTransaction`),
  KEY `fk_idTransAcct` (`idTransAcct`),
  KEY `fk_idTransCoup` (`idTransCoup`),
  CONSTRAINT `fk_idTransAcct` FOREIGN KEY (`idTransAcct`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idTransCoup` FOREIGN KEY (`idTransCoup`) REFERENCES `coupon` (`idCoupon`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8$$

