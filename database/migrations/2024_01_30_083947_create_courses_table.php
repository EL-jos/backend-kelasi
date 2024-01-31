<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("name");
            $table->integer("coefficient");
            $table->uuid("teacher_id");
            $table->uuid("classe_id");
            $table->timestamps();

            $table->foreign("teacher_id")->references("id")->on("teachers")
                ->cascadeOnUpdate();

            $table->foreign("classe_id")->references("id")->on("classes")
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
        Schema::dropIfExists('courses');
    }
}
