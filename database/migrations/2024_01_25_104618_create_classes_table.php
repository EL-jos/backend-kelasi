<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('classes', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->unsignedBigInteger("level_id");
            $table->unsignedBigInteger("section_id");
            $table->uuid("school_id");
            $table->text("description");
            $table->timestamps();

            $table->foreign('level_id')->references('id')->on('levels')
                ->cascadeOnUpdate();

            $table->foreign('section_id')->references('id')->on('sections')
                ->cascadeOnUpdate();

            $table->foreign('school_id')->references('id')->on('schools')
                ->cascadeOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('classes');
    }
}
