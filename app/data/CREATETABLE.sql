/*
Team 27: Kendall Gibson, Nathaniel Pellant, Destin Schreiner, Pavan Yaddanapudi
BUS-X 501 - Data & Systems - Final Project
Professor Tom Gregory
*/
/*hello*/
/* Source: https://www.w3schools.com/sql/sql_foreignkey.asp */
CREATE TABLE Person(
    personID INT AUTO_INCREMENT,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    positionID INT,
    gender VARCHAR(255),
    address VARCHAR(255),
    dateOfBirth DATE,
    workPhone INT,
    mobilePhone INT,
    startDate DATE,
    endDate DATE,
    radioNumber INT,
    stationNumber INT,
    email VARCHAR(255),
    certificationID INT,
    isActive BOOLEAN,
    PRIMARY KEY(personID) NOT NULL,
    FOREIGN KEY(positionID) REFERENCES Position(positionID) NOT NULL,
    FOREIGN KEY(certificationID) REFERENCES Certification(certificationID) NOT NULL
);

/* Some of these were DUNS numbers on Mockaroo - we'll have to modify them */
/* SEE SCREENSHOT (Mockaroo, local FinalProject folder) */
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (1, 'Gretel', 'Patience', '09-877-5878', 'Female', '1 Mariners Cove Crossing', '11/7/2008', '189-817-4188', '454-746-2251', '12/29/2019', null, '9195386270', '53-810-3632', 'gpatience0@thetimes.co.uk', '53-723-4571', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (2, 'Faydra', 'Wackley', '81-818-9310', 'Female', '349 Eggendart Place', '5/16/2002', '185-650-1229', '765-739-2027', '8/13/2020', null, '2696813639', '69-871-9700', 'fwackley1@free.fr', '24-052-5466', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (3, 'Arturo', 'Nestor', '70-507-8994', 'Male', '8 Donald Center', '2/1/2019', '884-538-4789', '124-235-6309', '11/26/2019', '10/28/2019', '8689538178', '58-911-0855', 'anestor2@cdbaby.com', '63-867-2143', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (4, 'Price', 'Slayford', '36-439-7842', 'Male', '9756 Barby Trail', '7/3/1944', '421-439-7766', '124-802-0107', '8/18/2020', null, '6945790266', '72-446-3676', 'pslayford3@disqus.com', '42-551-5016', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (5, 'Barret', 'Forestall', '28-705-6881', 'Male', '9 Evergreen Court', '12/28/1994', '807-181-8006', '224-957-1674', '8/24/2020', null, '4283518476', '08-054-2545', 'bforestall4@bravesites.com', '57-670-5109', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (6, 'Bibby', 'Kleuer', '91-298-3785', 'Female', '71076 Tennessee Avenue', '1/18/1987', '634-653-9795', '667-503-1884', '11/28/2019', null, '1200592352', '99-056-9507', 'bkleuer5@yolasite.com', '03-383-6467', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (7, 'Stella', 'Rayson', '98-706-6038', 'Female', '60244 Summer Ridge Alley', '1/7/1941', '129-922-8859', '608-543-8631', '8/6/2020', null, '4782893744', '80-127-7162', 'srayson6@cisco.com', '89-647-0736', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (8, 'Grady', 'O''Dee', '52-207-6453', 'Male', '9730 Alpine Alley', '2/21/1972', '602-836-6365', '819-823-4949', '9/27/2020', null, '2900191416', '89-746-5483', 'godee7@addtoany.com', '67-814-0009', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (9, 'Erhard', 'Sidon', '57-359-6397', 'Male', '958 Fulton Drive', '2/20/1964', '227-642-8210', '767-341-8192', '9/21/2020', null, '5764118697', '42-232-2643', 'esidon8@fda.gov', '99-262-1839', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (10, 'Traci', 'Kabisch', '04-842-5216', 'Female', '20563 Almo Point', '10/19/1939', '605-427-4331', '278-946-8405', '4/15/2020', '10/15/2019', '6069230396', '87-660-1228', 'tkabisch9@columbia.edu', '12-878-6874', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (11, 'Emlen', 'Bruhn', '65-751-1277', 'Male', '255 Dapin Alley', '2/14/1980', '230-948-0955', '798-289-6343', '10/14/2019', null, '6605234529', '24-826-5784', 'ebruhna@gov.uk', '52-318-9233', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (12, 'Maurizio', 'Ferres', '72-981-4675', 'Male', '2096 Surrey Hill', '12/11/1958', '598-240-9757', '488-297-6254', '9/1/2020', null, '0788181165', '40-955-1698', 'mferresb@marketwatch.com', '21-858-6402', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (13, 'Sheilah', 'Haill', '24-744-1618', 'Female', '27 Gerald Center', '1/29/1975', '386-171-9754', '692-160-3386', '5/22/2020', null, '4589353784', '69-694-2193', 'shaillc@pen.io', '34-039-6108', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (14, 'Jamal', 'Rikel', '53-661-7128', 'Male', '73995 Mifflin Drive', '1/7/2011', '947-120-6925', '432-909-2392', '5/22/2020', '10/12/2019', '2618993926', '34-280-4453', 'jrikeld@dedecms.com', '86-522-8349', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (15, 'Gauthier', 'Eagling', '73-097-7636', 'Male', '1490 Logan Alley', '3/31/1994', '275-391-2937', '448-485-3157', '11/24/2019', null, '4024663917', '60-109-5818', 'geaglinge@vk.com', '40-133-1310', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (16, 'Thia', 'Crigin', '65-913-0976', 'Female', '73913 Washington Crossing', '11/14/1969', '247-373-9002', '976-472-5067', '2/10/2020', null, '9458280249', '69-362-4203', 'tcriginf@netlog.com', '68-693-4756', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (17, 'Jojo', 'Rojahn', '00-198-5073', 'Female', '31341 Myrtle Alley', '6/10/1950', '912-410-3361', '223-370-5883', '8/19/2020', null, '7984602697', '84-619-4138', 'jrojahng@friendfeed.com', '37-154-8371', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (18, 'Meriel', 'Blakey', '49-820-1875', 'Female', '39829 Annamark Court', '10/19/1971', '655-372-9480', '537-715-2111', '12/18/2019', null, '1175780197', '67-322-7471', 'mblakeyh@qq.com', '88-023-0625', true);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (19, 'Milly', 'Fletham', '89-897-6575', 'Female', '818 Holy Cross Alley', '4/15/1955', '848-257-2358', '979-627-4711', '7/16/2020', null, '8441456887', '49-354-2085', 'mflethami@smugmug.com', '93-848-0049', false);
INSERT INTO Person (personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive) VALUES (20, 'Courtney', 'Savage', '86-051-3878', 'Female', '9 Sommers Terrace', '3/3/1978', '701-847-1607', '801-698-6332', '10/6/2019', '10/12/2019', '9615059560', '56-130-6181', 'csavagej@de.vu', '81-179-6016', true);

CREATE TABLE Certification(
    certificationID INT AUTO_INCREMENT,
    certificationAgency VARCHAR(255),
    certificationName VARCHAR(255),
    /* defaultExpiration is in years */
    defaultExpiration INT,
    PRIMARY KEY(certificationID)
);

INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (1, 'Lowe Group', 'Research Associate', 63);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (2, 'Douglas Group', 'Office Assistant II', 15);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (3, 'Baumbach-Beer', 'Civil Engineer', 53);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (4, 'Roberts, Quigley and Davis', 'Human Resources Manager', 46);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (5, 'Heaney, Lynch and Hane', 'Human Resources Assistant III', 96);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (6, 'Morissette, Jenkins and Bruen', 'Product Engineer', 11);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (7, 'Donnelly and Sons', 'Safety Technician III', 100);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (8, 'Friesen and Sons', 'Information Systems Manager', 79);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (9, 'Pollich Inc', 'Civil Engineer', 91);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (10, 'Anderson-Lakin', 'Senior Developer', 22);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (11, 'Zieme LLC', 'Occupational Therapist', 91);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (12, 'Hamill, Emmerich and Crist', 'Engineer I', 39);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (13, 'Streich Group', 'Compensation Analyst', 86);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (14, 'King-Lemke', 'Engineer IV', 37);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (15, 'Botsford, Schmeler and West', 'Environmental Specialist', 34);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (16, 'Bruen-Stracke', 'Actuary', 76);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (17, 'O''Keefe, Heller and Dietrich', 'Account Executive', 65);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (18, 'Strosin LLC', 'Mechanical Systems Engineer', 18);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (19, 'Effertz Inc', 'Engineer II', 8);
INSERT INTO Certification (certificationID, certificationAgency, certificationName, defaultExpiration) VALUES (20, 'Hettinger-Hettinger', 'Web Developer IV', 53);

CREATE TABLE Position(
    positionID INT AUTO_INCREMENT,
    positionName VARCHAR(255),
    certificationID INT,
    PRIMARY KEY(positionID) NOT NULL,
    FOREIGN Key (certificationID) REFERENCES Certification(certificationID) NOT NULL
);

/* certificationID cross-reference to Certification TABLE */
INSERT INTO Position (positionID, positionName, certificationID) VALUES (1, 'Software Engineer III', 37);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (2, 'Information Systems Manager', 2);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (3, 'Physical Therapy Assistant', 43);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (4, 'Director of Sales', 39);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (5, 'Actuary', 98);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (6, 'Executive Secretary', 5);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (7, 'Quality Control Specialist', 46);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (8, 'VP Product Management', 95);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (9, 'Research Nurse', 47);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (10, 'Senior Cost Accountant', 49);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (11, 'Actuary', 27);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (12, 'Associate Professor', 46);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (13, 'Technical Writer', 8);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (14, 'Physical Therapy Assistant', 21);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (15, 'Senior Quality Engineer', 24);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (16, 'VP Product Management', 4);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (17, 'Administrative Assistant IV', 75);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (18, 'VP Product Management', 92);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (19, 'Web Developer III', 99);
INSERT INTO Position (positionID, positionName, certificationID) VALUES (20, 'VP Quality Control', 2);

CREATE TABLE Test(
    testID INT AUTO_INCREMENT,
    personID INT,
    certificationID INT,
    testDate DATE,
    PRIMARY KEY (testID) NOT NULL,
    FOREIGN KEY (personID) REFERENCES Person (personID) NOT NULL,
    FOREIGN KEY (certificationID) REFERENCES Certification (certificationID) NOT NULL
);

INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (1, 63, 78, '6/30/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (2, 67, 73, '3/4/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (3, 87, 57, '5/4/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (4, 32, 97, '7/25/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (5, 52, 23, '4/8/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (6, 20, 60, '1/27/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (7, 40, 58, '11/30/2019');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (8, 55, 82, '5/3/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (9, 3, 7, '11/5/2019');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (10, 73, 75, '1/22/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (11, 55, 79, '8/23/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (12, 33, 10, '2/21/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (13, 66, 79, '12/14/2019');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (14, 2, 11, '2/23/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (15, 94, 89, '12/31/2019');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (16, 41, 23, '9/2/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (17, 94, 21, '6/18/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (18, 80, 35, '3/6/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (19, 97, 1, '5/23/2020');
INSERT INTO Test (testID, personID, certificationID, testDate) VALUES (20, 61, 44, '4/29/2020');

/* OPTIONAL */
CREATE TABLE User(
    email VARCHAR(255),
    password VARCHAR(255)
);
