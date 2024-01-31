<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RemoveCommunColumnsInStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('students', function (Blueprint $table) {
            $table->dropColumn("nom");
            $table->dropColumn("postnom");
            $table->dropColumn("prenom");
            $table->dropColumn("email");
            $table->dropColumn("blood_group");
            $table->dropForeign("students_gender_id_foreign");
            $table->dropColumn("gender_id");
            $table->dropColumn("phone");
            $table->dropColumn("birth");
            $table->dropColumn("medical_history")->nullable();
            $table->dropColumn("address");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('students', function (Blueprint $table) {
            $table->string("nom");
            $table->string("postnom")->nullable();
            $table->string("prenom");
            $table->string("email")->nullable();
            $table->string("blood_group")->nullable();
            $table->unsignedBigInteger("gender_id");
            $table->string("phone")->nullable();
            $table->date("birth");
            $table->text("medical_history")->nullable();
            $table->text("address");

            $table->foreign('gender_id')->references('id')->on('genders')
                ->cascadeOnUpdate();

        });
    }
}
