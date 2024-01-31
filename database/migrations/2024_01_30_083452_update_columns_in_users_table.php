<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateColumnsInUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string("nom");
            $table->string("postnom")->nullable();
            $table->string("prenom");
            $table->string("email")->nullable()->unique();
            $table->string("blood_group")->nullable();
            $table->unsignedBigInteger("gender_id");
            $table->string("phone")->nullable();
            $table->date("birth");
            $table->text("medical_history")->nullable();
            $table->text("address");
            $table->string('password');
            $table->uuid("userable_id");
            $table->string("userable_type");
            $table->timestamps();

            $table->foreign('gender_id')->references('id')->on('genders')
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
        Schema::dropIfExists('users');
    }
}
