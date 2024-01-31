<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("nom");
            $table->string("postnom")->nullable();
            $table->string("prenom");
            $table->string("email")->nullable();
            $table->string("blood_group")->nullable();
            $table->unsignedBigInteger("gender_id");
            $table->string("phone")->nullable();
            $table->date("birth");
            $table->date("admission")->nullable();
            $table->text("medical_history")->nullable();
            $table->text("address");
            $table->uuid("classe_id");
            $table->timestamps();

            $table->foreign('gender_id')->references('id')->on('genders')
                ->cascadeOnUpdate();

            $table->foreign('classe_id')->references('id')->on('classes')
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
        Schema::dropIfExists('students');
    }
}
