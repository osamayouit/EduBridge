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
        Schema::create('university_majors', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('university_id');
            $table->string('name');
            $table->timestamps();

            $table->foreign('university_id')->references('id')->on('universities')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('university_majors');
    }
};
