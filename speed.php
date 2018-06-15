<?php

$pdo = new PDO('mysql:host=127.0.0.1;dbname=mine', 'root');
$pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false); 

print "Starting selects...\n";

$startTime = microtime(true);
$times = 0;
while ($times < 1000) {
    $type1 = rand(1, 20);
    $type2 = chr(rand(65, 90));
    
    // escape so it's just as secure as prepare
    $type1safe = $pdo->quote($type1);
    $type2safe = $pdo->quote($type2);
    $sql = "select id, type_1, type_2 from items where type_1={$type1safe} and type_2={$type2safe}";
    $result = $pdo->query($sql);
    
    $times++;
}
$endTime = microtime(true);

print "Non prepared statement time in seconds: " . ($endTime - $startTime) . "\n";

print "\n";


$startTime = microtime(true);
$times = 0;
$stmt = $pdo->prepare('select id, type_1, type_2 from items where type_1 = ? and type_2 = ?');
while ($times < 1000) {
    $type1 = rand(1, 20);
    $type2 = chr(rand(65, 90));

    $result = $stmt->execute([$type1, $type2]);

    $times++;
}
$endTime = microtime(true);

print "Prepared statement time in seconds: " . ($endTime - $startTime) . "\n";

print "\n";



print "Starting inserts...\n";

$startTime = microtime(true);
$times = 0;
while ($times < 10000) {
    $type1 = rand(1, 20);
    $type2 = chr(rand(65, 90));

    // escape so it's just as secure as prepare
    $type1safe = $pdo->quote($type1);
    $type2safe = $pdo->quote($type2);
    $sql = "insert into items2 (type_1, type_2, date_1) values($type1safe, $type2safe, '2018-01-01 00:00:00')";
    $result = $pdo->query($sql);

    $times++;
}
$endTime = microtime(true);

print "Non prepared statement time in seconds: " . ($endTime - $startTime) . "\n";

print "\n";


$startTime = microtime(true);
$times = 0;
$stmt = $pdo->prepare('insert into items2 (type_1, type_2, date_1) values(?, ?, "2018-01-01 00:00:00")');
while ($times < 10000) {
    $type1 = rand(1, 20);
    $type2 = chr(rand(65, 90));

    $result = $stmt->execute([$type1, $type2]);

    $times++;
}
$endTime = microtime(true);

print "Prepared statement time in seconds: " . ($endTime - $startTime) . "\n";

print "\n";

// this is just for me so I can run my test over and over - shh
$pdo->exec('truncate items2');