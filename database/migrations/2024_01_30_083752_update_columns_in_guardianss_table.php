<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateColumnsInGuardianssTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('guardians', function (Blueprint $table) {
            $table->dropColumn("nom");
            $table->dropColumn("postnom")->nullable();
            $table->dropColumn("prenom");
            $table->dropColumn("email")->nullable();
            $table->dropForeign("guardians_gender_id_foreign");
            $table->dropColumn("gender_id");
            $table->dropColumn("phone")->nullable();
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
        Schema::table('guardians', function (Blueprint $table) {
            $table->string("nom");
            $table->string("postnom")->nullable();
            $table->string("prenom");
            $table->string("email")->nullable();
            $table->unsignedBigInteger("gender_id");
            $table->string("phone")->nullable();
            $table->text("address");

            $table->foreign('gender_id')->references('id')->on('genders')
                ->cascadeOnUpdate();
        });
    }
}
