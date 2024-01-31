<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProfessionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('professions', function (Blueprint $table) {
            $table->id();
            $table->string("name");
            $table->timestamps();
        });

        Schema::table("guardians", function (Blueprint $table) {

            $table->renameColumn("Profesion_id", "profession_id");

            $table->foreign('profession_id')->references('id')->on('professions')
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
        Schema::dropIfExists('professions');
        Schema::table("guardians", function (Blueprint $table) {
            $table->dropForeign("guardians_profession_id_foreign");
            $table->renameColumn("profession_id", "Profesion_id");
        });
    }
}
