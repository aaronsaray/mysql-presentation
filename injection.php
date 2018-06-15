<?php
$pdo = new PDO('mysql:host=127.0.0.1;dbname=mine', 'root');

$nameVariable = 'Fred';
print "Regular variable: {$nameVariable}\n";

$statement = $pdo->prepare("select u.name, b.balance from users u inner join balances b on u.id=b.user_id where u.name=?");

if ($statement->execute([$nameVariable])) {
    print "No Sql Injection\n";
    print json_encode($statement->fetch()) . "\n";
}
else {
    print "Query failed.\n";
}
print "\n";


$nameVariable = "Fred' or u.id=3 order by u.id desc -- ";
print "Injection variable: {$nameVariable}\n";

$statement = $pdo->prepare("select u.name, b.balance from users u inner join balances b on u.id=b.user_id where u.name=?");

if ($statement->execute([$nameVariable])) {
    print "No Sql Injection\n";
    print json_encode($statement->fetch()) . "\n";
    print "No results.\n";
}
else {
    print "Query failed.\n";
}
print "\n";

