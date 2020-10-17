<?php

require 'common.php';

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query
$sql = 'SELECT Test.testID, Test.testDate, Person.firstName, Person.lastName, Certification.certificationName, Certification.defaultExpiration
FROM Test, Person, Certification
WHERE Test.personID = Person.personID
AND Test.certificationID = Certification.certificationID;';
$vars = [];

$stmt = $db->prepare($sql);
$stmt->execute($vars);

$certifications_report = $stmt->fetchAll();

// Step 3: Convert to JSON
$json = json_encode($certifications_report, JSON_PRETTY_PRINT);

// Step 4: Output
header('Content-Type: application/json');
echo $json;
