<?php
$pdo = new PDO('mysql:host=127.0.0.1;dbname=mine', 'root');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


$sql = "select count(*) from items where type_1 = :type or type_2 = :type";
$stmt = $pdo->prepare($sql);
$stmt->execute(['type' => 'a']);
print $stmt->fetchColumn(0) . "\n\n";


$pdo = new PDO('mysql:host=127.0.0.1;dbname=mine', 'root');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false); // see it was on by default

$sql = "select count(*) from items where type_1 = :type or type_2 = :type";
$stmt = $pdo->prepare($sql);
$stmt->execute(['type' => 'a']);
print $stmt->fetchColumn(0);




