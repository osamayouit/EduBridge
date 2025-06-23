<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class StudentFileUploadController extends Controller
{
    public function uploadFile(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file' => 'required|file|max:10240', // 10 ميجابايت
            'type' => 'required|string|in:highschool_certificate,university_certificate,passport,personal_photo,extra_file',
            'student_id' => 'nullable|exists:students,id',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors(),
            ], 422);
        }

        $file = $request->file('file');

        // تعيين مجلد التخزين حسب نوع الملف
        $folder = match ($request->type) {
            'highschool_certificate' => 'students/highschool',
            'university_certificate' => 'students/university',
            'passport' => 'students/passports',
            'personal_photo' => 'students/photos',
            'extra_file' => 'students/extras',
            default => 'students/others',
        };

        $path = $file->store($folder, 'public');

        // تحديث مسار الملف في سجل الطالب لو تم تمرير student_id
        if ($request->filled('student_id')) {
            $student = Student::find($request->student_id);
            if ($student) {
                $student->{$request->type} = $path;
                $student->save();
            }
        }

        return response()->json([
            'success' => true,
            'path' => $path,
            'url' => asset('storage/' . $path),
        ]);
    }
}
