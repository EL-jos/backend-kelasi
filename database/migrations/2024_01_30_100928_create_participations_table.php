<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateParticipationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('participations', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("student_id");
            $table->uuid("course_id");
            $table->unsignedBigInteger("participation_statut_id");
            $table->text("comment")->nullable();
            $table->dateTime("connect_at");
            $table->timestamps();

            $table->foreign("student_id")->references("id")->on("students")
                ->cascadeOnUpdate()->cascadeOnDelete();

            $table->foreign("course_id")->references("id")->on("courses")
                ->cascadeOnUpdate()->cascadeOnDelete();

            $table->foreign("participation_statut_id")->references("id")->on("participation_statuts")
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
        Schema::dropIfExists('participations');
    }
}
