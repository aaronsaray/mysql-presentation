<?php
/**
 * Grade A Model for StudentGrades View
 */
declare(strict_types=1);

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class StudentGrades
 * @package App
 */
class StudentGrades extends Model
{
    /**
     * @var string the table is actually the view
     */
    protected $table = 'StudentGrades';
}