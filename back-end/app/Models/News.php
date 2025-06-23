<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
use Illuminate\Support\Facades\Storage;

class News extends Model
{
    use HasFactory;

    protected $fillable = ['title_ar', 'title_en', 'content_ar', 'content_en', 'images'];

    protected $casts = [
        'images' => 'array',
    ];

    public function posts()
    {
        return $this->belongsToMany(Post::class);
    }

}