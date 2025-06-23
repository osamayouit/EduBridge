<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->softDeletes();

            $table->string('name', 222)->nullable();
            $table->string('university_name', 222)->nullable();
            $table->string('major_name', 222)->nullable();
            $table->string('father_name', 222)->nullable();
            $table->string('father_phone', 100)->nullable();
            $table->string('student_phone', 100)->nullable();
            $table->string('father_country', 100)->nullable();
            $table->string('target_country', 100)->nullable();

            $table->string('highschool_certificate')->nullable();
            $table->string('university_certificate')->nullable();
            $table->string('passport')->nullable();
            $table->string('personal_photo')->nullable();
            $table->string('extra_file')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
