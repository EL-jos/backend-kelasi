<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGuardiansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('guardians', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("nom");
            $table->string("postnom")->nullable();
            $table->string("prenom");
            $table->string("email")->nullable();
            $table->unsignedBigInteger("gender_id");
            $table->string("phone")->nullable();
            $table->text("address");
            $table->unsignedBigInteger("Profesion_id");
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
        Schema::dropIfExists('guardians');
    }
}
