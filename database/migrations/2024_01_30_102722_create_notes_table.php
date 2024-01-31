<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNotesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notes', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("student_id");
            $table->uuid("course_id");
            $table->unsignedBigInteger("note_statut_id");
            $table->text("comment");
            $table->integer("coefficient");
            $table->timestamps();

            $table->foreign("student_id")->references("id")->on("students")
                ->cascadeOnDelete()->cascadeOnUpdate();

            $table->foreign("course_id")->references("id")->on("courses")
                ->cascadeOnDelete()->cascadeOnUpdate();

            $table->foreign("note_statut_id")->references("id")->on("note_statuts")
                ->cascadeOnDelete()->cascadeOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('notes');
    }
}
