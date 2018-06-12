<?php
/**
 * Grade A Model for StudentGrades View, but with some protections to not save it
 */
declare(strict_types=1);

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ProtectedVersionOfStudentGrades
 * @package App
 */
class ProtectedVersionOfStudentGrades extends Model
{
    use ProtectionForNonUpdatableView;
    
    /**
     * @var string the table is actually the view
     */
    protected $table = 'StudentGrades';
}