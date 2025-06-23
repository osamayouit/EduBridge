<?php

// app/Http/Controllers/Api/EducationController.php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\University;
use App\Models\Institute;
use Illuminate\Http\JsonResponse;

class EducationController extends Controller
{
    public function universities(): JsonResponse
    {
        $universities = University::with('majors')->get()->map(function ($uni) {
            return [
                'id' => $uni->id,
                'name' => $uni->name,
                'description' => $uni->description,
                'image_url' => $uni->image_url,
                'majors' => $uni->majors->map(fn($major) => ['id' => $major->id, 'name' => $major->name]),
            ];
        });

        return response()->json([
            'status' => true,
            'data' => $universities,
        ]);
    }

    public function institutes(): JsonResponse
    {
        $institutes = Institute::with('majors')->get()->map(function ($inst) {
            return [
                'id' => $inst->id,
                'name' => $inst->name,
                'description' => $inst->description,
                'image_url' => $inst->image_url,
                'majors' => $inst->majors->map(fn($major) => ['id' => $major->id, 'name' => $major->name]),
            ];
        });

        return response()->json([
            'status' => true,
            'data' => $institutes,
        ]);
    }
}
