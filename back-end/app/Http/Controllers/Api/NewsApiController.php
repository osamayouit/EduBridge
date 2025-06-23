<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\News;
use Illuminate\Support\Facades\Storage;

class NewsApiController extends Controller
{
    public function index()
    {
        $news = News::latest()->get()->map(function ($item) {
            // فك ترميز الصور إذا كانت string، وخليها مصفوفة
            $images = is_string($item->images) ? json_decode($item->images, true) : $item->images;

            // حول الصور إلى روابط URL
            $imagesUrls = collect($images)->map(fn($img) => url(Storage::url($img)));

            return [
                'id' => $item->id,
                'title_ar' => $item->title_ar,
                'title_en' => $item->title_en,
                'content_ar' => $item->content_ar,
                'content_en' => $item->content_en,
                'images' => $imagesUrls,
                'posts' => $item->posts->map(function ($post) {
                    return [
                        'id' => $post->id,
                        'title' => $post->title,
                    ];
                }),
                'created_at' => $item->created_at->toDateTimeString(),
            ];
        });

        return response()->json([
            'status' => true,
            'data' => $news,
        ]);
    }

    public function show($id)
    {
        $item = News::findOrFail($id);

        $images = is_string($item->images) ? json_decode($item->images, true) : $item->images;
        $imagesUrls = collect($images)->map(fn($img) => url(Storage::url($img)));

        return response()->json([
            'status' => true,
            'data' => [
                'id' => $item->id,
                'title_ar' => $item->title_ar,
                'title_en' => $item->title_en,
                'content_ar' => $item->content_ar,
                'content_en' => $item->content_en,
                'images' => $imagesUrls,
                'posts' => $item->posts->map(function ($post) {
                    return [
                        'id' => $post->id,
                        'title' => $post->title,
                    ];
                }),
                'created_at' => $item->created_at->toDateTimeString(),
            ],
        ]);
    }
}
