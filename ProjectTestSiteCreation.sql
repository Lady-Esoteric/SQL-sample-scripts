SQL script for Test site table and Administrators
Benet Morando 
################
#Test Site table
################
CREATE TABLE test_site
(
SITE_ID INT NOT NULL AUTO_INCREMENT,
SITE_NAME CHAR(25) NOT NULL,
SITE_CONTACT CHAR(20),
SITE_ADDRESS VARCHAR(30) NOT NULL,
SITE_CITY CHAR(30) NOT NULL,
SITE_REGION CHAR(2) NOT NULL,
SITE_CTRY(2) NOT NULL,
SITE_POSTAL CHAR(9) NOT NULL,
SITE_PHONE CHAR(12) NOT NULL,
PRIMARY KEY(SITE_ID));

##############
#administrator
##############
CREATE TABLE administors
(
ADMIN_DATE DATE NOT NULL,
SITE_ID INT NOT NULL,
TEST_ID INT NOT NULL,
PRIMARY KEY(SITE_ID, TEST_ID),
CONSTRAINT FOREIGN KEY (SITE_ID)
REFERENCES 'test_site'(SITE_ID)
CONSTRAINT FOREIGN KEY (TEST_ID)
REFERENCES 'Test'(TEST_ID));

###################
#populate test_site
###################
INSERT INTO test_site(SITE_ID, SITE_NAME, SITE_CONTACT, SITE_ADDRESS, SITE_CITY, SITE_REGION, SITE_CTRY, SITE_POSTAL, SITE_PHONE)
VALUES('35027869', 'Yakoma Center', 'Jamie Rivera', '2321 Sample St', 'Philadelphia', 'Pa', 'US', '19123', '267-357-1598');
INSERT INTO test_site(SITE_ID, SITE_NAME, SITE_CONTACT, SITE_ADDRESS, SITE_CITY, SITE_REGION, SITE_CTRY, SITE_POSTAL, SITE_PHONE)
VALUES('45760254', 'Jefferson Tests', 'Yolona Veitchbi', '4739 Sample Ave', 'Philadelphia', 'Pa', 'US', '19180', '215-456-7852');
INSERT INTO test_site(SITE_ID, SITE_NAME, SITE_CONTACT, SITE_ADDRESS, SITE_CITY, SITE_REGION, SITE_CTRY, SITE_POSTAL, SITE_PHONE)
VALUES('82749374', 'Great Results', 'Manny Johnson', '983 Sample Pike', 'Philadelphia', 'Pa', 'US', '19120', '267-456-9632');

#######################
#populate administrator
#######################
INSERT INTO administors(ADMIN_DATE, SITE_ID, TEST_ID)
VALUES('April 24, 2013, Yakoma Center, 4736892);
INSERT INTO administors(ADMIN_DATE, SITE_ID, TEST_ID)
VALUES('March 13, 2011', 'Jefferson Tests', '9736295');
INSERT INTO administors(ADMIN_DATE, SITE_ID, TEST_ID)
VALUES(January 3, 2015, 'Great Results', '8275384');


