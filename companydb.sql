DELIMITER $$

USE `companydb`$$

DROP FUNCTION IF EXISTS `getDOE`$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getDOE`(fname VARCHAR(255)) RETURNS DATE
    DETERMINISTIC
BEGIN
	DECLARE dateOfEmploy DATE;
	SELECT DOE INTO dateOfEmploy FROM companydb.employees WHERE fname = fname;
	RETURN dateOfEmploy;
	END$$

DELIMITER;