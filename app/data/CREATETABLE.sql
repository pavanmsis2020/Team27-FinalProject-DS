/*
Team 27: Kendall Gibson, Nathaniel Pellant, Destin Schreiner, Pavan Yaddanapudi
BUS-X 501 - Data & Systems - Final Project
Professor Tom Gregory
*/

/* Source: https://www.w3schools.com/sql/sql_foreignkey.asp */
CREATE TABLE Person(
  personID INT,
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
  /* NOTE TO NATE: DEPENDENCIES THING FROM I308 */
  /* Add auto_increment to primary keys */
);

INSERT INTO Person(personID, firstName, lastName, positionID, gender, address, dateOfBirth, workPhone, mobilePhone, startDate, endDate, radioNumber, stationNumber, email, certificationID, isActive)

CREATE TABLE Certification(
  certificationID INT,
  certificationAgency VARCHAR(255),
  certificationName VARCHAR(255),
  /* defaultExpiration is in years */
  defaultExpiration INT,
  PRIMARY KEY(certificationID)
);

CREATE TABLE Member(
  memberID INT,
  certificationID INT,
  personID INT,
  email VARCHAR(255),
  password VARCHAR(255),
  PRIMARY KEY(memberID) NOT NULL,
  FOREIGN KEY(certificationID) REFERENCES Certification(certificationID) NOT NULL,
  FOREIGN KEY(personID) REFERENCES Person(personID) NOT NULL
);

CREATE TABLE Position(
    positionID INT,
    positionName VARCHAR(255),
    certificationID INT,
    PRIMARY KEY(positionID) NOT NULL,
    FOREIGN Key (certificationID) REFERENCES Certification(certificationID) NOT NULL
);

CREATE TABLE Test(
    testID INT,
    personID INT,
    certificationID INT,
    PRIMARY KEY (testID) NOT NULL,
    FOREIGN KEY (personID) REFERENCES Person (personID) NOT NULL,
    FOREIGN KEY (certificationID) REFERENCES Certification (certificationID) NOT NULL
);
