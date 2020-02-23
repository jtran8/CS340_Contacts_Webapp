DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `emergencyContactId` int (11),
  PRIMARY KEY (`contactId`),
  CONSTRAINT `contacts_fk_user` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  CONSTRAINT `contacts_fk_emergency_contact` FOREIGN KEY (`emergencyContactId`) REFERENCES `contacts` (`contactId`)
    ON DELETE SET NULL
    ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `interactions`;
CREATE TABLE `interactions` (
  `interactId` int(11) NOT NULL AUTO_INCREMENT,
  `contactId` int(11) NOT NULL,
  `start` datetime NOT NULL,
  PRIMARY KEY (`interactId`),
  CONSTRAINT `interactions_fk_contact` FOREIGN KEY (`contactId`) REFERENCES `contacts` (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `communicationModes`;
CREATE TABLE `communicationModes` (
  `comId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`comId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `interactionDetails`;
CREATE TABLE `interactionDetails` (
  `interactionId` int(11) NOT NULL,
  `comId` int(11) NOT NULL,
  `details` varchar(255) NOT NULL,
  CONSTRAINT `interactionDetails_fk_interaction` FOREIGN KEY (`interactionId`) REFERENCES `interactions` (`interactId`),
  CONSTRAINT `interactionDetails_fk_comType` FOREIGN KEY (`comId`) REFERENCES `communicationModes` (`comId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
