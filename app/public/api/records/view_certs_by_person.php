<?php

require 'common.php';

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query


$sql = 'SELECT * FROM memberCertificationsView
WHERE certificationID = ?;';
$vars = [];

if (isset($_GET['testID'])) {
  // This is an example of a parameterized query
  $sql = 'SELECT * FROM Test WHERE testID = ?';
  $vars = [ $_GET['testID'] ];
}

$stmt = $db->prepare($sql);
$stmt->execute($vars);

$memberCertifications = $stmt->fetchAll();





// Step 3: Convert to JSON
$json = json_encode($memberCertifications, JSON_PRETTY_PRINT);

// Step 4: Output
header('Content-Type: application/json');
echo $json;
