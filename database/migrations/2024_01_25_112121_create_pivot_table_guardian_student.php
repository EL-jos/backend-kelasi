<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePivotTableGuardianStudent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('guardian_student', function (Blueprint $table) {
            $table->uuid("guardian_id");
            $table->uuid("student_id");
            $table->timestamps();

            $table->foreign('guardian_id')->references('id')->on('guardians')
                ->cascadeOnUpdate()->cascadeOnDelete();

            $table->foreign('student_id')->references('id')->on('students')
                ->cascadeOnUpdate()->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('guardian_student');
    }
}
