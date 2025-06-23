<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Student extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name',
        'university_name',
        'major_name',
        'father_name',
        'father_phone',
        'student_phone',
        'father_country',
        'target_country',
        'highschool_certificate',
        'university_certificate',
        'passport',
        'personal_photo',
        'extra_file',
    ];
}
