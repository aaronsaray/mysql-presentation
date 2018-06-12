<?php
/**
 * Prove that Eloquent can use Views
 */
declare(strict_types=1);

require 'vendor/autoload.php';

use App\ProtectedVersionOfStudentGrades;
use Illuminate\Database\Capsule\Manager as Database;
use App\StudentGrades;

$db = new Database();
$db->setAsGlobal();
$db->addConnection([
    'driver' => 'mysql',
    'host' => '127.0.0.1',
    'database' => 'mine',
    'username' => 'root'
]);
$db->bootEloquent();

print "Items from table `students`:\n";
Database::table('students')->get()->each(function(stdClass $item) {
    print json_encode($item) . "\n";
});
print "\n";

print "Items from view `StudentGrades`:\n";
Database::table('StudentGrades')->get()->each(function(stdClass $item) {
    print json_encode($item, JSON_PRETTY_PRINT) . "\n";
});
print "\n";

print "Items from StudentGrades::all() which is from view `StudentGrades` using Eloquent:\n";
StudentGrades::all()->each(function(StudentGrades $item) {
    print json_encode($item, JSON_PRETTY_PRINT) . "\n";
});
print "\n";

print "Trying to save StudentGrades:\n";
try {
    (new StudentGrades())->save();
}
catch (\Throwable $t) {
    print $t->getMessage() . "\n";
}
print "\n";

print "A safer better message using ProtectedVersionOfStudentGrades:\n";
try {
    (new ProtectedVersionOfStudentGrades())->save();
}
catch (\Throwable $t) {
    print $t->getMessage() . "\n";
}
print "\n";

