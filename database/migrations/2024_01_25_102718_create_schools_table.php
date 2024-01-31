<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSchoolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schools', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('name');
            $table->string("phone");
            $table->text("address");
            $table->string('province_id');
            $table->string('city_id');
            $table->string("responsable_name");
            $table->string("responsable_phone");
            $table->string("responsable_address");
            $table->string("password");
            $table->timestamps();

            $table->foreign('province_id')->references('id')->on('provinces')
                ->cascadeOnUpdate();

            $table->foreign('city_id')->references('id')->on('cities')
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
        Schema::dropIfExists('schools');
    }
}
