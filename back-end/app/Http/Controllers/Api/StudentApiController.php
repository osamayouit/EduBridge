<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\StudentResource;
use App\Models\Country;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class StudentApiController extends Controller
{
    // جلب جميع الدول
    public function countries()
    {
        $countries = Country::orderBy('name')->get();

        return response()->json([
            'success' => true,
            'data' => $countries,
        ]);
    }

    // تسجيل أو تحديث بيانات طالب مع رفع الملفات
    public function submitStudent(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:222',
            'university_name' => 'nullable|string|max:222',
            'major_name' => 'nullable|string|max:222',
            'father_name' => 'nullable|string|max:222',
            'father_phone' => 'nullable|string|max:100',
            'student_phone' => 'nullable|string|max:100',
            'father_country' => 'nullable|string|max:100',
            'target_country' => 'nullable|string|max:100',
            'highschool_certificate' => 'nullable|file|max:10240',
            'university_certificate' => 'nullable|file|max:10240',
            'passport' => 'nullable|file|max:10240',
            'personal_photo' => 'nullable|image|max:5120',
            'extra_file' => 'nullable|file|max:10240',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors(),
            ], 422);
        }

        $student = Student::updateOrCreate(
            ['id' => $request->id],
            $request->only([
                'name',
                'university_name',
                'major_name',
                'father_name',
                'father_phone',
                'student_phone',
                'father_country',
                'target_country',
            ])
        );

        // التعامل مع الملفات
        if ($request->hasFile('highschool_certificate')) {
            $student->highschool_certificate = $request->file('highschool_certificate')->store('students/highschool', 'public');
        }

        if ($request->hasFile('university_certificate')) {
            $student->university_certificate = $request->file('university_certificate')->store('students/university', 'public');
        }

        if ($request->hasFile('passport')) {
            $student->passport = $request->file('passport')->store('students/passports', 'public');
        }

        if ($request->hasFile('personal_photo')) {
            $student->personal_photo = $request->file('personal_photo')->store('students/photos', 'public');
        }

        if ($request->hasFile('extra_file')) {
            $student->extra_file = $request->file('extra_file')->store('students/extras', 'public');
        }

        $student->save();

        return response()->json([
            'success' => true,
            'data' => new StudentResource($student),
        ]);
    }
}
