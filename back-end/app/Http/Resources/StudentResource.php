<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class StudentResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'university_name' => $this->university_name,
            'major_name' => $this->major_name,
            'father_name' => $this->father_name,
            'father_phone' => $this->father_phone,
            'student_phone' => $this->student_phone,
            'father_country' => $this->father_country,
            'target_country' => $this->target_country,
            'created_at' => $this->created_at?->toDateTimeString(),
            'updated_at' => $this->updated_at?->toDateTimeString(),
        ];
    }
}
