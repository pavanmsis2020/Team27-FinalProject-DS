<?php

require 'common.php';

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query


$stmt = $db->prepare('SELECT * FROM memberCertificationsView
WHERE certificationID = ?
AND expirationDate > current_date();');
$stmt->execute([
  $_POST['certificationID']
]);

$memberCertifications = $stmt->fetchAll();

// Step 3: Convert to JSON
$json = json_encode($memberCertifications, JSON_PRETTY_PRINT);

// Step 4: Output
header('Content-Type: application/json');
echo $json;
