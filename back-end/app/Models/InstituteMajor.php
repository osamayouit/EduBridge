<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InstituteMajor extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'institute_id'];

    public function institute()
    {
        return $this->belongsTo(Institute::class);
    }
}