<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class University extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'country_id','image','description'];

    public function majors()
    {
        return $this->hasMany(UniversityMajor::class);
    }
     // Accessor لعرض رابط الصورة كامل (مهم)
     public function getImageUrlAttribute()
     {
         return $this->image ? asset('storage/' . $this->image) : null;
     }
}
