/*
Team 27: Kendall Gibson, Nathaniel Pellant, Destin Schreiner, Pavan Yaddanapudi
BUS-X 501 - Data & Systems - Final Project
Professor Tom Gregory
*/

CREATE DATABASE ocfr;

USE ocfr;

CREATE TABLE Position (
    positionID INT AUTO_INCREMENT NOT NULL,
    positionName VARCHAR(255),
    PRIMARY KEY(positionID)
);

/* Source: https://www.w3schools.com/sql/sql_foreignkey.asp */
CREATE TABLE Person (
    personID INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    positionID INT NOT NULL,
    gender VARCHAR(255),
    address VARCHAR(255),
    dateOfBirth DATE,
    workPhone BIGINT,
    mobilePhone BIGINT,
    startDate DATE,
    endDate DATE,
    radioNumber VARCHAR(255),
    stationNumber BIGINT,
    email VARCHAR(255),
    isActive BOOLEAN,
    PRIMARY KEY(personID),
    FOREIGN KEY(positionID) REFERENCES Position (positionID) ON DELETE CASCADE
);

CREATE TABLE Certification(
    certificationID INT AUTO_INCREMENT,
    certificationAgency VARCHAR(255),
    certificationName VARCHAR(255),
    /* defaultExpiration is in years */
    defaultExpiration INT,
    PRIMARY KEY(certificationID)
);

CREATE TABLE Test(
    testID INT AUTO_INCREMENT NOT NULL,
    personID INT NOT NULL,
    certificationID INT NOT NULL,
    testDate DATE,
    PRIMARY KEY (testID),
    FOREIGN KEY (personID) REFERENCES Person (personID),
    FOREIGN KEY (certificationID) REFERENCES Certification (certificationID) ON DELETE CASCADE
);

/* OPTIONAL */
CREATE TABLE User(
    email VARCHAR(255),
    password VARCHAR(255)
);

/* Source: https://www.w3schools.com/sql/func_mysql_date_add.asp*/
CREATE VIEW certExpirationView
AS
SELECT Test.testID, Test.personID, Test.testDate, Person.firstName, Person.lastName, Person.email, Certification.certificationName, Certification.defaultExpiration, DATE_ADD(Test.testDate, INTERVAL Certification.defaultExpiration YEAR) AS expirationDate
FROM Test, Person, Certification
WHERE Test.personID = Person.personID AND Test.certificationID = Certification.certificationID;

CREATE VIEW memberCertificationsView
AS
SELECT Certification.certificationID, Certification.certificationAgency, Certification.certificationName, Certification.defaultExpiration, Person.personID, Person.firstName, Person.lastName, Person.email, Test.testID, Test.testDate, DATE_ADD(Test.testDate, INTERVAL Certification.defaultExpiration YEAR) AS expirationDate
FROM Certification, Person, Test
WHERE Person.personID = Test.personID
AND Certification.certificationID = Test.certificationID;

/* Dummy Data */
/* Source: https://www.mockaroo.com/ */
INSERT INTO Position (positionID, positionName) VALUES (1, 'Captain');
INSERT INTO Position (positionID, positionName) VALUES (2, 'Battalion Chief');
INSERT INTO Position (positionID, positionName) VALUES (3, 'Fire Chief');
INSERT INTO Position (positionID, positionName) VALUES (4, 'Assistant Chief');
INSERT INTO Position (positionID, positionName) VALUES (5, 'Lieutenant');
INSERT INTO Position (positionID, positionName) VALUES (6, 'EMT');
INSERT INTO Position (positionID, positionName) VALUES (7, 'Paramedic');
INSERT INTO Position (positionID, positionName) VALUES (8, 'Driver Engineer');
INSERT INTO Position (positionID, positionName) VALUES (9, 'Volunteer Firefighter');
INSERT INTO Position (positionID, positionName) VALUES (10, 'Probationary Firefighter');


INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (1, 'Gretel', 'Patience', '1', 'Female', '1 Mariners Cove Crossing', STR_TO_DATE('11/7/2008', '%m/%d/%Y'), '1898174188', '4547462251', STR_TO_DATE('12/29/2019', '%m/%d/%Y'), null, 'A-1', '1', 'gpatience0@thetimes.co.uk', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (2, 'Faydra', 'Wackley', '2', 'Female', '349 Eggendart Place',  STR_TO_DATE('5/16/2002', '%m/%d/%Y'), '1856501229', '7657392027', STR_TO_DATE('8/13/2020', '%m/%d/%Y'), null, 'A-2', '1', 'fwackley1@free.fr', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (3, 'Arturo', 'Nestor', '3', 'Male', '8 Donald Center', STR_TO_DATE('2/1/2019', '%m/%d/%Y'), '8845384789', '1242356309', STR_TO_DATE('11/26/2019', '%m/%d/%Y'), STR_TO_DATE('10/28/2019', '%m/%d/%Y'), '841', '2', 'anestor2@cdbaby.com', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (4, 'Price', 'Slayford', '4', 'Male', '9756 Barby Trail', STR_TO_DATE('7/3/1944', '%m/%d/%Y'), '4214397766', '1248020107', STR_TO_DATE('8/18/2020', '%m/%d/%Y'), null, '842', '2', 'pslayford3@disqus.com', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (5, 'Barret', 'Forestall', '5', 'Male', '9 Evergreen Court', STR_TO_DATE('12/28/1994','%m/%d/%Y'), '8071818006', '2249571674', STR_TO_DATE('8/24/2020', '%m/%d/%Y'), null, 'B-6', '3', 'bforestall4@bravesites.com', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (6, 'Bibby', 'Kleuer', '6', 'Female', '71076 Tennessee Avenue', STR_TO_DATE('1/18/1987', '%m/%d/%Y'), '6346539795', '6675031884', STR_TO_DATE('11/28/2019', '%m/%d/%Y'), null, 'B-7', '3', 'bkleuer5@yolasite.com', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (7, 'Stella', 'Rayson', '7', 'Female', '60244 Summer Ridge Alley', STR_TO_DATE('1/7/1941', '%m/%d/%Y'), '1299228859', '6085438631', STR_TO_DATE('8/6/2020', '%m/%d/%Y'), null, '471', '4', 'srayson6@cisco.com', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (8, 'Grady', 'O''Dee', '8', 'Male', '9730 Alpine Alley', STR_TO_DATE('2/21/1972','%m/%d/%Y'), '6028366365', '8198234949', STR_TO_DATE('9/27/2020', '%m/%d/%Y'), null, '485', '4', 'godee7@addtoany.com', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (9, 'Erhard', 'Sidon', '9', 'Male', '958 Fulton Drive', STR_TO_DATE('2/20/1964','%m/%d/%Y'), '2276428210','7673418192', STR_TO_DATE('9/21/2020', '%m/%d/%Y'), null, '476', '4', 'esidon8@fda.gov', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (10, 'Traci', 'Kabisch', '10', 'Female', '20563 Almo Point', STR_TO_DATE('10/19/1939', '%m/%d/%Y'), '6054274331', '2789468405', STR_TO_DATE('4/15/2020', '%m/%d/%Y'), STR_TO_DATE('10/15/2019', '%m/%d/%Y'), '00-187', '5', 'tkabisch9@columbia.edu', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (11, 'Emlen', 'Bruhn', '1', 'Male', '255 Dapin Alley', STR_TO_DATE('2/14/1980', '%m/%d/%Y'), '2309480955', '7982896343', STR_TO_DATE('10/14/2019', '%m/%d/%Y'), null, '00-181', '5', 'ebruhna@gov.uk', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (12, 'Maurizio', 'Ferres', '2', 'Male', '2096 Surrey Hill', STR_TO_DATE('12/11/1958', '%m/%d/%Y'), '5982409757', '4882976254', STR_TO_DATE('9/1/2020', '%m/%d/%Y'), null, '00-151', '5', 'mferresb@marketwatch.com', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (13, 'Sheilah', 'Haill', '3', 'Female', '27 Gerald Center', STR_TO_DATE('1/29/1975', '%m/%d/%Y'), '3861719754', '6921603386', STR_TO_DATE('5/22/2020', '%m/%d/%Y'), null, '21', '6', 'shaillc@pen.io', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (14, 'Jamal', 'Rikel', '4', 'Male', '73995 Mifflin Drive', STR_TO_DATE('1/7/2011', '%m/%d/%Y'), '9471206925', '4329092392', STR_TO_DATE('5/22/2020', '%m/%d/%Y'), STR_TO_DATE('10/12/2019','%m/%d/%Y'), '13', '6', 'jrikeld@dedecms.com', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (15, 'Gauthier', 'Eagling', '5', 'Male', '1490 Logan Alley', STR_TO_DATE('3/31/1994', '%m/%d/%Y'), '2753912937', '4484853157', STR_TO_DATE('11/24/2019', '%m/%d/%Y'), null, '15', '6', 'geaglinge@vk.com', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (16, 'Thia', 'Crigin', '6', 'Female', '73913 Washington Crossing', STR_TO_DATE('11/14/1969', '%m/%d/%Y'), '2473739002', '9764725067', STR_TO_DATE('2/10/2020', '%m/%d/%Y'), null, 'Rad-16', '7', 'tcriginf@netlog.com', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (17, 'Jojo', 'Rojahn', '7', 'Female', '31341 Myrtle Alley', STR_TO_DATE('6/10/1950', '%m/%d/%Y'), '9124103361', '2233705883', STR_TO_DATE('8/19/2020', '%m/%d/%Y'), null, 'Rad-10', '7', 'jrojahng@friendfeed.com', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (18, 'Meriel', 'Blakey', '8', 'Female', '39829 Annamark Court', STR_TO_DATE('10/19/1971', '%m/%d/%Y'), '6553729480', '5377152111', STR_TO_DATE('12/18/2019', '%m/%d/%Y'), null, 'C-3', '8', 'mblakeyh@qq.com', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (19, 'Milly', 'Fletham', '9', 'Female', '818 Holy Cross Alley', STR_TO_DATE('4/15/1955', '%m/%d/%Y'), '8482572358', '9796274711', STR_TO_DATE('7/16/2020', '%m/%d/%Y'), null, 'C-4', '8', 'mflethami@smugmug.com', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, isActive) VALUES (20, 'Courtney', 'Savage', '10', 'Female', '9 Sommers Terrace', STR_TO_DATE('3/3/1978', '%m/%d/%Y'), '7018471607', '8016986332', STR_TO_DATE('10/6/2019', '%m/%d/%Y'), STR_TO_DATE('10/12/2019', '%m/%d/%Y'), 'C-5', '8', 'csavagej@de.vu', true);

INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (1, 'American Heart Association', 'EMT-Adv', 2);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (2, 'American Red Cross', 'CPR', 2);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (3, 'American Red Cross', 'Due Regard', 2);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (4, 'Ivy Technical College', 'Firefighter I', 3);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (5, 'Athens Technical College', 'Firefighter II', 2);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (6, 'Association for Safety', 'HAZMAT', 1);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (7, 'AICPA', 'Extrication', 5);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (8, 'American Heart Association', 'Paramedic', 2);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (9, 'Georgia POST Academy', 'POST', 5);


INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (1, 20, 1, STR_TO_DATE('6/30/2020', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (2, 19, 2, STR_TO_DATE('3/4/2020', '%m/%d/%Y') );
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (3, 18, 1, STR_TO_DATE('5/4/2020', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (4, 20, 3, STR_TO_DATE('7/25/2018', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (5, 16, 4, STR_TO_DATE('4/8/2016', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (6, 15, 4, STR_TO_DATE('1/27/2015', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (7, 14, 5, STR_TO_DATE('11/30/2014', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (8, 13, 6, STR_TO_DATE('5/3/2020', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (9, 12, 7, STR_TO_DATE('11/5/2019', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (10, 11, 8, STR_TO_DATE('1/22/2020', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (11, 10, 9, STR_TO_DATE('8/23/2020', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (12, 9, 2, STR_TO_DATE('2/21/2020', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (13, 8, 2, STR_TO_DATE('12/14/2019', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (14, 7, 3, STR_TO_DATE('2/23/2013', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (15, 6, 1, STR_TO_DATE('12/31/2017', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (16, 5, 4, STR_TO_DATE('9/2/2018', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (17, 4, 5, STR_TO_DATE('6/18/2019', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (18, 3, 6, STR_TO_DATE('3/6/2020', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (19, 2, 7, STR_TO_DATE('5/23/2020', '%m/%d/%Y'));
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (20, 1, 8,STR_TO_DATE( '4/29/2020', '%m/%d/%Y'));
